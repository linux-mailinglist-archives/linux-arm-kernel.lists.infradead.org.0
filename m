Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59049B9046
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:04:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nTHRDiZZADcejfGrjW+Oh7qdsxWbJpdvQbj+JGacHms=; b=Hg1SYAjdqTCEkb0FBAvM3b4PEy
	hpF5S9CKYLke9/MeTm8QcESm7vV3q6kXGs0a7ACGaznNucfB40PUXZTGHX3u5DizK++eeAV9/e4YR
	LjtUuC87Fn3EwiG3LSLW64jixqOXPN+JejHmXurhBdH1BFY4nZfD29PgsXq0mNC030mmkspxKyx3N
	5ATsiEbwbS6O6PtnKMIaiGLgGnmJ4uvDr8uOkJSFWpFDUAOudqmy747Ed81VmaNuRi7sM7Ox5JOcs
	hYnZsKDeL51oD+Zp+GPHRie6taggEb/Onzs5vKkTHzUs+spM9fgHuEWs0DyJRP5glriS46s8pkOVs
	aE/xYdYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIaf-00053O-PM; Fri, 20 Sep 2019 13:04:49 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIZK-0003Nh-Lv
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:03:28 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190920130325euoutp012e87c9a9714ab2a8dfc69721e8fccd51~GJy_Llu2o3045630456euoutp01h
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 13:03:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190920130325euoutp012e87c9a9714ab2a8dfc69721e8fccd51~GJy_Llu2o3045630456euoutp01h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568984605;
 bh=6Pr3bvlwTEEuaJryJIjyun0TpsiDiHDMaMQxx7hutTk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ubMgNsHARLMq1TeGGWcA+08NV7BWgfXB58Pll3imGPzTllhXVFCsaU9V6SnZ3MQub
 8qc+B6C+GmTdlCueYGuSoKPzv3P1H3GaQTKDUlpRWhOUp/5IT7ZgmKwKT/mWzZ8BXu
 XsP0v/NDoGDJjACX4uTZY7AQXEsczYCixit7Evvo=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190920130324eucas1p2026e88c13bccc5334aa475f44156ae9a~GJy9YmXuM1572315723eucas1p2Y;
 Fri, 20 Sep 2019 13:03:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 57.DB.04309.B1EC48D5; Fri, 20
 Sep 2019 14:03:23 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130323eucas1p218c6822eca3869eb0d3b7380497bbca4~GJy8Pm_q91587515875eucas1p2n;
 Fri, 20 Sep 2019 13:03:23 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190920130322eusmtrp18133960dcc519cdf00c91349b024d1ed~GJy7_A22n0476604766eusmtrp1j;
 Fri, 20 Sep 2019 13:03:22 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-fa-5d84ce1bac4a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 82.11.04117.A1EC48D5; Fri, 20
 Sep 2019 14:03:22 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130322eusmtip22fb2f23f6afc2355304e5de35b82149b~GJy7UlkfU1284812848eusmtip2f;
 Fri, 20 Sep 2019 13:03:22 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org, krzk@kernel.org
Subject: [PATCH v2 08/10] ASoC: samsung: Rename Arndale card driver
Date: Fri, 20 Sep 2019 15:02:17 +0200
Message-Id: <20190920130218.32690-9-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920130218.32690-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHe89l5zidnqbim0bGNEvBWyWdUCKpYF+CPpYXaupBpW3ajloW
 qJmmeWtoMVHDUd6amDZ1lWGTeVl4m6MhkpqXBLPSAq3UQvN4tL79nv/z/7/Pw8NLouJ63J1M
 VKYwKqVMLhEIMUPfmsXfYzgnOmhplaZtVhNCPy9vxumHM3MC2parB3R1zzBOWywtBP3Tlo/Q
 +o+jOF1ueYPQTT2TBL38zYjTuZ09BN39NQ+nrQ0ryGlHactytkD6qmKSkOp19wTS1ppMqaZq
 E0hL2nRAuqw/cIGIEIbFMfLENEYVeOqKMKG/rBAkz4hvmNoWkSww7VQA7EhIHYfZxlqMYzHV
 AKDul6QACLd4BcDR8nWML5YBrNT2CXYTU+1tOJ+oB3Bx0PdfYmOiHeEaAioYFveWAI5dqMNw
 qjwb50wotYBAde+zbZMzdQZ+erBKFACSxKhD8N3a9gARFQo7520EP8wTNrZ0oRzbUWFwYewx
 wr0DKQMBX2wOAd50FlbOzO9s5ww/m9t2wvvhQFkRxgfuAFj0epzgCzWAU2btTjoUdputOLcF
 SvnC5o5AXg6HS9UWhJMh5QjHFvdyMrqFpQYNyssimH9XzLu94W+dBuHZHRbObWI8S+FanRnn
 D3QfwLmBdYEaeFb8H6YFQAfcmFRWEc+wR5XM9QBWpmBTlfEBsUkKPdj6PgMb5pWXoONPjAlQ
 JJA4iLRvc6LFuCyNTVeYACRRiYuoKiQ7WiyKk6XfZFRJl1WpcoY1AQ8Sk7iJbu2ZjhRT8bIU
 5irDJDOq3S5C2rlngUvekZagifovXn6Z+zzEyWhTl6GOPTcodwrOGE54umqMcbDqNImufobI
 wSMjj/KcvN7P9tcpjQarfCXKtarhRO3F8Wtlx2wZtWEK7dDtH9/9o4oLfTyLMkcE9t20/YSx
 dBhz8iw2h8QKK8LPq2Z91I0bT5CaIeXBiJPTH8ZagyQYmyAL9kNVrOwvfUZ2BjoDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4PV2pcy2xBhPvWVpcuXiIyWLjjPWs
 FlMfPmGzuNK6idFi/pFzrBbnz29gt/h2pYPJYtPja6wWM87vY7JYe+Quu8Xn9/tZLVr3HmG3
 OPymndXi4oovTA58Hhs+N7F57Jx1l91j06pONo/NS+o9ps/5z+jRt2UVo8fnTXIB7FF6NkX5
 pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GacmdzMWPBSq
 OLTlLVMD4wP+LkZODgkBE4n7W7ewdjFycQgJLGWUWLvkIUsXIwdQQkpifosSRI2wxJ9rXWwQ
 NZ8YJfaeWcAMkmATMJToPdrHCGKLCGhKdMy7DTaIWeA7k8SBxyfBioQFnCVeTPnBDjKURUBV
 4vJPNpAwr4C1xN7nV9ghFshLrN5wAKycU8BG4uWNRUwgthBQzel9e9knMPItYGRYxSiSWlqc
 m55bbKRXnJhbXJqXrpecn7uJERgL24793LKDsetd8CFGAQ5GJR5ej2MtsUKsiWXFlbmHGCU4
 mJVEeOeYNsUK8aYkVlalFuXHF5XmpBYfYjQFumkis5Rocj4wTvNK4g1NDc0tLA3Njc2NzSyU
 xHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTDGXkt1fTIv2cpUc+FjR9OdYlP+yVUVrr1Ut2BN
 aPf2o/wF9a/3i7ds57ereF5oUjDDnVPdNXJa3JcDJWuPT1c+OlVoJecklZPpvy8+fsm8R9Gs
 p/fa5r72nxuMGS4/0HiiWOC333yXsM1Myz0c0219DOfM/PNha3ySxe/XRT+q11atXvtwxXVH
 JZbijERDLeai4kQA4wv62JsCAAA=
