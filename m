Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94DCC8CDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 17:28:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=bUT8FsmAlsKWFu/un9D8PEFGuq71xzUV6G6GI+vhTag=; b=SE
	lUELwWm65haIfh7pejY+BzJaC23s3Z46HqJDSv5UIOm36wqh0qyeTpJ4X+x/vsI3hSlpavVeYZrzB
	K1+7rY6ngrGsUTcyCWiVL76BXS6PKf7lMAjpivstbIKaz2M2mCSSw4Q2TnT3X8WmarJC/5x2cY/ze
	74hfnD8FubTOZZaMjrFj/3G6rs3PsaLqzn0784ckpMw3vW6u7Cn1TKP5yhF/O2qNPyivkhcZHOTuv
	HfqRXZEoqWnlLxIAS/PGQ/25szHdf2Wm3MKjM/T7iUgEu+PRtYgfPbf/jlL1H69KiA+feAM5MSWwV
	2ntdAPu0zTwOpxSP24DApZi7vJV40HDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFgYg-0001xe-Rc; Wed, 02 Oct 2019 15:28:54 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFgYX-0001wm-Hg
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:28:47 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191002152843euoutp0128fe82a15d8cbf25c4dc11782184e367~J3hQh5Tno2941329413euoutp012
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  2 Oct 2019 15:28:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191002152843euoutp0128fe82a15d8cbf25c4dc11782184e367~J3hQh5Tno2941329413euoutp012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570030123;
 bh=KpLLVvizVFJlbuG5FNM/yxSQ5grDqz/h6He5fDPmduI=;
 h=From:To:Cc:Subject:Date:References:From;
 b=b3IosqaB0iUvnkmDBWtSQOiXk33YEGxWFIslovnRHq3Qt5CWiKa0v6FSd/s84p2Ez
 iGEyWl11zlo5j7loeNNT795N+NNBaEhkh/uZm6kVA1UJLdErqg+4BH23sLOboqRcJG
 XOU8zXNCLoAWRSgRwWL6LrxihuSfeHmbZBFOChm0=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191002152842eucas1p17b238b5dfa827747b4c6c4a5f6f98eae~J3hQUh7891745417454eucas1p1b;
 Wed,  2 Oct 2019 15:28:42 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 3E.CF.04309.A22C49D5; Wed,  2
 Oct 2019 16:28:42 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191002152842eucas1p281f3fb4b7efffaf74fa89ffaa4108b3f~J3hQF6Fgl2442424424eucas1p2Q;
 Wed,  2 Oct 2019 15:28:42 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191002152842eusmtrp1de6c2814300e9dbe41f97e834be4780a~J3hQFTUTb3256132561eusmtrp1g;
 Wed,  2 Oct 2019 15:28:42 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-dc-5d94c22a63d5
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F6.E2.04166.A22C49D5; Wed,  2
 Oct 2019 16:28:42 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191002152842eusmtip17256df3fee68d94f9f00899476aa5a54~J3hPqKm6G2682526825eusmtip1c;
 Wed,  2 Oct 2019 15:28:42 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH RESEND] ARM: dts: arndale: Add audio support (WM1811 CODEC
 boards)
Date: Wed,  2 Oct 2019 17:28:31 +0200
Message-Id: <20191002152831.18509-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHIsWRmVeSWpSXmKPExsWy7djP87pah6bEGvRPMrfYOGM9q8X8I+dY
 Lc6f38BusenxNVaLGef3MVmsPXKX3aJ17xF2i8Nv2lkdODw2repk89i8pN6jb8sqRo/Pm+QC
 WKK4bFJSczLLUov07RK4Mr5vvMpecF6wYt+572wNjCv5uhg5OSQETCS+Xp7N3sXIxSEksIJR
 4sjNi6wQzhdGie+nTjNDOJ8ZJb5O+c8C0/Ll2QswW0hgOaPE/kfOcB2/711jAkmwCRhK9B7t
 YwSxRQSEJe4tXQ62g1ngAaPE7rsXmEESwgIhEm9/doMVsQioSnz6swHM5hWwlng2fzHUNnmJ
 1RsOgJ0hIXCdTeJ/zxMmiISLxMejp9khbGGJV8e3QNkyEqcn97BANDQzSvTsvs0O4UxglLh/
 fAEjRJW1xOHjIK9yAN2kKbF+lz5E2FFixZKPTCBhCQE+iRtvBUHCzEDmpG3TmSHCvBIdbUIQ
 1SoSv1dNhzpHSqL7CSiEQEo8JKYfsYUEUKzEmWO/WScwys1CWLWAkXEVo3hqaXFuemqxUV5q
 uV5xYm5xaV66XnJ+7iZGYCo4/e/4lx2Mu/4kHWIU4GBU4uFtCJocK8SaWFZcmXuIUYKDWUmE
 99L6KbFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeasZHkQLCaQnlqRmp6YWpBbBZJk4OKUaGHd+
 CO/erVrmVl81g2N9SrFxSoJwNFPp0S8Ca35/iudP/rdgi8KaX/IzNaWcDpw6yyGybWkBy23G
 hPl7RI8bKaRVF/LG/6j2lBLT91qZdlf+073HOt1XTn6bsuFa5pRnS/kjppU/e71KQ3XJwX7P
 W5U79bTUg1/xP3jwes0vZXdDXVHxq4+Fi5RYijMSDbWYi4oTAcPhc8wBAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCLMWRmVeSWpSXmKPExsVy+t/xu7pah6bEGmz/pmGxccZ6Vov5R86x
 Wpw/v4HdYtPja6wWM87vY7JYe+Quu0Xr3iPsFofftLM6cHhsWtXJ5rF5Sb1H35ZVjB6fN8kF
 sETp2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZXzf
 eJW94Lxgxb5z39kaGFfydTFyckgImEh8efaCpYuRi0NIYCmjxIVTk5m7GDmAElIS81uUIGqE
 Jf5c62KDqPnEKNE2/zQTSIJNwFCi92gfI4gtAlR0b+lydpAiZoEXjBITXs9lAUkICwRJ9O+e
 BdbAIqAq8enPBrAGXgFriWfzF7NAbJCXWL3hAPMERp4FjAyrGEVSS4tz03OLDfWKE3OLS/PS
 9ZLzczcxAkNw27Gfm3cwXtoYfIhRgINRiYe3IWhyrBBrYllxZe4hRgkOZiUR3kvrp8QK8aYk
 VlalFuXHF5XmpBYfYjQFWj6RWUo0OR8YH3kl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tS
 s1NTC1KLYPqYODilGhindJjIb0/L2/lW5rSGzMeHDoX5Wl8iJTcFuAZ+2se1O144TJzra+v0
 nYwvQtinZM1Oiv0+u1xuh6BOUcb3E3t97R7OeyzFLvjFrMVMautz7a7Vm75xGTX0rz8+X1Hl
 7MLeQ3a2HKmTyhVDcvpiBN0VPL5eNuHMvvEsr+qkjJX9Dc5qn+crU5VYijMSDbWYi4oTAfww
 VM9XAgAA
