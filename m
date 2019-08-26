Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 422CA9CD53
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 12:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tuYprRvWHaRgVoNzi7EJdKYiWi373zEK5B62Ky+Ftfc=; b=lZplHAQvISavaqaQ9GcwunBvD6
	Zo7tNWd4OMwIpVo9+yFRcL2hYvGoqgmMEWFSWdn+RcgN4f8A3Q3+FT9QLZe54uxlFknjK29wg5drZ
	gcBX2xRbBiBYdL04OIq5y7kz4+7RwOj5DNPFNqUg/6MYxhnO65go+cSgfK1jcCgmNqh7N7mVEN5/S
	Gl7mvxxXdFQZAObcvaQNRaUdexkF4OCJKbtDkG/H2PoZBfeuuve5no3pcwcUw+LuAaFRjgquvwETd
	+Vs7GpifM9qTuSeb6rcJSAAauATz4fnXeonM1ELlilhGRrfZoZOiyYTCEAG5eaHHtedbzZU7m+Feh
	BoNnBt/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2CII-00058e-Ty; Mon, 26 Aug 2019 10:32:14 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2CIB-00057L-TJ
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 10:32:09 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190826103203euoutp011514c43ea3595f6af967029dd71ee651~_cmrtpkCS2308723087euoutp01f
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 10:32:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190826103203euoutp011514c43ea3595f6af967029dd71ee651~_cmrtpkCS2308723087euoutp01f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566815523;
 bh=NZ+VJSBSuMJZ1LsKhikkT1JtTORGR3MpX9HFSakbNt8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jiZXgtKkaY4l26GGPK9+os1bcuAvCmeoUf+quC03D5pHK17+EXmh+QRY1luRhn3wk
 QEyrs86sfxJaLSkbdtVYYpljB5fP0tGoH0zOt30rsAUlWMy1il8UAhHvdsYoCbJkwD
 40aDZdk18lZbwmMs0dJizqZne3vf4iPBxKzkaV9A=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190826103203eucas1p253ac54e8f949f2c3179390520a1bd4db~_cmrJ34zW2269822698eucas1p2t;
 Mon, 26 Aug 2019 10:32:03 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 61.1C.04309.325B36D5; Mon, 26
 Aug 2019 11:32:03 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190826103202eucas1p123d075e3da50b5aa1574ae46aa6aa946~_cmqKyvbh1330513305eucas1p1v;
 Mon, 26 Aug 2019 10:32:02 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190826103202eusmtrp2fe7c49bb526d3075f66390db82a35592~_cmp8yav11574315743eusmtrp2p;
 Mon, 26 Aug 2019 10:32:02 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-fd-5d63b523f853
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 8E.C1.04166.125B36D5; Mon, 26
 Aug 2019 11:32:02 +0100 (BST)
Received: from AMDC2765.DIGITAL.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190826103201eusmtip25081a60986ad78ed10d013113226f758~_cmpkoYjL0460004600eusmtip2g;
 Mon, 26 Aug 2019 10:32:01 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] Exynos SoCs: enable support for ARM Architected Timers
