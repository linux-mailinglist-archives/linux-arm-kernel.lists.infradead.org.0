Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FE91A1E26
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 11:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WcHSr0ftlG0SK6aH7fA2Su+V6Gsz9RPuRyX6tbgLvnY=; b=VIQRaOLsj1k2NCoRwkPuQBnT1
	blLCkd7038gS4q+YbH0twd/TP2RlDqWmONQmyfPoLgN36nXz+SWtBmkiLGjfMo9ccRiY9mLCqWejw
	OSvA9L/omjzNKYWu1h8U1/xP9sVAVBgJiLvIzX5FEaJPsADxwEgcwMCplD22XWTigCIqGQZyQYRnz
	qBLiMn3XisQMo3f1lcuCx3p/yYXOn1sMnHoAV50a9CxUP4K4y6NpCsWuLVI4efiuJLYMlnyPp7+Q0
	0wf9L9LwPrW/J82LIgR8mbTYXynb3VG4M2M2nBH8/bJOscaniQ6xWpAkfxzMqL4aSIn9xpihj2vRM
	IjzHkcxzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM7DC-0007zR-GY; Wed, 08 Apr 2020 09:41:34 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM7D5-0007xo-6e
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 09:41:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 6488C828;
 Wed,  8 Apr 2020 05:41:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 08 Apr 2020 05:41:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=N6JZm45kpxMIuSYKJzXOxy5rA2O
 Mlv07ymdp36yM5Es=; b=lecMA//UQ3o36d2jqwptLM9DbXnYiv3+BeefvmnaOj7
 /kY5287cYPdtH030+1jP0pTBVLW4o0oN4aqDlDUvfvV3QlLEJSMCEaTng9HuzRno
 OxgLe69BsgrO6Mg5r2NLfVVC7Vb6PLF261fqIcLtyGRQcuhnz2S3YFNUbLaqXjO0
 ozBWsOZ74vRWzgKmlMmPTE4V4w87MdU83Oe0iSXElsza0XgjG1NObwBuXjjtjKJF
 67vPLaEPbv9jLM/B2AnAmGPmJo48VK5ArPgg4hAJg2fhiDKQdzYG30pK//Dvkp5u
 Kw/F91KSwRcv27zawq0bawbv3W6PiXaZhgukr+ZbhTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=N6JZm4
 5kpxMIuSYKJzXOxy5rA2OMlv07ymdp36yM5Es=; b=KhYZn+cLplG+ZzJO4uM3WG
 NGtUzlqwMVmOGJzdZErbE0fG3fha3cEovw+UkA2yhEcrr+1wvRL7nvw1NZcWWCvG
 jPaqytcZESplqqw3FJ0Z49GhjuAgz9BIcDCL+5LdN9lzcI6wOB79STLEqSV+oRjj
 XXpt3QhOmYXKtJTaBm21PXoQhH0+mMxmfXkvdB6wvzG5Gw1nRGQpLvpiz/6uZAgY
 itnHmG+ZvJt5XvrncYznRzD0W68mkuPKIuiRQqkDEJhX+xuN+P557Dz1w2+wn3rw
 wxbnLlsieiAQf6TXJzN9aIuCchjx5Zy5xstS93cZX1IN/1EHixxwdtPVhNhuafhA
 ==
X-ME-Sender: <xms:O5yNXj8LnITlyadBgK_0uoQzdAcw0sjXTY-DMTSZJPCkTw1ec4utlA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudejgddulecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:O5yNXiKQKBqeYUMznPmkhqaRF3j-AqVmNp8ygIvioCUkTB6gekWyqQ>
 <xmx:O5yNXuvLUP1OZNkhkW2VU8npKRfG2Xr6F2Gj-Zb3GpL5mgAcv1FwIA>
 <xmx:O5yNXunlJrAqYf1n60qlTu1lKlSCdAIpGW7EsYIGFovjL4f190u8VA>
 <xmx:P5yNXnwoKkq2E3y4bNGIGy49iLmnYpR3CUkrWwfYewePt2i371o9ow>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id CE97F3280065;
 Wed,  8 Apr 2020 05:41:14 -0400 (EDT)
Date: Wed, 8 Apr 2020 11:41:12 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH] media: cedrus: Implement runtime PM
Message-ID: <20200408094112.uzbsl4yhtjs5vhou@gilmour.lan>
References: <20200408010232.48432-1-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200408010232.48432-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_024127_522496_C058C8FB 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5621466749874334299=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5621466749874334299==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ms6v2x4wwxcyhvkq"
Content-Disposition: inline


--ms6v2x4wwxcyhvkq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 07, 2020 at 08:02:32PM -0500, Samuel Holland wrote:
> This allows the VE clocks and PLL_VE to be disabled most of the time.
>
> Since the device is stateless, each frame gets a separate runtime PM
> reference. Enable autosuspend so the PM callbacks are not run before and
> after every frame.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--ms6v2x4wwxcyhvkq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXo2cOAAKCRDj7w1vZxhR
xb5vAP4xQRPypcxDFGdSp7ZspsH/B1RLDEoyE7lvECbEQlmvpQD+Ij62STTM7hna
bWVw1hXRzBto9JUYuynQjMbCNZ9Q8A4=
=+1/C
-----END PGP SIGNATURE-----

--ms6v2x4wwxcyhvkq--


--===============5621466749874334299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5621466749874334299==--

