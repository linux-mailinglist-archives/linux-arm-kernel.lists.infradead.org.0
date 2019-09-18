Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FA3B61CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 12:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9f2oTSVSQ/qSWqp1F+/2p95WszgsWHFPqYP5MvbGZSo=; b=XmMfs3hJPDleiIissbmKtCuXsQ
	accGVcR6Ifv3Q2OeobXjV8VTEPqzTh8ghQXMrRdi1cTlHifUA1aFezazMMVUfGAa0667fJKrHJjcm
	R1qgso8Rcrghog5Q2P6Xzb/smKsASWofFUyY1qulF4Jy+zphpgjaLcpEIb3/1SZTi12tOhVpxX8cA
	k5JUKUFrg5iWXAe3HYAOyw1YzpxUTbluvAds7KP6W85sLJ39J8dpVyQxs32j6kwF+BXwe2hYMHQPz
	rfAD+Ac/zZcpZVV6CzedLwPQUhSGv8AwIkI2z1aC8WmufPRnOtezEjic4cxnk8EfCEXDA6W3sd7W1
	2Cs7H36g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXVl-0002F2-Sh; Wed, 18 Sep 2019 10:48:37 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXUV-0000qa-AF
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 10:47:21 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190918104717euoutp02016070fb5cc2a2cfb681efc2a996d2dd~FgpirrmiI3079330793euoutp02H
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 10:47:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190918104717euoutp02016070fb5cc2a2cfb681efc2a996d2dd~FgpirrmiI3079330793euoutp02H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568803637;
 bh=QugPE4MZnx6zOp3ibFXL7/tFN1aS3dnRmu2waVbHhbU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jQBxVnX+gdnkAq5lPfUkO0AHwl8a0jW+wZRyExafM93EuhJwvo7nIEV/Zcu4CY/FS
 fp/yZ0x9MWJyi3Dy2rvlXe+8PHUEAJrwtnd2biMOZGXk2nrDSrskBILBC5Zd/PieaC
 rIgFNZUfhBfTFgF/2+dR/S8vg1Mz0wc9qX5P8Xlk=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190918104716eucas1p251ed5e0abaefa4977186953756c7a64d~Fgph_xYSK3054430544eucas1p2j;
 Wed, 18 Sep 2019 10:47:16 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 58.E3.04374.43B028D5; Wed, 18
 Sep 2019 11:47:16 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190918104715eucas1p2a051a537a0e86becfbbcb36c172ef705~FgphB12FA2474324743eucas1p2l;
 Wed, 18 Sep 2019 10:47:15 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190918104715eusmtrp28a53b56ffffba7d241ce9ab9da663899~FgpgyO67u1585315853eusmtrp2W;
 Wed, 18 Sep 2019 10:47:15 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-7b-5d820b34c12f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 26.C6.04166.33B028D5; Wed, 18
 Sep 2019 11:47:15 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190918104714eusmtip1d4031a28619ce1c6ff5a432d49a3f23d~FgpgJq3xP0589505895eusmtip1M;
 Wed, 18 Sep 2019 10:47:14 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org
Subject: [PATCH v1 9/9] ARM: dts: arndale: Add audio support (WM1811 CODEC
 boards)
