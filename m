Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EC48D1D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7YOxla7I4XGfZ0hxGQdEZwwcXjPxECEe2kceAcZk5w8=; b=C04gJnZ1gk4ZKxBZiCLB6gDhW
	tiES+WKmelf7QTZhp8YrsyewUvALNRri1mHAuzGmFLN/2HE2/vFXjhU4rhwvCGVuiFSfKjOlqfpUo
	WdcipqZJ/f7hyGxg8M5OufL+WEZ9A6pPhsthmlarP3IQ1c+9o+Ci4QeDHifpnRo2xwg61bGSrlrKP
	jKyh5XegDxCiOLifPWdRZdJaROQCIMWSwJ38cpWSc2QVruRMEOmIbSlBHOhx5ZFl7CIBY+LjRd5y5
	w3RdSlXXZUJ/x1NQ1rJ+OxkAnD4a5Mvi8Hw1zgiicEefrzJs98GqV3jGupINuSvsS30PH0sCG8dXY
	JQ3jySMTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrBr-0008LG-Pe; Wed, 14 Aug 2019 11:11:40 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxr93-0006Md-Ps
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:08:48 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 6340A240007;
 Wed, 14 Aug 2019 11:08:41 +0000 (UTC)
Date: Wed, 14 Aug 2019 09:20:07 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: codekipper@gmail.com
Subject: Re: [PATCH v5 15/15] ASoC: sun4i-i2s: Adjust regmap settings
Message-ID: <20190814072007.6tfvhzsw4oxbwpc2@flea>
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-16-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190814060854.26345-16-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_040846_817112_8914479A 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, be17068@iperbole.bo.it,
 wens@csie.org, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3327795177446458986=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3327795177446458986==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dgil7vhvwetdcvgj"
Content-Disposition: inline


--dgil7vhvwetdcvgj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 14, 2019 at 08:08:54AM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> Bypass the regmap cache when flushing the i2s FIFOs and modify the tables
> to reflect this.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>

This patch looks like it's fixing something while the commit log
doesn't mention what is being fixed.

Having some context here would be great.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--dgil7vhvwetdcvgj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVO2JwAKCRDj7w1vZxhR
xRxTAQCYD2CO3SPSOc5RdlVUrQv1djtiH0pfZP5VbijJa1lzPwD+PM6hd04us2FV
WlQk7WtocalzR0MoGH07HDDW7ZocGA0=
=ba8a
-----END PGP SIGNATURE-----

--dgil7vhvwetdcvgj--


--===============3327795177446458986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3327795177446458986==--

