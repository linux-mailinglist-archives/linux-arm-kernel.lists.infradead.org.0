Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8985218C60
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 16:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EGR1lCSQblnNCVwtende3NnP3NSlhkSPOmYnaud5YC4=; b=sBgSUwwVjbnJ/0z6PqDpPueAa
	YeJERkadlFAh8DV6j5q5KOL37difBaIr7RcP6PQt/ekIO7d2lFvn41Ilxf3RDvSXGJCQsU1cath6I
	/XhfUKHGQHN/uhwJoF/Q5dxgitB81lCXWgKnM4yoXbZqJgS4dYsSFnfRmsD8Ou8EyolBfkyZQkGLX
	kcdmBFxNCh0T9MHoBs3HlSYwOgTU3VG4x0vnXatoVXVSJ6gOSzcGuDT94akNverRghpaBpLYV3KH9
	UD848iMidcDZylRmMRbfkV58Ta2CF7x4Pyw43FT1k3BZGF4HZMCZ5r/iQPTV0eLVdoFMFAx+jt3Mh
	iERPaRYIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOkPo-0007Qd-6F; Thu, 09 May 2019 14:52:56 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOkPe-0007Ox-L6; Thu, 09 May 2019 14:52:48 +0000
Received: by mail-wm1-x341.google.com with SMTP id f2so3585464wmj.3;
 Thu, 09 May 2019 07:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=a1mSEvBcWliyo5EhRJMQRVCOMthYdHYHBHHuPNvU0UM=;
 b=M+FN6B2MBKrB5K/MgMp3XiZNG9lhFHskRCTbyo1lnz1UAF+MtV1rCwKd3IToZ7cDCi
 m7PjLF6yq03pWdrfNCH4LX7l4qajtgiwGCMG8y//ebtsMFdHa6fnCjSHuPv+XUbADhoq
 VxiEnfykY/466xARZrXlh9gPjPprdd0SanmtndoJlAkd8A6JsCBTjla8dEXb+9gO1Nw+
 C/lDlI1LF0Mp4Adm9rv4O2h9XbdX5t3W4c3/sscyBUFDepwtbriOdCaPFTx2Rx28oqUZ
 8gS9YGUKz5pn2AZo4s3fHOisxtM/53DmP/1g0jGEJDcKppw+zDSr7eKnHreaXzeU1TIV
 LS2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=a1mSEvBcWliyo5EhRJMQRVCOMthYdHYHBHHuPNvU0UM=;
 b=h3SwrM5UdRT1vJ6QPIIiqaoHfgVAbCFzw2KR51vwySNjkt7cftVy+yR3cBjY+RXs+F
 L6533neCn+vD3DrgYxHWAIn3IZDLB4kl/wQU1TbCLdaKPL9AnUoNqsg4aaEoNjpMm+kx
 zCP8938DK+N+QVuA5spiW2Wc19uUL3nA2uy1GPmBX0wQT5U8OGLVLhsUW2dC9mdPNTXQ
 wF8l+C0sQiq/vfeDJP09yUwKwiovFDqX7xe2FoGdefDuYqlZIyjsy3NCfjvTcXRIBpBi
 AVoqj64/hb2xy5uAaAtvaEvEtApA3RLHoqe13KdRueCu2d/O1W98C4ahyI/VVQy8DKFl
 1I0g==
X-Gm-Message-State: APjAAAX4fwMplYKyj+E/smy974elx9j56N3vBFB7p3809LM8cVvUv+PT
 s1EL20cdDX5JR8nXx0FUr2w=
X-Google-Smtp-Source: APXvYqyp7HHKcshcQDFEs9klXPopVR55hJEby0tFHAI5KP3xTanR05+4OdehHVqjKJoqQl3kNr0Q2A==
X-Received: by 2002:a1c:f70c:: with SMTP id v12mr3207118wmh.86.1557413564456; 
 Thu, 09 May 2019 07:52:44 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id q2sm3249998wrd.48.2019.05.09.07.52.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 May 2019 07:52:43 -0700 (PDT)