Date: Mon, 26 Aug 2019 12:31:40 +0200
Message-Id: <20190826103142.3477-2-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826103142.3477-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPIsWRmVeSWpSXmKPExsWy7djP87rKW5NjDXavZLHYOGM9q8X1L89Z
 Lc6f38BusenxNVaLGef3MVmsPXKX3YHNY9OqTjaPzUvqPfq2rGL0+LxJLoAlissmJTUnsyy1
 SN8ugSvj45Nf7AWbuCu2NV5gb2Ccz9nFyMkhIWAicWv/YTYQW0hgBaPEsq6ULkYuIPsLo8SR
 C/vYIZzPjBJPm/4ywXS8+7aKFSKxnFHi8OOzjHAtSw9fYwepYhMwlOh62wU2V0TAW2Lymb9g
 o5gFtjFKbOl9wAySEBYIkJjz8xrQWA4OFgFViYarySAmr4CNxPljmhDL5CVWbzjADBLmFLCV
 eLDCEGSKhMBjNokvd56xQdS4SBz6fJIdwhaWeHV8C5QtI/F/53wmiIZmRomH59ayQzg9jBKX
 m2YwQlRZSxw+fpEVZAOzgKbE+l36EGFHiflN+8EWSwjwSdx4KwgSZgYyJ22bDhXmlehoE4Ko
 VpOYdXwd3NqDFy4xQ9geEleePGWCBM8ERom7m3YwT2CUn4WwbAEj4ypG8dTS4tz01GKjvNRy
 veLE3OLSvHS95PzcTYzAZHD63/EvOxh3/Uk6xCjAwajEw5tQmhwrxJpYVlyZe4hRgoNZSYQ3
 Rz8xVog3JbGyKrUoP76oNCe1+BCjNAeLkjhvNcODaCGB9MSS1OzU1ILUIpgsEwenVANjTN2T
 38HajgK/Qo7JdU6JerbK1NNm4U9HGcWjPxoLfzy7euv9O4t5R5bp2bySkPoW5PfN9JJ4Wq3b
 fQdGFq319a9ZmaYr3v904Xvmjg8ZnNMtHz2T5jA7/7uesaOf9d3HiAufJwSE1XIK74nyeGf1
 8cX3//tCfFLKqlWleiS0Yxb92V0j1zxXiaU4I9FQi7moOBEAYxKXFgIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPLMWRmVeSWpSXmKPExsVy+t/xe7pKW5NjDab7WWycsZ7V4vqX56wW
 589vYLfY9Pgaq8WM8/uYLNYeucvuwOaxaVUnm8fmJfUefVtWMXp83iQXwBKlZ1OUX1qSqpCR
 X1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZllqkb5egl/HxyS/2gk3cFdsaL7A3
 MM7n7GLk5JAQMJF4920VaxcjF4eQwFJGiTOPb7NDJGQkTk5rYIWwhSX+XOtigyj6xCjxbsdt
 ZpAEm4ChRNdbkAQnh4iAr8TjNytZQIqYBXYwSmzZ8RasW1jAT2L/tCWMXYwcHCwCqhINV5NB
 TF4BG4nzxzQh5stLrN5wgBkkzClgK/FghSFIWAio4s+jeawTGPkWMDKsYhRJLS3OTc8tNtQr
 TswtLs1L10vOz93ECAzMbcd+bt7BeGlj8CFGAQ5GJR7ehNLkWCHWxLLiytxDjBIczEoivDn6
 ibFCvCmJlVWpRfnxRaU5qcWHGE2BLprILCWanA+MmrySeENTQ3MLS0NzY3NjMwslcd4OgYMx
 QgLpiSWp2ampBalFMH1MHJxSDYytzfZxvy5b7vBcK3frROvJKVcrfLY4f/esig/YW5l7sa1m
 S++xomMX3tvU/pjz4s8+lffrzXIUBR4EqK0qET/Q8Fj74LKD2xrP3WN4nN7x3Fom//zNY4X/
 15cx9WY3OF2Q6v/05u6Vla0Se9Q8fXTqHiXbf3hVuGUPd61kc7vSbpGwpFtXNK2VWIozEg21
 mIuKEwFG1G+EYgIAAA==
X-CMS-MailID: 20190826103202eucas1p123d075e3da50b5aa1574ae46aa6aa946
X-Msg-Generator: CA
X-RootMTR: 20190826103202eucas1p123d075e3da50b5aa1574ae46aa6aa946
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190826103202eucas1p123d075e3da50b5aa1574ae46aa6aa946
References: <20190826103142.3477-1-m.szyprowski@samsung.com>
 <CGME20190826103202eucas1p123d075e3da50b5aa1574ae46aa6aa946@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_033208_251734_B066C302 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chanwoo Choi <cw00.choi@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear All,

ARM Architected Timers are present in all CortexA7/A15 based Samsung
Exynos SoCs. So far they were not enabled, because there were some issues
related to their initialization. Samsung Exynos SoCs used custom timer
hardware - Exynos MultiCore Timer. It turned out that enabling MCT it is
also needed to get ARM Architected Timers working, because they both
share some common hardware blocks (global system counter).

This patchset enables support for ARM Architected Timer driver together
with a standard Exynos MultiCore Timer driver, which is kept as a default
timer source on ARM 32bit platforms. Support for ARM architected timers
is essential for enabling proper KVM support on those platforms.

Best regards
Marek Szyprowski
Samsung R&D Institute Poland


Changelog:

v2:
- dropped MCT patches (merged to v5.1)
- dropped timer priority change patch (merged to v5.3)

v1: https://patchwork.kernel.org/cover/10814913/
- initial version, covers some MCT patches previously sent as a timer
  rework for Exynos5433


Patch summary:

Marek Szyprowski (2):
  ARM: dts: exynos: Add support ARM architected timers
  ARM: exynos: Enable support for ARM architected timers

 arch/arm/boot/dts/exynos3250.dtsi | 10 ++++++++++
 arch/arm/boot/dts/exynos5250.dtsi |  1 +
 arch/arm/boot/dts/exynos54xx.dtsi | 10 ++++++++++
 arch/arm/mach-exynos/Kconfig      |  1 +
 4 files changed, 22 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
