Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C5C3409A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f+UoCSVDh0X5eNZ/YSN1MRnAh4GmRG3al1jM2AQScXI=; b=Lrw7I/XQ6D09w0aZxDre2l1Rw
	I1L7djXLlkF6lxF4r+XLluP4nUk+OW+mPf9wfm8zBDZsecrEEPbqEWoiM/TJdR929Xwy1IKPjB8t6
	djh2ZFMT2Hdj9GMAKwEMRHCjGoHsa8AxA3Vbt3qEy78//6oBhYGcRxrh7faTh/hzzX3uwNfQ44Z4M
	uB+/FW52db7yarqQBPPpdawur63Eis/ysuTbLqbmoPIZFx55A64tUQiDwCvSqZdxiNUf1giLVPiPM
	la7a/2JQbADiB6+F2RNYq4HU+n7q32yN4jwlsEdebHL+VGOU15C0LwfjSlvuNW3fS+EqtS6rXC16b
	fn1VlfW1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY49d-0002t1-Cm; Tue, 04 Jun 2019 07:46:45 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY49V-0002s5-Rw
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:46:39 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 4D2541BF203;
 Tue,  4 Jun 2019 07:46:33 +0000 (UTC)
Date: Tue, 4 Jun 2019 09:46:32 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: codekipper@gmail.com
Subject: Re: [PATCH v4 4/9] ASoC: sun4i-i2s: Reduce quirks for sun8i-h3
Message-ID: <20190604074632.tby6r57vjehb4jne@flea>
References: <20190603174735.21002-1-codekipper@gmail.com>
 <20190603174735.21002-5-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190603174735.21002-5-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_004638_059687_D6025142 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, be17068@iperbole.bo.it,
 wens@csie.org, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5173537080025698452=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5173537080025698452==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7jshcfboaepnhnot"
Content-Disposition: inline


--7jshcfboaepnhnot
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 03, 2019 at 07:47:30PM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> We have a number of flags used to identify the functionality
> of the IP block found on the sun8i-h3 and later devices. As it
> is only neccessary to identify this new block then replace
> these flags with just one.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>

This carries exactly the same meaning than the compatible, so this is
entirely redundant.

The more I think of it, the more I fell like we should have function
pointers instead, and have hooks to deal with these kind of things.

I've been working a lot on that driver recently, and there's some many
parameters and regmap_fields that it becomes pretty hard to work on.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--7jshcfboaepnhnot
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPYh2AAKCRDj7w1vZxhR
xaKlAQD09oK9E3ZBJRJxBZlg7egPOYq9H1Wo09ND2ytEbNrr1QD+MC6qd8dznfXK
puvwjUoowAllTkmYM3ex11Z+Gejg0A4=
=YpYf
-----END PGP SIGNATURE-----

--7jshcfboaepnhnot--


--===============5173537080025698452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5173537080025698452==--

