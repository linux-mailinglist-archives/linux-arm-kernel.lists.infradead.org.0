Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DCB56DA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 17:27:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GpJiGr+piNKGqylV8Iuz1TUmphfrHkAsqRIInUB/GLo=; b=fNT0gcgaYZBOraZODPo/guHjg
	EQSldXPbMqTKXI/cJLsLdol3fYLiVC0fPDUwUnaaVFBhbg5iCEC3wM7dLLmbcfQ3Z0yimoPf2snnU
	/3+mufE0ao5kOgfuTjF45oQWBBvKgea/XRhFY3aD+wDLN6OUH9z3kpqMCd7TYMP2LKCKkIhzgjRsY
	YltalUMyrvugT8Sm/N/mddg2zplZPonKPXt0cU9PsvFRoCnkXr3kj5w5COueuiApQOvBAVVd/DGQU
	kU94E7SZlJ8O/K40Z7JU1YXp+4nVoKTyZ5xIHazdp3ZRiPpsJorJWByA9ZqBXbMIHQWASSwQMTkI+
	SrC0cRmWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg9pP-0001Zu-Ek; Wed, 26 Jun 2019 15:27:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg9pA-0001ZR-6U
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 15:27:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id p11so3223587wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 08:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9A2wQY7gA6xIj6wKGlooAaLf8y+VabEUr9BRhKlWgIs=;
 b=SLAJ6rqzmTBZp/FgctLb4FAr/aFVV60LMs/tgVvBfJ5AVFxS+vo1hiQ0GiR7m0aMJr
 itAXg2707XGHwQocyvNSYi4bgQaRQ1WmMazDQUGsHkmWm9CA/S6PD4TnW/vtbRBRdrgy
 9wHjSelVgYQaGgUC/ezGeAezu0xf8NaOt/lwz1sCsZjS2Wfum+BZ+H95O97/S7YRLHqN
 7bbY4Er9fl6Rn3/A5xGrvPndXYKBNfx5oIdjnjC3zfUwGHJGSJP7mjaS9rMA8qlO7GSS
 9SemumG0eHC7OoSNh64edSj2cdGLGnxm1NrwQmOeL+6B2tOweXeCc5XG1nL1Dz+ME+AD
 6p4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9A2wQY7gA6xIj6wKGlooAaLf8y+VabEUr9BRhKlWgIs=;
 b=XhgTJkk7fF4DwxlXKRkUCdWhZVXgJ2Oqs3ytA/KaCRVSLRMN6HiMUjmrkAwv6Lgeb8
 yU9/SRqbFYI5cvu26Q4SS9BW+SMiRmfZT/neIwtoNmd/L8OvKkorKC+SwFlIPwEWiaSV
 CdDkcjCncWntRXbFO7dWbpbYFLtb6Jvmu5mwIymUtIKxrqKV/dUlP8NaKaAMBAeTb4ns
 F0d3IfxQNrzKELL199XE6N78fWrGy9NjiZB6xIZ8lvj+9c+aDn0SuoGz+IfAizSOFVYe
 7W0SY7gSxN6los0vL9Xwz55hazNIVGsNe6+0cqfhBTYn+i6LmGS/d4LfSafd6dNP4ogE
 7BDg==
X-Gm-Message-State: APjAAAVdmoO5JHmQIGSfq2Y6GXFomuL9AQblu/21UBzKWfvwF/Bswl43
 ysn28yJDcP6ASyNjOVnt3Sw=
X-Google-Smtp-Source: APXvYqyOc1IAXBRl/VFMbKWih7h/LwjwBbFO8TF9+0o+g0SDmLt0h47TcPCTUZGLtrhXNvyMFBz4kQ==
X-Received: by 2002:adf:ea92:: with SMTP id s18mr3986892wrm.257.1561562822152; 
 Wed, 26 Jun 2019 08:27:02 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id s188sm3091226wmf.40.2019.06.26.08.27.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 08:27:00 -0700 (PDT)
Date: Wed, 26 Jun 2019 17:26:59 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v5 06/12] drm/modes: Support modes names on the command
 line
Message-ID: <20190626152659.GA11481@ulmo>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
 <18443e0c3bdbbd16cea4ec63bc7f2079b820b43b.1560783090.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <18443e0c3bdbbd16cea4ec63bc7f2079b820b43b.1560783090.git-series.maxime.ripard@bootlin.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_082704_243730_37377CE2 
