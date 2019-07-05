Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 095B660708
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6mUM+o/tfw1DsFnd3p0K5xNZpFvsb7QrCDy+w9n8pvo=; b=PWQPCVTapTBU6b5NB70Y9tFvk
	Fi/gyKn4mB0MAowPXJZMRFvgvjfM0j5QX6c55WdIZroC3GivBsSX9pofzKOtEbPiEn1hSeIfKrByY
	6BOJiVzaEEk+d/2OE+72fv2LoL1lhptk2aGMVhVdHsisI8K3pos1FAi7i33EpxP7hkl4E4QfVSsK2
	YOS59GjmvdFl6yEpAwuE5o9RHVfnH1MFcvPdHD1FnTbDs0Tk66Py8Va0Getm+LCvAaG9pJpKVVBgA
	2QipgVMWwGE3SQXOQYoOwWSEXH67Q4eVt7GimjU03F1dAm+CVkhKdpBxTYuEKKqLbqgTgr5fAvdlT
	rCElI36LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOl9-0003GK-Sx; Fri, 05 Jul 2019 14:00:19 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOfO-0004XY-Jm; Fri, 05 Jul 2019 13:54:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j3lgZr5PhIwsop5RCxeelLiraufpXEP7Y5EXfLHxN4Y=; b=p1bMm7yHV7j9pcIKQnpb9ewFI
 bHpBU25B6nHyXU/9dakjj3WqXhiGL3+UpPf07yu1peoklcJJTBhoP0gPiMicM2++Zlc/jBr/+w8Ww
 /tQCo6hVY5pB2Js4oKtXPX6sN4h/RfCq6ecRkbEM3RvVna8cKlmyLGAtGRvgeG4w0vD1GKxMuhtQB
 IOtQJM0zQXq29cWvM7pYKabzvr/UTTDF/rPcSnsLC96hUOBden3Oxd6v3bbOtYkYkSiaT4DJM7qVc
 IT4l9A8l1DdCQCbdGy4odg/VeZ84GiXzOqUK+9a2Gyvf5tWxmGs9SMAhREcZckpKXJTvdWC1l0rmW
 Rtw0XXnnA==;
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjN9Z-0001Az-Tc; Fri, 05 Jul 2019 12:17:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j3lgZr5PhIwsop5RCxeelLiraufpXEP7Y5EXfLHxN4Y=; b=hAYQlw4PRYrgwlGaAkQ/4wA7G
 TP0lpCsujJkEtK292CBw1OMzakLEIfE/1kBviVMFeBl1bil5alPmT7CwQVE0scMA2Yt8zitziOyKx
 Twvf//bKTdx4ML8P8uJ6VDrcVYIerXzo8AUOHz3OOtquKv+chJ5C+U9LMFILUwu2uDO2M=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hjN4z-0003hS-E5; Fri, 05 Jul 2019 12:12:41 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 459BD2742B0F; Fri,  5 Jul 2019 13:12:40 +0100 (BST)
Date: Fri, 5 Jul 2019 13:12:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Tzung-Bi Shih <tzungbi@google.com>
Subject: Re: [PATCH 1/4] ASoC: hdmi-codec: Add an op to set callback function
 for plug event
Message-ID: <20190705121240.GA20625@sirena.org.uk>
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-2-cychiang@chromium.org>
 <CA+Px+wXtmf9dQQP7ywPLp7Qbbvqau=WnO3qhZ8+qmbJD1gjx+A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+Px+wXtmf9dQQP7ywPLp7Qbbvqau=WnO3qhZ8+qmbJD1gjx+A@mail.gmail.com>
X-Cookie: How you look depends on where you go.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_131725_985869_290F5603 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ALSA development <alsa-devel@alsa-project.org>, dianders@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Jaroslav Kysela <perex@perex.cz>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, tzungbi@chromium.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 linux-arm-kernel@lists.infradead.org, Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: multipart/mixed; boundary="===============5537107371588452748=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5537107371588452748==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 05, 2019 at 03:08:37PM +0800, Tzung-Bi Shih wrote:
> On Fri, Jul 5, 2019 at 12:26 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:

> > +typedef void (*hdmi_codec_plugged_cb)(struct platform_device *dev,
> > +                                     bool plugged);
> > +

> The callback prototype is "weird" by struct platform_device.  Is it
> possible to having snd_soc_component instead of platform_device?

Or if it's got to be a device why not just a generic device so
we're not tied to a particular bus here?

--3MwIy2ne0vdjdPXF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0fPrcACgkQJNaLcl1U
h9CqOgf+J1iCd1w3ReqbJfzVnRPz1davoLs8e6k9u638UeMZX3sVMS9fyeTcQtrX
XpRecrQsk7CUGoFb2ji0GxnHSXWnEwnIPCRmBzoDwSmsX+33TYQI1aH+m2ZeAgjv
QqHqk0vNtFAlsttbNMTvbkkkSYAAbOPW8K8AEL54U1X8EJBpqV8ljUj85yDazCou
SCsQUj0LlLqN6+Gm1LmXH81KdHY06t8i7yxPATgspDLgEJYi4WwdrIyqKAtl+k92
iAuK8BXYQJO14ZrV/8f0TJbHnrszfO3RJw0UqXdZ4YMvsw0KmrNj9jYv/cL7yD8F
AUeTwhBtKU+Jd353cqjNMhjYBXwEUg==
=+Q0m
-----END PGP SIGNATURE-----

--3MwIy2ne0vdjdPXF--


--===============5537107371588452748==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5537107371588452748==--

