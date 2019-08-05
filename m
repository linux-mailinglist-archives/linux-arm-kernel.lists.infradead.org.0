Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F006D818FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pRB2/bxDpCPDRj/iMsjLHQKBSGAmSj7rruCzNx/GWKo=; b=p3j9QFulX0X0ZD
	VNS5FDCB/XXhaaCr9x3T38UYJjETo9vl64BXtHOF0Dqckehx2808sCME/etyiOrOisQR7O/S7lFxk
	LG9GxAijHy8Eqj/3SR/QV8j9oRGKAnAKHnQGAOkQNuyxUp6anozlW3KtaRax2YYynBHCnmOl3KhCE
	s4hWqkyR7oZYs7CgyJMvD/YRx+vnMLmJxi/hkEKEmYaOwTbpncy7F+GV72Rgtrx/T73JmZ685lKGW
	MCuyoCs6CHcxK9fl7CPLjdj1Rn22waqYwkCS+Y69g5EaUiYKAc0Gccse1V8kshH4d5ctoJnpzcmS1
	l3JasjZf4d+XhM2pnlYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubug-0003EP-RR; Mon, 05 Aug 2019 12:16:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hubuU-0003DK-D3
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:16:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 363CC337;
 Mon,  5 Aug 2019 05:16:17 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0EE773F706;
 Mon,  5 Aug 2019 05:16:15 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] KVM: arm/arm64: Revamp sysreg reset checks
Date: Mon,  5 Aug 2019 13:15:53 +0100
Message-Id: <20190805121555.130897-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_051618_489988_1D4118CA 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Zenghui Yu <yuzenghui@huawei.com>, Andrew Jones <drjones@redhat.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The way we deal with sysreg reset is terrible, as we write junk to
them while other parts of the system may be evaluating these. That's
obviously wrong. Instead, let's switch to a mode where we track which
sysregs have had a reset function applied to them.

The result is less bad, but my gut feeling is that we'd be better of
without any of this. Comments welcome.

Marc Zyngier (2):
  KVM: arm64: Don't write junk to sysregs on reset
  KVM: arm: Don't write junk to CP15 registers on reset

 arch/arm/kvm/coproc.c     | 23 +++++++++++++++--------
 arch/arm64/kvm/sys_regs.c | 32 ++++++++++++++++++--------------
 2 files changed, 33 insertions(+), 22 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
