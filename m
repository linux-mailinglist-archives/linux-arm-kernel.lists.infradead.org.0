Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294CFF7450
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 13:46:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W7c6h5NX8QVeGnSHdwwTLN4PkdEaL8Lls0XuVQgpYgM=; b=AgUqurBxASwLdHJAgZwNPphZG
	l6eCMizpqXuguyrd6JtTNXoUjr1snIVF/YHepHt+R/PtsQjzon/Yo7gLgg2VYfbR2V6PQ8uNSGoh6
	Lqnfx3+SIehTh0l5fayr+/EF1ksKAjxmhvvuWjbyKUAgSAOPkbO39+A+IZLUtiiLFujlpVuOTaLrv
	k6+UZ7pURE1rky8FAUKTTYwk7aqfltvzpoAa+NBONRznkNlfUzLIXbVglLlzPnye40er9DRKLr1W+
	yFWS3LzwpGUuGsZ1lYNt8Z6Un+ulQZrK4qszSEtK6OuT8Lahgg67yi+shoMw7GCtq5h/qKA8tUGzb
	SErhOYB8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU94r-0000kj-W8; Mon, 11 Nov 2019 12:45:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU94k-0000kC-CV
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 12:45:47 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81A512067B;
 Mon, 11 Nov 2019 12:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573476346;
 bh=WDxipH3XLB+HfXaUZVK+cmzbhva8WgS/ApH5twhhsWc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SSUQBKR6JLC3ewYFOQo4yHy+RGXZpUGmrE7icwLKEYPpw3bdXBepxFdp68ZXSr75B
 IvMrYpO2hXuFGD0v11QZ049hbuzuBxUN9nSmbp1LRRYw4PD+ZPT2Nd7JaEI2m9VHcL
 mKbHd2FEvQjOL0SeE7dW1r2m5uLbQ81g1A9MXPX8=
Date: Mon, 11 Nov 2019 13:45:42 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH] clk: sunxi: use of_device_get_match_data
Message-ID: <20191111124542.GO4345@gilmour.lan>
References: <1573403720-7916-1-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <1573403720-7916-1-git-send-email-clabbe@baylibre.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_044546_443062_B1EA0DA3 
X-CRM114-Status: UNSURE (   8.37  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: emilio@elopez.com.ar, mturquette@baylibre.com, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, sboyd@kernel.org, wens@csie.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8502448722970981964=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8502448722970981964==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/JIF1IJL1ITjxcV4"
Content-Disposition: inline


--/JIF1IJL1ITjxcV4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Nov 10, 2019 at 04:35:20PM +0000, Corentin Labbe wrote:
> The usage of of_device_get_match_data reduce the code size a bit.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Queued for 5.6, thanks!
Maxime

--/JIF1IJL1ITjxcV4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXclX9gAKCRDj7w1vZxhR
xXQrAQCuBvWXvw9bB/NYXgGhHA5eGk4zCcGrX2njuT6ALJldIAEA+N8WJYaZVKxA
jDggN/JLd5CcVAR68UGM79sdoFQlags=
=venc
-----END PGP SIGNATURE-----

--/JIF1IJL1ITjxcV4--


--===============8502448722970981964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8502448722970981964==--

