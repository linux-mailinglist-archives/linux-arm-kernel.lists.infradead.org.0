Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C25F1C8058
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 05:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:MIME-Version:In-Reply-To:
	Subject:To:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=If0hLEBMCcpDjIBcfmblhhF0DZT0oVJLKKzfgrMXTi4=; b=FACk0Tfl78k2w2
	0qjwxt7766JFFtNmSCSE5zvKVPK0BOCGWFcrWKtR1EuNxShEQ9Fq4Z0eMqTagMzkCaG1U4rTe5lWC
	LqFNdbZvgeA1saA4L0Ey/2o6nq/illZ+ARjnM3ZjQjxkytkE5A31qUMtMzR54y4+7V+RkALBvOcC9
	3SS7O1sXhG3Klpcd6nRZz4tBDWSoIfiSEtuxZ3h3AZWtqy+v0icEdtAkctCr5K3gcBih8pY7ZTr12
	bgkVqxokwBCUH30jZTGLaAKTlItgeYR89DcPUNl3mas9QDuteyhfDH9Kzrw0wQgCUGY3P6Zyt4RJA
	h9Ehqz/rWr1iWE421R2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWWvd-0006RN-On; Thu, 07 May 2020 03:10:29 +0000
Received: from m176150.mail.qiye.163.com ([59.111.176.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWWvU-0006Mq-Ez
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 03:10:22 +0000
Received: from vivo.com (wm-10.qy.internal [127.0.0.1])
 by m176150.mail.qiye.163.com (Hmail) with ESMTP id CE1361A2E1E;
 Thu,  7 May 2020 11:09:43 +0800 (CST)
Message-ID: <ABMAdgC5CDjCyrCBmyLV44rX.3.1588820983821.Hmail.bernard@vivo.com>
To: Bernard Zhao <bernard@vivo.com>
Subject: =?UTF-8?B?UmU6W1BBVENIXSBkcm0vZXh5bm9zOiBtYWtlIHBvaW50ZXIgdG8gY29uc3QgZGF0YSBjb25zdCB0eXBl?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 157.0.31.122
In-Reply-To: <20200426090142.21251-1-bernard@vivo.com>
MIME-Version: 1.0
Received: from bernard@vivo.com( [157.0.31.122) ] by ajax-webmail (
 [127.0.0.1] ) ; Thu, 7 May 2020 11:09:43 +0800 (GMT+08:00)
From: Bernard <bernard@vivo.com>
Date: Thu, 7 May 2020 11:09:43 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VNSUNCQkJMSktLQ0hLSllXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kJHlYWEh9ZQUhMT09DSE9LSE1ON1dZDB4ZWUEPCQ4eV1kSHx4VD1lB
 WUc6OTY6Hxw4Tjg*ETgCCTg5FgI3LU9PCSNVSFVKTkNDQ0lLQkNOQkpMVTMWGhIXVRkeCRUaCR87
 DRINFFUYFBZFWVdZEgtZQVlKTkxVS1VISlVKSUlZV1kIAVlBTklLSDcG
X-HM-Tid: 0a71ed1c403493b4kuwsce1361a2e1e
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_201020_813164_A0800E48 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.150 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: opensource.kernel@vivo.com, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>, David Airlie <airlied@linux.ie>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


From: Bernard Zhao <bernard@vivo.com>
Date: 2020-04-26 17:01:42
To:  Inki Dae <inki.dae@samsung.com>,Joonyoung Shim <jy0922.shim@samsung.com>,Seung-Woo Kim <sw0312.kim@samsung.com>,Kyungmin Park <kyungmin.park@samsung.com>,David Airlie <airlied@linux.ie>,Daniel Vetter <daniel@ffwll.ch>,Kukjin Kim <kgene@kernel.org>,Krzysztof Kozlowski <krzk@kernel.org>,dri-devel@lists.freedesktop.org,linux-arm-kernel@lists.infradead.org,linux-samsung-soc@vger.kernel.org,linux-kernel@vger.kernel.org
Cc:  opensource.kernel@vivo.com,Bernard Zhao <bernard@vivo.com>
Subject: [PATCH] drm/exynos: make pointer to const data const type>Maybe keep pointer which points to global const string data
>in const type is better, make sure not change const data.
>
>Signed-off-by: Bernard Zhao <bernard@vivo.com>
>---
> drivers/gpu/drm/exynos/exynos_drm_dsi.c | 2 +-
> drivers/gpu/drm/exynos/exynos_drm_mic.c | 2 +-
> 2 files changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/exynos/exynos_drm_dsi.c b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
>index e080aa92338c..f60d99c85ac9 100644
>--- a/drivers/gpu/drm/exynos/exynos_drm_dsi.c
>+++ b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
>@@ -211,7 +211,7 @@
> 
> #define OLD_SCLK_MIPI_CLK_NAME "pll_clk"
> 
>-static char *clk_names[5] = { "bus_clk", "sclk_mipi",
>+static const char *const clk_names[5] = { "bus_clk", "sclk_mipi",
> 	"phyclk_mipidphy0_bitclkdiv8", "phyclk_mipidphy0_rxclkesc0",
> 	"sclk_rgb_vclk_to_dsim0" };
> 
>diff --git a/drivers/gpu/drm/exynos/exynos_drm_mic.c b/drivers/gpu/drm/exynos/exynos_drm_mic.c
>index f41d75923557..a86abc173605 100644
>--- a/drivers/gpu/drm/exynos/exynos_drm_mic.c
>+++ b/drivers/gpu/drm/exynos/exynos_drm_mic.c
>@@ -88,7 +88,7 @@
> 
> #define MIC_BS_SIZE_2D(x)	((x) & 0x3fff)
> 
>-static char *clk_names[] = { "pclk_mic0", "sclk_rgb_vclk_to_mic0" };
>+static const char *const clk_names[] = { "pclk_mic0", "sclk_rgb_vclk_to_mic0" };
> #define NUM_CLKS		ARRAY_SIZE(clk_names)
> static DEFINE_MUTEX(mic_mutex);
> 
>-- 
>2.26.2
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
