Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6321FAAD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:13:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WX3GVx8XoJ15A5m2qVD9+ituASW6qXIwFPwPEyw2gWQ=; b=GKkwvzubvEQQeK3xh4PUYte9BF
	nc7/Rmvj2iBig2YU6TTjE8gLLnrh2g8sil7IsATAIQIo/TonfQ6uFxnLJxu9lHkTUJo2JvJipG6zt
	6BuiorpCJyllhExZvVF6OuHE/Z3e1CNlnHv7qaIXU767xXsgUKN+MYXAkrYDF5gon2mw7XI2ArRFo
	MrKlQkhoiLMLP9fvyH4dmOVLBUbp4QJgD2AKSc33GRyMNZkPZHkHVYG3mu5NnEGN0jvhoN62s2wd+
	+LLsX9TIe9KxxgYcIN0xFx9Cg8D/8dtQuk3sOa+HMK8nNnyH6JJEmIjklUIo65FnC93dXbkHsD/VE
	Kfj8g77Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6iN-0002F8-8h; Tue, 16 Jun 2020 08:13:03 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6iC-0002DH-K6
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 08:12:54 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200616081251euoutp010913f92a46e5fe7dd8e3333cf0673824~Y_AWbRlzq1721217212euoutp016
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 08:12:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200616081251euoutp010913f92a46e5fe7dd8e3333cf0673824~Y_AWbRlzq1721217212euoutp016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592295171;
 bh=t+LeSgDb8yZiggnUrlN5WU6K26V0DBW3GJJdVArjas0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i+jCOQIWkDGe9XGLIqdRn3w3dPjQyrpSKh2T4lHysEkAI0fN6GtaoskT83MfGVXv+
 gWeajrzI0vI/B/8AhaLm9bdPL6Tuu3vSGvUbT6I9J3dkep1w1JtfOQsjMdb8GBKzgQ
 Jl1jzPiRNtruHSWgiMvwqzzutkHR0VngL6gAfYtY=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200616081250eucas1p2448a2a68035538b80b7a0ade6d623821~Y_AWLczxx2000720007eucas1p2F;
 Tue, 16 Jun 2020 08:12:50 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B5.5E.60698.20F78EE5; Tue, 16
 Jun 2020 09:12:50 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200616081250eucas1p2a98f8810962ddc692fa5588a74f911b3~Y_AV5DEGu0048500485eucas1p2o;
 Tue, 16 Jun 2020 08:12:50 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200616081250eusmtrp11e628046414c848eeef3b46c4e5d342c~Y_AV4dJ0E1314613146eusmtrp1s;
 Tue, 16 Jun 2020 08:12:50 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-f8-5ee87f02c16d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A2.4A.07950.20F78EE5; Tue, 16
 Jun 2020 09:12:50 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200616081250eusmtip269bdae8437e63967952de0a9644e93bb~Y_AVXwV1D0491904919eusmtip2j;
 Tue, 16 Jun 2020 08:12:50 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [PATCH 4/4] ARM: multi_v7_defconfig: Enable big.LITTLE cpuidle driver
