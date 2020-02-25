Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2CC16BBEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:35:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UxXVAP+lHrvCecKmD03EJxGpyulL5Bs8jk5zmmSjNLA=; b=SdZfEHB82nMB1qoIwKiFmEA8I
	9elmqPX1zGM7DVgf36pHIKcqnqMkkrNblAC46Qb00Bs1FzAaiyu3Z1VXGS8rVzxrZoesbE0cEgYGM
	pD3YIVKWQsYUclFZyOnGZHNuuvGQK8mKZO3+jOWpPcDwCnSqukyjW/b5kSma8A3sqiWcJXHi/fR+h
	AQ8pRrM/JY4VX2BcMujQJ5NxttFOxCrVGJvwwASvUrcNDbeyTAmJQMCBPqPbjwq4zSMBxMCqfsd12
	jPhkRRdcQdu9hJbrY3rSjTlibzb7XHCnjSB9aOVJDvgIO0ltJKFvF6NJz2Umht/toCu0Rk+S/yOqY
	cTphFQkuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6VgV-00035q-6c; Tue, 25 Feb 2020 08:35:19 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VgH-00028H-MC
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:35:09 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 3B8DE853;
 Tue, 25 Feb 2020 03:34:57 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 25 Feb 2020 03:34:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=9kSU8w3jBGIrw5Q053Vxj9KY2Y+
 nKYIvGD2PhfyOey4=; b=T0YorMCf0+rEEa934N7nzZBdWBY0o/SVFDZ+XhifHgr
 WgLeGOeD4yV8pcCJBSjhwDhfnUNdb+uLRDYSQ9lnsHuQFD8rOSr4r4dC7y/j3E3a
 JtXiCAFIw7N6ewGenf/5JzlkYGpbDPeIMJW8C7fc/ePaszsZrVfKmN8T8YTcIMQ4
 m4JCeqP2PM3+FwuFK4lmlxCBo9rQrOmeTKM3HIQqvfou+baH5kA/BOMstDsLXaqa
 j0F3tzzj892+CKAsnwOeCXKYazYf0fwiPshsJL3EkXhhmFZjYAkAwEf+lvtM9AXn
 UqsvpyQC4owftpUe6H3pCpuuPz35qTkvx4lTgC6R14w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=9kSU8w
 3jBGIrw5Q053Vxj9KY2Y+nKYIvGD2PhfyOey4=; b=lA/EzX47ZBx2aQdDy2KC4a
 AdyZm/wlaYQlEObqpB91w+5eR69bZWfc00djRaFamhSCaMLpKqrD9UhWjj+ZYj+c
 ovIe7GiSkfUfwZnN2gtqjyqQrqIWevWCipGjdjdN/edj4rcUAf6Ko38wbVK6zCpV
 HXxbOQ0jPsIHYjP0EX0mSnIlkpycTR9UJ2kNslKyFwL9gQVwfIZRgbJ0rNCmV9L+
 9O66fQSZ0dcUU6VgH6aYx6Wc9QIbYFnf1yrpZjY8V2oMk9A4z/E3Im4BKSKYIDHq
 AkoL4SapeiVR0lp6+geO88IqFTkaTlVjmpAqW0Z7wdAQiKyxcAlfAjWNM3DPaxKA
 ==
X-ME-Sender: <xms:K9xUXrTQWHvyUtmDUxF7eyqK4j3o9FDdueedOd8v1wBsVIwpp1Pssg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledugdduvddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:K9xUXtjyGMnPTuA0UZsF1FgUemWAiOaXjjJKPoTTsN71B-UunWMaow>
 <xmx:K9xUXkq14szlvdvqLPJ3dUbO0Ifslgh_Ej04b7Le-2EIIQDG36sdgw>
 <xmx:K9xUXslauZGdPj6MDsRVbk4CVQ4da7oqdN_UHSxFhiiyIvPB7E5OZg>
 <xmx:MNxUXvFnhCewy2L7KIuYi2X0NBlYPEoURX5_jpKCGGffgvJI6LwMyQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C15AE3280059;
 Tue, 25 Feb 2020 03:34:50 -0500 (EST)
Date: Tue, 25 Feb 2020 09:34:48 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 6/7] drm/sun4i: de2: Don't return de2_fmt_info struct
Message-ID: <20200225083448.6upblnctjjrbarje@gilmour.lan>
References: <20200224173901.174016-1-jernej.skrabec@siol.net>
 <20200224173901.174016-7-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200224173901.174016-7-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_003505_776628_324A1472 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4572397621928156061=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4572397621928156061==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="57z5sn3fwlsnyvo7"
Content-Disposition: inline


--57z5sn3fwlsnyvo7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Feb 24, 2020 at 06:39:00PM +0100, Jernej Skrabec wrote:
> Now that de2_fmt_info contains only DRM <-> HW format mapping, it
> doesn't make sense to return pointer to structure when searching by DRM
> format. Rework that to return only HW format instead.
>
> This doesn't make any functional change.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/gpu/drm/sun4i/sun8i_mixer.c    | 15 +++++++++++----
>  drivers/gpu/drm/sun4i/sun8i_mixer.h    |  7 +------
>  drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 10 +++++-----
>  drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 12 ++++++------
>  4 files changed, 23 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> index e078ec96de2d..56cc037fd312 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> @@ -27,6 +27,11 @@
>  #include "sun8i_vi_layer.h"
>  #include "sunxi_engine.h"
>
> +struct de2_fmt_info {
> +	u32	drm_fmt;
> +	u32	de2_fmt;
> +};
> +
>  static const struct de2_fmt_info de2_formats[] = {
>  	{
>  		.drm_fmt = DRM_FORMAT_ARGB8888,
> @@ -230,15 +235,17 @@ static const struct de2_fmt_info de2_formats[] = {
>  	},
>  };
>
> -const struct de2_fmt_info *sun8i_mixer_format_info(u32 format)
> +int sun8i_mixer_drm_format_to_hw(u32 format, u32 *hw_format)
>  {
>  	unsigned int i;
>
>  	for (i = 0; i < ARRAY_SIZE(de2_formats); ++i)
> -		if (de2_formats[i].drm_fmt == format)
> -			return &de2_formats[i];
> +		if (de2_formats[i].drm_fmt == format) {
> +			*hw_format = de2_formats[i].de2_fmt;
> +			return 0;
> +		}
>
> -	return NULL;
> +	return -EINVAL;
>  }

I'm not too sure about that one. It breaks the consistency with the
other functions, and I don't really see a particular benefit to it?

The rest of the series is
Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--57z5sn3fwlsnyvo7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlTcKAAKCRDj7w1vZxhR
xbG/AQCdfXPdzBwfYeiileC/tgUBlbw25nOpOnTqJMZ6pUn9BAD+LjaVwxmeURaM
km8XKQrZgLqfHMwMSCXbyzvGpMgUegU=
=YHGI
-----END PGP SIGNATURE-----

--57z5sn3fwlsnyvo7--


--===============4572397621928156061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4572397621928156061==--

