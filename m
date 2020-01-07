Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B501320CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 08:58:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SOHUaXCi5AYjqovc1erx70mX2ZZf8AB2luGqg2OZLKI=; b=RBMkMgwq7OavsRUis8h5LqY17
	BfnL2SZQe5rHs/+mFc2w7739BYH+0/edFp8NZJXEyI/Jm4IVKTOhHwgMpyDijTWbADcv9w0v8pYYG
	Y/XFlnvwWIE3ioICu0sDcV/DK+gjys6+tetkNqwLn2eXiNSp2GtOkETdAhgjC+43Qf7C4ltpd/V43
	t76anPxpQ9xZh8ivXOg0NYZnWtBREzWiF108nI9vuTJECFfm9r+h1Yolsa0EJ3a4/z7SpaVpCPvRl
	Zi5SFOM2v38AUc9Vki644kDExr3zBoPZkAXCSebIvO7UFuh1HMh6QBsgF2jBYXXTCXpj8IrrAQlem
	24DnvB8ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iojkx-0006Vo-Vu; Tue, 07 Jan 2020 07:58:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iojkq-0006VM-0i
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 07:58:21 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C7D1206DB;
 Tue,  7 Jan 2020 07:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578383899;
 bh=BrMst+617zI2r0EV/C2/idlDkHdiIWRQ7d0v8t0JnTQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jMWhpUTRkILxE437ZjGrHk0iYhEMN41iXnqwZp3LRy4DayzOebYwBTEqLp551LhM7
 HJZOEbAXzZJ86KBFe7Bi6F7bhUZBRC06QEGk4cY6eW3R8TF9FfD5YgG2bXrxu5Bzne
 nNh3jRXpJdGdQpZNedC6HyDRi76Phbhr8F4XFouY=
Date: Tue, 7 Jan 2020 08:58:16 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: sun8i-r40: Add thermal sensor and
 thermal zones
Message-ID: <20200107075816.ly6exfd4qtvfxxua@gilmour.lan>
References: <20200106174639.20862-1-tiny.windzz@gmail.com>
 <20200106174639.20862-2-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200106174639.20862-2-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_235820_085556_287154F6 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, megous@megous.com, amit.kucheria@verdurent.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9012258212466478516=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9012258212466478516==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5t4fa76ybjlyh7kw"
Content-Disposition: inline


--5t4fa76ybjlyh7kw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 06, 2020 at 05:46:39PM +0000, Yangtao Li wrote:
> There are two sensors, sensor0 for CPU, sensor1 for GPU.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> Tested-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> Tested-on: sun8i-r40-bananapi-m2-ultra

As far as I know, tested-on is not documented anywhere (and isn't
really used either). I've removed it and applied, thanks!

Maxime

--5t4fa76ybjlyh7kw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhQ6GAAKCRDj7w1vZxhR
xbGQAP9yQNlWUHCxeJLJY+QLchOERPxO2NAHR5SR2rfghslKJgD+IvXRJyi8oysC
I7xj6LiyyRFoZJuhQtVur1R+BTN6MwA=
=Upf1
-----END PGP SIGNATURE-----

--5t4fa76ybjlyh7kw--


--===============9012258212466478516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9012258212466478516==--

