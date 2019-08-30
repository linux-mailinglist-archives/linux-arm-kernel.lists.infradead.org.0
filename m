Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38E2A377F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 15:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=Kc4jw4P89H3ZCgAx78xTeV4tvnqomaFyx4PF7QaxwBc=; b=DT
	ARdd/NLd4fn5P/abLUvehpV8cIT+2JS6Vq0Ow14aN8fsMQ4wVN1qPLRlgiv4cqSwJwdbu1gwfF2Ag
	jsV2+Wta5hf4s76KsRD1TyIzLoF3crM5/FbgR4m+72Nye5fu09EuAL5zEGxUC7aZcohQ+uVgOc/m5
	02qdfLfO8WRh4LhsmsjG2w9sqvCsjwfXUbD8EUaZD4dC//RMjoIGLJtOL9bpNp7dje55zPP1e4OY/
	Bjc7mWKj+hsdBrEHCd7zdRNtUYZaSV0dOalZZgRxUMV1xHlggrSMsLvVQD8N3HQrLH8QJz5t7x12U
	jNWMPR5g+wB9KgUSuRwEAKiVcKTqkYyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ga4-0001We-4G; Fri, 30 Aug 2019 13:04:44 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gZq-0001WL-4S
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 13:04:32 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190830130426euoutp02de1659b58c9a4c56f18b293e09461dd9~-tQ3i9EUW1576115761euoutp02r
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 13:04:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190830130426euoutp02de1659b58c9a4c56f18b293e09461dd9~-tQ3i9EUW1576115761euoutp02r
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1567170266;
 bh=2xqEu70r6RMEME0AhD6SObpfPFhGDn3/wRuu8aUgTB8=;
 h=From:To:Cc:Subject:Date:References:From;
 b=OyBvlEoHcUh6ImM8WdG+czJYmEo4Mu1TLHiBkgHjFafEpKIWJ0gnRe5fb6WA1zg10
 Q3HoZhWVsxVE+VjIlS1lKHVHUaL/unDqoCPZ172JyZavzLNTHK4qOnVTuNF7Vuowbe
 fhrW/66veJUvsDcBb2s/Msug8llr6V11XvAPkhrQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190830130425eucas1p161f56b09f6af505fba160b5fa5421a72~-tQ231Aq42896328963eucas1p1k;
 Fri, 30 Aug 2019 13:04:25 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id B0.88.04309.9DE196D5; Fri, 30
 Aug 2019 14:04:25 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190830130425eucas1p1b6806fad77366797271e70ce8ef4d296~-tQ2IVKnZ2898728987eucas1p1g;
 Fri, 30 Aug 2019 13:04:25 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190830130424eusmtrp2c0ebcb8a459ea7f1976fdf9e6aac8c38~-tQ16NQT_2200122001eusmtrp2Z;
 Fri, 30 Aug 2019 13:04:24 +0000 (GMT)
X-AuditID: cbfec7f4-f2e849c0000010d5-e7-5d691ed9aa10
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id EF.79.04117.8DE196D5; Fri, 30
 Aug 2019 14:04:24 +0100 (BST)
Received: from AMDC2765.DIGITAL.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190830130424eusmtip1860981b08019ed0e1440c2cd14d1a3be~-tQ1k85HV1527415274eusmtip1v;
 Fri, 30 Aug 2019 13:04:24 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: multi_v7_defconfig: Make MAX77802 regulator driver
 built-in
