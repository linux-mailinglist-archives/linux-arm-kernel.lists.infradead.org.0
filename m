Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD5F22D51
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qvETX4zFrHgv59qk7zV7hImPYlHpdcU4Rkg0m3qicO8=; b=J/VijtdLPU5fwJWrkVBZFhbTa
	+VepH8HVnTcchqtLUOzlbl/pu2IVJzViaYnswZ+4lcF+7vB5M2jCBCTJETji+XtYg9fCUPA5aKFvo
	hbpa0JCLpgqWwFJZJ5Tq5WXeEw9VvaA//HFiCjSZRy9sAcglsP61HMHoXxWGKNfh5pBbETKZtmUxf
	KlH7EDHgg4Qflct6TYNJV9IcQaQxztwgbe9gnKJooCefk8ehiI0Dl+W1W+Y5l/f1wccjWLdoTieod
	J6xH92fzRZl60r5B+Xk7Y006bXTzxtjp1oj55FKFz4KaAnN1Jy/Zr06gbo6w5UbnIsdK3YGSB9GyO
	HUMI7u+Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScvu-00067W-W2; Mon, 20 May 2019 07:42:06 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hScvm-00067B-HN
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 07:42:00 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 7F61A1C0011;
 Mon, 20 May 2019 07:41:40 +0000 (UTC)
Date: Mon, 20 May 2019 09:41:40 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 0/3] arm64: allwinner: Enable AXP803's USB power supply
Message-ID: <20190520074140.7kln73ws3fkt63gm@flea>
References: <20190418161804.17723-1-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20190418161804.17723-1-wens@kernel.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_004158_725906_922FA9EF 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7726950153847176852=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7726950153847176852==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5pummrpkyefqzedl"
Content-Disposition: inline


--5pummrpkyefqzedl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 19, 2019 at 12:18:01AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> Hi everyone,
>
> This series follows up on the A83T USB OTG series. The USB power supply
> portion of the AXP803, the PMIC used with the A64, is identical to the
> part in the AXP813/AXP818, used with the A83T.
>
> This series enables the USB power supply in the AXP803 using the AXP813's
> compatible string as a fallback. The per-model compatible string is still
> added as a contigency.
>
> Patch 1 adds an mfd cell for the USB power supply, to the AXP803.
>
> Patch 2 adds a device node for the USB power supply.
>
> Patch 3 enables the USB power supply on the Bananapi M64.
>
> Unfortunately the original Pine64 does not wire up the USB power supply,
> and I don't have any other A64 boards.
>
> The mfd patch can go in through the mfd tree. There are no compile-time
> dependencies. We, sunxi, can take the DT patches.

Applied 2 and 3, thanks!

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--5pummrpkyefqzedl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOJaNAAKCRDj7w1vZxhR
xT8YAQCrhNoaCeDiNfKD0yyLnByQlt1Fhq3zrDMR7EoKAmRKSwD47VSRP1Bqcw2Q
ljwc/WnLZXRKEMlsgmjlH+EMmQ0vAg==
=A9Ui
-----END PGP SIGNATURE-----

--5pummrpkyefqzedl--


--===============7726950153847176852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7726950153847176852==--

