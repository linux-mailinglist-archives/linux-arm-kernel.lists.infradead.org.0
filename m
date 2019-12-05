Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47E2114692
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 19:07:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LRhSWJF4yn/qPfaLWjy7Lf9LYzlTKXI6x67Csapfr68=; b=qlv
	or+0Qws+v7u0OV4+jkxZiqcnTpROOuaULVRRhkA2Dz7wBlSLCabzYSJCkmVlRrzb1wgrXx62C/qT2
	/dz4vLtRtZ2oTBjfiNTAPs0wul1HI9cFHmNdRR1R6KYmZ/XjH8S42A0kyC1hz+HzAtvoaNScH6vni
	fcLwCOFB90ss8O1nfFfqYDr793eibI3fuuEnMCd9CIuw4U/irEKnVYmCNmf0vmF4yTlhyU+B0NrTr
	kd2cBnx7qa4nD41naJfIFwbL1sHpNJa63lMwdEMbTqnk9zZ/o9If3UCbRzwh+SC/YSyd9nR6DGnQF
	QoztWEZ+5WsDxEnS6MONdTmzGlw9ABA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvWx-0003XE-E1; Thu, 05 Dec 2019 18:07:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvWn-0003WB-KM
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 18:07:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09A7131B;
 Thu,  5 Dec 2019 10:06:59 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D8A193F718;
 Thu,  5 Dec 2019 10:06:57 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] kvm/arm64: unimplemented sysreg improvements
Date: Thu,  5 Dec 2019 18:06:50 +0000
Message-Id: <20191205180652.18671-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_100701_713511_7DA79633 
X-CRM114-Status: UNSURE (   6.83  )
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, maz@kernel.org,
 james.morse@arm.com, alexandru.elisei@arm.com, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While testing some other patches, I realised that KVM's logging of
trapped sysreg accesses can log inconsistent information, and this is
arguably unnecessary for IMPLEMENTATION DEFINED system registers.

This patches fix that up, ensureing that logged information is
consistent, and avoiding logging for IMPLEMENTATION DEFINED registers.

Mark.

Mark Rutland (2):
  kvm/arm64: sanely ratelimit sysreg messages
  kvm/arm64: don't log IMP DEF sysreg traps

 arch/arm64/kvm/sys_regs.c | 20 ++++++++++++++------
 arch/arm64/kvm/sys_regs.h | 17 +++++++++++++++--
 2 files changed, 29 insertions(+), 8 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
