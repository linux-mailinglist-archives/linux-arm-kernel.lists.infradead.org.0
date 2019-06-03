Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8E432F51
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 14:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kP8gC0CBtbrhY6CNVqnZQ0VBx8L44Jkc0x6f6ng3F/Q=; b=UjxShwEq5frjBc74STHaX4XOq
	czCF/YjGNFxVWROFwoNrQPLd7jBRgxlmqj8S39k4CT+P1xYq/kYTnOP4uI9LuPT+3R+Sz6P7X59eb
	ED5h/P+tZlKmk1FOwbinku0v9P4/HimRujz46DEHDPDfuY7/A8vxDa2uqRy9t+nOh8XRVc9LLCiy6
	WzbuYlx0NvPgH4gzeedU1TWdzymlq6jG9Q3BTeNV7PEXdx/vn6dFj37TL8oFg9n4z+TICmwwiMNMM
	tPXM6ZVySaK/UiNzpGAxZ0/G/+Y7Ye9gQQjdRtbGzEGVlugRv/73gfWWdyhq1gsNCzhhYUKHFzTi/
	Vis5m4mBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlrI-0000A3-4Z; Mon, 03 Jun 2019 12:14:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlrD-00009x-1l
 for linux-arm-kernel@bombadil.infradead.org; Mon, 03 Jun 2019 12:14:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7/k7vftessYca9Ij4BRS0pqBYAH6AAwcx440/1KuWUQ=; b=EQCTvSpfrA+IkHUIQMOh2xaX0
 Nbcc4vZ1AnP2KpW0ekxJgA6zBRfvxQqoq+2u71GlMVi49SubQZkAvnq7M9o5dYz5DpE+eRg7P2LmL
 5qxO7uPKszC/T/JPGUuOp6yu2njl1EqeMBT+LOVw+o/wFX12UthlrgtipSTBdY3azdOWxHvsKNxEO
 nsDE1wfZNqpUCe8IZI3IOy7grgHH4zyPtq2A6ooKr3DGKxKwfk3HIFxKT61ChXLlQKgJM9S4sTXA/
 T2U5d9oUL7e8vx9jRw2eFFCarKHL2+pwt0NtieNWG5+G4iftOTEHM9ELdYVisacRBgVJI1uT/hbkb
 yAu8AJO2w==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlr8-000626-TJ
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 12:14:28 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 970BC60004;
 Mon,  3 Jun 2019 12:13:45 +0000 (UTC)
Date: Mon, 3 Jun 2019 14:13:45 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 4/7] media: cedrus: Remove dst_bufs from context
Message-ID: <20190603121345.5uh4xquo64fopqnn@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-5-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190530211516.1891-5-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_131426_961988_4677D516 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-1.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6777371676536000264=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6777371676536000264==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hwwfrxwoaemzsp3p"
Content-Disposition: inline


--hwwfrxwoaemzsp3p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 30, 2019 at 11:15:13PM +0200, Jernej Skrabec wrote:
> This array is just duplicated capture buffer queue. Remove it and adjust
> code to look into capture buffer queue instead.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--hwwfrxwoaemzsp3p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPUO+QAKCRDj7w1vZxhR
xY1uAP9hH5O7WjfeV/BXsKPStm23IM1ZX1gwoL+bHz6M1yQBjwD+NvJ/2aWqWf8f
R+ArhaQDIa5EhvE33GmymyMWU6/RpQc=
=Hu9G
-----END PGP SIGNATURE-----

--hwwfrxwoaemzsp3p--


--===============6777371676536000264==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6777371676536000264==--

