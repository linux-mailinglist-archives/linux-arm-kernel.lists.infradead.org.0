Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87DC1E42CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NSu7H7Fm03I3lTFIsD0FMGyyMNFLPjxDFcuVg2AIte0=; b=qN2fgM9WNY25xjmhQITGiavCY
	utr5PWN9if2RiFfDwBfsGOu+U+33htdklpmItj3MED0b5QLvcBK9VT0lP3t4q7NVuwmGyYsjGlmqy
	0VsfYf9ASxB/1ac3yNNbg+83jLOZi7Pto6ymzFa5hcibpgr2mSg6jf61LNuOeq6lvp2eJ3HSgArJQ
	tUT3fJspEUkARkoAuhZK39vvRMCyyi+zyaCql43EywqXYsNY1GUMEuhSB7h6HRp8zuhQ4SpG5gMWs
	SIstEVLOlpQeoa14gEw15/u2BFEX8cV20JkSd7Mf793whMgzu172NXrfTwru41jI0yqQjFU+9kHC6
	o/yTBPgog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdvcD-0005y0-Hr; Wed, 27 May 2020 12:57:01 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdvc1-0005uf-3H; Wed, 27 May 2020 12:56:50 +0000
Received: by mail-lj1-x243.google.com with SMTP id m18so28753377ljo.5;
 Wed, 27 May 2020 05:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=3vGPAEN7EbkXErW9fSFtRny4Z1vag3pW/OLkpcJ4DRI=;
 b=Mr2coyS14UPM1YA2MC9vEyzwVu5iP4fzdum+cFAUe/8X9S0pgLoTIoGj6bdxCvljvs
 OR2TzhIdbIrASS6tdBBIceaqzyzw2fzC/IQgZ9bBg/22zKJ0fXytoUy+lIdZ7lQFCQgq
 jLUuH0WYDLxxtDhTb/66gKClmWBKt4St5ex1KCjCYssVO+FkIvr4kLQIzLCFDsiECyla
 0DTRbVC7xAuR83vo+nY0frHtSmpdHphoKUF9hXg+UlungONT8B/69caFWp5fcTINSnDa
 AapHA/dKF9IkNTslv627nuwU+HAJPfVk8qScTZSVgfCSBkiA/ZjAHsu020EkWdCHPBQL
 M93w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :date:message-id:mime-version;
 bh=3vGPAEN7EbkXErW9fSFtRny4Z1vag3pW/OLkpcJ4DRI=;
 b=B+qc/aZXoErOmBQKzBbxTLcHmg7wZ7oBjVOIlgldYam9A4CTFFhE35pDDBbmukK2Al
 M7v+DTKn1KJqKk2IWkgNY2umE76vmjmJV2UEQXqft3X/3tK4uUMPKPD9Hdb5g7HZD3MY
 ymJ3DLCH6576bpc78OC32igadTzD8X5NUnA5T33SR5cmWklIRWS3GUC+eg25zkW4tx74
 lvKNmXMiMEDRfbTpTLJ1dh7TPcdhtiuhJfhDEvrWzSbDZIv5KbVZTMZZ9C13bo6hjF4u
 tPLAj3YRGJbHG+YsQvuEelX/L7pFOEodD6j+EnUwgfi1qCcNltsIZeovkJRWWiVdrTnL
 C3EQ==
X-Gm-Message-State: AOAM530VPfHbAmV07CpHo8o8BdadOG/VFuI0NGet6lMNJsyQjaDdNmT8
 aASfv9OSkdQ7ZfCRSVLM/M4=
X-Google-Smtp-Source: ABdhPJxtvzmXmbURkG5ELpUsVYJeCfAoLEjID1fDrWld7TIOVChr9rYSaLDVBxcHfTbBmJq6HA8+DQ==
X-Received: by 2002:a2e:596:: with SMTP id 144mr3191505ljf.364.1590584206551; 
 Wed, 27 May 2020 05:56:46 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
 by smtp.gmail.com with ESMTPSA id 23sm800224lfb.1.2020.05.27.05.56.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 27 May 2020 05:56:45 -0700 (PDT)
From: Felipe Balbi <balbi@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH for-5.8 2/2] usb: dwc3: meson-g12a: fix USB2 PHY
 initialization on G12A and A1 SoCs
In-Reply-To: <20200527085315.GA168054@kroah.com>
References: <20200526202943.715220-1-martin.blumenstingl@googlemail.com>
 <20200526202943.715220-3-martin.blumenstingl@googlemail.com>
 <40a874eb-1a2b-533e-ee3e-bd90510abaf9@baylibre.com>
 <20200527085315.GA168054@kroah.com>
