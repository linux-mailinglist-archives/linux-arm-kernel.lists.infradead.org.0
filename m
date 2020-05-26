Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D061E22DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 15:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kadRfbB9lMCxYfuLNisB77DUvxxCfr17RzfjuKmDvU4=; b=IT8BmQbZzhGPrL
	ZQe9i/zYVYVWuXt9f+ofvtIO4b7I434CHmFP5sgxnfLcpxV6W5b7K3wiukbGDxuvH+Z9rr9H1Mjkz
	vAWYGRY48gub+7mM4aKvkVE5neBWUT26Yqv3hlUkYfibtziYhFNwlrWuMkNsupUEhN+T3Amgj1rgR
	QGQivGDNZaHsnEpJknm3J5xsqnMZcnQLBI1nw+QjRzEGHbvO28LBbDF3ci1JHSo7BLXptsA6i6UUH
	3wu1notZgZpSLxYRkg8IzxfUX0qvcbVKeNXoYrfyzPxnd7R1Ry/d3uTQAiq0bOMaOr1nVxjf5KGC1
	GkXM441DzaHHIXuRI+sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdZYP-0007p8-8G; Tue, 26 May 2020 13:23:37 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdZYD-0007oJ-3R
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 13:23:28 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04QDHsIC023863; Tue, 26 May 2020 15:22:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=wQm2v0Z5VAQgV4xTo2zwfCmgV90iJzta4mQKFeoOBcE=;
 b=IuvCEUoT2isjEnlFiBuOp+ENWrK5REcb2viDxPg1CkUV/9OylPvwjza0XQvPK69H0Ptr
 kq3/2QvM4INWlK0y1F9GxBeUwmquz+5lz5HeF9xCHFhqeJDEQJzI77qtwu5t6wJjyFsD
 fQiK81ZpXfC5QEzBSVQWnYQUp+wIX5hkrXKtFeosLtvU3+iRfOj71yIkMznsdHKPIlyD
 H2O24f8B1/cNkQsByCVV8sw5rrp5O3zeGRHrhWXa5ui7i51ilD9C841TFYMcQUQAHdGi
 Tz1xN8X/+ubyIvg1tPJWEKh2t3N5NPgTsvTNvfw0Eb/zrmzd5dCIJ/NxSu4ppcdXu0X0 6w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316sa1yxsc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 26 May 2020 15:22:24 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AE2AB10002A;
 Tue, 26 May 2020 15:22:19 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5C9042AEF26;
 Tue, 26 May 2020 15:22:19 +0200 (CEST)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 26 May
 2020 15:22:19 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Tue, 26 May 2020 15:22:18 +0200
From: Philippe CORNU <philippe.cornu@st.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, "abrodkin@synopsys.com"
 <abrodkin@synopsys.com>, "airlied@linux.ie" <airlied@linux.ie>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "james.qian.wang@arm.com"
 <james.qian.wang@arm.com>, "liviu.dudau@arm.com" <liviu.dudau@arm.com>,
 "mihail.atanassov@arm.com" <mihail.atanassov@arm.com>,
 "brian.starkey@arm.com" <brian.starkey@arm.com>, "joel@jms.id.au"
 <joel@jms.id.au>, "andrew@aj.id.au" <andrew@aj.id.au>, "sam@ravnborg.org"
 <sam@ravnborg.org>, "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "nicolas.ferre@microchip.com" <nicolas.ferre@microchip.com>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "mripard@kernel.org" <mripard@kernel.org>, "stefan@agner.ch"
 <stefan@agner.ch>, "alison.wang@nxp.com" <alison.wang@nxp.com>,
 "xinliang.liu@linaro.org" <xinliang.liu@linaro.org>,
 "zourongrong@gmail.com" <zourongrong@gmail.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "kong.kongxinwei@hisilicon.com" <kong.kongxinwei@hisilicon.com>,
 "puck.chen@hisilicon.com" <puck.chen@hisilicon.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>, "paul@crapouillou.net"
 <paul@crapouillou.net>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "narmstrong@baylibre.com"
 <narmstrong@baylibre.com>, "khilman@baylibre.com" <khilman@baylibre.com>,
 "marex@denx.de" <marex@denx.de>, "laurent.pinchart@ideasonboard.com"
 <laurent.pinchart@ideasonboard.com>,
 "kieran.bingham+renesas@ideasonboard.com"
 <kieran.bingham+renesas@ideasonboard.com>, "benjamin.gaignard@linaro.org"
 <benjamin.gaignard@linaro.org>, Vincent ABRIOU <vincent.abriou@st.com>,
 Yannick FERTRE <yannick.fertre@st.com>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "wens@csie.org" <wens@csie.org>, "jsarha@ti.com" <jsarha@ti.com>,
 "tomi.valkeinen@ti.com" <tomi.valkeinen@ti.com>, "noralf@tronnes.org"
 <noralf@tronnes.org>
Subject: Re: [PATCH 17/21] drm/stm: Use GEM CMA object functions
Thread-Topic: [PATCH 17/21] drm/stm: Use GEM CMA object functions
Thread-Index: AQHWMEBP24K9tztXlE2wkAB9PsURFKi6P1KA
Date: Tue, 26 May 2020 13:22:18 +0000
Message-ID: <ee29b996-77ec-9ada-2e96-090399dc5383@st.com>
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-18-tzimmermann@suse.de>
In-Reply-To: <20200522135246.10134-18-tzimmermann@suse.de>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <93ED9A11ABEFE040B87BC6B2D4A9B569@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-26_02:2020-05-26,
 2020-05-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_062325_585479_18B99A94 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/22/20 3:52 PM, Thomas Zimmermann wrote:
> The stm driver uses the default implementation for CMA functions; except
> for the .dumb_create callback. The __DRM_GEM_CMA_DRIVER_OPS macro now sets
> these defaults and .dumb_create in struct drm_driver. All remaining
> operations are provided by CMA GEM object functions.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>   drivers/gpu/drm/stm/drv.c | 11 +----------
>   1 file changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/stm/drv.c b/drivers/gpu/drm/stm/drv.c
> index 0f85dd86cafa7..d6238c71fabf6 100644
> --- a/drivers/gpu/drm/stm/drv.c
> +++ b/drivers/gpu/drm/stm/drv.c
> @@ -62,16 +62,7 @@ static struct drm_driver drv_driver = {
>   	.minor = 0,
>   	.patchlevel = 0,
>   	.fops = &drv_driver_fops,
> -	.dumb_create = stm_gem_cma_dumb_create,
> -	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
> -	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
> -	.gem_free_object_unlocked = drm_gem_cma_free_object,
> -	.gem_vm_ops = &drm_gem_cma_vm_ops,
> -	.gem_prime_get_sg_table = drm_gem_cma_prime_get_sg_table,
> -	.gem_prime_import_sg_table = drm_gem_cma_prime_import_sg_table,
> -	.gem_prime_vmap = drm_gem_cma_prime_vmap,
> -	.gem_prime_vunmap = drm_gem_cma_prime_vunmap,
> -	.gem_prime_mmap = drm_gem_cma_prime_mmap,
> +	__DRM_GEM_CMA_DRIVER_OPS(stm_gem_cma_dumb_create),
>   };
>   
>   static int drv_load(struct drm_device *ddev)
> 
Hi Thomas,
Thank you for the patch.
Reviewed-by: Philippe Cornu <philippe.cornu@st.com>
Philippe :-)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
