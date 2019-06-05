Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F416835CEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jv9qBRHnR0BCG3Qmg8tTBDUmGVksuBEi6EHD1aqjcY0=; b=oqPh4dYBV2QjDDJgoqbgyVgoA
	Z2j0FXo8232/MXRNB5tscFxhkJqyaJ6U9/yIaI8nuxi1E6ceBpxkgH2BJZVBg4T/z7sqpXydlLshC
	+UbU75IwjCMGKr40NHl9X2e2syoGr90FfzfBCpjfzkCE8wwYnKmFiBuoemK6te6uPrNLyN5d8yxk7
	JmT9pPTAbsEL+UTFSXAAxX6YYfIsYwVx10A0ImBEOIpM1ovOt5FPlG8xCEmxyq3SKPsmrct9CJJSl
	EUIZrXMzNHZhR0I7ZOz0b7ARVrUPGknonCUPFPV93q7CcE4qO2KQDoqbIPUM2DpMJ1IWmNsC64OxL
	DumJRzBpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYV65-0000xY-Rh; Wed, 05 Jun 2019 12:32:53 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYV5y-0000xF-Lu
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:32:48 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id D85741BF207;
 Wed,  5 Jun 2019 12:32:34 +0000 (UTC)
Date: Wed, 5 Jun 2019 14:32:33 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mike Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] dt-bindings: clk: Convert Allwinner CCU to a schema
Message-ID: <20190605123233.qc3xewll6zhjdobo@flea>
References: <20190527100219.11264-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190527100219.11264-1-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_053246_876588_6AED49FA 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2613376257967777852=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2613376257967777852==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jqhlgzfdlvhte53w"
Content-Disposition: inline


--jqhlgzfdlvhte53w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 27, 2019 at 12:02:19PM +0200, Maxime Ripard wrote:
> The Allwinner SoCs have a clocks controller supported in Linux, with a
> matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Applied.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--jqhlgzfdlvhte53w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPe2YQAKCRDj7w1vZxhR
xZcmAQCoHnzaop0TIqPe5nFDuqvfZo6Lsdi+UxIAowFEAIt7UQD8D3xJTW93Tl6h
66fFs8KlsmKdJxRF/Wwq/6xtD2vOpQI=
=aq+c
-----END PGP SIGNATURE-----

--jqhlgzfdlvhte53w--


--===============2613376257967777852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2613376257967777852==--