X-CMS-MailID: 20190920130323eucas1p218c6822eca3869eb0d3b7380497bbca4
X-Msg-Generator: CA
X-RootMTR: 20190920130323eucas1p218c6822eca3869eb0d3b7380497bbca4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190920130323eucas1p218c6822eca3869eb0d3b7380497bbca4
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130323eucas1p218c6822eca3869eb0d3b7380497bbca4@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_060326_866220_294A750A 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename arndale_rt5631.c to just arnddale.c as we support other CODECs
than RT5631.  While at it replace spaces in Kconfig with tabs.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v1:
 - new patch.
---
 sound/soc/samsung/Kconfig                         | 10 +++++-----
 sound/soc/samsung/Makefile                        |  4 ++--
 sound/soc/samsung/{arndale_rt5631.c => arndale.c} |  0
 3 files changed, 7 insertions(+), 7 deletions(-)
 rename sound/soc/samsung/{arndale_rt5631.c => arndale.c} (100%)

diff --git a/sound/soc/samsung/Kconfig b/sound/soc/samsung/Kconfig
index 6803cbfa9e46..1a0b163ca47b 100644
--- a/sound/soc/samsung/Kconfig
+++ b/sound/soc/samsung/Kconfig
@@ -194,11 +194,11 @@ config SND_SOC_ODROID
 	help
 	  Say Y here to enable audio support for the Odroid XU3/XU4.
 
-config SND_SOC_ARNDALE_RT5631_ALC5631
-        tristate "Audio support for RT5631(ALC5631) on Arndale Board"
-        depends on I2C
-        select SND_SAMSUNG_I2S
-        select SND_SOC_RT5631
+config SND_SOC_ARNDALE
+	tristate "Audio support for Arndale Board"
+	depends on I2C
+	select SND_SAMSUNG_I2S
+	select SND_SOC_RT5631
 	select MFD_WM8994
 	select SND_SOC_WM8994
 
diff --git a/sound/soc/samsung/Makefile b/sound/soc/samsung/Makefile
index c3b76035f69c..8f5dfe20b9f1 100644
--- a/sound/soc/samsung/Makefile
+++ b/sound/soc/samsung/Makefile
@@ -39,7 +39,7 @@ snd-soc-lowland-objs := lowland.o
 snd-soc-littlemill-objs := littlemill.o
 snd-soc-bells-objs := bells.o
 snd-soc-odroid-objs := odroid.o
-snd-soc-arndale-rt5631-objs := arndale_rt5631.o
+snd-soc-arndale-objs := arndale.o
 snd-soc-tm2-wm5110-objs := tm2_wm5110.o
 
 obj-$(CONFIG_SND_SOC_SAMSUNG_JIVE_WM8750) += snd-soc-jive-wm8750.o
@@ -62,5 +62,5 @@ obj-$(CONFIG_SND_SOC_LOWLAND) += snd-soc-lowland.o
 obj-$(CONFIG_SND_SOC_LITTLEMILL) += snd-soc-littlemill.o
 obj-$(CONFIG_SND_SOC_BELLS) += snd-soc-bells.o
 obj-$(CONFIG_SND_SOC_ODROID) += snd-soc-odroid.o
-obj-$(CONFIG_SND_SOC_ARNDALE_RT5631_ALC5631) += snd-soc-arndale-rt5631.o
+obj-$(CONFIG_SND_SOC_ARNDALE) += snd-soc-arndale.o
 obj-$(CONFIG_SND_SOC_SAMSUNG_TM2_WM5110) += snd-soc-tm2-wm5110.o
diff --git a/sound/soc/samsung/arndale_rt5631.c b/sound/soc/samsung/arndale.c
similarity index 100%
rename from sound/soc/samsung/arndale_rt5631.c
rename to sound/soc/samsung/arndale.c
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