Date: Wed, 18 Sep 2019 12:46:34 +0200
Message-Id: <20190918104634.15216-10-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190918104634.15216-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0gUYRTF+2Z2dkZtZRpNbyZJi0IGaaLRVBJGQZsU2AMlTWrTQUVdZUdN
 C1F3NV/5SmTFfGFiaonbJpJJWrq1qPkCDVE0IyGRlsJXvm3XUfrvd889h3P5+CicqSMcqAhF
 HKdUyKOkYktR6+fVgRNeVqrgk8v9wI4Md2Hs69Jmgi35PiNmRzJ0iK3SDxDs4KCWZJdHsjBW
 9+MrwZYOdmBsk36SZBd+dxJsxns9yXb/yiTY4fpFzMdapl1QiWVtZZOkTNeYLZa9qU2Racq3
 kSy/pRHJFnRH/MhAS+9QLioigVO6n79nGa6vLkexKjpRs34jFakkOciCAtoL1ubG8BxkSTF0
 PYKpXKPYvGDoRQTFXxwFXkCQN3psLzDRpBYJgRcIatSFu4MpUJu2QppdYtoD8j7lIzPb0nYw
 UZ69U4HTGxgYN8tE5oUNfQvSjH8IM4toF9AMfdzRJbQ3jLbNkEKdE7zUfsDNbGHS54emd9qA
 biXheb0KF0yXILOkSiSwDcwZWnbDjrDdVoUJATWCJ+0TpDAUIvhmqEaC6xx0G4ZNZ1Cm+1yh
 +Z27IF8A42QPZpaBtoYx4wGzjJvwaasGF2QJZD1mBLczrDdqMIEdIHdme/ccGUz19JLCMxYg
 qCvCC5FT2f+uaoQakT0Xz0eHcbyngnvgxsuj+XhFmFtITLQOmX5P35Zh6S3q2LjfhWgKSfdL
 oD81mCHkCXxSdBcCCpfaSvySU4IZSag86SGnjLmrjI/i+C50mBJJ7SWP9k0HMXSYPI6L5LhY
 Trm3xSgLh1REGK4q/P/OrkUF9lZ61Iy7sD4HY+dvjq055x+9MruSc3Zjq+J25aG8KaaoobLA
 11ndHhIQoQxkLmfRiqXisL4BLvIZnxzsn9dptaK9aEfg9qdzNhXz12u9K5g7p2yvLekGgo7+
 DMisVad70j75NVpS8irQNd33zKR+NW01sWFcKuLD5R7HcSUv/weelMSjOQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4XV1j7qZYg+WXhC2uXDzEZLFxxnpW
 i6kPn7BZXGndxGgx/8g5Vovz5zewW3y70sFksenxNVaLGef3MVmsPXKX3eLz+/2sFq17j7Bb
 HH7TzmpxccUXJgc+jw2fm9g8ds66y+6xaVUnm8fmJfUe0+f8Z/To27KK0ePzJrkA9ig9m6L8
 0pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07m5TUnMyy1CJ9uwS9jCML5jAWNAlU
 TP8d1MDYxNvFyMkhIWAicXttM0sXIxeHkMBSRol5tyYydTFyACWkJOa3KEHUCEv8udbFBlHz
 iVHi6oS7rCAJNgFDid6jfYwgtoiAmMTtOZ3MIEXMAl3MEu93/AIrEhYIkrj1eA4biM0ioCox
 /cJBFhCbV8BG4urOJ+wQG+QlVm84wAxicwLFP114AFYjJGAtseDYNMYJjHwLGBlWMYqklhbn
 pucWG+oVJ+YWl+al6yXn525iBMbCtmM/N+9gvLQx+BCjAAejEg/vgVMNsUKsiWXFlbmHGCU4
 mJVEeANq62OFeFMSK6tSi/Lji0pzUosPMZoCHTWRWUo0OR8Yp3kl8YamhuYWlobmxubGZhZK
 4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhgtJE8nfospyq5aV8GRzePT0spkWBB9bhLnY5PQ
 xe8fWUx8sPPO4k+s5dXf5DavX/lXg6ObeUH1sUenbf1deTV71pjaWT5mE+Q7pNlgevpq5vT6
 h759171cI7gZ9+9y/69avnTD0WNVpRGOTF0vl86UFPpydc66U3nsLplqrXy/ju1kzJu7bIMS
 S3FGoqEWc1FxIgAnEdf7mwIAAA==
X-CMS-MailID: 20190918104715eucas1p2a051a537a0e86becfbbcb36c172ef705
X-Msg-Generator: CA
X-RootMTR: 20190918104715eucas1p2a051a537a0e86becfbbcb36c172ef705
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190918104715eucas1p2a051a537a0e86becfbbcb36c172ef705
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104715eucas1p2a051a537a0e86becfbbcb36c172ef705@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_034719_509600_6386289D 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, krzk@kernel.org, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add sound node and the clock configurations for the I2S controller
for audio support on the Exynos5250 SoC Arndale boards with
WM1811 based audio daugther board.

We need to increase drive strength of the I2S bus, otherwise
the audio CODEC doesn't work. Likely the CODEC's master clock
is the main issue here.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
 arch/arm/boot/dts/exynos5250-arndale.dts | 27 +++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5250-arndale.dts b/arch/arm/boot/dts/exynos5250-arndale.dts
index dc6fa6fe83f1..62aa6720aa88 100644
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
@@ -499,12 +506,24 @@
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
 &mixer {
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
