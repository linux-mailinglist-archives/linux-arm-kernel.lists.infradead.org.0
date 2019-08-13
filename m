Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B45F98BCA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 17:10:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v0pI0K6fht1sswvnCZqF+HRz+rGo2qsv4Cw+wmU6kR4=; b=a15CpbVOl5vjzTRd/75+Iul4d+
	AmJMF6oQZrjgBRC9sH9KksNxdwgSTgBAM6hCrFCzeejp9cv0wiyhlKEb5BtIuXxDAn1pgeMtudbVY
	f3Ey6PYaIfK2ZqaytmnwM+00DLJp3u1sgzA580CR/210aG8O2y/5S5LTRyyMN7UGtEnwiVgWrFIIF
	wDXD2yX1h43wswtV7fDbUs1TTDWgJ/0rGPSmVFN4OV9VaOd5mgu0wSIo0VETOIVmiUGr0DvvKtT62
	pzimug1EeCZxn/avxSjCTrwRkDTqJsRgoZHKEUHC8RKqR0QHW2NCGsvSvw3RxUdbA5cKd8CN/Aagb
	Pbgis1fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYR2-0003tT-0o; Tue, 13 Aug 2019 15:10:04 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYPx-0003A0-H7
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 15:08:59 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190813150856euoutp018643a96e77c88639008b9176afcf08f1~6g-tl0czd2751627516euoutp01E
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 15:08:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190813150856euoutp018643a96e77c88639008b9176afcf08f1~6g-tl0czd2751627516euoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565708936;
 bh=v1V3yylCIMRyYRtQ4Jve8n9xclUGlj0eTZRZdEGVbUk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fOEozftrcErAV8S1lw7/mS+y9wlNQDVORrYghKONjOVKgILjWcUFjcM6f5MaDOkbY
 UeFiXWh19bQ6SFzCCwcj4xZwahH5inc7OomSdS+YbJWhdCjn94GqRJ1YpBbIHNZ/eA
 e3OW+HwNWhMouAbteJh8vhUVpMIGQLGFEWRAk/10=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190813150855eucas1p2a8f486c8a2c04abc63b7b0a6aa389618~6g-tFDHt82655426554eucas1p2E;
 Tue, 13 Aug 2019 15:08:55 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id D7.9E.04309.782D25D5; Tue, 13
 Aug 2019 16:08:55 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190813150854eucas1p14716609be6697222ae5795328cb2ed04~6g-sV8Kpo2559025590eucas1p1D;
 Tue, 13 Aug 2019 15:08:54 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190813150854eusmtrp17e1fe1246a0a0bc7e2544c5f30746d72~6g-sGEU2_1601316013eusmtrp11;
 Tue, 13 Aug 2019 15:08:54 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-f5-5d52d2871e86
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id FC.C1.04166.682D25D5; Tue, 13
 Aug 2019 16:08:54 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190813150853eusmtip2ac5847d1fb3b86fe5380963a8e1b6064~6g-rgXScN1086510865eusmtip2E;
 Tue, 13 Aug 2019 15:08:53 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH v3 4/9] ARM: EXYNOS: enable exynos_chipid for ARCH_EXYNOS
