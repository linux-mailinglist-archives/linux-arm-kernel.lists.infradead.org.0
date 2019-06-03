Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1D032F16
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SVqEnN/SX1KjugFouC6eQ/kCnETFnLdR3h3PkOiC88I=; b=Hq0+52H2/Uazj3IDQpKw2UH7D
	39hFWCTlclaDMWLgoriASdx4hxc5z67/e+BgOvQaIi+cUTGZ+Hh8Tzs4lYpUe+xshOyKrkBc5vmGt
	KqQDjgIX91KHjEHevTUeOAePvZVoPDRAE5ry4d+LV8Q2JUw8/4ENXiO0LWH3cAVHOseGmuYvDmlmX
	MC7I4MlTTYqcfU02Y/L9PebP6bKv8I29sypLeDtE+N/Cti96jz0CVt31KTH6lonTigUE0L7B65hv9
	YxcWe5oFwuf3g3YxLnxpGjY+6H8gnXZ5j1uUqxSubKvGUTyNQoGffONBYURq7Hno5nqLoM1RE4yXU
	IpwQsMY1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlZ6-00036t-1c; Mon, 03 Jun 2019 11:55:48 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlYz-00036J-6p
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 11:55:43 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E0F012000E;
 Mon,  3 Jun 2019 11:55:36 +0000 (UTC)
Date: Mon, 3 Jun 2019 13:55:36 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 3/7] media: cedrus: Fix decoding for some H264 videos
Message-ID: <20190603115536.j5lan6wtmbxpoe2k@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-4-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190530211516.1891-4-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_045541_406995_2D68BD5D 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6348887131235900849=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6348887131235900849==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vveoqlv6ysvji45v"
Content-Disposition: inline


--vveoqlv6ysvji45v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, May 30, 2019 at 11:15:12PM +0200, Jernej Skrabec wrote:
> It seems that for some H264 videos at least one bitstream parsing
> trigger must be called in order to be decoded correctly. There is no
> explanation why this helps, but it was observed that two sample videos
> with this fix are now decoded correctly and there is no regression with
> others.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
> I have two samples which are fixed by this:
> http://jernej.libreelec.tv/videos/h264/test.mkv
> http://jernej.libreelec.tv/videos/h264/Dredd%20%E2%80%93%20DTS%20Sound%20Check%20DTS-HD%20MA%207.1.m2ts
>
> Although second one also needs support for multi-slice frames, which is not yet implemented here.
>
>  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 22 ++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> index cc8d17f211a1..d0ee3f90ff46 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> @@ -6,6 +6,7 @@
>   * Copyright (c) 2018 Bootlin
>   */
>
> +#include <linux/delay.h>
>  #include <linux/types.h>
>
>  #include <media/videobuf2-dma-contig.h>
> @@ -289,6 +290,20 @@ static void cedrus_write_pred_weight_table(struct cedrus_ctx *ctx,
>  	}
>  }

We should have a comment here explaining why that is needed

> +static void cedrus_skip_bits(struct cedrus_dev *dev, int num)
> +{
> +	for (; num > 32; num -= 32) {
> +		cedrus_write(dev, VE_H264_TRIGGER_TYPE, 0x3 | (32 << 8));

Using defines here would be great

> +		while (cedrus_read(dev, VE_H264_STATUS) & (1 << 8))
> +			udelay(1);
> +	}

A new line here would be great

> +	if (num > 0) {
> +		cedrus_write(dev, VE_H264_TRIGGER_TYPE, 0x3 | (num << 8));
> +		while (cedrus_read(dev, VE_H264_STATUS) & (1 << 8))
> +			udelay(1);
> +	}

Can't we make that a bit simpler by not duplicating the loop?

Something like:

int current = 0;

while (current < num) {
    int tmp = min(num - current, 32);

    cedrus_write(dev, VE_H264_TRIGGER_TYPE, 0x3 | (current << 8))
    while (...)
       ...

    current += tmp;
}

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--vveoqlv6ysvji45v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPUKuAAKCRDj7w1vZxhR
xa7AAP9ziESwTw+9Wv7wL7C0BfDMaT38Drny6yfPw3LoggkqrwEAxQK0/0WKA7bE
Ny7/W1EpBNFeb58M3ZPKD2rZ9JmR3Qw=
=ESPy
-----END PGP SIGNATURE-----

--vveoqlv6ysvji45v--


--===============6348887131235900849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6348887131235900849==--

