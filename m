Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D61D58B41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zYH5w5FExiFQZG6f76sKjJmXHYwmBU57uGWp1El/4DA=; b=Ay9NQzLOxBwdVfHeuqgIlbuEs
	DZgPJa0sAlL+VqOASm0sWeiHH2+dKg1NtkpLXgOwbWTtklShnTepGK5jmehr6cUgZETOguwpXbt4v
	z0+H0+0GBiUukqFDflVJ51YLjFppXUCQArQxUPK/g8WER82tB4hkpR0r1EI+iSQdH4NOUM/+2fztY
	YrLjkbmBSai+sMrybmHNS+tWD58APGDFo7cE7Ks3y9AT8GHUpM9/kVmqxlE0IsMUokCgm0bgbTznn
	+VBcGGASMgh/hLBaPN5uxIrM6gQocA7XbMkzx7Vyf+/kHVOBSK2REKLjrEKownfb4rO+0hnW7LB0j
	CE7gmzJZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgaWB-0005S7-Fv; Thu, 27 Jun 2019 19:57:15 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgaUT-0004LD-Az
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 19:55:31 +0000
Received: by mail-qk1-x743.google.com with SMTP id s22so2830076qkj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 12:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version;
 bh=yt1jNIDp2qA/3yHgjn04uOj8/ZQqqi5ArAZyFEg3sUE=;
 b=BWgzay3xNhUzmFQJRTmES8JgVzFK+oFu0V1hIVJdpDfA7F661/xmvyEqWsjqW4PwoK
 I7FJZmowuNYY/Oi8TnlllQQQT9f1S8MXuFzKThpoi4YkLrgO8DoTSyWJfrBvIYZSsdE/
 rfKq1YW0Tlas3F8XVmhGG6wa83zJv84T+7xTgXHJ9Bw2DpIAFmKcaafHERevQLHGg3Xw
 +cT0LA9yjvsuIXV9pKjM4OnYY44TMqlN7wtXxifc/94zloqQsoxT/4iiSpOITQeyIYjW
 7QcBoqa8QOWLhYHwBv2GnmNBqX0xfd+9cwlIG19cotGLtRxMshlfGUf9Rbmei5DpFX4D
 jwmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version;
 bh=yt1jNIDp2qA/3yHgjn04uOj8/ZQqqi5ArAZyFEg3sUE=;
 b=gagLcbctqFU3poxV9trLabxocGfoP75OGBrvCMOGt72W2S4dEtdDiVAlQFYeNLEQgl
 gaxcUWgjlqNsBYDVmAvGVD2v/8ZS8LAa83ACby9i1XxjmCyGWAMMqajVVSGeGLmL+yX5
 83F5vzwDhLA4x9PUAzhilNPslNMjbwlVm+6ICOgnDAs4tHftgJ8PCqR5KxXdO3KCmTt0
 zOPia3KfMpFaVe8fU4lZBFcjUFWBNGqMqBleoVSJ2zTKrPU2ZAUkXSEqfzpLnnToVI4D
 pn865p8B2dLBknuO5rV11BDgGFV5YNv9YdEfUTWdNK2SdI6R4VZmIaV9UERMvJLyZtS4
 mkeA==
X-Gm-Message-State: APjAAAXTc1W+ZRputPMbZht61f6oB0lnKlpwzOrL/6PX4Yrx1JsX1ZRl
 wzNH/OEsMQ1YDdSZDXGKj7VVmQ==
X-Google-Smtp-Source: APXvYqwSFWynfwlPVHqkWaRXdpOxvobRK8nLJCHmtX8Il/K9rE3SBBq7NCdp74P5/yHi1jULHYE3Kg==
X-Received: by 2002:a37:9e13:: with SMTP id h19mr5280337qke.435.1561665327324; 
 Thu, 27 Jun 2019 12:55:27 -0700 (PDT)
Received: from tpx230-nicolas.collaboramtl
 (modemcable154.55-37-24.static.videotron.ca. [24.37.55.154])
 by smtp.gmail.com with ESMTPSA id v30sm59106qtk.45.2019.06.27.12.55.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 12:55:26 -0700 (PDT)
Message-ID: <5e20b1d04b3c2f64173631ec2f0261a8a9597f0c.camel@ndufresne.ca>
Subject: Re: [PATCH 01/31] staging: bcm2835-camera: Ensure H264 header bytes
 get a sensible timestamp
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson
 <dave.stevenson@raspberrypi.org>, Hans Verkuil <hverkuil@xs4all.nl>, Mauro
 Carvalho Chehab <mchehab@kernel.org>