Date: Fri, 30 Aug 2019 15:04:16 +0200
Message-Id: <20190830130416.10420-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHIsWRmVeSWpSXmKPExsWy7djP87o35TJjDf68ULHYOGM9q8X58xvY
 LTY9vsZqMeP8PiaLtUfusjuwemxa1cnmsXlJvUffllWMHp83yQWwRHHZpKTmZJalFunbJXBl
 zD4iWbCLvaLx1gHWBsY9bF2MnBwSAiYSXXdfsXcxcnEICaxglHjT/IERwvnCKDHp0nNWCOcz
 o8ThIy+AMhxgLa8mcEHElzNKzN/VyQTX0f3/PDvIXDYBQ4mut11gO0QEvCUmn/kLtoNZoI9R
 4vreucwgCWGBYImfF3+xgtgsAqoSLx71MoHYvAK2EnvezmCHOFBeYvWGA8wgzRICB9gkDi1t
 ZoZIuEhc/fgA6gthiVfHt0A1yEj83zmfCaKhmVHi4bm17BBOD6PE5aYZjBBV1hKHj19kBXmI
 WUBTYv0ufYjfHCUuPA2GMPkkbrwVBClmBjInbZvODBHmlehoE4KYoSYx6/g6uK0HL1yCusxD
 4t/ED2B7hARiJQ68ucQ4gVFuFsKqBYyMqxjFU0uLc9NTi43yUsv1ihNzi0vz0vWS83M3MQJj
 /fS/4192MO76k3SIUYCDUYmH12J7eqwQa2JZcWXuIUYJDmYlEd55HhmxQrwpiZVVqUX58UWl
 OanFhxilOViUxHmrGR5ECwmkJ5akZqemFqQWwWSZODilGhh1zD0esLgx/z7nznHLKuyR85Xu
 971br6jzrVTfr1eg+jJk9QE1fRf9q2y9gloNnzJybmieYFcXXC/zZuP5e4JCzkU9e+ayGp6a
 5Ds3dwJrY/gH0zczF5+7WnznlpmvgtXJvo9bnfMzVz76E+niU9TkI6Nz85Q9v4Ise8Ok+VNT
 YrrtDJ5PvajEUpyRaKjFXFScCADv9/7H8QIAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrMLMWRmVeSWpSXmKPExsVy+t/xu7o35DJjDdZcMLTYOGM9q8X58xvY
 LTY9vsZqMeP8PiaLtUfusjuwemxa1cnmsXlJvUffllWMHp83yQWwROnZFOWXlqQqZOQXl9gq
 RRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJalFunbJehlzD4iWbCLvaLx1gHWBsY9bF2M
 HBwSAiYSryZwdTFycQgJLGWUONrxjKmLkRMoLiNxcloDK4QtLPHnWhcbRNEnRomdD94zgiTY
 BAwlut6CJDg5RAR8JR6/WckCUsQsMIFR4nznDLANwgKBEs0v60FqWARUJV486gVbwCtgK7Hn
 7Qx2iAXyEqs3HGCewMizgJFhFaNIamlxbnpusZFecWJucWleul5yfu4mRmCAbTv2c8sOxq53
 wYcYBTgYlXh4LbanxwqxJpYVV+YeYpTgYFYS4Z3nkRErxJuSWFmVWpQfX1Sak1p8iNEUaPlE
 ZinR5Hxg8OeVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamDc7ix5
 13PZ5kVNs/dtnCQ7ZfeypQ7tKr7Ra2RnVD5+MOH6oluPTavftjLcamXxl1ojZnP2s1ebo1zM
 yyDJt9OFvgeayge+fNQkMm3dYkkHO7P7ijwr3wjKuNxnn/xv4eYV7/QypG1N1HlURXufNj4M
 5lpcxi5mKnSpbmsLT+xNta+cImV5D44psRRnJBpqMRcVJwIAwOK430YCAAA=
X-CMS-MailID: 20190830130425eucas1p1b6806fad77366797271e70ce8ef4d296
X-Msg-Generator: CA
X-RootMTR: 20190830130425eucas1p1b6806fad77366797271e70ce8ef4d296
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190830130425eucas1p1b6806fad77366797271e70ce8ef4d296
References: <CGME20190830130425eucas1p1b6806fad77366797271e70ce8ef4d296@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_060430_475007_C0303D64 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Maxim 77802 PMIC is a main PMIC for the following Exynos5 based boards:
Odroid XU, Chromebook Pit and Chromebook Pi. Driver for its voltage
regulator is needed very early during boot to properly instantiate SD/MMC
devices and mount rootfs, so change that driver to be compiled-in.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 arch/arm/configs/multi_v7_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 64aa1136d43c..3dc636c3c5c7 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -562,7 +562,7 @@ CONFIG_REGULATOR_MAX8997=m
 CONFIG_REGULATOR_MAX8998=m
 CONFIG_REGULATOR_MAX77686=y
 CONFIG_REGULATOR_MAX77693=m
-CONFIG_REGULATOR_MAX77802=m
+CONFIG_REGULATOR_MAX77802=y
 CONFIG_REGULATOR_PALMAS=y
 CONFIG_REGULATOR_PBIAS=y
 CONFIG_REGULATOR_PWM=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
