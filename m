Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 997C7B1AE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 11:33:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2bf0YV7Zzp2YPk1mJ49MEqU1yBLOldl7VsUOEVg9ubg=; b=JkmeBnsMrxShL5RQAx07BRxRF
	24wPSUTWsTfW7T4r06QcHS1EB6QXBMKLRfre8X9awR/dyEdhEKX4ATDsUd/bKcqboz5s5aXATom2+
	aNlQWM9t5epAdm3BvB7AereNWYHFlg7ViGiMobb8iVbl/VP+5dPv7ukb+jldfl+2gO7oU+UAxZImt
	P8GIUNWURXkuav2B92/Ck3mnXXgCPBKtA6VFPe+/hpU3F0hRYAA3CLoN1Thr0yEr6daDUon5WI0C8
	em+o3WYCgdwXuvdavdz3A+eMV7B/6d7q1nSZjESqj73dbH3LrSqoiljs0jH9R2mU/aIU7UjNpQnDP
	UMXO126DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8hxC-0002cP-GH; Fri, 13 Sep 2019 09:33:22 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hwv-0002bj-W5
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 09:33:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id q17so26681687wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 02:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to;
 bh=YWFP3fiiNLYjg5KjJkJ+a3OV517hoFU0pK03RFIpW6w=;
 b=gCqAsImP3QV/jRpUp78X70WSTXJQi/V7ELSvPz73RKUCHgYp7clqnmXe5aMb1WE3WF
 BhHJw6DNizcIemoU1Npdpt6mBaQ4KgActLaEh6iHNVHTEfXbEj7synOzvxUt2oLPcS4U
 MmIg8CnTk63LRlYYi1AhYyFVbQH3OBFGGf/3/UoSe/WQlaKvqxgai7pJ8zp+N45VJjHR
 hs+o66YyYZqE7+EmfYGF4kBzeRNepmy9w1m8jZHk1ZuxO+bRfspNI3pv1D33KxL0AqqS
 auQadt4ZeBxwA0IiAe/NVOFU0aQx5sSqJ6YDk/7OCdakTwNDoSmMTWSc0iwZt57jaumf
 Ly2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to;
 bh=YWFP3fiiNLYjg5KjJkJ+a3OV517hoFU0pK03RFIpW6w=;
 b=DxQdqoZGlvX7IMQqk34m9y9HCSsVACa/2HRtHMecbxD31mwOy4MZLZN35YRcuw792X
 +ZjqHpaOAn3InicMVuHOXmX6O02ReyY8g6tTeR8Su+1dLMgAUiNzky0e3Ul1FMdmJXOY
 m708PLY/3gApJ2Cc1cOARs+mi820S3I1J8rQLPLHrMPEfOOPcBeUXPbfCbYzVuyQs3EE
 7Eo2Jyw3+JbBEvv9TWSizH44L/5DNsrmklMYz3bTm2P2zMZAlCIW5wGWxehL8Svic07j
 g0PTksqyLUo2B1Igq9FFxV0yElhGgrFE5AiRNMbCZKCWYC+HB1SYWEFF7oDF81yNF9EH
 aHig==
X-Gm-Message-State: APjAAAU4qrBjlemEFdkCQW4dplOeGnxHIry23qTwgj9zeNMCgwnOhfAj
 CGFYz/HREx3Dw5aFKF2AJfgSLw==
X-Google-Smtp-Source: APXvYqyTnY/BRnv5bnnwc3B97riovmka3Ma52ZQaQTgF3mOK8Nhr8fElod8xICY3ABgLgTy6zXeJkA==
X-Received: by 2002:a5d:650d:: with SMTP id x13mr5675866wru.37.1568367184374; 
 Fri, 13 Sep 2019 02:33:04 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h8sm679528wmc.5.2019.09.13.02.33.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Sep 2019 02:33:03 -0700 (PDT)
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
To: Mark Brown <broonie@kernel.org>
References: <20190717083327.47646-1-cychiang@chromium.org>
 <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
 <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
 <CAFv8NwJjG4mwfnYO=M3O9nZN48D6aY72nQuqEFpZL68dh5727w@mail.gmail.com>
 <7019a223-cc97-e1c6-907b-e6b3d626164f@baylibre.com>
 <20190909135346.GG2036@sirena.org.uk>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <3fc94731-f66a-223d-995e-97ac67f9e882@baylibre.com>