X-CMS-MailID: 20191002152842eucas1p281f3fb4b7efffaf74fa89ffaa4108b3f
X-Msg-Generator: CA
X-RootMTR: 20191002152842eucas1p281f3fb4b7efffaf74fa89ffaa4108b3f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191002152842eucas1p281f3fb4b7efffaf74fa89ffaa4108b3f
References: <CGME20191002152842eucas1p281f3fb4b7efffaf74fa89ffaa4108b3f@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_082845_790990_72BB3809 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add sound node and the clock configurations for the I2S controller
for audio support on the Exynos5250 SoC Arndale boards with
WM1811 based audio daughter board.

We need to increase drive strength of the I2S bus, otherwise
the audio CODEC doesn't work. Likely the CODEC's master clock
is the main issue here.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v2:
 - none.
Changes since v1:
 - moved &clock, &clock_audss parts to preserve alphabetical order
---
 arch/arm/boot/dts/exynos5250-arndale.dts | 27 +++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5250-arndale.dts b/arch/arm/boot/dts/exynos5250-arndale.dts
index 6fcb78a354fe..d6c85efdb465 100644
--- a/arch/arm/boot/dts/exynos5250-arndale.dts
+++ b/arch/arm/boot/dts/exynos5250-arndale.dts
@@ -11,6 +11,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/clock/samsung,s2mps11.h>
+#include <dt-bindings/sound/samsung-i2s.h>
 #include "exynos5250.dtsi"

 / {
@@ -135,6 +136,12 @@
 		};
 	};

+	sound {
+		compatible = "samsung,arndale-wm1811";
+		samsung,audio-cpu = <&i2s0>;
+		samsung,audio-codec = <&wm1811>;
+	};
+
 	fixed-rate-clocks {
 		xxti {
 			compatible = "samsung,clock-xxti";
@@ -151,6 +158,16 @@
 	};
 };

+&clock {
+	assigned-clocks = <&clock CLK_FOUT_EPLL>;
+	assigned-clock-rates = <49152000>;
+};
+
+&clock_audss {
+	assigned-clocks = <&clock_audss EXYNOS_MOUT_AUDSS>;
+	assigned-clock-parents = <&clock CLK_FOUT_EPLL>;
+};
+
 &cpu0 {
 	cpu0-supply = <&buck2_reg>;
 };
@@ -502,9 +519,11 @@
 &i2c_3 {
 	status = "okay";

-	wm1811a@1a {
+	wm1811: codec@1a {
 		compatible = "wlf,wm1811";
 		reg = <0x1a>;
+		clocks = <&i2s0 CLK_I2S_CDCLK>;
+		clock-names = "MCLK1";

 		AVDD2-supply = <&main_dc_reg>;
 		CPVDD-supply = <&main_dc_reg>;
@@ -540,9 +559,15 @@
 };

 &i2s0 {
+	assigned-clocks = <&i2s0 CLK_I2S_RCLK_SRC>;
+	assigned-clock-parents = <&clock_audss EXYNOS_I2S_BUS>;
 	status = "okay";
 };

+&i2s0_bus {
+	samsung,pin-drv = <EXYNOS4_PIN_DRV_LV2>;
+};
+
 &mali {
 	mali-supply = <&buck4_reg>;
 	status = "okay";
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
