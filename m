Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8C6295B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ceMPwYHPRnqdk//uEYepIgutWOXolEho+celoz/tZnM=; b=cmekw9KNcfIM0AevyknKOKjxG7
	gWrb+KM18J6OmSBm6R+f5rhiltDSmLAeFy/XpB6y+3SN5bUlXlVQxcPs1GAFFoM7WYuEabwosQ51g
	EhzZcdZwJdLYa5M+N4THpCNCl/R2b2mNV7X4nD84mOTfbm+O3fFSQvcjga/uNToMhX3b6zeKz0AYj
	PsA20dwZIBwc1hIypRJ4oZ2gP5R3Kd2QMdwBmMRH+nZdpfHWtuGldmzXSSL5k9dJqTrbM6fh34kYN
	+si/AyDrls6Y+1w5hzFUT546QW/RZrdQKSePVlIAmtmcvoWKGFWJqoDyM16zlnzEdt2upzyFkErQO
	aq9Z5uDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7Pf-0001JH-VD; Fri, 24 May 2019 10:27:00 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7PB-0000sG-A7
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:26:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D5C31682;
 Fri, 24 May 2019 03:26:29 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C88693F703;
 Fri, 24 May 2019 03:26:26 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/8] arm64: docs: cpu-feature-registers: Document
 ID_AA64PFR1_EL1
Date: Fri, 24 May 2019 11:25:28 +0100
Message-Id: <1558693533-13465-4-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_032629_542531_B917C5BB 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Andrew Jones <drjones@redhat.com>,
 Paul Elliott <paul.elliott@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sudakshina Das <sudi.das@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit d71be2b6c0e1 ("arm64: cpufeature: Detect SSBS and advertise
to userspace") exposes ID_AA64PFR1_EL1 to userspace, but didn't
update the documentation to match.

Add it.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 Documentation/arm64/cpu-feature-registers.txt | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/Documentation/arm64/cpu-feature-registers.txt b/Documentation/arm64/cpu-feature-registers.txt
index 684a0da..54d2bfa 100644
--- a/Documentation/arm64/cpu-feature-registers.txt
+++ b/Documentation/arm64/cpu-feature-registers.txt
@@ -160,7 +160,15 @@ infrastructure:
      x--------------------------------------------------x
 
 
-  3) MIDR_EL1 - Main ID Register
+  3) ID_AA64PFR1_EL1 - Processor Feature Register 1
+     x--------------------------------------------------x
+     | Name                         |  bits   | visible |
+     |--------------------------------------------------|
+     | SSBS                         | [7-4]   |    y    |
+     x--------------------------------------------------x
+
+
+  4) MIDR_EL1 - Main ID Register
      x--------------------------------------------------x
      | Name                         |  bits   | visible |
      |--------------------------------------------------|
@@ -179,7 +187,7 @@ infrastructure:
    as available on the CPU where it is fetched and is not a system
    wide safe value.
 
-  4) ID_AA64ISAR1_EL1 - Instruction set attribute register 1
+  5) ID_AA64ISAR1_EL1 - Instruction set attribute register 1
 
      x--------------------------------------------------x
      | Name                         |  bits   | visible |
@@ -201,7 +209,7 @@ infrastructure:
      | DPB                          | [3-0]   |    y    |
      x--------------------------------------------------x
 
-  5) ID_AA64MMFR2_EL1 - Memory model feature register 2
+  6) ID_AA64MMFR2_EL1 - Memory model feature register 2
 
      x--------------------------------------------------x
      | Name                         |  bits   | visible |
@@ -209,7 +217,7 @@ infrastructure:
      | AT                           | [35-32] |    y    |
      x--------------------------------------------------x
 
-  6) ID_AA64ZFR0_EL1 - SVE feature ID register 0
+  7) ID_AA64ZFR0_EL1 - SVE feature ID register 0
 
      x--------------------------------------------------x
      | Name                         |  bits   | visible |
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
