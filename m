Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACFA1982C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 19:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yvWb/PfCveztjheu4i0rcL0FxUKXfuFR2pr3evZwWRQ=; b=eWo695oY7kD3XS9CIydH0CCPA
	EqByYWncegvKQUcdnZ8a2Teq/JWyfuyQFiiMmV/6yGatb2eIkM1AREkTMztxzfElCrfvu9+nXVaho
	OyBahWJTBfQGWNTyGG2axyyvXJ3p5qrZtBkqpKU27cPMi6s4TpCNyTCyczlLKLzmFM5W/8vIj9FJs
	6dCfZ1sXzwv+VnJaqhUXWfjaG4hfMfxbuuX9DJorccVQV9mCCM/CpEhvHaXGS4IU8oX2Lk/RIuGi/
	CIoILGTphdSn8z6tFDBv2WhwAefUQNfLd2Us/eNJ51ms+RxkvXXaWju7hItSZTyDt8JTJM4cZWjy8
	LnFfavYKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIybf-00089S-6U; Mon, 30 Mar 2020 17:53:51 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIybW-000890-HH
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 17:53:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 151FB5C0138;
 Mon, 30 Mar 2020 13:53:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 30 Mar 2020 13:53:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=mgR3D3zqcJ1KgSGC+204rTVds/V
 oKOPgYAKcEaRCR3I=; b=pVaSqStD9BOCE7oL66tSTUJJv48rfpCAn1ijcwWGNlC
 FEWha0lkwTAUttmyfok9LA9wD6pvIKbqs9MKWQp2y28HgMr6IWd80kGNPsJdz9bC
 fKYx2UtT6r+E8LUKgV79gNBfiwhmDyGYeWYcx7AAXX6Ho9bFYfP7MbhMC89wSbCI
 tjdDCUZ0lLGQKOrGXAnGQWhFoBf4miQXVYHXB2H+bs8HNqf76wRLJ6t9EFhqgCi4
 tT8oG9AjMq6d6a3U8b0YOQ7RRvDXvHNJaNWpQbhoeuftFNHnXOiqfeuXHV9R+GRL
 AW0RQN86gfXMtMU+f3wpNfvH/vCnXFlShB9cGUSWLgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=mgR3D3
 zqcJ1KgSGC+204rTVds/VoKOPgYAKcEaRCR3I=; b=MZNc3HlMmBBSSEiF6FM8fB
 fRkBL9o9mHSgsGF2xRnufR+FO3Uy8Ud/db8rJp6SWWhCXN8WnGDwiXId8SefCpE0
 09lGcu8x/H3M4+84kEQ+MzjrI8h8rqw97Ys4b+CZsZ1VEuJBDJgCw0jeVWpLPGHL
 2HzkbfaQfukJ93FTJYXEagTCy5wlKqiTQ7ln+lMMQVSj8umQRIf6MaMA8AS1GbeJ
 YfdcamZfI6qVceM/9Sk1AWDYtm0nO3LlhoiT7xkh6WFpHzQWZOBbFA1EzHYoCJFj
 LwxkcDO8hUdVBMnYZXwb1f7FFih8N11XPdDKfm4+uFS174BhNVDTJdvmOdgY/H6Q
 ==
X-ME-Sender: <xms:HDKCXvImM_LQGGZg7r9TFfJTWNcDCBBW6o-NwITvQrtZO-EcNNsAzA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudeihedguddukecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkpheple
 dtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgr
 ihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:HDKCXvmBbLsJOxywwYElPil87O-Dg-DPmacfEt9_lY7KVdmWY5weUg>
 <xmx:HDKCXu9XYxQzzLzhGMROVhYDRqfIb0op08d_vQnSQ21MH_qVbvtvJQ>
 <xmx:HDKCXu5G9v4yaNtLlqEy1x_iVFaDy4K96O-74nD9XlcV299kK9MoPQ>
 <xmx:ITKCXmOPHgMHcUlImX3tzqCRZXpXa6WT0xYfX9o8DLk_nOuusRc5mQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5AE1A3280060;
 Mon, 30 Mar 2020 13:53:32 -0400 (EDT)
Date: Mon, 30 Mar 2020 19:53:31 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Qiang Yu <yuq825@gmail.com>
Subject: Re: [PATCH] ARM: dts: sun8i-h3: add opp table for mali gpu
Message-ID: <20200330175331.4o7iunuw7anwlmco@gilmour.lan>
References: <20200328091632.12837-1-yuq825@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200328091632.12837-1-yuq825@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_105342_930431_60B28613 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 lima@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============7546011714683584951=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7546011714683584951==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fs72k4kzd3zlkg52"
Content-Disposition: inline


--fs72k4kzd3zlkg52
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Mar 28, 2020 at 05:16:32PM +0800, Qiang Yu wrote:
> OPP table vaule is get from orangepi lichee linux-3.4
> kernel driver.
>
> Signed-off-by: Qiang Yu <yuq825@gmail.com>

Thanks!

I've fixed up the value typo, sorted the opp table according to its
node name, and added some new lines after each OPP node. This will be
part of 5.8.

Maxime

--fs72k4kzd3zlkg52
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXoIyGwAKCRDj7w1vZxhR
xednAP9gvyOKiByE8Fiks6VW3DsnsVEnfi1WpPbOdJiv+ErK3QD+PKcUkslxkuzc
Cp1Tv6r9bfBseVedxQUUBKX2bRMcNgc=
=i72i
-----END PGP SIGNATURE-----

--fs72k4kzd3zlkg52--


--===============7546011714683584951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7546011714683584951==--