Date: Tue, 13 Aug 2019 17:08:22 +0200
Message-Id: <20190813150827.31972-5-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813150827.31972-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMKsWRmVeSWpSXmKPExsWy7djP87rtl4JiDRq2i1tsnLGe1WL+kXOs
 Fv2PXzNbnD+/gd1i0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdYtPULu0Xr3iPsFofftLNa
 bH5wjM2B12PTqk42j81L6j36tqxi9Pi8SS6AJYrLJiU1J7MstUjfLoEr48da44KJ7BU/eu+y
 NDC2snUxcnJICJhIrL+xh6WLkYtDSGAFo8TN/11QzhdGiZ/Tl7KCVAkJfGaUWHbHDqbj5JNv
 jBDx5YwSe6/bwTXc7NzOApJgEzCU6D3aB1YkIiAscW/pcnaQImaBe0wSp5+eZQJJCAt4Snxe
 8xxsA4uAqsTEpR/A4rwC1hLfXv9ggdgmL7F6wwFmEJtTwEZi5/T3rCCDJAQms0uc/7CaFaLI
 RaJ52XImCFtY4tXxLewQtozE6ck9LBANzYwSPbtvs0M4Exgl7h9fwAhRZS1x+PhFoEkcQPdp
 SqzfpQ8RdpRo7V3NDhKWEOCTuPFWECTMDGRO2jadGSLMK9HRJgRRrSLxe9V0qBOkJLqf/Ie6
 30Niy4v97JAQ6meUOHfyCNMERvlZCMsWMDKuYhRPLS3OTU8tNspLLdcrTswtLs1L10vOz93E
 CEwqp/8d/7KDcdefpEOMAhyMSjy8AVuCYoVYE8uKK3MPMUpwMCuJ8E64CBTiTUmsrEotyo8v
 Ks1JLT7EKM3BoiTOW83wIFpIID2xJDU7NbUgtQgmy8TBKdXAuEJk4dxHHxMrz15JnlxoZs73
 KeZYtO2B19LzZpruTL1VxvI5qKz10cFIX6fs1ITAF7MY519T5NmYODtL49ryqX8qygJ5QzY5
 pM/UFrEUzLiTwfWVh0lTQXz9ms0HGQzsbR98KjO6yLzcM6afScD61hnjtNI15guO3vZht2S/
 Z9O88dXMfvbZSizFGYmGWsxFxYkAYJCwCSYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCLMWRmVeSWpSXmKPExsVy+t/xe7ptl4JiDeZsVrHYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wAS5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexo+1xgUT2St+9N5laWBsZeti5OSQEDCROPnkG2MX
 IxeHkMBSRomdVw6xdDFyACWkJOa3KEHUCEv8udbFBlHziVHiXM8kVpAEm4ChRO/RPkYQWwSo
 6N7S5ewgRcwCr5gkbs/7zwSSEBbwlPi85jlYA4uAqsTEpR/A4rwC1hLfXv9ggdggL7F6wwFm
 EJtTwEZi5/T3YPVCQDVP361nnsDIt4CRYRWjSGppcW56brGhXnFibnFpXrpecn7uJkZgiG87
 9nPzDsZLG4MPMQpwMCrx8AZsCYoVYk0sK67MPcQowcGsJMI74SJQiDclsbIqtSg/vqg0J7X4
 EKMp0FETmaVEk/OB8ZdXEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNT
 qoEx+8f1gjlu3q22pWdVrM9ks8cePjmvu3O6oKZpkUPIkscFW4UWVv2vi6z49e3gk9ZjGpfs
 zzlf2npYiEn7TMyh37eOKP35kPS8ZH629Y3Vi/xVeaWEiz/EHlumUT3Vje0OC//PY86LmYOK
 D32VavS+sfm0pMKvc1+TypgVHos2Xvz/OcyBYTeDEktxRqKhFnNRcSIAZAM8ZocCAAA=
X-CMS-MailID: 20190813150854eucas1p14716609be6697222ae5795328cb2ed04
X-Msg-Generator: CA
X-RootMTR: 20190813150854eucas1p14716609be6697222ae5795328cb2ed04
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190813150854eucas1p14716609be6697222ae5795328cb2ed04
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150854eucas1p14716609be6697222ae5795328cb2ed04@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_080857_796231_8EC72291 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, vireshk@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Pankaj Dubey <pankaj.dubey@samsung.com>

As now we have chipid driver to initialize SoC related information
let's include it in build by default.

Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v1 (RFC):
 - none
---
 arch/arm/mach-exynos/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index d7422233a130..f83786640f94 100644
--- a/arch/arm/mach-exynos/Kconfig
+++ b/arch/arm/mach-exynos/Kconfig
@@ -13,6 +13,7 @@ menuconfig ARCH_EXYNOS
 	select ARM_AMBA
 	select ARM_GIC
 	select COMMON_CLK_SAMSUNG
+	select EXYNOS_CHIPID
 	select EXYNOS_THERMAL
 	select EXYNOS_PMU
 	select EXYNOS_SROM
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
