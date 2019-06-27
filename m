Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099FA58B5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 22:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a5Ck1O8Ptvl1iQhVODzT+f//IT7xne7c5k0wLu8amLY=; b=YmsWXa38rFD6PTjnZyAyK5Zc+
	2i91E8URSQ2Z2TzeOXcSQf/+kUmUw6cTgiw1VGmZjfsrAebaxozqA4d2CY5kCmGboBZTDKyl/a5P8
	2G8wFMFlgxAi+NglYRfL8LAMTIVZFT+yhlaIFO3CxDZLnbcp6o4KhlllhF4qhBWnkQSPjxvR37wB4
	2t8j5DT+TGfgTMhTIjJzxLwYBq71twa+Nioz3jg0ZCTtSN293zoykN02aAXSnHBvPTCR8jKo1kMbK
	83QWaarCuO0Y/tS69RFolmpqYI/RT9Vpch024TEIf30JjiYH0ce2Vr3Ru0S2N5TmfjvoiM26zmB6Q
	c/vgjcjlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgaaE-0000fK-Md; Thu, 27 Jun 2019 20:01:26 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgaa3-0000eV-HV
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 20:01:16 +0000
Received: by mail-qt1-x843.google.com with SMTP id w17so3829712qto.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 13:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version;
 bh=qKK2KDX7frtrIKr1EplmktiBaWbPgSjQcBIIxMVX2RU=;
 b=eUJdgworBLQew89Ab56iS1MHkbPZfN/a/hYyu+uNK5hrjQviRKG1CHF7ouGaxJOzn9
 FfpU3W26Z0xXwnbfh5ymfHSBUZysfAWmcwPTY3H1KBraiH4P5UcY6yg3BJzVB9XE+cqM
 /fLXGZEewVl7CUcgfXsRia3fZz0GUyxQrClwKAeJnk0MiAiF5n+XrWBBOScqBl5vMx3f
 hmLKsEPOG4VMvp4T7ybl6RxasQ2GQJ42ZJi/fKR961njNW1y4M3ugmcljjll+vWspBm0
 khCqghz04HYTMqIk3Lm/5F7ePHQ+J92m8I+/Zh0u6kenqQi4m+O2rV8i9V0urQQz2Nfm
 ekYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version;
 bh=qKK2KDX7frtrIKr1EplmktiBaWbPgSjQcBIIxMVX2RU=;
 b=OLV0AxbRTM4+BC2tBkVtwM3nXReJQ2csLkxnHPBjKfABQxBn688xJ4bejYXE/WZ+Oa
 x+DKorlo3i9RzRkktUdqTNdXLsHKczfPIqSihOxTKcRXM3TvroXnHiqdv5Kv2KqBeOxC
 iFIijK1eCmL1DvVqmoRu92IWpdGsVnmZBSfO2eQ4yiyt9YJzyXQzQk3S/7SyImif2sQQ
 NSp8lnYpjT4AxtKQ1WHdZgYLtJu2sQrvF5fyspS1TRoWCZE4eRkpMINsUlK6WAeFakfz
 kvVhxFIUmQu7g05Q4NMJ5eIiPbFMVCrtQBSGEh4bY13sCk5IUohZXW08YB6bAELV9raF
 +Y6Q==
X-Gm-Message-State: APjAAAW+uZx3ZXzSSJAUa0z0QqQeAhbnBpeD/gkXywjG3sCV+ACN+NjR
 T0So1nfEBGKpgYzcHsKqsfbZ3A==
X-Google-Smtp-Source: APXvYqzXytLoY5aMFDhelaZYmwxxaAOnY02e5QhQ6jI4M7w1awpujSXVkKSKeJpgDsT4OqNja6A5Kg==
X-Received: by 2002:ac8:2734:: with SMTP id g49mr4936133qtg.228.1561665674052; 
 Thu, 27 Jun 2019 13:01:14 -0700 (PDT)
Received: from tpx230-nicolas.collaboramtl
 (modemcable154.55-37-24.static.videotron.ca. [24.37.55.154])
 by smtp.gmail.com with ESMTPSA id c18sm32024qkk.73.2019.06.27.13.01.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 13:01:13 -0700 (PDT)
Message-ID: <804b1c4708bb0292ba32535d4b986a129d6492b8.camel@ndufresne.ca>
Subject: Re: [PATCH 19/31] staging: bcm2835-camera: Ensure timestamps never
 go backwards.
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson
 <dave.stevenson@raspberrypi.org>, Hans Verkuil <hverkuil@xs4all.nl>, Mauro
 Carvalho Chehab <mchehab@kernel.org>
Date: Thu, 27 Jun 2019 16:01:11 -0400
In-Reply-To: <1561661788-22744-20-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <1561661788-22744-20-git-send-email-wahrenst@gmx.net>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_130115_581881_BD5F3466 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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
Content-Type: multipart/mixed; boundary="===============3526221862367111605=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3526221862367111605==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-SF32Srt50qYIqOq3jLza"


--=-SF32Srt50qYIqOq3jLza
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 27 juin 2019 =C3=A0 20:56 +0200, Stefan Wahren a =C3=A9crit :
> From: Dave Stevenson <dave.stevenson@raspberrypi.org>
>=20
> There is an awkward situation with H264 header bytes. Currently
> they are returned with a PTS of 0 because they aren't associated
> with a timestamped frame to encode. These are handled by either
> returning the timestamp of the last buffer to have been received,
> or in the case of the first buffer the timestamp taken at
> start_streaming.
> This results in a race where the current frame may have started
> before we take the start time, which results in the first encoded
> frame having an earlier timestamp than the header bytes.
>=20
> Ensure that we never return a negative delta to the user by checking
> against the previous timestamp.
>=20
> Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.=
c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index 9967df9..6205793 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -387,6 +387,11 @@ static void buffer_cb(struct vchiq_mmal_instance *in=
stance,
>  			 ktime_to_ns(dev->capture.kernel_start_ts),
>  			 dev->capture.vc_start_timestamp, pts,
>  			 ktime_to_ns(timestamp));
> +		if (timestamp < dev->capture.last_timestamp) {
> +			v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
> +				 "Negative delta - using last time\n");
> +			timestamp =3D dev->capture.last_timestamp;
> +		}

Instead of that, maybe you could request a minimum number of buffers,
and not let the header buffer go until you have a proper "following
timestamp" to give it. This way you don't need this hack, and you won't
have an off-by-one in timestamps.

>  		buf->vb.vb2_buf.timestamp =3D ktime_to_ns(timestamp);
>  	} else {
>  		if (dev->capture.last_timestamp) {
> --
> 2.7.4
>=20

--=-SF32Srt50qYIqOq3jLza
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXRUghwAKCRBxUwItrAao
HA1iAKCyzh8vUusnUfIKgzx/hlvymYLNSwCgxSxj2SPDEegMp+kNFm//eoQOfv0=
=pCKP
-----END PGP SIGNATURE-----

--=-SF32Srt50qYIqOq3jLza--



--===============3526221862367111605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3526221862367111605==--