X-CRM114-Status: GOOD (  44.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: eben@raspberrypi.org, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Maxime Ripard <maxime.ripard@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8749651980431466444=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8749651980431466444==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xHFwDpU9dbj6ez1V"
Content-Disposition: inline


--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2019 at 04:51:33PM +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@free-electrons.com>
>=20
> The drm subsystem also uses the video=3D kernel parameter, and in the
> documentation refers to the fbdev documentation for that parameter.
>=20
> However, that documentation also says that instead of giving the mode usi=
ng
> its resolution we can also give a name. However, DRM doesn't handle that
> case at the moment. Even though in most case it shouldn't make any
> difference, it might be useful for analog modes, where different standards
> might have the same resolution, but still have a few different parameters
> that are not encoded in the modes (NTSC vs NTSC-J vs PAL-M for example).
>=20
> Reviewed-by: Noralf Tr=C3=B8nnes <noralf@tronnes.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
> ---
>  drivers/gpu/drm/drm_client_modeset.c |  4 ++-
>  drivers/gpu/drm/drm_connector.c      |  3 +-
>  drivers/gpu/drm/drm_modes.c          | 62 +++++++++++++++++++++--------
>  include/drm/drm_connector.h          |  7 +++-
>  4 files changed, 59 insertions(+), 17 deletions(-)

This patch causes an issue on various Tegra boards that have so far been
running flawlessly. Here's an extract from the boot log:

	[    0.000000] Kernel command line: root=3D/dev/nfs rw netdevwait ip=3D:::=
::eth0:on nfsroot=3D192.168.23.1:/srv/nfs/tegra194 console=3DttyTCU0,115200=
n8 console=3Dtty0 fbcon=3Dmap:0 net.ifnames=3D0 rootfstype=3Dext4 video=3Dt=
egrafb no_console_suspend=3D1 earlycon=3Dtegra_comb_uart,mmio32,0x0c168000 =
gpt usbcore.old_scheme_first=3D1 tegraid=3D19.1.2.0.0 maxcpus=3D8 boot.slot=
_suffix=3D boot.ratchetvalues=3D0.2.2 vpr=3D0x8000000@0xf0000000 sdhci_tegr=
a.en_boot_part_access=3D1
	...
	[   18.597001] [drm:drm_connector_init [drm]] cmdline mode for connector D=
P-1 tegrafb 0x0@60Hz
	...
	[   18.627145] [drm:drm_connector_init [drm]] cmdline mode for connector D=
P-2 tegrafb 0x0@60Hz
	...
	[   18.673770] [drm:drm_connector_init [drm]] cmdline mode for connector H=
DMI-A-1 tegrafb 0x0@60Hz
	...
	[   19.057500] [drm:drm_mode_debug_printmodeline [drm]] Modeline "0x0": 0 =
0 0 0 0 0 0 1 4 1 0x20 0x6
	[   19.066341] [drm:drm_mode_prune_invalid [drm]] Not using 0x0 mode: CLOC=
K_LOW
	...
	[   19.677803] [drm:drm_client_modeset_probe [drm]] looking for cmdline mo=
de on connector 60
	[   19.686019] [drm:drm_client_modeset_probe [drm]] found mode 0x0
	...
	[   19.851843] drm drm: failed to set initial configuration: -28

So basically what's happening here is that the bootloader is passing a
video=3D parameter on the command-line and after this patch, the DRM core
will consider the tegrafb in that parameter to be a named video mode.
The mode is then filtered out because it doesn't make any sense, but
then drm_client_modeset_probe() still tries to use it, eventually
leading to failure because we can't allocate memory for a 0x0
framebuffer.

Now, there are obviously a couple of places where things go wrong. On
one hand I think if the mode specified on the command-line is already
filtered out, then drm_client_modeset_probe() should not be trying to
use it.

One could also argue that the bootloader shouldn't be passing that
video=3Dtegrafb parameter in the first place. Then again, this is nothing
out of the ordinary (as documented in Documentation/fb/modedb.rst).

The problem with named modes, and you already highlighted this in your
comment in the code, is that it's not possible to distinguish between a
mode name and a video=3D option that defines the framebuffer device to
use.

That said, I wouldn't be surprised if this change ended up breaking on
other devices. I'm also not sure that under these circumstances it's a
good idea to support named modes. At least not until we have a better
way of determining what's a real mode name and what isn't. Looking at
the old modedb from fb, not even the standard modes listed there have
names associated with them, so I'm not sure how this was ever supposed
to work. From the looks of it, some of the fbdev drivers seem to take a
mode list from board-code (see for example the mx21ads_modes array from
arch/arm/mach-imx/mach-mx21ads.c). The imxfb driver can then take a mode
name from the command line and try to match it against a list of known
modes. That seems to match what the documentation says.

However, that also really only works because this is all directly dealt
with in the fbdev drivers. For DRM/KMS we don't do that and instead we
rely on the core to provide this backwards-compatibility. However, at
the time when we parse the mode from the command line we don't have the
list of modes that are considered to be valid, so your patch currently
needs to assume that it is a valid mode. I don't think that's a good
idea, because clearly not all strings that currently make it through the
filter are actually modes.

So if we really need this, I think we want some way for the connector to
provide the list of named modes that it supports so that by the time we
want to parse the command-line we can check whether it's actually a name
to avoid false positives like the ones I'm seeing on Tegra.

For now it might just be easiest to avoid any of this and disable the
named mode support until it's a bit more mature. The patch no longer
reverts cleanly, but it should be fairly easy to disable the feature in
a follow-up patch again.

Thierry

> diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/drm_c=
lient_modeset.c
> index 4869a0170bec..33d4988f22ae 100644
> --- a/drivers/gpu/drm/drm_client_modeset.c
> +++ b/drivers/gpu/drm/drm_client_modeset.c
> @@ -149,6 +149,10 @@ drm_connector_pick_cmdline_mode(struct drm_connector=
 *connector)
>  	prefer_non_interlace =3D !cmdline_mode->interlace;
>  again:
>  	list_for_each_entry(mode, &connector->modes, head) {
> +		/* Check (optional) mode name first */
> +		if (!strcmp(mode->name, cmdline_mode->name))
> +			return mode;
> +
>  		/* check width/height */
>  		if (mode->hdisplay !=3D cmdline_mode->xres ||
>  		    mode->vdisplay !=3D cmdline_mode->yres)
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connec=
tor.c
> index 3ccdcf3dfcde..3afed5677946 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -139,8 +139,9 @@ static void drm_connector_get_cmdline_mode(struct drm=
_connector *connector)
>  		connector->force =3D mode->force;
>  	}
> =20
> -	DRM_DEBUG_KMS("cmdline mode for connector %s %dx%d@%dHz%s%s%s\n",
> +	DRM_DEBUG_KMS("cmdline mode for connector %s %s %dx%d@%dHz%s%s%s\n",
>  		      connector->name,
> +		      mode->name ? mode->name : "",
>  		      mode->xres, mode->yres,
>  		      mode->refresh_specified ? mode->refresh : 60,
>  		      mode->rb ? " reduced blanking" : "",
> diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
> index 6debbd6c1763..429d3be17800 100644
> --- a/drivers/gpu/drm/drm_modes.c
> +++ b/drivers/gpu/drm/drm_modes.c
> @@ -1580,7 +1580,7 @@ bool drm_mode_parse_command_line_for_connector(cons=
t char *mode_option,
>  					       struct drm_cmdline_mode *mode)
>  {
>  	const char *name;
> -	bool parse_extras =3D false;
> +	bool named_mode =3D false, parse_extras =3D false;
>  	unsigned int bpp_off =3D 0, refresh_off =3D 0;
>  	unsigned int mode_end =3D 0;
>  	char *bpp_ptr =3D NULL, *refresh_ptr =3D NULL, *extra_ptr =3D NULL;
> @@ -1599,8 +1599,22 @@ bool drm_mode_parse_command_line_for_connector(con=
st char *mode_option,
> =20
>  	name =3D mode_option;
> =20
> -	if (!isdigit(name[0]))
> -		return false;
> +	/*
> +	 * This is a bit convoluted. To differentiate between the
> +	 * named modes and poorly formatted resolutions, we need a
> +	 * bunch of things:
> +	 *   - We need to make sure that the first character (which
> +	 *     would be our resolution in X) is a digit.
> +	 *   - However, if the X resolution is missing, then we end up
> +	 *     with something like x<yres>, with our first character
> +	 *     being an alpha-numerical character, which would be
> +	 *     considered a named mode.
> +	 *
> +	 * If this isn't enough, we should add more heuristics here,
> +	 * and matching unit-tests.
> +	 */
> +	if (!isdigit(name[0]) && name[0] !=3D 'x')
> +		named_mode =3D true;
> =20
>  	/* Try to locate the bpp and refresh specifiers, if any */
>  	bpp_ptr =3D strchr(name, '-');
> @@ -1611,6 +1625,9 @@ bool drm_mode_parse_command_line_for_connector(cons=
t char *mode_option,
> =20
>  	refresh_ptr =3D strchr(name, '@');
>  	if (refresh_ptr) {
> +		if (named_mode)
> +			return false;
> +
>  		refresh_off =3D refresh_ptr - name;
>  		mode->refresh_specified =3D true;
>  	}
> @@ -1627,12 +1644,16 @@ bool drm_mode_parse_command_line_for_connector(co=
nst char *mode_option,
>  		parse_extras =3D true;
>  	}
> =20
> -	ret =3D drm_mode_parse_cmdline_res_mode(name, mode_end,
> -					      parse_extras,
> -					      connector,
> -					      mode);
> -	if (ret)
> -		return false;
> +	if (named_mode) {
> +		strncpy(mode->name, name, mode_end);
> +	} else {
> +		ret =3D drm_mode_parse_cmdline_res_mode(name, mode_end,
> +						      parse_extras,
> +						      connector,
> +						      mode);
> +		if (ret)
> +			return false;
> +	}
>  	mode->specified =3D true;
> =20
>  	if (bpp_ptr) {
> @@ -1660,14 +1681,23 @@ bool drm_mode_parse_command_line_for_connector(co=
nst char *mode_option,
>  		extra_ptr =3D refresh_end_ptr;
> =20
>  	if (extra_ptr) {
> -		int remaining =3D strlen(name) - (extra_ptr - name);
> +		if (!named_mode) {
> +			int len =3D strlen(name) - (extra_ptr - name);
> =20
> -		/*
> -		 * We still have characters to process, while
> -		 * we shouldn't have any
> -		 */
> -		if (remaining > 0)
> -			return false;
> +			ret =3D drm_mode_parse_cmdline_extra(extra_ptr, len,
> +							   connector, mode);
> +			if (ret)
> +				return false;
> +		} else {
> +			int remaining =3D strlen(name) - (extra_ptr - name);
> +
> +			/*
> +			 * We still have characters to process, while
> +			 * we shouldn't have any
> +			 */
> +			if (remaining > 0)
> +				return false;
> +		}
>  	}
> =20
>  	return true;
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index c802780b0bfc..cdf2fb910010 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -933,6 +933,13 @@ struct drm_connector_funcs {
>   */
>  struct drm_cmdline_mode {
>  	/**
> +	 * @name:
> +	 *
> +	 * Name of the mode.
> +	 */
> +	char name[DRM_DISPLAY_MODE_LEN];
> +
> +	/**
>  	 * @specified:
>  	 *
>  	 * Has a mode been read from the command-line?
> --=20
> git-series 0.9.1
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

--xHFwDpU9dbj6ez1V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl0Tjr8ACgkQ3SOs138+
s6Glnw/+Pt0bC3X46p37pShw923Lk4S2Lxlc1JezkP0cn31NeemL8oAS6Dtu2yek
kPA5q4mHbZ9mJFXOBZvUHWqJvsFbkvcupDbskMcOvsVL4DvdQW7ZwRwYls8paFAh
Czear83LW1J6Nc54BxZvkyYDnswRsEZIBeX1DLi5Na3202qaYiaJ/Wo5AhhCH6qO
40VfrQOtVUSsG04aT91cLO0NrCUpbVPuvyxksO/EYeClyDtsN7+eGTzGi8ZBVZ9s
aoCs/zuY7hl2EkPZIT5Fbfl+EQrIuoF4op++2yqdHka3/+7yv8pEWj7CtqT4/bFf
eUWfK70uPdJsi94Iu9aOYoY6NmnwFNtDLGc0pgRQCL/CWOVAMF6N37emZwXUA+CM
3Y2ySIGDeOEKkUMxFtgK/1MY6gjREAJBzWbnJf6p+8eocE8EDKbmtDV+EfWf59XS
5pWzcmE5lX6/Z43SmcLoT+t/6LnJVfk3WZOCxOXwibW59WjL1HO2VeAydzQlU1b9
qsefPqgGCONHAnft6tRA9AY8qmSFlu3WhIX9FA9TWxE5ZmyOx7uS0cUQ7JUWoO6I
w1rVHdgL91/p32e3FNPXXwtxjJLgvKxH+zQ07k/qBGiQ/j+mkpaSHItc05rAx37R
BqhW+0tjxoJ93mZVVQ6C1Us504Ag4nPdHRclZdfzHJf/dc/cVxs=
=Eqct
-----END PGP SIGNATURE-----

--xHFwDpU9dbj6ez1V--


--===============8749651980431466444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8749651980431466444==--

