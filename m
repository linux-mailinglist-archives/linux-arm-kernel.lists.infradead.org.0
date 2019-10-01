Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44078C3464
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 14:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nTHRDiZZADcejfGrjW+Oh7qdsxWbJpdvQbj+JGacHms=; b=tZKuyTGN/4Q3HoIDdQTrsqln3r
	vRZjT/vRsfDxtrsEcdLAo/KxHfQrUDMzVof1sXCNOlVlEzsf50KKLf6Xz/lExYkKswH122c3DbyAv
	KUAAyPmk39CLdSBIfLPWmczuca+Tcn6hFlzVMleyT3BbCk2jIIE34OqIJjm812RGk6JNezHKKamlM
	eM79SU4Vq3Aq4IVQAZPoo3mdz8nxC+A5OVjkQ+IhZS9sAFkUgnN6HD+iPeNQb+BmJXuU4LwNI4Fnh
	/kDfWcd/rm+lWktvVNssQTj5cAvSlWfRQuAT+VD9ad8wYg5B0LmM2YGfMCwYBLi2NZcvORkj9fJtI
	trQ0IoPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHP3-0006Qm-Dm; Tue, 01 Oct 2019 12:37:17 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHOU-0005wI-Fx
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 12:36:43 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191001123641euoutp0189630c52041f0b6e44bc351f1a0e8d20~JhhxNLx1M0997909979euoutp01L
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  1 Oct 2019 12:36:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191001123641euoutp0189630c52041f0b6e44bc351f1a0e8d20~JhhxNLx1M0997909979euoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569933401;
 bh=6Pr3bvlwTEEuaJryJIjyun0TpsiDiHDMaMQxx7hutTk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VEhDDGOAJcXcLxe+oLqmkUtIfGibVYCn3SHrBjdPXiXV+lZJCqaxqCPyQD0RyzVb2
 X7kuz057tW+timTJgXhB65EyIyVIUNe+pT6FEba50Cye6I6A4ep8A9ljJjt6WDWBo0
 Z/5EtmEGZZSVpwgVRPulBlBw+XW01xfcZg89oBhw=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191001123640eucas1p20b765903788d7e533396cf28af66f0f2~Jhhw8BUhk0767207672eucas1p28;
 Tue,  1 Oct 2019 12:36:40 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A5.33.04374.858439D5; Tue,  1
 Oct 2019 13:36:40 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191001123640eucas1p265d38cc9ad2a3103abd63b5d04d18628~JhhwqTg3E0566705667eucas1p2K;
 Tue,  1 Oct 2019 12:36:40 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191001123640eusmtrp108eb05d1591c62afe095edda02189ddf~Jhhwpo-zP0390803908eusmtrp1P;
 Tue,  1 Oct 2019 12:36:40 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-be-5d934858d106
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1F.33.04117.858439D5; Tue,  1
 Oct 2019 13:36:40 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191001123640eusmtip25fdf9f8993637bb262eebb300b1dd1a5~JhhwEfYGH1272012720eusmtip2i;
 Tue,  1 Oct 2019 12:36:39 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org, krzk@kernel.org
