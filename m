Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3335FE82C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:51:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BzwWbQCzoRf1jNXjd7nxvYI4pCouHuxUmga9GHgtQCc=; b=V2mi0/d3C/mfLRv82IdSBhaMR
	CEOK0vHDkjCOwqVo1yKGnoS4kc9eFoOGsNgYHZ149B1kMP7KhtgyOdlM6aUGGLTK2373POnTAHZ+x
	5oasie3DsCyLjzHWwj7EF4TYwwnkjNZhzbVGzpDztzCGVPUgdbwzg0GN8NDqo+iGAVTnvQ7ib48xe
	k3AgO3uqPOOmktxJBJcwSObn/VZOKlJC/Hj4bMX65uD86N5jqObS7eP8AMlN0fJDjihM846lZIukn
	a5T7nAHWTiiZrIf+kZmJY7SV6sZPjSGIQymVl2IukylgTUOJLhb0mDQ+xFE3Za98q/CdQQTKMI7OS
	a3ObA1RgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMHv-00072d-BS; Tue, 29 Oct 2019 07:51:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMHh-00072A-V4
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 07:51:23 +0000
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 12A6320862;
 Tue, 29 Oct 2019 07:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572335481;
 bh=6tlkf+68BBehN6NWoxxSf2mpJUjTFaOogiNKGoJC7bY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qV00x03f338JdvJ8sD/N37vqFpuGbrwN7BQvxXmDTNpn7dHPEk2t3zHB5EAarZMah
 NE93pTwnI5a7XjKftR2rVc8OPq2N3Uu3XkgoZKiTta6Z8OsNHLrUgGz+B7nS2DzKEc
 OYa7bgOM7aEXanYx0H/FiEjifC3Xvy1boi1qvMkM=
Date: Tue, 29 Oct 2019 08:45:58 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH] drm: sun4i: Add support for suspending the display driver
Message-ID: <20191029074558.rarf2avdwg6r365j@hendrix>
References: <20191028214313.3463732-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20191028214313.3463732-1-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_005122_016664_2B930CAD 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10"
 <dri-devel@lists.freedesktop.org>, open list <linux-kernel@vger.kernel.org>,
 linux-sunxi@googlegroups.com, Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2716609538996216633=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2716609538996216633==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="etwovadxcnmgzzzn"
Content-Disposition: inline


--etwovadxcnmgzzzn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Oct 28, 2019 at 10:43:13PM +0100, Ondrej Jirman wrote:
> Shut down the display engine during suspend.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  drivers/gpu/drm/sun4i/sun4i_drv.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>
> diff --git a/drivers/gpu/drm/sun4i/sun4i_drv.c b/drivers/gpu/drm/sun4i/sun4i_drv.c
> index a5757b11b730..c519d7cfcf43 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_drv.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_drv.c
> @@ -346,6 +346,27 @@ static int sun4i_drv_add_endpoints(struct device *dev,
>  	return count;
>  }
>
> +#ifdef CONFIG_PM_SLEEP
> +static int sun4i_drv_drm_sys_suspend(struct device *dev)
> +{
> +        struct drm_device *drm = dev_get_drvdata(dev);
> +
> +        return drm_mode_config_helper_suspend(drm);
> +}
> +
> +static int sun4i_drv_drm_sys_resume(struct device *dev)
> +{
> +        struct drm_device *drm = dev_get_drvdata(dev);
> +
> +        return drm_mode_config_helper_resume(drm);
> +}
> +#endif

It looks like you've used spaces instead of tabs to indent. The rest
of the patch is fine though.

Maxime

--etwovadxcnmgzzzn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbfuNgAKCRDj7w1vZxhR
xavJAP4yYAzBMFxdoeP+c8qATt84FYIsJ8KJOBusx6+6zRv0swD9ETG+/4EFeHLd
11lcmTIUtbetqxDMq0qB9BUz4ozo0g8=
=T1AE
-----END PGP SIGNATURE-----

--etwovadxcnmgzzzn--


--===============2716609538996216633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2716609538996216633==--

