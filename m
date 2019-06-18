Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A7A4A52A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=96YXkkpCX+Mku4cBL3WW3z6FOSyAPNkZUCU7YJfWVOU=; b=SEj6FnysXAeWMQ
	Z3OwlddO1xG7zwdTP2dBYjW5lR1gbsV2HnPt/9GCA5bKuDNq1qxtdZ3k3O8lNhNy8j2D7uNANdKMq
	Nq/Yj3sfXlncKEtbainAAmCdhpR8fzMZLNNHTk/Pvp1JY4DcaH0bBcVzcwFfc90MG9mC4fn3WEpaE
	qa9PthDFBNbKbtZyS3THc9PYp/gUx8EBWwtTlB/ft/SLh+rc9S19CFztKPATwjopsGmvNdWNOfmoW
	C61oTdmZwWf5kJRegqJrrA1zLs8Br/EZ0i6Y3sixmXQZ6NpJ93LKW7VHacQTh4X3Q6OIFWg3tTLtX
	J04VUI7oriw1d05+VGOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFuZ-0005gw-Ec; Tue, 18 Jun 2019 15:20:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFsJ-0002sC-K7
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:18:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E890F2B;
 Tue, 18 Jun 2019 08:18:18 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0C5603F718;
 Tue, 18 Jun 2019 08:18:17 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 0/2] KVM: arm64: Skip more of the SError vaxorcism
Date: Tue, 18 Jun 2019 16:18:07 +0100
Message-Id: <20190618151809.259038-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_081819_739856_532C8444 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In guest_enter we used ISR_EL1 to know if an SError is pending as we
really don't want to take it as an exception. We can do the same
in guest_exit, which saves toggling bits in pstate.

This lets us leave SError masked for the remainder of world-switch
without having to toggle pstate twice.

Changes since v2:
 * Added patch 1 of this series to make the 'SError remains masked'
   behaviour explicit
 * Added missing isb before the isr_el1 read.

James Morse (2):
  KVM: arm64: Re-mask SError after the one instruction window
  KVM: arm64: Skip more of the SError vaxorcism

 arch/arm64/kvm/hyp/entry.S | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