Date: Thu, 27 Jun 2019 15:55:24 -0400
In-Reply-To: <1561661788-22744-2-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <1561661788-22744-2-git-send-email-wahrenst@gmx.net>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_125529_510859_4B992B7F 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3698589242618397131=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3698589242618397131==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-d8CcQZOwWBYHAu9rQvMR"


--=-d8CcQZOwWBYHAu9rQvMR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dave,

Le jeudi 27 juin 2019 =C3=A0 20:55 +0200, Stefan Wahren a =C3=A9crit :
> From: Dave Stevenson <dave.stevenson@raspberrypi.org>
>=20
> H264 header come from VC with 0 timestamps, which means they get a
> strange timestamp when processed with VC/kernel start times,
> particularly if used with the inline header option.
> Remember the last frame timestamp and use that if set, or otherwise
> use the kernel start time.

Normally H264 headers are considered to be part of the following frame.
Giving it the timestamp of the previous frame will likely confuse some
userspace and cause an off-by-one in timestamp. I understand this is a
workaround, but am wondering if this can be improved.

>=20
> Link: https://github.com/raspberrypi/linux/issues/1836
> Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
> ---
>  .../staging/vc04_services/bcm2835-camera/bcm2835-camera.c  | 14 ++++++++=
++++--
>  .../staging/vc04_services/bcm2835-camera/bcm2835-camera.h  |  2 ++
>  2 files changed, 14 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.=
c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index dce6e6d..0c04815 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -359,7 +359,9 @@ static void buffer_cb(struct vchiq_mmal_instance *ins=
tance,
>  		}
>  	} else {
>  		if (dev->capture.frame_count) {
> -			if (dev->capture.vc_start_timestamp !=3D -1 && pts) {
> +			if (dev->capture.vc_start_timestamp !=3D -1) {
> +				buf->vb.vb2_buf.timestamp =3D ktime_get_ns();
> +			} else if (pts) {
>  				ktime_t timestamp;
>  				s64 runtime_us =3D pts -
>  				    dev->capture.vc_start_timestamp;
> @@ -372,8 +374,15 @@ static void buffer_cb(struct vchiq_mmal_instance *in=
stance,
>  					 ktime_to_ns(timestamp));
>  				buf->vb.vb2_buf.timestamp =3D ktime_to_ns(timestamp);
>  			} else {
> -				buf->vb.vb2_buf.timestamp =3D ktime_get_ns();
> +				if (dev->capture.last_timestamp) {
> +					buf->vb.vb2_buf.timestamp =3D
> +						dev->capture.last_timestamp;
> +				} else {
> +					buf->vb.vb2_buf.timestamp =3D
> +						ktime_to_ns(dev->capture.kernel_start_ts);
> +				}
>  			}
> +			dev->capture.last_timestamp =3D buf->vb.vb2_buf.timestamp;
>=20
>  			vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
>  			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
> @@ -541,6 +550,7 @@ static int start_streaming(struct vb2_queue *vq, unsi=
gned int count)
>  			 dev->capture.vc_start_timestamp, parameter_size);
>=20
>  	dev->capture.kernel_start_ts =3D ktime_get();
> +	dev->capture.last_timestamp =3D 0;
>=20
>  	/* enable the camera port */
>  	dev->capture.port->cb_ctx =3D dev;
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.=
h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
> index 2b5679e..09273b0 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
> @@ -90,6 +90,8 @@ struct bm2835_mmal_dev {
>  		s64         vc_start_timestamp;
>  		/* Kernel start timestamp for streaming */
>  		ktime_t kernel_start_ts;
> +		/* Timestamp of last frame */
> +		u64		last_timestamp;
>=20
>  		struct vchiq_mmal_port  *port; /* port being used for capture */
>  		/* camera port being used for capture */
> --
> 2.7.4
>=20

--=-d8CcQZOwWBYHAu9rQvMR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXRUfLAAKCRBxUwItrAao
HGmDAJ4vwzchXaLcmU0zm6amAKLUEoEaHQCg3cSPF/ZSaNoxR8VQYSGDRwOC1m4=
=b5TF
-----END PGP SIGNATURE-----

--=-d8CcQZOwWBYHAu9rQvMR--



--===============3698589242618397131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3698589242618397131==--


