Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30234484C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvMKstd11oRH9/6MVGpO/pi4AOPJ59C+GiSnf/OkvDg=; b=Ac0npK+8ebOvb3
	kAcTRbIYxzgB04y+JjQMDVk9bvFCf3dq478F1jhRNCWQ59kvHrhQM+4ujM7BUzQadyACd/ChzkeXb
	rrlGtxojF2Mq7s0ySeEv4s68etIRDhm2AH7ZEZVmGEAn1R8KI7Hvi+PpaVr4geASDH0H53Y4yFKAs
	ZEHebHAfoyXR8528wmPysiP/rv6wiobqiyWdHIrVvEIMRNX2gRFGTQvJ81ocRbPFw6LYSVon449uE
	VeqaHXiLAMYM//ECx1JwClSN5Tj+Oe93lu4oZQhebDixTHpeNWmdYxKIW7sLUxbckQMTRxdoY69bL
	JDTDZ5PgLuXdIM7nYppQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcsB5-0005jT-PF; Mon, 17 Jun 2019 14:00:09 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsAP-0005Y6-Rk
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:59:28 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 4FDC95C2258;
 Mon, 17 Jun 2019 15:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1560779960;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KhgnWDt7MaNAVpnDtbz9ZJ+MmEsayIckDtW20dx4WZE=;
 b=s5UlJEMgB8DUD8jd7KL36lnibTs8uY9J+pEaqmCo902/AJPzBhQXdOvQfV1Ob3rjA3t/z2
 w8A8M5X5meIVVQD7hUm3Vm1xdNnve4RxyZlc7/rcbIzj1GN1YgIw/Ih2GVFcSyjmrlodLg
 MnsSrk1hmWhA+Pq9eR0+qKD0SAzfDuo=
MIME-Version: 1.0
Date: Mon, 17 Jun 2019 15:59:20 +0200
From: Stefan Agner <stefan@agner.ch>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH 22/59] drm/mxsfb: Drop drm_gem_prime_export/import
In-Reply-To: <20190614203615.12639-23-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-23-daniel.vetter@ffwll.ch>
Message-ID: <059b788d46482f3391737a016eb47f58@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_065926_535914_44DA72D6 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14.06.2019 22:35, Daniel Vetter wrote:
> They're the default.
> 
> Aside: Would be really nice to switch the others over to
> drm_gem_object_funcs.

Acked-by: Stefan Agner <stefan@agner.ch>

--
Stefan

> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  drivers/gpu/drm/mxsfb/mxsfb_drv.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> index b5bcaf4036bd..6d6a0b3e2bb0 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> @@ -322,8 +322,6 @@ static struct drm_driver mxsfb_driver = {
>  	.dumb_create		= drm_gem_cma_dumb_create,
>  	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
> -	.gem_prime_export	= drm_gem_prime_export,
> -	.gem_prime_import	= drm_gem_prime_import,
>  	.gem_prime_get_sg_table	= drm_gem_cma_prime_get_sg_table,
>  	.gem_prime_import_sg_table = drm_gem_cma_prime_import_sg_table,
>  	.gem_prime_vmap		= drm_gem_cma_prime_vmap,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
