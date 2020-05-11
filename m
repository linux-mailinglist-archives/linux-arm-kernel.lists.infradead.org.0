Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E431CDA50
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 14:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uZT8qW0YVhUW0HEMuUpEn+d4rQ0fywL7GMTC7xcyhi0=; b=RS+kJPX+4jQsjohllhoaapled
	HQJPEkvu7kV9WAXD3QmHbQYzhQJJ9TzfuSxPzaJFzYFM8At3kK+O5hwsjj9wspxYpJSUfJ6D9T1sN
	T6mFY4Jl4Q02JavlKfUOq8y941YUXpfRXNz/fTYo6w87q9284yrDzUPZSLWTLi5zGhbFaaJU9fY1v
	8ykNjbXq6+l3SLGnLRiYnYwz/RFCm9WNy7Z52dWXdTgnwvDOCvo/AQEiNwbfWtp+rC0RaWAbRyyrs
	E4oblBEbHODvllFkx3ltYdL7Xxa/mHxVnN92ew7RHPQqi2S96J8ezvnH0TggZlIH2GCUzXreq+/vS
	fXfZ0eUZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7lu-0006b2-2K; Mon, 11 May 2020 12:43:02 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7lm-0006Zd-OY
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 12:42:56 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 7E8055C0081;
 Mon, 11 May 2020 08:42:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 11 May 2020 08:42:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=LwUS7EdzKn64SedzwWMrtH0cjWc
 iOHlJCMLvGeb+ziQ=; b=D9+5etmDfCEqjeK2DeQ0h1Wa55xH8Wjgi8Z87jnpAbQ
 37sP/nZ4qcfMdoLpm68pZUWq7lxhl5TtbrwVIdznCD/V/krOPVH9CJZy378PVsji
 x9Sj7t9xZiSsqD9xWOxI4MLB4cTaEk+eQntZwWhf/XMEfbPG3Dcso7rbC08Fe2T1
 /GyjqAPjKSJZA9cFANBbQKA7UMwa2ZuqGnHsHUT1c2aFl+bPGuSRgqT0xsMIe8Sv
 fBfF70LucSdvEoYj3wYpfEWO120O85YymQFCuF3v3RQjiHDfYck66WTBI3gZDpwo
 75SsnapyxboZGwmMhHndR7ycE5AU4IKP09HeauaBStA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=LwUS7E
 dzKn64SedzwWMrtH0cjWciOHlJCMLvGeb+ziQ=; b=IKaKXAWa/e9hbi4Bh3pPbn
 yRfCY3KU8IoUHVek7FpkmKuqghXQldCXDATc8DtaXVp20R9NjVRS1v4t3coaIvj1
 LRm+bkXsc/Mm2JbuRJY6eZ8fUlTuHN8p0YkLLy175AodhakV4V2IufBHCOqMTw+0
 SpxNhGj7S0esFTLqJOe/1S9HVQT2mtYTTiKRFQGKa0DrXhBsdERMeKz4cxZketr9
 d+MbPG3VkVveSGgQecQ3SwSY+jlUuKBnuV6EPig/d5YWU/H9kggh9m0D76y+1cys
 Lzba7jFTWfVnsEYtz1/NyW400T6eJshk1q8bEXq3O14TZ7f1Ue+9d4BF67XwWetg
 ==
X-ME-Sender: <xms:R0i5XuqL3_3hug-BGHFSpGtmruFvd_-v-Z_n_n8pV7zX_dM7MYYOgg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrledtgdehtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:R0i5XoX4xbW0ustp5-hauH7UThD1uM2wW4TGAqy9wKDqH_puj-Az0g>
 <xmx:R0i5Xi_lUHGj7LX8zr1QCFf0eztpGB44CqJUWF7fo3-QMQZzOJTXuQ>
 <xmx:R0i5XhHPUz_JK-FaapuzfMJ_weQqdLU9TscWupNOUcnhQkHIldtC_Q>
 <xmx:S0i5XrSYMBwe5o9XlEFZBnva7-nIj4z5oO8HHkWs09qtqFzG_-zdEQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9AE853280060;
 Mon, 11 May 2020 08:42:47 -0400 (EDT)
Date: Mon, 11 May 2020 14:42:45 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2] spi: sun6i: Add support for GPIO chip select lines
Message-ID: <20200511124245.j5pdnpsuhixzvs32@gilmour.lan>
References: <20200511045330.690507-1-alistair@alistair23.me>
 <158919630591.8372.404655401498379497.b4-ty@kernel.org>
MIME-Version: 1.0
In-Reply-To: <158919630591.8372.404655401498379497.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_054255_216747_703EE79A 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Alistair Francis <alistair@alistair23.me>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, wens@csie.org, alistair23@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0649880007892582117=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0649880007892582117==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pan7d2v2d5d6woy5"
Content-Disposition: inline


--pan7d2v2d5d6woy5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Mark

On Mon, May 11, 2020 at 12:25:35PM +0100, Mark Brown wrote:
> On Sun, 10 May 2020 21:53:30 -0700, Alistair Francis wrote:
> > Set use_gpio_descriptors as true to support using generic GPIO
> > lines for the chip select.
>=20
> Applied to
>=20
>    local tree asoc/for-5.7

Are you sure this is the proper tree?

Maxime

--pan7d2v2d5d6woy5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXrlIRQAKCRDj7w1vZxhR
xdG7AQCDOq4jweV0JSLjkAtdWOcG+q5K0eA3YJ6cDKXKDjvoZgEAiCXDDT4BkV28
Fcl4Hx8EELgjn1vtcI7hLwSEnzTABQ0=
=P7p2
-----END PGP SIGNATURE-----

--pan7d2v2d5d6woy5--


--===============0649880007892582117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0649880007892582117==--

