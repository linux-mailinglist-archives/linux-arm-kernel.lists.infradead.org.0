Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E8E57C44
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiFnksFJeY5SnM6ZelAMfex+4qim4oFzkHGXRi6YiFw=; b=BYCf/liH6McgBv
	31VrkqN8va7MWbW5LySw6ii3YqsBzGAsQkJFwQGG+zw5Yow5iJPSQ34J82XPYDmA6+AMy7OSPvOhc
	DCjdI0WaGAfiOiVASvJH+Oo23MgkqLgpoSaw9lOsUkUO5n5nkNnM6vuny7XEFWs2LMPbk0MsI4LNk
	hklALgkO1t2kTVX7Sgor5FF1EYvnnQt582mOlfXSyk+nlBtuDwvy0x6xiIDRLK37aQZ+8bS6Cx9Y1
	JWg7PS9tDLbdzIDXXY27DunCT6F7jaXrxEjgjYoujSu6db646sRFJcpCfZX3CbRKQJvpBJhsB9KGk
	Py26zsPQETXEUX8I/B5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgNz5-0002Gf-92; Thu, 27 Jun 2019 06:34:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgNyr-0002FW-0W
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 06:34:02 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hgNyg-00037l-N0; Thu, 27 Jun 2019 08:33:50 +0200
Message-ID: <1561617229.4216.1.camel@pengutronix.de>
Subject: Re: [PATCH] media: staging/imx: Fix NULL deref in
 find_pipeline_entity()
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Steve Longerbeam <slongerbeam@gmail.com>, linux-media@vger.kernel.org
Date: Thu, 27 Jun 2019 08:33:49 +0200
In-Reply-To: <20190626185225.11992-1-slongerbeam@gmail.com>
References: <20190626185225.11992-1-slongerbeam@gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_233401_049860_3A3F0677 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-26 at 11:52 -0700, Steve Longerbeam wrote:
> Fix a cut&paste error in find_pipeline_entity(). The start entity must be
> passed to media_entity_to_video_device() in find_pipeline_entity(), not
> pad->entity. The pad is only put to use later, after determining the start
> entity is not the entity being searched for.
> 
> Fixes: 3ef46bc97ca2 ("media: staging/imx: Improve pipeline searching")
> 
> Reported-by: Colin Ian King <colin.king@canonical.com>
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> ---
>  drivers/staging/media/imx/imx-media-utils.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
> index b5b8a3b7730a..6fb88c22ee27 100644
> --- a/drivers/staging/media/imx/imx-media-utils.c
> +++ b/drivers/staging/media/imx/imx-media-utils.c
> @@ -842,7 +842,7 @@ find_pipeline_entity(struct media_entity *start, u32 grp_id,
>  		if (sd->grp_id & grp_id)
>  			return &sd->entity;
>  	} else if (buftype && is_media_entity_v4l2_video_device(start)) {
> -		vfd = media_entity_to_video_device(pad->entity);
> +		vfd = media_entity_to_video_device(start);
>  		if (buftype == vfd->queue->type)
>  			return &vfd->entity;
>  	}

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