Subject: [PATCH v3 RESEND 3/3] ASoC: samsung: Rename Arndale card driver
Date: Tue,  1 Oct 2019 14:36:25 +0200
Message-Id: <20191001123625.19370-3-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191001123625.19370-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+85lO1ueOk7JL7OkpZRCXjLihNIFw47/xP4Iisxq5Ulnbsrm
 JY1ILC9NU1Nqy5Q0ZtnUnJuKZllMc5DV0LS0EF0KZiYDp0klmdtR+u/3PM/78L58fAQqqsS9
 CZkilVUqpElinhBr6/31fvdJpjw2ZHpqHz3Yb0boZm0TTt+xTfLowVwjoK1WA5/+OViA0MaJ
 jzittXYhdGPPKJ922F/idPePfJzur5tHDrkxBkcOj+moGOUzRv1NHmPSXWM0lcuAKW7RA8Zh
 3CbhnxJGxLFJsnRWGXzgnDDhTXkhSLGJLptbZpFsML5RDQQEpPZC63Q9Tw2EhIiqA9Dc3bUq
 5gGs6elBOOEA0GjUgLXKk7d3MS54DOCCYYbnDFyVkqciJ/OoUHjrdbGr4EnthGPaHNxZQKkO
 BH4dGsOcgQfFwPxPcy7GKH9Ya83GnUxS4dA2N4xx23xhveEVqgYEIaAiYIFewNmP+HBAd4zj
 I9D2rX31OA/43dLC59gH9pUXuQ6F1HUAizq/8DlRCuCYpXq1EQ67Lf24cwFKBcCmZ8GcfRh2
 PLcjThtSG+DwrLvTRlewrE2DcjYJC/JE3LQf/KPXIBx7w8LJZYwbYWDvvQzuqUoA1FXp+KXA
 t+L/rmoA9MCLTVPJ41lVmILNCFJJ5ao0RXzQhWS5Eaz8mb6/loV20LV03gwoAojdSHrqdqwI
 l6arMuVmAAlU7ElGLJXFisg4aWYWq0w+q0xLYlVmsIXAxF7klXXjMSIqXprKXmLZFFa5liKE
 wDsbSELco37nHR9wJwNytye/aMjCpurFHyYSvBKx2hOF8vGaeptpz6bGKrt4UfaQIWdkiRlZ
 pzc3fE4IGzbFPNhlUSOsRCLY0XoGOVjeOsprXh8dRXZuNeWH40fDyEXPG6iPn+ni/c7IIXmd
 ttY/sFe+/133yEJAdKTWXjGiuZomxlQJ0tBAVKmS/gOln6FGLwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLLMWRmVeSWpSXmKPExsVy+t/xe7oRHpNjDaZOVLS4cvEQk8XGGetZ
 LaY+fMJmcaV1E6PF+fMb2C2+Xelgstj0+BqrxYzz+5gs1h65y27x+f1+VovDb9pZLS6u+MLk
 wOOx4XMTm8fOWXfZPTat6mTz2Lyk3mP6nP+MHn1bVjF6fN4kF8AepWdTlF9akqqQkV9cYqsU
 bWhhpGdoaaFnZGKpZ2hsHmtlZKqkb2eTkpqTWZZapG+XoJdxanI3Y8FDoYpDW94yNTA+4O9i
 5OSQEDCRWHlmGksXIxeHkMBSRolfX2YxdjFyACWkJOa3KEHUCEv8udbFBmILCXxiBHJcQWw2
 AUOJ3qN9jCC2iICmRMe826wgc5gFDjNJLO44yAKSEBbwkGi//gnMZhFQlVh6voEVxOYVsJZ4
 +OkGC8QCeYnVGw4wg+zlFLCR6FjFCbHLWqLl6xrGCYx8CxgZVjGKpJYW56bnFhvpFSfmFpfm
 pesl5+duYgQG/bZjP7fsYOx6F3yIUYCDUYmH1+L5xFgh1sSy4srcQ4wSHMxKIrw2fybFCvGm
 JFZWpRblxxeV5qQWH2I0BbppIrOUaHI+MCLzSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeW
 pGanphakFsH0MXFwSjUw7pl0b+vCKWH5Zf7ea+XMe3Yqei/lZFtyJ8D83Jwfl7WfMR1y7v9l
 ljn/zpoVAelVjdemLNUtW///SFLX+t0Mnq21q44FSPxjatVSDdo5bc8PLoaY+fkvDh00+afc
 m9agN7FtzeMdai93KDht2BKgdujlT64JlnnlAtdr/mimn+sRTZH6tPWFqBJLcUaioRZzUXEi
 AJfY47SQAgAA
X-CMS-MailID: 20191001123640eucas1p265d38cc9ad2a3103abd63b5d04d18628
X-Msg-Generator: CA
X-RootMTR: 20191001123640eucas1p265d38cc9ad2a3103abd63b5d04d18628
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191001123640eucas1p265d38cc9ad2a3103abd63b5d04d18628
References: <20191001123625.19370-1-s.nawrocki@samsung.com>
 <CGME20191001123640eucas1p265d38cc9ad2a3103abd63b5d04d18628@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_053642_669991_E82FFE35 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, linux-samsung-soc@vger.kernel.org,
 ckeepax@opensource.cirrus.com, b.zolnierkie@samsung.com, sbkim73@samsung.com,
 patches@opensource.cirrus.com, lgirdwood@gmail.com,
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