Date: Tue, 16 Jun 2020 10:12:30 +0200
Message-Id: <20200616081230.31198-5-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616081230.31198-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupkleLIzCtJLcpLzFFi42LZduznOV2m+hdxBrN3WlhsnLGe1WLeZ1mL
 8+c3sFtsenyN1eJz7xFGixnn9zFZvPn9gt1iYVMLu8XaI3fZHTg91sxbw+ixaVUnm8eda3vY
 PDYvqffo27KK0ePzJrkAtigum5TUnMyy1CJ9uwSujFdHH7EWnGatOLt3MnsD4xeWLkZODgkB
 E4m1/5aB2UICKxglOibadDFyAdlfGCXufrvNDuF8ZpS4P2sJM0zHnm1LoRLLGSXWfPvPDNdy
 dd9bsCo2AUOJrrddbCC2iEC6xL2/S8A6mAUmMEm8ae5n7WLk4BAWCJCYe6AGpIZFQFVizbIW
 sHpeAVuJY7v+s0Nsk5dYveEA2ExOATuJZZufM4HMkRBoZpc4unEmI0SRi8TTmXOZIGxhiVfH
 t0A1y0icntzDAtXAKPHw3Fp2CKeHUeJy0wyobmuJO+d+sYFcxCygKbF+lz5E2FHi7dtuJpCw
 hACfxI23giBhZiBz0rbpzBBhXomONiGIajWJWcfXwa09eOESNLQ8JGZc/MwKCaCJQCd8fcQ2
 gVF+FsKyBYyMqxjFU0uLc9NTi43zUsv1ihNzi0vz0vWS83M3MQITyOl/x7/uYNz3J+kQowAH
 oxIPL0PA8zgh1sSy4srcQ4wSHMxKIrxOZ0/HCfGmJFZWpRblxxeV5qQWH2KU5mBREuc1XvQy
 VkggPbEkNTs1tSC1CCbLxMEp1cDYuFwpojD2gdyP3fkpvemnNW45KemL31j3b86SKVsyzK90
 sm3glHpxosxUO156z36v06q9Rz9UTyj/u/GXvQij0d47586edyldki/WK3Myedet9Lk8seVd
 Ag7vLv7o3lq3+qiY1VrHhu7p654eNbr8/nXvl1sTEs8ZipQ7L2L0MxLM4go9Ha+jxFKckWio
 xVxUnAgAxvgoMhwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrNLMWRmVeSWpSXmKPExsVy+t/xe7pM9S/iDJZMULXYOGM9q8W8z7IW
 589vYLfY9Pgaq8Xn3iOMFjPO72OyePP7BbvFwqYWdou1R+6yO3B6rJm3htFj06pONo871/aw
 eWxeUu/Rt2UVo8fnTXIBbFF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2
 NimpOZllqUX6dgl6Ga+OPmItOM1acXbvZPYGxi8sXYycHBICJhJ7ti1l72Lk4hASWMoosenk
 dkaIhIzEyWkNrBC2sMSfa11sEEWfGCWOflwLlmATMJToeguS4OQQEciUWHjuJtgkZoEpTBI7
 3u0ESwgL+Emc3TyRHcRmEVCVWLOsBSzOK2ArcWzXf3aIDfISqzccYAaxOQXsJJZtfs4EYgsB
 1Sw7e5F5AiPfAkaGVYwiqaXFuem5xUZ6xYm5xaV56XrJ+bmbGIEBve3Yzy07GLveBR9iFOBg
 VOLhjQh6HifEmlhWXJl7iFGCg1lJhNfp7Ok4Id6UxMqq1KL8+KLSnNTiQ4ymQEdNZJYSTc4H
 RlteSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQbGzPMiHCVJYq82
 eG0TEbk96/Pe7yGnref2NJt8Vu/XPX0qMOnj3h8V7Wymt0QXHP8hVRDa94fvx4e7Ue/LZ3t8
 ktMz9Cou2tRWWFPvE90y6aibVpP0w2NXz2+4uUB+rsO0OA45F5aLSmqWr9YpWpxYcHhNeF5v
 4QZ7vqe3G3U33p+64s96zxfrlViKMxINtZiLihMBc07dp34CAAA=
X-CMS-MailID: 20200616081250eucas1p2a98f8810962ddc692fa5588a74f911b3
X-Msg-Generator: CA
X-RootMTR: 20200616081250eucas1p2a98f8810962ddc692fa5588a74f911b3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200616081250eucas1p2a98f8810962ddc692fa5588a74f911b3
References: <20200616081230.31198-1-m.szyprowski@samsung.com>
 <CGME20200616081250eucas1p2a98f8810962ddc692fa5588a74f911b3@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_011252_813389_D42F891E 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Lukasz Luba <lukasz.luba@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable big.LITTLE cpuidle driver, which can be used on Exynos-based
Peach Pit/Pi Chromebooks.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 95543914d3c7..6a922a8ef712 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -111,6 +111,7 @@ CONFIG_ARM_RASPBERRYPI_CPUFREQ=y
 CONFIG_QORIQ_CPUFREQ=y
 CONFIG_CPU_IDLE=y
 CONFIG_ARM_CPUIDLE=y
+CONFIG_ARM_BIG_LITTLE_CPUIDLE=y
 CONFIG_ARM_ZYNQ_CPUIDLE=y
 CONFIG_ARM_EXYNOS_CPUIDLE=y
 CONFIG_ARM_TEGRA_CPUIDLE=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
