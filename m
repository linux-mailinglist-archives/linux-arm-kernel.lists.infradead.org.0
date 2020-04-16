Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80ED11AC073
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:58:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wJdOFnz1pAxYOztoEBv2kZpt1Ms6AAH+BN5Ca01wD+s=; b=LB2k/u3H61Do5d0Jow+AiH9Y7e
	yVVnr9nqlb9ww8BOadFgzxjX3XZ+OjLWTofab/Lby/rbcNfOPumY4+BdlyiP5D9PLsb1V4EmWSXQ8
	XEmcQCEGVkykhhSRLe1VgzPzB+P0NESjLjwtGnVNKWpihivZHeByGa9EcyL0PQWHeCwPoxgoUxwF8
	wjPJW0gDKjBW0gW4mViIZYf2NE5TI+d99uxDZRsKUjTf9KqZmDwtoZne/uEy/Wp8HjaT9oicGLjiX
	O3F4/0o6Oc2QhyH0tnQhTyrQFcMGwgdbBwUzLKfwqO/yrBD4T2aCy1BhznqSHRBAH6anZXX7adOGX
	+sRzxuGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP39U-0000vq-UE; Thu, 16 Apr 2020 11:57:53 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP38r-0000VV-Px
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 11:57:15 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:fd83:81bb:c1d7:433d])
 by michel.telenet-ops.be with bizsmtp
 id TPx0220094dKHqf06Px0kz; Thu, 16 Apr 2020 13:57:03 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jP38e-0003Kb-9y; Thu, 16 Apr 2020 13:57:00 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jP38e-0005Jx-7f; Thu, 16 Apr 2020 13:57:00 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 2/2] [RFC] arm64: Add dependencies to vendor-specific errata
Date: Thu, 16 Apr 2020 13:56:58 +0200
Message-Id: <20200416115658.20406-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200416115658.20406-1-geert+renesas@glider.be>
References: <20200416115658.20406-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_045713_985464_6A68C90F 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Wei Xu <xuwei5@hisilicon.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Robert Richter <rrichter@marvell.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the user is asked about enabling support for each and every
vendor-specific erratum, even when support for the specific platform is
not enabled.

Fix this by adding platform dependencies to the config options
controlling support for vendor-specific errata.

Note that FUJITSU_ERRATUM_010001 is left untouched, as no config symbol
exists for the Fujitsu A64FX platform.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/Kconfig | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 8d33d7fed6d8549b..81f52f0b988e6350 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -622,6 +622,8 @@ config ARM64_ERRATUM_1542419
 
 	  If unsure, say Y.
 
+if ARCH_THUNDER2
+
 config CAVIUM_ERRATUM_22375
 	bool "Cavium erratum 22375, 24313"
 	default y
@@ -697,6 +699,8 @@ config CAVIUM_TX2_ERRATUM_219
 
 	  If unsure, say Y.
 
+endif # ARCH_THUNDER2
+
 config FUJITSU_ERRATUM_010001
 	bool "Fujitsu-A64FX erratum E#010001: Undefined fault may occur wrongly"
 	default y
@@ -718,6 +722,7 @@ config FUJITSU_ERRATUM_010001
 
 config HISILICON_ERRATUM_161600802
 	bool "Hip07 161600802: Erroneous redistributor VLPI base"
+	depends on ARCH_HISI
 	default y
 	help
 	  The HiSilicon Hip07 SoC uses the wrong redistributor base
@@ -726,6 +731,8 @@ config HISILICON_ERRATUM_161600802
 
 	  If unsure, say Y.
 
+if ARCH_QCOM
+
 config QCOM_FALKOR_ERRATUM_1003
 	bool "Falkor E1003: Incorrect translation due to ASID change"
 	default y
@@ -768,8 +775,11 @@ config QCOM_FALKOR_ERRATUM_E1041
 
 	  If unsure, say Y.
 
+endif # ARCH_QCOM
+
 config SOCIONEXT_SYNQUACER_PREITS
 	bool "Socionext Synquacer: Workaround for GICv3 pre-ITS"
+	depends on ARCH_SYNQUACER
 	default y
 	help
 	  Socionext Synquacer SoCs implement a separate h/w block to generate
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
