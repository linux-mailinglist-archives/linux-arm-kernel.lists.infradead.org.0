Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E901001E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:56:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3/i5fT+h4pjsWomrFN2BaDQJnseR8R8lCqJ2a1gp9HI=; b=mdq0PVLK+DTHanVie1kCHq5sI
	lIIOeVbxxX9rCCxdeFyVuMqO7EIOCPoOIMD3p/3YU7T5UtaFKjwrc8gSSvr4dgQn4Ql9vGwfY/8CP
	GzSSNTwxCY4YW4TdGtH9UamtEE7bQCtL0HeAUlncPKpv9kNmVat817B1Je126bJcLevc9VQkxq6eU
	IN9K5cJI4aYJBTsPy9WHvGC9YhLy9mCRB0fhFeUhS42hhlZv4R9WkU012tSGqFnSJ6ZiEBTnRCQnC
	Yg1FZo1+SIjk4+hSZZLNPViLj51HAh2wAZHeBUpQFwKLs0BIqtqW+8gLcqXY4CZTisgYufkNxvjd6
	AWXBEu+nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdlK-0004vu-2g; Mon, 18 Nov 2019 09:56:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdkx-0004lI-BH
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:55:41 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8677120692;
 Mon, 18 Nov 2019 09:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574070938;
 bh=DIT4h24G/XHhTR0V9nAo1RhonfMX1ZEVQmD6dY0og4Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ROf1nmI0zKFPdl/tXp8JrcbFEB2obv4ynnmFI+5z780WzdjP2DEd4Y3fWN30oxeWR
 8ScaNzVxGCgYVpEHi9k17DricDuPHfa/HJ2AVrKG/YSbtcxZFTx+553rBotMoh4odk
 pU6aecTIAP7oL3l+zoUrfN5G1EImR1phIKxI7hpY=
Date: Mon, 18 Nov 2019 10:55:34 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 0/2] sunxi: dts: tanix-tx6: Add rc map
Message-ID: <20191118095534.GB4345@gilmour.lan>
References: <20191117130058.1341989-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191117130058.1341989-1-jernej.skrabec@siol.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_015539_450242_841E9127 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3268533188970340333=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3268533188970340333==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Vs1U1/ga4WSC1iHQ"
Content-Disposition: inline


--Vs1U1/ga4WSC1iHQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Nov 17, 2019 at 02:00:56PM +0100, Jernej Skrabec wrote:
> This series adds "rc-tanix-tx5max" to rc bindings and to Tanix TX6 dts.
>
> Superseeds https://lore.kernel.org/patchwork/patch/1143781/

Queued for 5.6, thanks!
Maxime

--Vs1U1/ga4WSC1iHQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXdJqlgAKCRDj7w1vZxhR
xfg6AP4y1Y62dxMfySco9JASTErxFp505K961dKhOrNOQvIkOwD9FZZee0XDQ3Gp
xxLthCBiNpCdk0CmqA5rcOkXsvcV7QE=
=pilQ
-----END PGP SIGNATURE-----

--Vs1U1/ga4WSC1iHQ--


--===============3268533188970340333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3268533188970340333==--

