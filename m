Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3999949AA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r1i3eDxNVPb3wF7DcjjVFW9NGbwSzcuenqfXt5/apT8=; b=kQ06MfDSOcujKFVSa2U8Hw9yn
	aIFd+Bjpo5wlGmZhfW+vr14zzDDgiKdbR69AfY889uWxaIro2TPT25UbkCteyH9NBODrez3iBZdUF
	WrVo7LfQLga8dPdaYy0E3GSGs4i3ert2crv7/CfdF301SU8oFUsg8c6uz6N003pmz4A2EybFnk9sF
	dUiALFo7AgmFpH5jrZ4cFP8rV3hLlXLkTca5J0FuWJTiEAiTXdnt3aJo00q6hQFtAZhtp0/kUBDwC
	faQjM1VQYt5qnXAioTLFoc0GAuX8EWrp8YgTNhWzrBzZWyRDLqlTnlCHiN0xuRPhXxaivg9m5BIQx
	mROTLf9OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8cw-00072x-Tg; Tue, 18 Jun 2019 07:33:58 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8cm-00072Q-Lr
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:33:49 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 00:33:48 -0700
X-ExtLoop1: 1
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by fmsmga004.fm.intel.com with ESMTP; 18 Jun 2019 00:33:45 -0700
From: Felipe Balbi <balbi@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] usb: gadget: udc: lpc32xx: allocate descriptor with
 GFP_ATOMIC
In-Reply-To: <20190510124248.2430-1-alexandre.belloni@bootlin.com>
References: <20190510124248.2430-1-alexandre.belloni@bootlin.com>
Date: Tue, 18 Jun 2019 10:33:41 +0300
Message-ID: <87zhmffiui.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_003348_725450_824C4A13 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 James Grant <james.grant@jci.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2149698917939083661=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2149698917939083661==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Alexandre Belloni <alexandre.belloni@bootlin.com> writes:

> Gadget drivers may queue request in interrupt context. This would lead to
> a descriptor allocation in that context. In that case we would hit
> BUG_ON(in_interrupt()) in __get_vm_area_node.
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
>  drivers/usb/gadget/udc/lpc32xx_udc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/ud=
c/lpc32xx_udc.c
> index d8f1c60793ed..b706d9c85a35 100644
> --- a/drivers/usb/gadget/udc/lpc32xx_udc.c
> +++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
> @@ -938,7 +938,7 @@ static struct lpc32xx_usbd_dd_gad *udc_dd_alloc(struc=
t lpc32xx_udc *udc)
>  	struct lpc32xx_usbd_dd_gad	*dd;
>=20=20
>  	dd =3D (struct lpc32xx_usbd_dd_gad *) dma_pool_alloc(
> -			udc->dd_cache, (GFP_KERNEL | GFP_DMA), &dma);
> +			udc->dd_cache, (GFP_ATOMIC | GFP_DMA), &dma);

doesn't apply:

checking file drivers/usb/gadget/udc/lpc32xx_udc.c
Hunk #1 FAILED at 938.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl0Ik9UACgkQzL64meEa
mQZe/BAA1Wmem2fEj1kGc0BIPALzcahe+BFPQjo2Rm2du+gW/LJhZXH7KZnPXSLj
CaJGl79vPA0+cG+50uf25eAL3Q9DjuJPSENwD723ZNGdM+eLUnW5a+q8kLnGgSyk
wqgvrXzwnmiIY6v5fM4s1+gfmqZEssA9VnG+/JhODxJpVmbSEIc5WSGWmQ4zdRyO
t/82DKMnCkYRhgNzxSqVfm7Rua2bfW47UL9B4X4vm9Lgm6K5qwBAF9+AghFPDoyP
OHM1d6tPgoO1bVByW7yU3HVYKiVXnqlxo3E1M7Zm+dinuYgDrvQ7SDU9wfbhx42n
8x8NaHShxval8T2v0knz/9F0SwjU/FHAoCO3XHMzqs5u0BCFyE8FBJ0+oFCFuX90
nDBGNnIkPt3bZRdAPd1qkxBnu1tpKU8h0yguKuecPhnnm1da3/ec5pLWaLBPGlzH
5NSQt/ROyJzJAfLRiiRgFeFr6iLV4cZqM0xPdJzA8EJwZ+vQjiQKroSxAZ+6oyuW
xrd6CZaR1r1sm1OPIGOJZxb9YNfttNiOtDDe7rcP42EpyC7+IXYqmYAcHsWSr1lr
Xr6MdIJlGBH9/2F7dl3exjfe4xD8bOkwqD3LrQ8eSnNdlsRR74UcREx4llhqA/c+
PTKq6k/wEu8h2skItle3dBJX8YvNVY5JMWoGO5s78MIW7Zkf8Co=
=U+ZK
-----END PGP SIGNATURE-----
--=-=-=--


--===============2149698917939083661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2149698917939083661==--