Date: Wed, 27 May 2020 15:56:40 +0300
Message-ID: <87y2pd1qpj.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_055649_187051_EA1FBC7D 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [balbif[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: hanjie.lin@amlogic.com, "kernelci.org bot" <bot@kernelci.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, yue.wang@amlogic.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1802687465389327692=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1802687465389327692==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Greg KH <gregkh@linuxfoundation.org> writes:

> On Wed, May 27, 2020 at 10:17:31AM +0200, Neil Armstrong wrote:
>> Hi Martin,
>>=20
>> On 26/05/2020 22:29, Martin Blumenstingl wrote:
>> > dwc3_meson_g12a_usb2_init_phy() crashes with NULL pointer on an SM1
>> > board (which uses the same USB setup as G12A) dereference as reported
>> > by the Kernel CI bot. This is because of the following call flow:
>> >   dwc3_meson_g12a_probe
>> >     priv->drvdata->setup_regmaps
>> >       dwc3_meson_g12a_setup_regmaps
>> >         priv->usb2_ports is still 0 so priv->u2p_regmap[i] will be NULL
>> >     dwc3_meson_g12a_get_phys
>> >       initializes priv->usb2_ports
>> >     priv->drvdata->usb_init
>> >       dwc3_meson_g12a_usb_init
>> >         dwc3_meson_g12a_usb_init_glue
>> >           dwc3_meson_g12a_usb2_init
>> >             priv->drvdata->usb2_init_phy
>> >               dwc3_meson_g12a_usb2_init_phy
>> >                 dereferences priv->u2p_regmap[i]
>> >=20
>> > Call priv->drvdata->setup_regmaps only after dwc3_meson_g12a_get_phys =
so
>> > priv->usb2_ports is initialized and the regmaps will be set up
>> > correctly. This fixes the NULL dereference later on.
>> >=20
>> > Fixes: 013af227f58a97 ("usb: dwc3: meson-g12a: handle the phy and glue=
 registers separately")
>> > Reported-by: "kernelci.org bot" <bot@kernelci.org>
>> > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>> > ---
>> >  drivers/usb/dwc3/dwc3-meson-g12a.c | 8 ++++----
>> >  1 file changed, 4 insertions(+), 4 deletions(-)
>> >=20
>> > diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc=
3-meson-g12a.c
>> > index ce5388338389..1f7f4d88ed9d 100644
>> > --- a/drivers/usb/dwc3/dwc3-meson-g12a.c
>> > +++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
>>=20
>> [...]
>>=20
>> Fixes regression reported at [1] on SEI510 board based on Amlogic G12A.
>>=20
>> Felipe, Greg, can this be queued on uxb-next for 5.8 ?
>>=20
>> Acked-by: Neil Armstrong <narmstron@baylibre.com>
>
> I can take this and patch 1/2 here if Felipe acks them.

Sure thing, Greg. Thanks.

Acked-by: Felipe Balbi <balbi@kernel.org>

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl7OY4gACgkQzL64meEa
mQbULw//QEHuzbRomKSbPaOe0cM+/i1yGMyZAnXKQ0Q8bG+JLpSVDe8cXhRr2edg
Ilfx6m8Kt/CYIZn6zZ73MdjPtVADkkJfsNVpGD+iAZ3uww8lAIm1rn4XozjNJt/5
Jpno6KBqmXY3NXuE0HZ7LraJw7XMc01c3tSOh8T54pqeJ62aLHuxfkv+4fSYQS2R
0gSF0tCJKC5eATjzg1retNX8nUkf0h8Zi3HyZTD2iUVSYiOe5FJeGYGNfmozwe3c
shI0qMyIzCU/yFrvblfh4LANI8D938SCCgUfs8rXUNmbtdYlHcdcNEPWOh9q0ecF
/bwHfaMkNAhtjrLa/4U4kNuoTPQhZIlPfl48Smq30xw+qUvMfkij1woAneYPBvxE
Qz8VuaLQEcIBq/qkG2hQAjkJn6XoAXVPXO/dktZJjTWv2iJq2arNaGcUzB9t5RNg
h1zCj3uphIP3t5uTmLGaeGm/4NQVcTSH843/kWMEcc/eZ27/t2DZL8Zl9llMVsr7
cMIS7LWBTamc+GA2g5c2d27EH6xGnUYW9ribrXNZsZlpqFCGc0nvQHNj++lAFUc0
iOoKhst9DZYTegMOgpbHyxIJnsInJlHhXf6C7vVdL75S9O+mLm9S5hJid9baWJTO
mW78XccwWqGp5ctssvPr0e1qbflw39fQGeXAZC4acQr6W76wvwI=
=bVFY
-----END PGP SIGNATURE-----
--=-=-=--


--===============1802687465389327692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1802687465389327692==--

