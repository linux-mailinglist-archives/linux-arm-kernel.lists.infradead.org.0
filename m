Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114D6100609
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 14:00:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5moEe+/cSdzkIniRsOoUpgt3zTfoKmNnc6J0lrfzbkc=; b=BcHoa5Ow0ijK7JP1pqRwKDRwz
	dFxPH3FGxpWU7l/n3k0VNSqnfGDD2+u7VnRx5b4YkNmENdfGPzzptd5W2PIcgVV/UfOLXZhw4yi4J
	/QXU1Licn3gfRlfAhgdNiu6qonq3QvxUu4bo6pKgr6Pv5Ek2s9SefPvVdp/obnpdpzhQsenLBB1Iy
	l6bGkgwRuPZuw6c9CRo8b/bbK8x3/8fzDS34/HU5P+3QG6pCuLgok4xDRfrrUqLpuOQkce104f96C
	VqsxeRHLvp53bUJAOhB8KkXm9+BfZfvHbODQtinhBZVS2HLweVzLSIAQTat21kv5Tx2GMeGt6ZZJb
	90+Acw+Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWgdt-0005pi-Tw; Mon, 18 Nov 2019 13:00:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWgdl-0005pJ-H9
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 13:00:26 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B143920692;
 Mon, 18 Nov 2019 13:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574082025;
 bh=yMlle1zES9xaN+aEPbZNhheFoOd8gQ4VPQ5SX1kP0LI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1IrXyyznrSS2Cj/U63mpwxxFgQBlCUFFBQ78ES+fvwXSjNxRr9VWoLDmsN98ZQ/2X
 44wycoJV+EFush/w5grKyqyzssh+dAOcKprDjBOwhvxco/Ar0k1eWZ2sUMWZ5DyHKf
 EZdZAvz+BYehg9cfcLpXyGQ3BxKdtN1abDH6h2bw=
Date: Mon, 18 Nov 2019 14:00:22 +0100
From: Maxime Ripard <mripard@kernel.org>
To: zhengbin <zhengbin13@huawei.com>
Subject: Re: [PATCH 1/5] drm/sun4i: Use PTR_ERR_OR_ZERO() to simplify code in
 sun4i_hdmi_init_regmap_fields
Message-ID: <20191118130022.GM4345@gilmour.lan>
References: <1574080484-48744-1-git-send-email-zhengbin13@huawei.com>
 <1574080484-48744-2-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
In-Reply-To: <1574080484-48744-2-git-send-email-zhengbin13@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_050025_590131_505FFC05 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: airlied@linux.ie, wens@csie.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5180214013218099764=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5180214013218099764==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="86iauDJ7Z6qm7j1O"
Content-Disposition: inline


--86iauDJ7Z6qm7j1O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 18, 2019 at 08:34:40PM +0800, zhengbin wrote:
> Fixes coccicheck warning:
>
> drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c:281:1-3: WARNING: PTR_ERR_OR_ZERO can be used
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>
> ---
>  drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c
> index b66fa27..ac435e5 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c
> @@ -278,10 +278,7 @@ static int sun4i_hdmi_init_regmap_fields(struct sun4i_hdmi *hdmi)
>  	hdmi->field_ddc_sck_en =
>  		devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
>  					hdmi->variant->field_ddc_sck_en);
> -	if (IS_ERR(hdmi->field_ddc_sck_en))
> -		return PTR_ERR(hdmi->field_ddc_sck_en);
> -
> -	return 0;
> +	return PTR_ERR_OR_ZERO(hdmi->field_ddc_sck_en);

These 5 patches are not clearer and just make it more difficult to
maintain. I guess we should just get rid of the coccinelle rule here,
there's a lot of false positive with it.

Maxime

--86iauDJ7Z6qm7j1O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXdKV5gAKCRDj7w1vZxhR
xXumAQDqUOAgT9LM/zBv6uxGBHnhpWiVVdY4Rc3r2oBo+ATR3AD/UNJfy5GHgLEu
A48L6TZrjizd5jTry+jnYeEVlCiiWww=
=KTyX
-----END PGP SIGNATURE-----

--86iauDJ7Z6qm7j1O--


--===============5180214013218099764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5180214013218099764==--

