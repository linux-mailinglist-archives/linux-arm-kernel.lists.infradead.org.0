Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7931A74CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 09:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aOtgl4FbJz4dTwsEFN18LEEkbkyG9Wcfn1veeToS/hM=; b=df/TwYS/9kQxZRXiMQM4I47Y6
	BJ7uew+AgoPkxJMxJr8Uau1GPX/eahiKpTCKd9JQ54CNYbb7Op9ZfaaF0868LaTOxUDh38nIu4Rze
	7jwYoJODs4eT1P1whCyrS4cDan/D1iSxhXdCKj5TTF3Q9wYEwtyzdLNLGGNj7uP+AOscHvuyUMHx2
	o6v14BSKeApZ5y0OCFq4IB/0o3TaBebG2hw2guEXy+ljVpknvm4j2ox/qju32KJgTeD2R4ZZQ1KIX
	UJM7bzATWx+2pUeQhorxdzoeS7FjIH9mwgucfWDuzdM8lg7+NjMlhsWdZ5vnGYuogeBv2y0WkUl0O
	eoN8V4yjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOG1h-0008Ji-2F; Tue, 14 Apr 2020 07:30:33 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOG1Z-0008J9-L1
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 07:30:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id B2BC5D32;
 Tue, 14 Apr 2020 03:30:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 14 Apr 2020 03:30:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=n8uUxVj2O6wC8BBvVzkUMzLkQR/
 W6dq7ltsB0YDVqY4=; b=zE/jGiuFNG2fMrdB/Bi9+JqxyycaHke4V7PkoCmi+b9
 HORrYxEBIEAoV2NCXzmsxIbYPGXeS1AHUrdqXgNdXVnlQrohkJASvtLkA8Axr9O7
 bY+aeeHGj0Vqvox0bSAFZQ4bk4LOcDrwIab6U5mWJGDmMWrJb7MQDRjO9BC3A4rx
 tqZSw3F5vQq93lj/qL8EIyB0p9dFZLSGVyiMVUSL7iI8mr0eowO1Qpa3Bi8KNxd0
 Dn4yhAHL0FQJ4Vvn96HkiLfwxNduXdsFzKVv1zIHECMFSd+JFWfEJhcbDtiJ9FY5
 ZFfRHDFAtnVqeKJtJo4ykFjm/kZUojMI9ukRhbd5ViA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=n8uUxV
 j2O6wC8BBvVzkUMzLkQR/W6dq7ltsB0YDVqY4=; b=nq9aL/sICld4Oxszs3w7vg
 pcSgGRGgUYtKAvmtqzAGoOd3KXWa05yl++VMDpVgW+/9pVqlRwuN7amaUgMToFso
 JlyMEzobMRUxR63KCR884TYmmuI8brwemTYOho9rHa7HAKNzMfMHQlJyeULiHF3+
 vtOd2q+meqPfvhAQc3LOoFqzmNNs1L0N4s4qfgDORCGW2o+gxK5ZgZjcsaHeMjjV
 6UqgjM0iIuCjWYbrG3tssq/Q8wTmXGmNgS6cHf/m1DcE+i7MOAey4YKwZXVDOtK+
 sMzgvifpt2jVamN8bba4guBuokXZYAz6Kdx/RaLnvFWPf/2o1BHPl0lawVEMr1eg
 ==
X-ME-Sender: <xms:imaVXg3gNZwcb1EbhpbiE22rpUEKrAfkPIvS6JlG6HgfFii_3qJJvw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfedtgdduudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpegsrghnrghnrgdqphhirdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehl
 uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvse
 gtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:imaVXlohIirwGi2SsenxxMbnGlZE4SBaJutpFgbla72X2XGTDHktew>
 <xmx:imaVXlcdlz5Ni2FvP6C2iTF5s0OJVR4gpId7IOpQw3vgvLeY2TyS1Q>
 <xmx:imaVXsrdKJYiETffIHCEYuoeZUyX2Ghlt3ujM7eWg-a1bkfFJ6Y1SA>
 <xmx:i2aVXmsh5wZrIIAt9aBZ14ZdmjLjwC2lIObNO6jry51Lj3DljSKIwQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 800FF3280065;
 Tue, 14 Apr 2020 03:30:18 -0400 (EDT)
Date: Tue, 14 Apr 2020 09:30:17 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Vincent =?utf-8?Q?Stehl=C3=A9?= <vincent.stehle@laposte.net>
Subject: Re: [PATCH] ARM: dts: sun8i-h2-plus-bananapi-m2-zero: Fix led polarity
Message-ID: <20200414073017.ctfvws2ph67gqgit@gilmour.lan>
References: <20200411174843.4112-1-vincent.stehle@laposte.net>
MIME-Version: 1.0
In-Reply-To: <20200411174843.4112-1-vincent.stehle@laposte.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_003025_729263_455490C8 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============8919422874258254021=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8919422874258254021==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3day4t7c5vd65lny"
Content-Disposition: inline


--3day4t7c5vd65lny
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 11, 2020 at 07:48:43PM +0200, Vincent Stehl=E9 wrote:
> The PWR-LED on the bananapi m2 zero board is on when gpio PL10 is low.
> This has been verified on a board and in the schematics [1].
>
> [1]: http://wiki.banana-pi.org/Banana_Pi_BPI-M2_ZERO#Documents
>
> Fixes: 8b8061fcbfae ("ARM: dts: sun8i: h2+: add support for Banana Pi M2 =
Zero board")
> Signed-off-by: Vincent Stehl=E9 <vincent.stehle@laposte.net>
> Cc: Icenowy Zheng <icenowy@aosc.io>
> Cc: Maxime Ripard <mripard@kernel.org>

Applied, thanks

Maxime

--3day4t7c5vd65lny
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXpVmiQAKCRDj7w1vZxhR
xSL2AP4pPm/60fbnUXcvq+Sg3y4w2PbhMA606DmAdxn+7ecfbgEAqJyhGyhAizfV
mjIB3RBOPA9GVgyRlZqz3GmsgnzCRwo=
=JZo2
-----END PGP SIGNATURE-----

--3day4t7c5vd65lny--


--===============8919422874258254021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8919422874258254021==--

