Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226421D9A30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 16:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NeoFk8P8tmr/iZN6dJMGK1tWQMi0SZZkxpFDDstpPDg=; b=uzt6FVYkBSU0WZ
	Z8xCIKp4FHlrgQogM0doSo6+STvRfebqqr8TTHejnmfTSxo7FeWvh1GCmMpNCpDnyTKJo+IfU2udP
	kYC+GfY+3oLuSzd3/tVrobLan7p7v69eqGZjkWwAyP+uhiFQoBKoZYX8AqxTiUZ2icGXGJH7MD+Ll
	hXE6Sm5WWrSWdJ5jsklfCTJGXrZb5L+g4TAz9G5l8PfZFS9F9VrCziHO1RKOEUzHneVmAlHWbeD1u
	TMAODCgFjienooqWESvNM/bVU0FJIrU3UH04QH6fDZKz8WoPVQW2+UaQwn0ZI/vphAlnDdNK6BsjH
	mqkXQpEAA4Atj8DXIqLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3QW-0001ps-Hj; Tue, 19 May 2020 14:41:04 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3Hu-0006Ra-7N
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 14:32:13 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 7D7E52A9;
 Tue, 19 May 2020 10:32:08 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Tue, 19 May 2020 10:32:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=Rlk4qrJ6yWazVdgX1ne5EXVV/T
 v1KNqa9KLIo1m4QFs=; b=wdbszZvBkVf/nGSHTzPyqOPN9vPvKgqox6+6Tx8Q8Q
 vldSNqDpSAy8AguSyRpGRAwnETiPMR/HJTM6FhVJ047t1XPYNlJWCnuVNgMMncJp
 9uI946ogGknuw2J9KzuSTSTZgBQKZXM9Jr3IOftMKrxS7bgcek5PSaYyUH8CUsci
 aBVLaJv698vNiGw7y6v0gVdNZZctKw5ctQsUJaiWG8WF9lJtFAr/HegUKA6mIZcB
 E0akyQx4xNj+JyvXT4fu/vuXPuul/4X9CMZjn3CxvpvPAFUsdI/aXTUVklUjJe+B
 wjhIQq8TZ59M+YqaxB4Bu+bkuA4IZ15unSVvzQN/FtKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Rlk4qrJ6yWazVdgX1
 ne5EXVV/Tv1KNqa9KLIo1m4QFs=; b=4MiZn6qI92hnePjRBoF1j7N/HJM+eV94u
 CnkYFrQDzmlB38HcO8//yxFPSFz/dYrXxb1DeEl4jORXYBjXC65tCuQIBf2PXTdc
 UriYVntEtQbAvQTVSVibrBNI8UiMmYuF6iiAWkNc0Bu19YxF59OmNNYMc057OKoT
 IJKW+ncflE9A28DQIv+/8B0aRyT6AWVSvFRu7qw5ukATgKXsjg0E+RXnb7Id0t5M
 JnvqGIChl8Ya9/OCiFKpp7p53bHEOWC2bEVuq5G4vthB8+NXD62KsoNlASvm/ZAr
 GTIT9oW0P4y5/ejWbBnJmAaa7Zfh+Co8jG6eB8MfWnIdhkVveriNw==
X-ME-Sender: <xms:5-3DXiBLgKyNe5_lu6ngsxiJSP4vimnCE-gS8hTHS5VPXlIIVqD2WQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddtjedgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuggftrfgrthhtvghrnhepkefhieffjeevfeevhedtieeihfefvdejle
 dvvddthefftedujeethfeuueelfedtnecukfhppedugedrvddrieeirdduvddvnecuvehl
 uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifse
 grjhdrihgurdgruh
X-ME-Proxy: <xmx:5-3DXsjYlP8YJP36rhRrS2Chf4Wqc-hBzF35zbCl2ZQ3wujt9aI2Ig>
 <xmx:5-3DXllV5Mw7NxNxKyDalbWkne9Jk4rRhLEQsV6u2ersB8ixy-HV0Q>
 <xmx:5-3DXgy51YK8TfpAUu3zEWn-OmMyxs-jfzsMCnS_9bZ-Fh3mj1KDvQ>
 <xmx:6O3DXo5km_-KEyHYywfw-7wrsYmQOVB-Uh8YOMaMVmnMP0ULTxoB7A>
Received: from localhost.localdomain
 (ppp14-2-66-122.adl-apt-pir-bras31.tpg.internode.on.net [14.2.66.122])
 by mail.messagingengine.com (Postfix) with ESMTPA id 218AD3066429;
 Tue, 19 May 2020 10:32:05 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: Implement functions for HAVE_FUNCTION_ARG_ACCESS_API
Date: Wed, 20 May 2020 00:01:32 +0930
Message-Id: <20200519143132.603579-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_073211_133656_DE4354F1 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [64.147.123.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-kernel@vger.kernel.org, linux@armlinux.org.uk, oleg@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows extraction of kernel function arguments via kprobes on ARM.
Based on the arm64 implementation and adapted for the 32-bit AAPCS.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
The description for HAVE_FUNCTION_ARG_ACCESS_API was pretty vague on what was
required. I've implemented enough to enable argument extraction for kprobes; is
there anything else needed to satisfy HAVE_FUNCTION_ARG_ACCESS_API?

 arch/arm/Kconfig              |  1 +
 arch/arm/include/asm/ptrace.h | 24 ++++++++++++++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c77c93c485a0..d82f80845e03 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -82,6 +82,7 @@ config ARM
 	select HAVE_EXIT_THREAD
 	select HAVE_FAST_GUP if ARM_LPAE
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
+	select HAVE_FUNCTION_ARG_ACCESS_API
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
 	select HAVE_FUNCTION_TRACER if !XIP_KERNEL && (CC_IS_GCC || CLANG_VERSION >= 100000)
 	select HAVE_GCC_PLUGINS
diff --git a/arch/arm/include/asm/ptrace.h b/arch/arm/include/asm/ptrace.h
index 91d6b7856be4..71e7649deac9 100644
--- a/arch/arm/include/asm/ptrace.h
+++ b/arch/arm/include/asm/ptrace.h
@@ -149,6 +149,30 @@ static inline unsigned long regs_get_register(struct pt_regs *regs,
 	return *(unsigned long *)((unsigned long)regs + offset);
 }
 
+/*
+ * Read a register given an architectural register index r.
+ */
+static inline unsigned long pt_regs_read_reg(const struct pt_regs *regs, int r)
+{
+	return regs->uregs[r];
+}
+
+/**
+ * regs_get_kernel_argument() - get Nth function argument in kernel
+ * @regs:	pt_regs of that context
+ * @n:		function argument number (start from 0)
+ *
+ * regs_get_argument() returns @n th argument of the function call.
+ */
+static inline unsigned long regs_get_kernel_argument(struct pt_regs *regs,
+						     unsigned int n)
+{
+#define NR_REG_ARGUMENTS 4
+	if (n < NR_REG_ARGUMENTS)
+		return pt_regs_read_reg(regs, n);
+	return 0;
+}
+
 /* Valid only for Kernel mode traps. */
 static inline unsigned long kernel_stack_pointer(struct pt_regs *regs)
 {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
