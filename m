Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A870813C175
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JtimK6YiEnCMCe2PsdPnS05fJ59SQXWuMziWXTif11g=; b=Uq6rzKv30kyAdy3fgL73tayVK
	UYR5hyGDBH1391hjZiF/EIbEEyYAyI50i18qg2lRods4BJouSsXWtVXibHUtZI9/p9/VRym6/T6bh
	vjbihVLcoeC1kjT3kfmwJ31L+MHwZ6mNEM6zVPZf7rGJyOIOdC0fruO6eIO3q+FjMqPc8L6U6JGfD
	Y1PXKfKUsJ1soX7JpgRdhtePljUV8j/Su347ueEDKxZzN8bGp3dHMaybju9HzIBO9Rmh5Wpy97T6b
	mHYKe7vnwINSynHzzkUAeztUgrpEs3SfElgHoyt7KXr2RejICNsub2uNu8y2S31RZZmp2JuTbKULT
	I39jnWDdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iri3Z-00029e-3Z; Wed, 15 Jan 2020 12:45:57 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iri3E-000205-Of; Wed, 15 Jan 2020 12:45:41 +0000
Received: by mail-lj1-x242.google.com with SMTP id u71so18356073lje.11;
 Wed, 15 Jan 2020 04:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=XrM75ATOZQXz6SoZn1okjiJgULz2HKkhFLxEF09kY14=;
 b=i87EVfYpDyR0g6vMWt7prBmZ7KGPMTqtHHGezpq2RddzuyXhi0ONnCPWA7fezCoUQV
 VU7N1ZWCxkXrrr9TcXBRyjmaz5TaTz7LvISiS0ZbgcTunx8/9OlwORUBamF6uv6PbsN2
 T6NPLh/VHH1Xh0wqSiYSEQomGsiIXziGgSmVHCM2QyM2OU2lbAqrZbV5JCXBGLwyb/Hi
 Z9giZcnBQ0ue9dDd/e4HuBc90b4WFvHXe+DeWRWa4flHgYpdFoTmo5pUtdarg9gfq020
 TF/UD7sAxxckKPY2ArubZVTboAD2Fp5O9bSzHCGzQmNX774KEyA+E5HuvbokiBVC9ffV
 cKzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :date:message-id:mime-version;
 bh=XrM75ATOZQXz6SoZn1okjiJgULz2HKkhFLxEF09kY14=;
 b=t5ajz6TTu4aH7ap0mv9mn7J9STAdV+huUIgrBHPMNQjW7HRQ2igHpJZiBu1WQ1cOet
 YT2X1HbNr8F2qfEZ7+Fj/VDs0RlfJY/OKgZRAQ+/oGt/YyIXvU96HmAsMm3CLzdMwcr+
 SlzUMGZats/CMV4CZMhYlDgykx+s5KRsS0i53N41sRPfds4w/HLi0GS+q25keCisf8V7
 0StOodnUm43H33/EjKs+UA69jSWeF4dGJwvy7HGGiWpq+v9lufZIUBvIsAsgRrrRlqA/
 GsOshNR1kA7bYxeLyr5KACyfG5nQDwhbPcuZDmWgGPHCUej1oJYRYG3Rz7+lJRZsA8Vl
 gdaQ==
X-Gm-Message-State: APjAAAWxfvIrfPnpBj8Ps8dlnjWHdAfxoWZF8yNeBQddUxlL9rXWkkGe
 jNiwPozmtgy3CGThF57eyDQ=
X-Google-Smtp-Source: APXvYqz4Bq77weyLue1f/qeW9fizhG9jawwzQWA+qQGOtBhhBta8rZc6D9tMPh5Pw9Z5ftzXbPtDHA==
X-Received: by 2002:a2e:9015:: with SMTP id h21mr1716057ljg.69.1579092334547; 
 Wed, 15 Jan 2020 04:45:34 -0800 (PST)
Received: from saruman (88-113-215-33.elisa-laajakaista.fi. [88.113.215.33])
 by smtp.gmail.com with ESMTPSA id t10sm9100696lji.61.2020.01.15.04.45.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Jan 2020 04:45:32 -0800 (PST)
