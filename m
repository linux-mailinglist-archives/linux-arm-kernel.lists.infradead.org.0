Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF75D122A40
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:37:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p0Oao9Oi6wK6Hs09sZlh3qlHbyOkF+pLA+sY+uOyPKQ=; b=cXIRZut40t8+G1MXpejtsDrm7
	u7Zvj+W2njZsBpRMm3NvK3OUSNzbuwB9ykMkpDEJRodDbLK8E270luCR1YMBPFPqFn7Auux33x2HY
	/xxkpJ1Husz2o5QYOawlmZ0JXCg7DbTFPaZ1Whu+vWie3ZIxvxxZxX/RmwXVGLfDw7OPJ+En5nUGD
	WryR+3le1jZLarCsL3Vp8Vfp7EHx/XLVtbskcEMmF3S7Oq8at3aCtmCTZpfTWM+dAQz08CpBUBVVE
	um8/rom1R8s2ljJ/ob1Gpgl4J8vaJp5mn1ggDU3hs0TlClGIt1Jnq+BCI2gAgoQa8eVU75r6k0smU
	sebI2cbtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBAa-00064v-RY; Tue, 17 Dec 2019 11:37:40 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBAR-00063X-0p; Tue, 17 Dec 2019 11:37:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 88556ABD6;
 Tue, 17 Dec 2019 11:37:27 +0000 (UTC)
Message-ID: <cd316378273d18b93b5dcad8b357821a708c7805.camel@suse.de>
Subject: Re: [PATCH] mmc: bcm2835: Use dma_request_chan() instead
 dma_request_slave_channel()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, ulf.hansson@linaro.org, 
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com
Date: Tue, 17 Dec 2019 12:37:25 +0100
In-Reply-To: <20191217112625.30715-1-peter.ujfalusi@ti.com>
References: <20191217112625.30715-1-peter.ujfalusi@ti.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_033731_208008_0CCC1207 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5132351407024127262=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5132351407024127262==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-uq1s881hQa76yme78kN4"


--=-uq1s881hQa76yme78kN4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Peter,

On Tue, 2019-12-17 at 13:26 +0200, Peter Ujfalusi wrote:
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
>=20
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
>=20
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  drivers/mmc/host/bcm2835.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/mmc/host/bcm2835.c b/drivers/mmc/host/bcm2835.c
> index 99f61fd2a658..3821f159d36d 100644
> --- a/drivers/mmc/host/bcm2835.c
> +++ b/drivers/mmc/host/bcm2835.c
> @@ -1393,7 +1393,15 @@ static int bcm2835_probe(struct platform_device *p=
dev)
>  	host->dma_chan =3D NULL;
>  	host->dma_desc =3D NULL;
> =20
> -	host->dma_chan_rxtx =3D dma_request_slave_channel(dev, "rx-tx");
> +	host->dma_chan_rxtx =3D dma_request_chan(dev, "rx-tx");
> +	if (IS_ERR(host->dma_chan_rxtx)) {
> +		if (PTR_ERR(host->dma_chan_rxtx) =3D=3D -EPROBE_DEFER)
> +			return -EPROBE_DEFER;

I think you should 'goto err' here, as you have to free the mmc host struct=
ure
allocated earlier in the probe function.

Other than that the patch looks good to me.

Regards,
Nicolas


--=-uq1s881hQa76yme78kN4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl34vfUACgkQlfZmHno8
x/7GHgf7BB1BUlD5qVItXGwvpFQA7/KItn4HOfYT/dNQPDT9S0YU6zPEhMBi68VI
QOjxSY+gHB+LJ3Pp9yWvhkx1hgBzxTF71SKbcszX8rtuYaC1evpDJK5U7zNOfZkE
byesISpFcZqv+oa4mTJTZYq0PvjMPm0n396tk81h+jVWWtKEP9L+c/aWqGVco9ea
qFHuOjazexHWP8P8GW8BpvR4md1RGfY9a8VghX9lU95DBWxwHdD6r62DPI41PVkJ
ZHvGv4xzPt3fLX4xB9Y3EUPXAqUgXMkDt1hrZTWgfdBSi8cn1DN7ddgIshoTeU66
9Ldmadht3ckR015FL0/tjOw4/00stw==
=GdIs
-----END PGP SIGNATURE-----

--=-uq1s881hQa76yme78kN4--



--===============5132351407024127262==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5132351407024127262==--


