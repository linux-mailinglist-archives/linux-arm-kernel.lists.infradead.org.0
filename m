Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 947EEC2316
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jem8vVGH7NU0KycSQlkOFVNGqgjFabiovSKLEbDvWYk=; b=Pp7Zi7RPFLwVAXV345lierb0k
	1Xy+QPG4w46xP4sFcHn8AZB0PVO29COyWzqLSF8rEoom8Cg9EQ9ZGJznH3XWFT4vUBAx6DTIpNr8d
	Igy1M4ehlPXLgSVky6UEsY0grU50wG1QicZiJbpaW7fnZhEpbbnNrxeDC5zkE6pfKJlKSSngdjcxO
	NfKFGDHKy/6U4dfRF82/jiXywCMWuSDXM2IoLJcnWsPOKpM9ZFmd+hbnx/5gfLW9BzH1Bx1WpmN65
	Fi1MMyWH/c/2DlbnJSMj8z22C0DsWb18EHwtYnRo3g/e2ADXlz3+5pAFJARJWpets+6I+aEspUGYX
	XzkhFD7Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwYF-0001CI-Jp; Mon, 30 Sep 2019 14:21:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwY6-0001BJ-Du
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:21:15 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0AF3215EA;
 Mon, 30 Sep 2019 14:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569853273;
 bh=6yoAIqG6hzy/d8bd7DXLZXV/MdLd77qxmf5UP8tY4bc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A1PXmtM1yeRrqnIzd0YbtRtXiOabHe11LfWnRmlafiXfQZYHNbyEtYvT5FSZAmWTD
 EzI+Sd9B+UkLch9hx5VNM1eXqy+yTd0wcrJczKXUz9nQBC8AMl96TD+bLNA/TD3B0r
 0h7ctJ1OIW0jhzXr7N+rVmFXuMyU2uA4n0AWX/J0=
Date: Mon, 30 Sep 2019 16:21:10 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: sopine-baseboard: Add PHY
 regulator delay
Message-ID: <20190930142110.vscmnupg6lqrbmuy@gilmour>
References: <20190929085259.76462-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190929085259.76462-1-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_072114_490958_23204D20 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6510475633514609580=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6510475633514609580==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="quermkw47rmscx7x"
Content-Disposition: inline


--quermkw47rmscx7x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Sep 29, 2019 at 10:52:59AM +0200, Jernej Skrabec wrote:
> It turns out that sopine-baseboard needs same fix as pine64-plus
> for ethernet PHY. Here too Realtek ethernet PHY chip needs additional
> power on delay to properly initialize. Datasheet mentions that chip
> needs 30 ms to be properly powered on and that it needs some more time
> to be initialized.
>
> Fix that by adding 100ms ramp delay to regulator responsible for
> powering PHY.
>
> Note that issue was found out and fix tested on pine64-lts, but it's
> basically the same as sopine-baseboard, only layout and connectors
> differ.
>
> Fixes: bdfe4cebea11 ("arm64: allwinner: a64: add Ethernet PHY regulator for several boards")
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Applied as a fix for 5.4, thanks!
Maxime

--quermkw47rmscx7x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZIPVgAKCRDj7w1vZxhR
xVgqAQCDfcX+A/qtKjlld5IAr3fEdXZnqTWyYKgCOlqsd8Kl7gEA8JWPsQEWWnH9
gsSbLYjkSKUkUMavqHDbIgZ6r9D58wg=
=PU/D
-----END PGP SIGNATURE-----

--quermkw47rmscx7x--


--===============6510475633514609580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6510475633514609580==--