From: Felipe Balbi <balbi@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v4 4/6] usb: dwc3: Add Amlogic A1 DWC3 glue
In-Reply-To: <CAFBinCD0DJgYDhPRHqMQuouq+ZyF6Wg_LkuCMpHj2UG6vvvdbA@mail.gmail.com>
References: <1578537045-23260-1-git-send-email-hanjie.lin@amlogic.com>
 <1578537045-23260-5-git-send-email-hanjie.lin@amlogic.com>
 <87pnfl6rdk.fsf@kernel.org>
 <CAFBinCD0DJgYDhPRHqMQuouq+ZyF6Wg_LkuCMpHj2UG6vvvdbA@mail.gmail.com>
Date: Wed, 15 Jan 2020 14:46:33 +0200
Message-ID: <87tv4w6g5y.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_044536_840552_6D99D7BA 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (balbif[at]gmail.com)
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
Cc: Rob Herring <robh@kernel.org>, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 devicetree@vger.kernel.org, Liang Yang <liang.yang@amlogic.com>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: multipart/mixed; boundary="===============7850818942726795626=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7850818942726795626==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:
> On Wed, Jan 15, 2020 at 9:43 AM Felipe Balbi <balbi@kernel.org> wrote:
> [...]
>> > -     priv->clk =3D devm_clk_get(dev, NULL);
>> > -     if (IS_ERR(priv->clk))
>> > -             return PTR_ERR(priv->clk);
>> > +     priv->soc_id =3D (enum meson_soc_id)of_device_get_match_data(&pd=
ev->dev);
>> > +
>> > +     if (priv->soc_id =3D=3D MESON_SOC_G12A) {
>>
>> you can use of_device_is_compatible() and get rid of the enumeration you=
 added.
> Hanjie switched to a struct (instead of an enum) that is passed as
> "match data" in v5 [0] of this series
> personally I prefer what Hanjie has in v5 over
> of_device_is_compatible() (because that match data pattern is what we
> also use on other Amlogic drivers)

but you end up duplicating functionality that already exists by means of
of_device_is_compatible(). Frankly, I don't have a hard opinion about
this anyway, since it's not touching dwc3 core.

In this case, I'll defer to whatever you guys prefer.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl4fCakACgkQzL64meEa
mQa9FA/9FlpB8k6FjnAZcPKfZiMTE3FBVk31vXpWrefKTxAZmGAzK2MFwzGVSlK4
R2wgfY66niKyT1JW/T+/OOPfyyY+gIz0G44zu5qSmYFq/OAVpLSO/ZLw91EPE1yt
0m7ohRi55RxaWMO3LiTTr4zu7/wSxb3/QP3oAtC1G2PHDXQNzsYp0vMEuH22nS6h
sXXQlHOxBbqWQSnUXYHv7JLcvK+YC9JGBqnjCbP1XDx7KTYjZdgH2UOzF6G0OWGc
kk/RVuCB8fobf1rb4VlE9P3iEWtkiTZx73902YRQA1tMs+yRO4BoMLZTUx7VakCz
as6sTfFDc9trmj/uShxMiMxHpqy80rovEKCR3IxASMMBh3jF3Ohe+ghwLV9Ex+Fi
yyhJjaBYFI3lkXV4gA11MpJdDbeLn554ivLHrdqIX1tgh7NOPwqULQm/kdX4URbR
6gKK+Yj2CwuCmDlrfFZZxrQS9pS2xrdykMDW3guZPmeNdgySgtNrQBEIYtxeQw5+
cjQZ373zf6s6lnZhzspEh2cvGnI0cSrxmvb3TjI2RLFDvjooB8u01fZ1u8O51yPY
ou1IV/vECiO1z8Fxzf8AVVqBo9GTptvLurAWZoNAzqrbxnC27OkN23i9vXlDwP6d
Hff4t0AR2FyQD2J/M12Lz9lHyJeECr9+l56tItScfshwp0Dt6bc=
=a2TN
-----END PGP SIGNATURE-----
--=-=-=--


--===============7850818942726795626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7850818942726795626==--