Date: Fri, 13 Sep 2019 11:32:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190909135346.GG2036@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_023306_037626_944C17C8 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Cheng-yi Chiang <cychiang@chromium.org>, linux-rockchip@lists.infradead.org,
 Takashi Iwai <tiwai@suse.com>, Tzung-Bi Shih <tzungbi@google.com>,
 Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Russell King <rmk+kernel@armlinux.org.uk>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Douglas Anderson <dianders@chromium.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: multipart/mixed; boundary="===============6870679337074355136=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6870679337074355136==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="UBRWlaGOHY0XEFVZVHxIrla091rV5aEyl"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--UBRWlaGOHY0XEFVZVHxIrla091rV5aEyl
Content-Type: multipart/mixed; boundary="rm5OjYgCDNiLh12bKFbv4tVbo1MJJOHLY";
 protected-headers="v1"
From: Neil Armstrong <narmstrong@baylibre.com>
To: Mark Brown <broonie@kernel.org>
Cc: Cheng-yi Chiang <cychiang@chromium.org>,
 Tzung-Bi Shih <tzungbi@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>, Douglas Anderson <dianders@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
 ALSA development <alsa-devel@alsa-project.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jernej Skrabec
 <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>
Message-ID: <3fc94731-f66a-223d-995e-97ac67f9e882@baylibre.com>
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
References: <20190717083327.47646-1-cychiang@chromium.org>
 <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
 <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
 <CAFv8NwJjG4mwfnYO=M3O9nZN48D6aY72nQuqEFpZL68dh5727w@mail.gmail.com>
 <7019a223-cc97-e1c6-907b-e6b3d626164f@baylibre.com>
 <20190909135346.GG2036@sirena.org.uk>
In-Reply-To: <20190909135346.GG2036@sirena.org.uk>

--rm5OjYgCDNiLh12bKFbv4tVbo1MJJOHLY
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

On 09/09/2019 15:53, Mark Brown wrote:
> On Mon, Sep 09, 2019 at 09:37:14AM +0200, Neil Armstrong wrote:
>=20
>> I'd like some review from ASoC people and other drm bridge reviewers,
>> Jernej, Jonas & Andrzej.
>=20
>> Jonas could have some comments on the overall patchset.
>=20
> The ASoC bits look basically fine, I've gone ahead and applied
> patch 1 as is since we're just before the merge window and that
> way we reduce potential cross tree issues.  I know there's a lot
> of discussion on the DRM side about how they want to handle
> things with jacks, I'm not 100% sure what the latest thinking is
> there.
>=20

Thanks Mark.


Cheng-Yi can you resent this serie without the already applied
first patch with Jernej, Jonas, and Jerome Brunet <jbrunet@baylibre.com> =
CCed ?

Thanks,
Neil


--rm5OjYgCDNiLh12bKFbv4tVbo1MJJOHLY--

--UBRWlaGOHY0XEFVZVHxIrla091rV5aEyl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPVPGJshWBf4d9CyLd9zb2sjISdEFAl17YkkACgkQd9zb2sjI
SdFL8xAAm/uVVOJY0VK0uVX/gv2nNJ+t90WPrW3BfoWCLRaSr1czldafQkylTwQl
EOHl8NcYz5pttql0d1ZKh6uZSCTsMtWRb6Qwm14c3ptFaD9y1TI8X+R+zryTIgA5
fuaLScVQ+kDpMwWYvZvVdWnu7/7Wdtj+uDNEooXlxeIvylxQzPYGQLcrdyZz54DZ
vPl/scouuoKobHYXHw5AUs/ipsHUxcfD9wm+s4lrcIcE8FSjoVqbwZsonqDlHfOY
lCykwi/sj2A567r0fL0Qipj4cqa5Zzvy955v0K5E1bHbTFs3I9kKsMsrLmYrpVB8
pG+Tz31EKziArzadGNlxjjI6ViRQxwXAOPUfDZW7JFmWPD+aF2ZquQttp3GGlbwf
9ndAcqd0yPqBaWwaPWAZJ/CbZiKPeDtAVcBtiR/pHYDUgMiDq88O3deynxUer4qw
06IrtU9X8yn02vEh2L+6fLCG3NfMCUdyl4lRCmxSJ8K83pCOx1iMpcawEJq+xktX
qvQVxXHrp1D5drRUA+87MDZmI5aQ/9HoYY+tIMTC21D7JFB/x2U6n0nFRyLi/muG
gD0oD4cBhYhH+xJhKQeBmx+cA6xb90J4mfzFvpWvwDeGNsJJ+QaLGmdz9b50Aqd9
XKP4tzxUvHbepIhN1NPCh1Xe2cU06KRt2S/ID9usnk2cnXoigUg=
=JmCa
-----END PGP SIGNATURE-----

--UBRWlaGOHY0XEFVZVHxIrla091rV5aEyl--


--===============6870679337074355136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6870679337074355136==--

