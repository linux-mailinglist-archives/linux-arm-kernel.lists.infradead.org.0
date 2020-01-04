Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70782130161
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 09:18:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dC0pGXSJplFxA5KB1MW0uhOSsXyxgaCVeSYZfBVR6Yk=; b=Z9GgEyntsQW+k7A3NdYpw1eaF
	NO3NB4PazGx3iiUjakxQcMvx5/XTKeH3ok83VICh+aMKUG6KJsVIx0hbfb+kvrg7qIU2a78elOKCi
	5Ux7CCPTa45fO8X0NGWBp7WYoaogiUs0MShpu5wqMBHn0nfzs2sL0KkMyjFU29MgmBOz52iIFtGQI
	LcZpu6fnuGdwWQLM7C+Z5xFhqkeiWSSiMOrkUyBVFPYePEfpQ3b6drP1gwBipRbiHQ5OgIof66lmL
	uXPXADAgnFcjDxjDbjvNRcRE9pkkz3bKxNve+WHkF2FlQevcEa7UzxUIhqAdM0gT9Rx213htqnt3v
	rM4LCgy3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inedl-0003yM-A2; Sat, 04 Jan 2020 08:18:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inedY-0003x9-NX
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 08:18:21 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1581215A4;
 Sat,  4 Jan 2020 08:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578125900;
 bh=0A4dYUm+wB5rRAeqsjOu0EBX637B2iRBxWYFB+f+3qE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yhM7AMQfCNSdN0NkExGDFjn+1YoowXcHmHJEDJy0/pTFVoUeIxBSstsQtx4mjvTVf
 Ck74dcyJ9w3auhxnUXdXkTnOd3ELL9SOewnCRdKj5+03DLbvUIroE3td2doT7Q8HNb
 aNPe9xTyu6zq/99FiUhda3NzO7c+M+VxqgZ7gXbo=
Date: Sat, 4 Jan 2020 09:18:18 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH 2/3] clk: sunxi-ng: a64: export CLK_CPUX clock for DVFS
Message-ID: <20200104081818.ufby6w24vtawyfz3@gilmour.lan>
References: <20200104063505.219030-1-anarsoul@gmail.com>
 <20200104063505.219030-3-anarsoul@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200104063505.219030-3-anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_001820_791101_B97AF0B2 
X-CRM114-Status: UNSURE (   8.97  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1645704566337561591=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1645704566337561591==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z27dgjuuap73pkx2"
Content-Disposition: inline


--z27dgjuuap73pkx2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 03, 2020 at 10:35:04PM -0800, Vasily Khoruzhick wrote:
> Export CLK_CPUX so we can reference it in CPU node.
>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>

Applied, thanks!
Maxime

--z27dgjuuap73pkx2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhBKSgAKCRDj7w1vZxhR
xat1AP9yaZlJNjEXQz2ZyUGPPDc9qiGYflrWBkOvankU4ag/KQD/QNoVXsnaSSeA
v4fjU5R73baPNupd9QJ4lYCHhyzZ8wg=
=4xGB
-----END PGP SIGNATURE-----

--z27dgjuuap73pkx2--


--===============1645704566337561591==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1645704566337561591==--

