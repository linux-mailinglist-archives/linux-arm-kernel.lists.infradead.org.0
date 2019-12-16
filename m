Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11FA120EED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 17:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I9oov9y4XlfmqYHKKvvPNmccNl+FboJ3IGE5QtodpLc=; b=fTmQTrESvNwmwqfZbTxPjjuFj
	qLy9IQlU7om9YWU6shUtEmOw4JN5IjhcSWrnpbrk5rCNoPZ/0/uHyJEMtUWR6oydrXKZqh5bEBfdX
	g5P8vh4Sh6qlUz1CdPaneoc8uKQwGPDCqfVQxPqoVzEwvkOcFHMSzXlnEKPyeuRLJP9ER/Z3i0pec
	qA+t5aayUHmvri3Q4j8KOxKaIxaCb1YaIUXG5sibZbohiwhAbVVe6ktan9MxkKrsr1B3Ep6W+UtMh
	wwP8dwBhkW5ba1XDdTBVQHpeLCVwW9eYogv6i3y/eXydD69h2Dtjd3EAvd6dCDBBDYOdigjsSfLRx
	gWVuINqmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igszi-0003v3-3v; Mon, 16 Dec 2019 16:13:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igszW-0003qW-85
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 16:13:03 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02A1C20717;
 Mon, 16 Dec 2019 16:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576512781;
 bh=Jef9w4OjkRq1icyigJOT8xylp8Mo2WzDKjHr6uAiULc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bRGG0YcSlJmTEk9EfbMd4tusYJTP9xGT22BF+SgJByObFOByPlN0xPhbXAhWIPSrR
 VUVb8gOZYb3cH7+/Ox7rA5EbXd2s3MxEMgmUJcuBmQ2QyTSdSaJEe4856ukG1N6uIA
 fA9XmLS6WVgfrTRO2HlRJRca+A+/LF5G8GaTrAdo=
Date: Mon, 16 Dec 2019 17:12:58 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH 1/1] drm/sun4i: hdmi: Check for null pointer before cleanup
Message-ID: <20191216161258.lmkq2ersfm746t7q@gilmour.lan>
References: <20191216144348.7540-1-stefan@olimex.com>
MIME-Version: 1.0
In-Reply-To: <20191216144348.7540-1-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_081302_335210_E7CFB2CC 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7614851289953687617=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7614851289953687617==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tv26vsw7yc2hguuf"
Content-Disposition: inline


--tv26vsw7yc2hguuf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Dec 16, 2019 at 04:43:48PM +0200, Stefan Mavrodiev wrote:
> It's possible hdmi->connector and hdmi->encoder divices to be NULL.
> This can happen when building as kernel module and you try to remove
> the module.
>
> This patch make simple null check, before calling the cleanup functions.
>
> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
> ---
>  drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> index a7c4654445c7..b61e00f2ecb8 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> @@ -685,8 +685,10 @@ static void sun4i_hdmi_unbind(struct device *dev, struct device *master,
>  	struct sun4i_hdmi *hdmi = dev_get_drvdata(dev);
>
>  	cec_unregister_adapter(hdmi->cec_adap);
> -	drm_connector_cleanup(&hdmi->connector);
> -	drm_encoder_cleanup(&hdmi->encoder);
> +	if (hdmi->connector.dev)
> +		drm_connector_cleanup(&hdmi->connector);
> +	if (hdmi->encoder.dev)
> +		drm_encoder_cleanup(&hdmi->encoder);

Hmmm, this doesn't look right. Do you have more information on how you
can reproduce it?

Maxime

--tv26vsw7yc2hguuf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfetCgAKCRDj7w1vZxhR
xSlzAQCy4c+CBbNxGZLR/c23Wqh2wxxJFng5CLDPuXkQzWCfYAEA2J3Ojg/qotg0
t+szQiO+c0e2z1mtbxDkSMg9ZtyIVwQ=
=fjFy
-----END PGP SIGNATURE-----

--tv26vsw7yc2hguuf--


--===============7614851289953687617==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7614851289953687617==--

