Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E52186B8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 13:54:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HVzGsX3ec1qAQyKZHfreBecW5F9zdWqVDUiDuJrDsH8=; b=V9nYZlW48ZBa2MqkDgDT5lchh
	GKxsLVBpEGG1/nfOnEriGYU0p1o83GWJpiokbqnj5KUNVn9UONuSbsoQZHiLcwTfvT8PqHcUa1eM1
	kmbDyYxeP5SVYV9q1K+GVuZzT8UXUqd2dzfYKPnexj7l8qIymmwDSJuO7vbtp/BmKJMhzmKtMwYUm
	h6dayG4GygLX+EkxVXHHd19imdqv3R+8HTfJI70jStYb/ee2rzO36TUlCOQ6QucI5fG79jgmywktD
	mttTRvXJOT6pExsuTc1cnnvxXA8P18mpQHMotaFvBtfaZT6FP5a1XJFKROzgYLV9yLQjLxYt4LpSn
	JLgZG3XnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDpGT-00061a-G5; Mon, 16 Mar 2020 12:54:41 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDpGL-00060x-Nr; Mon, 16 Mar 2020 12:54:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6C502AB64;
 Mon, 16 Mar 2020 12:54:31 +0000 (UTC)
Message-ID: <9d8e1679b755940d85c95d5df8714d4bb3505cdc.camel@suse.de>
Subject: Re: [PATCH 86/89] drm/vc4: hdmi: Adjust HSM clock rate depending on
 pixel rate
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Mon, 16 Mar 2020 13:54:29 +0100
In-Reply-To: <abf64b907cd23488e06d2aca4991ac1be216ec8f.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <abf64b907cd23488e06d2aca4991ac1be216ec8f.1582533919.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_055433_925365_CE03AE35 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7298419956289539924=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7298419956289539924==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-2Nhzgdng4j8pr0d0VEie"


--=-2Nhzgdng4j8pr0d0VEie
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maxime,
On Mon, 2020-02-24 at 10:07 +0100, Maxime Ripard wrote:
> @@ -1460,6 +1456,7 @@ static int vc4_hdmi_dev_remove(struct platform_devi=
ce
> *pdev)
>  }
> =20
>  struct vc4_hdmi_variant bcm2835_variant =3D {
> +	.max_pixel_clock	=3D 148500000,

Just a reminder this might change in the close future:
https://www.spinics.net/lists/arm-kernel/msg793013.html

Regards,
Nicolas
j
>  	.audio_available	=3D true,
>  	.cec_available		=3D true,
>  	.registers		=3D vc4_hdmi_fields,
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdm=
i.h
> index cbb1d3ab85d7..ee9753255b68 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.h
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
> @@ -38,6 +38,9 @@ struct vc4_hdmi_variant {
>  	/* Set to true when the CEC support is available */
>  	bool cec_available;
> =20
> +	/* Maximum pixel clock supported by the controller (in Hz) */
> +	unsigned long long max_pixel_clock;
> +
>  	/* List of the registers available on that variant */
>  	const struct vc4_hdmi_register *registers;
> =20


--=-2Nhzgdng4j8pr0d0VEie
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5vdwUACgkQlfZmHno8
x/5Emwf/c9TYjBffVgvOA41mykLV4Nr8lGqYlbGeCSqOkIJClpTw0XDG/Sam289n
NVS5OpnsEXJWm2HMrWgVqYqZHb3E609pjVeibMyMUhBIvounfpp5kiGI0ZUfCm68
+JarBt0WtkW+731jvBxEnmfWB5j8FpHiZrSJkU5Eo7C7OhIHEAXvU+ZH6TdPqll6
Zjic3+8SBELK0JfFzgB6qkVWFT4UBVpxQ53sokDF+NGROgOEdUkHWxivw9SGvFsg
ewD3v2fbRdUNVTXI/9htZH4I/lupf3byyRQRnx8IWrzI/1U3NzY1xiHU3qEKUW3Q
DQNY46wnSbAgfaRuOCuI0lgcGztljw==
=xZA/
-----END PGP SIGNATURE-----

--=-2Nhzgdng4j8pr0d0VEie--



--===============7298419956289539924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7298419956289539924==--


