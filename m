Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD30216A342
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:56:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WsIUY/Y+3b+tl9yOX1kZFXqt6vCD/x3BJWbzrlsSmZ4=; b=QduSNs50Ex9UCJ+TD0ryiDdyt
	9bQWtoLJW/hzUZV0uTLOpY4M1fIHMDthke24HXrPuskSsZJ0bXi3euXOd7vCgeNwh0B4v9/mO5hRQ
	MjpEZvJWJSlVl5KdTeKLW/vcaOWAeJ3d0PzVtVha0ZCiHoKmPSmHfkh4Pfm7Vw+FYTc7BmaSue9gE
	1NVPcJ/gmslVEoHaOk9H1OOeI7BvrC2thjJSafebgcEPrOhBitj/Ly60WEsEzjD/eWrZNnvR3OuQw
	ezM/dHNShObH6Wft7sXbNmVW5A5PGq+dqRejxML7TkDAIfzWZYTUIZdkLrY8IybMp1/2Rk2O+4sIF
	b7AzqeYoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ATI-0003Ro-N8; Mon, 24 Feb 2020 09:56:16 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6AHW-0005Dr-Jm; Mon, 24 Feb 2020 09:44:08 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 403056F45;
 Mon, 24 Feb 2020 04:44:03 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:44:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=8D6LuRxaoCzIVrsMtMaDax+b3gC
 RwpjTTxEPY3vi8sw=; b=QyiSrbuZDxmS0/3x848Zpki0l0UZmW5Yf8y/ybpvHvj
 abrv3S7nodrCGVcZ3sQDUk43E61bIuadELNRNr7dUd5PxzKA7gZj3Gm3FYNewMjI
 QIXGP958QZhd1d9S4+yYbBuCzjvQdcatRjxyC6PK6+tJlb96xbrFbyzWlfxb9oYx
 z7U64L8WPHFmS/Iq9JrZKGlCIIzFoUMpicsXbAHwLivvm94QhX2Bwbqjaof4+TjT
 D/7ZvO3hyLDFcnCyPGHQRkanznRYHRGd5h0n0YPd5gj2OtnYEirxnAmfWwfy89oY
 Qy8t+zwMPxBE7yqIwjvLO7068uWs7nMCkKFoDjNWuEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=8D6LuR
 xaoCzIVrsMtMaDax+b3gCRwpjTTxEPY3vi8sw=; b=CP7WwY699l786hOUiAf6by
 x+rtB9SqF4VItFWahkIJvBCFerSGh96TPZBN/xlAlZHdGfNu7co/Sdtv7QbjH3Vn
 PjJGuwmCWIxTLxmVNQlt92ACsrOrji6++jG9UXrHIXH5hPC9Qt1AfZzUR71He+MD
 +BD/xi2ZZSAVmEAmet6mlzjZxYDBE1A372+B5qbNOp+/eYk6LBnAy4vP5Hk5PaBd
 OvlzhHu7Hu2XLO7TRUCY29tQ/3quEhJA+ZB5DDBNXl8BDnwpult6ZPsKMDuEVOoW
 b47LhPXTDhFttduUuL/GBfA0f9vICjcQL/z7eWCY9wqJOzYcy75KYKTQekD6peuA
 ==
X-ME-Sender: <xms:4JpTXrBS8PvxoPN3aNrnvWeIr6vKHF5DhVRlbmO1vLTtzSaDaSHHfA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtgddtjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:4JpTXuOghxf55SQ45Xzn2t26MYdJiU5nBulwT8t8eIChzKP6rdHjNA>
 <xmx:4JpTXqdVfYQUWKMrIzWesJaxoUkspZQTqu91Rps0AxTOaVTTOcoE_Q>
 <xmx:4JpTXn51C2oCOSGhVLu1wrcmiaPQsRMBbGzBhWUWMddKZobl_qHEJQ>
 <xmx:45pTXpHYENYFLJ05uceH-qzs201WXROOgFkCY2-ug9XZqkeAMOglMg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7FF6A3280059;
 Mon, 24 Feb 2020 04:44:00 -0500 (EST)
Date: Mon, 24 Feb 2020 10:43:59 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Leon Romanovsky <leon@kernel.org>
Subject: Re: [PATCH net-next v1 09/18] net/allwinner: Remove driver version
Message-ID: <20200224094359.t2qevsxzilgq3faj@gilmour.lan>
References: <20200224085311.460338-1-leon@kernel.org>
 <20200224085311.460338-10-leon@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200224085311.460338-10-leon@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_014406_799779_3FD67795 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Thor Thayer <thor.thayer@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>,
 Igor Russkikh <irusskikh@marvell.com>, Andreas Larsson <andreas@gaisler.com>,
 Chris Snook <chris.snook@gmail.com>, David Dillow <dave@thedillows.org>,
 Jes Sorensen <jes@trained-monkey.org>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>, linux-acenic@sunsite.dk,
 Andy Gospodarek <andy@greyhouse.net>, Arthur Kiyanovski <akiyano@amazon.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Lino Sanfilippo <LinoSanfilippo@gmx.de>, Veaceslav Falico <vfalico@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Tom Lendacky <thomas.lendacky@amd.com>,
 Jay Cliburn <jcliburn@gmail.com>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Keyur Chudgar <keyur@os.amperecomputing.com>,
 Leon Romanovsky <leonro@mellanox.com>, Don Fry <pcnet32@frontier.com>,
 nios2-dev@lists.rocketboards.org, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ion Badulescu <ionut@badula.org>, Netanel Belgazal <netanel@amazon.com>,
 Mark Einon <mark.einon@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============4984532383341135420=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4984532383341135420==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3l2hq75myvlmy434"
Content-Disposition: inline


--3l2hq75myvlmy434
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 24, 2020 at 10:53:02AM +0200, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@mellanox.com>
>
> There is no need in custom driver version for in-tree code.
>
> Signed-off-by: Leon Romanovsky <leonro@mellanox.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--3l2hq75myvlmy434
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlOa3wAKCRDj7w1vZxhR
xcbKAQD34RQIuVr/Eh3rqW6wAmdRFzMj82wPjjPCwVxOnFdvRgEA5ad/HOXd1R53
M1v0PShtjx6kM890phDjQwlRq6EvWAE=
=V9ws
-----END PGP SIGNATURE-----

--3l2hq75myvlmy434--


--===============4984532383341135420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4984532383341135420==--

