Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1BD1A0981
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 10:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hZjRqrEA2IMiM8olliPU/qL5ciHtpO8nux+ty/+Moko=; b=KAjLtyvm01CuebV0mK5+3LqYe
	DQ2FvvxH1Ov24s3rxFCd8IuOGgndUkjyCibUz7FgBJvql7UDaHN3zh2bxDx90ol/+Flg0UiZIh+1d
	d96l+x30omBMeh8Ps/jPF1imeOW+g7mI0UhQ6qWeV2CSnvXb6O/lxm+STaHPUcLft9IxekyInpcH2
	ctcN38zldnhoN4XP1soJDWWdHaDWGaENlm52poCquVlY5cvpldAbWspMfZN2djjoJc4ax4DNhIlRW
	tSH1NtZab4RqxLeFDZMKw9fcPOzMY7uSiqHwYQFCbLjNyDuHbcBUY9pvzu7ZM83nOBrdCsDr7Ney4
	VFfsYVnXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLjtG-0004TB-SI; Tue, 07 Apr 2020 08:47:26 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLjtB-0004Sh-0V
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 08:47:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 138776A3;
 Tue,  7 Apr 2020 04:47:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 07 Apr 2020 04:47:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=+r7E2sih1Sc6rl7ZjA85HKrYKcR
 XrhWjnKqfOs7riwI=; b=Vz1oyh07UZtEO+4lHO3DJsBcHYWppi1bS81AH5lk/ua
 8Ic2cC2Q/9qsKRqR/syrfuIiceNm3xQ4KKdgqGAhRezBcZEochNuMg5fiM7Chqry
 i72mA577HHjeVsHAWiHFMbGAyWhM53CLMaXn4tSV6sUmekDIN2sHXBSf0byahgjl
 3fuAjkWzE1vwnqBK1PafX1NTIIDXRhi9TncxNGx3Y6kBE/QBJdh73ahKNCEUo8zT
 VumRGaR8glFBa0GLp5zlOj5zutqxozYlxi0/17dubsg2vGlEXpkm/S1dAe9YSN3r
 GL11wCsmRaKZhU11Hoo6dNiLbqfJQoiCcpnNLtkw9bw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=+r7E2s
 ih1Sc6rl7ZjA85HKrYKcRXrhWjnKqfOs7riwI=; b=mvDi/utuYv3ZST7eZ8B1rB
 JHiaD2qHJMyx5RJ6EE6RpVJ30s6uKoE5zD2hyY2EVBy5BEck9DGl0yqp+pBxsb35
 sGsiF+ckaQf8i+iBj2D9TLZFlkzAghq3uhn94ni+BtKkdpbnJ4CRdEV2EW3TEAt7
 h1Y0p76Wa/nqBMSyhMM0yfBPHkLCr7D3g0ggWww+l/HnPBSOzsr7IA+DahdM97a7
 15Pq4Q4R89xNwpG3LE+Ng51ShndZozWa6N1Pb4NIZpDkSrND/jvU1uM39Bya1Fps
 Hdm/BECnpFrqPJcwUoOXG+dQggR1zNU0x7DlwWS5/SLvWGyyvNz8fXMUwH7uN/GQ
 ==
X-ME-Sender: <xms:ET6MXnq-9dP9HLR4P9u9gz4S19WyNfcDtqnrpxwbzjrrQvbsqW7mEA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehgddtkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:ET6MXnwuMLxrUSVul9xC_9hMzk8BGtb4EpMrb2RDgqALG_OZ0n9n6A>
 <xmx:ET6MXpVnYtllvCwYgZCn1OlJXCGTiJdwNLdiM8_NMaR1PEN6On0Buw>
 <xmx:ET6MXhKu6fIj6bIFpTiHT2Oi-4pku10GhCi6ZsFhhUsMFuCDKPQHZw>
 <xmx:Ej6MXrtnqvTgUIRR7UWOMs2rrsExaEGVK-qknW3UcK06e-TKvsccuw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 775FD328005E;
 Tue,  7 Apr 2020 04:47:13 -0400 (EDT)
Date: Tue, 7 Apr 2020 10:47:12 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 3/7] arm64: dts: allwinner: h6: Add CPU Operating
 Performance Points table
Message-ID: <20200407084712.lhvrotihtxr5rqxa@gilmour.lan>
References: <20200405173601.24331-1-peron.clem@gmail.com>
 <20200405173601.24331-4-peron.clem@gmail.com>
 <20200406081412.ubdogkjknlofynei@gilmour.lan>
 <CAJiuCcdTQHGhZ=7Z_Du-zcZ_OWdGO1iEpYOBD4z=eNDYzMA5tg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCcdTQHGhZ=7Z_Du-zcZ_OWdGO1iEpYOBD4z=eNDYzMA5tg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_014721_088472_8CD7C599 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree <devicetree@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4880372348728602283=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4880372348728602283==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="obs3nniolwwu6iqt"
Content-Disposition: inline


--obs3nniolwwu6iqt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 06, 2020 at 08:03:34PM +0200, Cl=E9ment P=E9ron wrote:
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > > @@ -253,6 +253,10 @@
> > >                       #address-cells =3D <1>;
> > >                       #size-cells =3D <1>;
> > >
> > > +                     speedbin_efuse: speed@1c {
> > > +                             reg =3D <0x1c 0x4>;
> > > +                     };
> > > +
> >
> > You should order this by address, so after the THS calibration. Also,
> > using a less generic node name than "speed" would be great. What about
> > soc-bin ?
>
> Indeed it's too generic.
> I will keep coherency with i.MX8 and use "cpu_speed_grade"

It works for me, but remember that you can't use underscores :)

Maxime

--obs3nniolwwu6iqt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXow+EAAKCRDj7w1vZxhR
xYhmAP9HFTxiuLkTGD9dyTe3MbP31mksKDRSBxrC27AhkLIqyAEAoQzGYqLtOzOR
1r04CfnUwInSdC9XI1/sFFXlhvD7+AU=
=oCF1
-----END PGP SIGNATURE-----

--obs3nniolwwu6iqt--


--===============4880372348728602283==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4880372348728602283==--

