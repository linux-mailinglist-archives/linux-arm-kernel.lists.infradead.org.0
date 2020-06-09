Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACCB1F3665
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 10:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xROFDGpQ1b2hyXFRb/3cKei59Zsx0dW7+cIOxEvBt/w=; b=mUhtyngP9LRQuB
	bjcA/EhZGh9lWT6bD7HV0yOqR1IJbq+cFcfDFU7DCsZIEjxj0zytCdVhvFFkX7mFKKQMniZ1F+unq
	QTwMKsKvaCQsoIPVbrcIdA6TvS3hEudw/AXX51MtdkPgELwaomMtpV8frrJvYRIOlNu5KZbpvad1d
	Pj/tBfCa9bUV4yMw9/I5Re45BOmo0RF2G7h4IRkRrrCJP9oRJN5xMP7h3dwzVXxxlLiU2uqGD670m
	yHSE5CQoceJfCgVcb44N4/E3jqb7iUaO/sPrSz63xtNf+My1VB7zSaZ/jW4oUrznIkOTJWBYh2GZy
	TjYcLIDE1abnL4HRSlBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZxM-0000H1-EV; Tue, 09 Jun 2020 08:50:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZx0-0000AL-54
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 08:49:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B054207C3;
 Tue,  9 Jun 2020 08:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591692581;
 bh=DTLwx+4FGcD1qdI1v5kAz9K25967wcxylJEAbdulMwk=;
 h=From:To:Cc:Subject:Date:From;
 b=ytgOPaxFBmwQdjr6FKBkwvu6yN10vCR0Bl4hXjVrLMhediqGY6bm+xtmxvKssX6yG
 vgYgCLA1k/s5X94SWV05hls/Gwxob2+qr0O8bTxRogYBzetvlxU54RihVoy56OoEoF
 1KLUpYDyXrc3KCdw6rwhEh5rFK9RbnH4RWcCzOAc=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jiZwx-001PEa-J5; Tue, 09 Jun 2020 09:49:39 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] KVM: arm64: Additional 32bit fixes
Date: Tue,  9 Jun 2020 09:49:19 +0100
Message-Id: <20200609084921.1448445-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_014942_215444_777BB958 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kernel-team@android.com, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here's a couple of patches that address the issues that James
mentionned in [1], affecting 32bit guests.

I lack a BE-capable host to properly test the first patch, but it is
obviously correct (ha! ;-).

[1] https://lore.kernel.org/r/20200526161834.29165-1-james.morse@arm.com

Marc Zyngier (2):
  KVM: arm64: Make vcpu_cp1x() work on Big Endian hosts
  KVM: arm64: Synchronize sysreg state on injecting an AArch32 exception

 arch/arm64/include/asm/kvm_host.h | 10 ++++++++--
 arch/arm64/kvm/aarch32.c          | 28 ++++++++++++++++++++++++++++
 2 files changed, 36 insertions(+), 2 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