Date: Thu, 9 May 2019 16:52:42 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v2 1/1] pwm: meson: use the spin-lock only to protect
 register modifications
Message-ID: <20190509145242.GZ8907@ulmo>
References: <20190401175748.5376-1-martin.blumenstingl@googlemail.com>
 <20190401175748.5376-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <20190401175748.5376-2-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_075246_692799_9AFB57DA 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pwm@vger.kernel.org, narmstrong@baylibre.com,
 linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: multipart/mixed; boundary="===============6103660958063152948=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6103660958063152948==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LvlcLv3JjFtLV6y2"
Content-Disposition: inline


--LvlcLv3JjFtLV6y2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 01, 2019 at 07:57:48PM +0200, Martin Blumenstingl wrote:
> Holding the spin-lock for all of the code in meson_pwm_apply() can
> result in a "BUG: scheduling while atomic". This can happen because
> clk_get_rate() (which is called from meson_pwm_calc()) may sleep.
> Only hold the spin-lock when modifying registers to solve this.
>=20
> The reason why we need a spin-lock in the driver is because the
> REG_MISC_AB register is shared between the two channels provided by one
> PWM controller. The only functions where REG_MISC_AB is modified are
> meson_pwm_enable() and meson_pwm_disable() so the register reads/writes
> in there need to be protected by the spin-lock.
>=20
> The original code also used the spin-lock to protect the values in
> struct meson_pwm_channel. This could be necessary if two consumers can
> use the same PWM channel. However, PWM core doesn't allow this so we
> don't need to protect the values in struct meson_pwm_channel with a
> lock.
>=20
> Fixes: 211ed630753d2f ("pwm: Add support for Meson PWM Controller")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Reviewed-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/pwm/pwm-meson.c | 25 +++++++++++++++++--------
>  1 file changed, 17 insertions(+), 8 deletions(-)

Applied, thanks.

Thierry

--LvlcLv3JjFtLV6y2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzUPrkACgkQ3SOs138+
s6EbQQ//cCrVsIOMfus+LS3hL9db6Yhpor2moT9YI9tTtoyGZjgbCupOilKeMqDu
jj5vflVwl/AWtW6okavjVj+xaUaUxNxHxm9Nx2yWwDo4fmhZ5BcRhg0O4bfo55eY
ED1NvERiM9P5TCCsnakPJxc/VVUt9voqU0C7TR6CzxlucTUAn84GtQNhdyMKJV4Y
3XHr2fYynP3UJbv/WXXSoIO4VPNOHO9/c/FkdPN+51lbum1pxeUXOB4OIqEzSwCh
Y175JhoOMqt7nKy5AnWWm20IpgEOA7MT4/gZDOkeyVni2FzGeHFeA3w41fwdQnl6
aM7mClWdYGY5WqDLpe+8GOhTD+LeNxlLsSPoo6H5M+YahDDULYoX2f0QT2U1UiX7
MFMTjDy2gNWfPdO1y+ynScbFVW6VCuczmOelwMdQdWEf5U7kYxED7zNHDJGmemE8
tQ0vuLZEDPqctCwACswaDYagHgDBFPD575sqJmf5FvA7aMedjFlNNamfK5t1rB/s
lrgYobMqhatckbeeMUVBVipxtL6N6MYbfM8pFO1GULGnC5u9q8plRGsB+X0na0in
gk9+9DAYpQgrkXRsKG0McHbvEWGckogX3FbckxivAj0wRnQwSM/cgswcHGwJs3GR
ZfJBEEqf8UAEQSQPu+gpHm5py7KWRO/taKr98J4unhGfNzh9mow=
=HHny
-----END PGP SIGNATURE-----

--LvlcLv3JjFtLV6y2--


--===============6103660958063152948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6103660958063152948==--

