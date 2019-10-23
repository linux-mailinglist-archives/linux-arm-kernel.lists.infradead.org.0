Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC35E221C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 19:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KJhLeRtVY4fMLozMoFm4N42AlaUleDsk/uUV2M3aPOw=; b=h2/brSpLpZyOVd
	cDiBsTqzFmjas6Q0cWsUjz7Tt4Py4Fm9UFLyArYN2+o4rLfWunTTUiYpALlCcp2YGnHiF1O+dEu3Y
	Ge/MlwIKwTpljAgMpyxsPxreg+v83sVzGO+TCiKXHtxCp3/1T3KOWsWNkJeDQXVJp7mnHU0U1lkpS
	d2qer9sn1Xf294QA73yYRxDKuYCLb54TY9n6t6to2GBQyPLuvalFb/7QvSlwdwkW8DVP3bwvx6H+m
	Fyrmw6CrETErwr57rNS/BDGdTg9DDBpIReW5WmmFZPTgm5zYJ1C9KUfL1VosFNL6mqrSYYMrJunes
	IIB/KJmFrCEOVu2o7zeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNKoO-0002w5-8t; Wed, 23 Oct 2019 17:52:44 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNKoF-0002vb-3j
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 17:52:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BoPfvIVDdvty4udNwTCkZ4TIG6ntySJWJjMerromyUA=; b=DfuawKcFZ1dZGwihQQNzKyawT
 8Bc7WeSrNZ4tmIsOp2fuhAbJ2klwlpZDZBm1hOX3vXpRVOZ+8Y4dN5thgFrivskZXypOfP8cN52ID
 rILQ4DwBs6IzV+adRvF7hoNOv6doICt1fj9gNuuNzx/QwfDTJm2bLNd8k1ogsgSm+wKoA=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNKoC-00012g-Cw; Wed, 23 Oct 2019 17:52:32 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 94AB22743021; Wed, 23 Oct 2019 18:52:31 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: docs: cpu-feature-registers: Document ID_AA64PFR1_EL1
Date: Wed, 23 Oct 2019 18:52:22 +0100
Message-Id: <20191023175222.24688-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_105235_199364_EEE8B9C5 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Brown <broonie@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Martin <Dave.Martin@arm.com>

Commit d71be2b6c0e1 ("arm64: cpufeature: Detect SSBS and advertise
to userspace") exposes ID_AA64PFR1_EL1 to userspace, but didn't
update the documentation to match.

Add it.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---

This was posted by Dave as part of the BTI series as it's a dependency
for that but it's a standalone fix so reposting it separately so it
doesn't get tied up with the review of the wider series - AIUI there are
be some other versions of this in flight but whatever gets merged it
seems useful for other work so it'd be good to do so.

 Documentation/arm64/cpu-feature-registers.rst | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
index ffcf4e2c71ef..d6d1efe07d49 100644
--- a/Documentation/arm64/cpu-feature-registers.rst
+++ b/Documentation/arm64/cpu-feature-registers.rst
@@ -168,8 +168,15 @@ infrastructure:
      +------------------------------+---------+---------+
 
 
-  3) MIDR_EL1 - Main ID Register
+  3) ID_AA64PFR1_EL1 - Processor Feature Register 1
+     +------------------------------+---------+---------+
+     | Name                         |  bits   | visible |
+     +------------------------------+---------+---------+
+     | SSBS                         | [7-4]   |    y    |
+     +------------------------------+---------+---------+
+
 
+  4) MIDR_EL1 - Main ID Register
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
      +------------------------------+---------+---------+
@@ -188,7 +195,7 @@ infrastructure:
    as available on the CPU where it is fetched and is not a system
    wide safe value.
 
-  4) ID_AA64ISAR1_EL1 - Instruction set attribute register 1
+  5) ID_AA64ISAR1_EL1 - Instruction set attribute register 1
 
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
@@ -214,7 +221,7 @@ infrastructure:
      | DPB                          | [3-0]   |    y    |
      +------------------------------+---------+---------+
 
-  5) ID_AA64MMFR2_EL1 - Memory model feature register 2
+  6) ID_AA64MMFR2_EL1 - Memory model feature register 2
 
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
@@ -222,7 +229,7 @@ infrastructure:
      | AT                           | [35-32] |    y    |
      +------------------------------+---------+---------+
 
-  6) ID_AA64ZFR0_EL1 - SVE feature ID register 0
+  7) ID_AA64ZFR0_EL1 - SVE feature ID register 0
 
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
