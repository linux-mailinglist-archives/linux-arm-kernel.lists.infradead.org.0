Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E836E1A25D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 17:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jdtz4WiBqsaHP8mFdDC/2Qhf5i5lLhDRg+9FtUbMhE=; b=m8ckIZekm5daxz
	w5RdC9sCqtbv/n2NR9lfqFSuVkOhOe7Rkxz4eAXS4Va45pyvYjSPHd46mO/8D2+4vCCk2wDTfLmRO
	vj62U0MfZOpcMul9POmGOlmFdoui2TDBN9cRiMmDeWhI0/TFzGrSHvjdIW2G5u3EZwMRY5xE/zEgH
	vT5iewRyMDL/13XTNZv/BoNSMFOKfbYsizRcwyBmFAVbv5VR9U8wQNBgQDS0fHW8jlYk/JQDR9ewy
	FmT8hl+9OQUlBng5BwZ7IP1UrmH190jp8Gv56pWjRkaxJnDZ97zhmpGcGnLqakRJ0EndVPGQtmO5A
	orxwqgI5iZCMmqKPV4Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMCuc-0006oo-7r; Wed, 08 Apr 2020 15:46:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCuQ-0006mv-0p
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 15:46:35 +0000
Received: from mail.kernel.org (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15F992076D;
 Wed,  8 Apr 2020 15:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586360791;
 bh=eBOZxoYZIMRnDM3jqbg57vKJcreJqVFOz+37SNmuNs4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=m3ew244OM/fx4Cu3h9fPyfLf7dGPK1IEjnzkaAzjeJ2pyU6ExxesMqoeXxReWfjUa
 rxrbcrR0NGhGZQbGRLKGMKe7Uqx562qkP1V9lqdNJEfL633G8HdHKuUkhtyLOOXUZS
 3NUC+M8hmFEKiw5lHbohoYAWA7LUdlKXdg+4XZv8=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jMCuL-000cAh-9J; Wed, 08 Apr 2020 17:46:29 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH 06/35] docs: amu: supress some Sphinx warnings
Date: Wed,  8 Apr 2020 17:45:58 +0200
Message-Id: <0063550dd4dd03ec746c056d4d5db447f825a1a8.1586359676.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <cover.1586359676.git.mchehab+huawei@kernel.org>
References: <cover.1586359676.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_084634_100728_32E3F418 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add extra blank lines on some places, in order to avoid those
warnings when building the docs:

    Documentation/arm64/amu.rst:26: WARNING: Unexpected indentation.
    Documentation/arm64/amu.rst:60: WARNING: Unexpected indentation.
    Documentation/arm64/amu.rst:81: WARNING: Unexpected indentation.
    Documentation/arm64/amu.rst:108: WARNING: Unexpected indentation.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/arm64/amu.rst | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/arm64/amu.rst b/Documentation/arm64/amu.rst
index 5057b11100ed..452ec8b115c2 100644
--- a/Documentation/arm64/amu.rst
+++ b/Documentation/arm64/amu.rst
@@ -23,6 +23,7 @@ optional external memory-mapped interface.
 
 Version 1 of the Activity Monitors architecture implements a counter group
 of four fixed and architecturally defined 64-bit event counters.
+
   - CPU cycle counter: increments at the frequency of the CPU.
   - Constant counter: increments at the fixed frequency of the system
     clock.
@@ -57,6 +58,7 @@ counters, only the presence of the extension.
 
 Firmware (code running at higher exception levels, e.g. arm-tf) support is
 needed to:
+
  - Enable access for lower exception levels (EL2 and EL1) to the AMU
    registers.
  - Enable the counters. If not enabled these will read as 0.
@@ -78,6 +80,7 @@ are not trapped in EL2/EL3.
 
 The fixed counters of AMUv1 are accessible though the following system
 register definitions:
+
  - SYS_AMEVCNTR0_CORE_EL0
  - SYS_AMEVCNTR0_CONST_EL0
  - SYS_AMEVCNTR0_INST_RET_EL0
@@ -93,6 +96,7 @@ Userspace access
 ----------------
 
 Currently, access from userspace to the AMU registers is disabled due to:
+
  - Security reasons: they might expose information about code executed in
    secure mode.
  - Purpose: AMU counters are intended for system management use.
@@ -105,6 +109,7 @@ Virtualization
 
 Currently, access from userspace (EL0) and kernelspace (EL1) on the KVM
 guest side is disabled due to:
+
  - Security reasons: they might expose information about code executed
    by other guests or the host.
 
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
