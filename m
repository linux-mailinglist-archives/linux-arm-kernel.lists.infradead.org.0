Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C48D014B450
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 13:40:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qW1wFmI6zHP3+3+pJUknd1jaidZlGmuEOvUpWbshmoY=; b=Q7f
	kRHlxEIuOw38RakmX+fK+ALUZ9YRqN/TuIR4IJzPUz3Yn7TOlSqzflIASBMC4iC6dSoMTEX/vXIxR
	gE9XYjVtwD4PnlJaH+acSldgPWpMqioLQ81wpfl84YVIVQtbn2wLi6uDCyCbQFfax16XoHuiH44FK
	6VrO1+MGUoM60/rifFnCKvDQjkFO523cMuOwY1QVxTW/fx5khWzDlaIHOF9sJV9tY0XX/B21F7o66
	OuuQTQ1Y6DpiXlUi1empp9boQmwgd98a4UcvWF0KElqjkWRGnaRqDSnQv36zv6S0qZB3WXhf7unm3
	/s0o8HkfhGQ0kKORMTuXwh2XdciTZ7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwQAI-0002Vt-IK; Tue, 28 Jan 2020 12:40:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwQ9a-0002Gf-ST
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 12:39:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1BDB101E;
 Tue, 28 Jan 2020 04:39:31 -0800 (PST)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.151])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2E8FE3F52E;
 Tue, 28 Jan 2020 04:39:27 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/6] Introduce ID_PFR2 and other CPU feature changes
Date: Tue, 28 Jan 2020 18:09:03 +0530
Message-Id: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_043938_966053_16FA510F 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is primarily motivated from an adhoc list from Mark Rutland
during our ID_ISAR6 discussion [1]. Besides, it also includes a patch
which does macro replacement for various open bits shift encodings in
various CPU ID registers. This series is based on linux-next 20200124.

[1] https://patchwork.kernel.org/patch/11287805/

Is there anything else apart from these changes which can be accommodated
in this series, please do let me know. Thank you.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: kvmarm@lists.cs.columbia.edu
Cc: linux-kernel@vger.kernel.org

Anshuman Khandual (6):
  arm64/cpufeature: Introduce ID_PFR2 CPU register
  arm64/cpufeature: Add DIT and CSV2 feature bits in ID_PFR0 register
  arm64/cpufeature: Add remaining feature bits in ID_MMFR4 register
  arm64/cpufeature: Define an explicit ftr_id_isar0[] for ID_ISAR0 register
  arm64/cpufeature: Drop TraceFilt feature exposure from ID_DFR0 register
  arm64/cpufeature: Replace all open bits shift encodings with macros

 arch/arm64/include/asm/cpu.h    |  1 +
 arch/arm64/include/asm/sysreg.h | 51 +++++++++++++++++++
 arch/arm64/kernel/cpufeature.c  | 87 ++++++++++++++++++++++-----------
 arch/arm64/kernel/cpuinfo.c     |  1 +
 arch/arm64/kvm/sys_regs.c       |  2 +-
 5 files changed, 112 insertions(+), 30 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
