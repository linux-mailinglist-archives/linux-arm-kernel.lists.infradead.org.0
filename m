Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EEA1A74DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 09:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0DkbqJLY5ODwMRytRAA5jlvPzM8JRhoUCvHv6qwI/lE=; b=K+WK0s2A/cB1s74Fv2vML1+vz
	Px9Vw9eDhQjgf3upJr3JSY4pouQUG4R8vUk28z0IuLV/plV11Jl+eEGgPCL/rNUHVkF1P35M4Mvgy
	ZobgCkWZv6r1JajYSuPKZxkYUMTx88FKSrOZR36RsbnCh+FkUyPu7/jCfkB+monryYRLtDtOfhROZ
	O6WX5+Z2I0cCoBcQqEoEG/RZ/5P2x4EA6OMpG6+fRYMd4DIWZjDbS35/D+WT9q7qGGfYfUzt7nFov
	K50Wnq5fN1iwTLqsjl6ca6ejpWkaRIGE/16Q0vkK9Z3MvvPJ72T/CncbrwzQjl+ftVAyy4Xh2fmFS
	9YITcec/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOG5K-0000Ks-DP; Tue, 14 Apr 2020 07:34:18 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOG5D-0000KO-Ep
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 07:34:12 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 47C4ABDB;
 Tue, 14 Apr 2020 03:34:10 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 14 Apr 2020 03:34:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=LBhKkgRT725GUf9jEN+2zEk/o6Q
 t0cWoESUX5EZnFas=; b=vRekPm9rDn8y1dn5G6GkAbKOh6Ymhs14ovB6yezBml9
 exBDwqih6icHJSdJGvaTDwn1ElOCq9jQVAfsR9yyYfmk6RXbaHanvcJpyeMkoB5d
 pq1+ANjJS2IoB2quCGCgovDU9xG/9+FduDVKX8RwfLRze5UJ4kxmbwC44/KhtVZW
 UXpiMrO+4CbLT5V5XxMCAOn6FyGuAiKzMJ++SbMnLE3qnQ0ohlUSM2QRrk37zBoh
 q+PdMqeoW1UYLjcz6ni8Gei6msO7qmHwQ17oh62syDth1usyMVU3UXHRe8tiIpnR
 oa+YuAPspEonTgalEmoBVD5Z9rsbe91JKyR2V/wtl6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=LBhKkg
 RT725GUf9jEN+2zEk/o6Qt0cWoESUX5EZnFas=; b=Y1CPFzZeJaW1D5NZudM8P4
 VwqpTA4gGWfSZF9dohWOUgVoUSYrcnsSMeyiy+pqmj8exTuNflxienU+e8jJQho6
 uNhCEpMSbD9pVCqlnjOzIPrB0eoOXmr7fifMpwy8zBNN2D6MTklntg10O4zOpkof
 aEwJZv+sE//t0IbNuyxBiroazSIKH4wPn1xQ3zLu/aIgXGf3LzYtCGBNQv0do6BF
 1nF/m0ZRqMGDTEfoA4tCIOB7PtSaq87VhEANXhjStcCRQeFMrRJo2zrm51mvc7ii
 /kx5R6enNRKRKC/LKs2fySN28N3cISHfslSycJNy8PslwIvVuYk2d+DsPw3mTR1A
 ==
X-ME-Sender: <xms:a2eVXrkvsFUCAikOM0TFwV5lGWcR1xBtRTpK5V0HK-zI8lsBekSrqA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfedtgdduudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:a2eVXk-Mn84AZsSqUxS9zLQwmN-IsHzrg_3Srf_ZtiHjkT453m8v7g>
 <xmx:a2eVXnNfjdeCPDbeoxW9BVFSIItLYaJeEvFDLiWGzjbTT7Huk5B4rQ>
 <xmx:a2eVXm-THMmHC1dbxuHwV4Zfwnui3Jm-xhYDlnCIXFMS2wJiU1xiMA>
 <xmx:cWeVXv3L30ajP49vtRbiuTxbJQ01m1K9hPJd-lmZFLBaIa-JXNxS7A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 60B1B3280064;
 Tue, 14 Apr 2020 03:34:03 -0400 (EDT)
Date: Tue, 14 Apr 2020 09:34:02 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 0/3] arm64: dts: allwinner: h6: OrangePi Lite2 and One
 Plus DTs
Message-ID: <20200414073402.7qfdbtn4jom4rvh6@gilmour.lan>
References: <20200413062433.1145043-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200413062433.1145043-1-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_003411_545397_040BD8BE 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, wens@csie.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6012957095668879959=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6012957095668879959==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bxl4can4rfdluf7e"
Content-Disposition: inline


--bxl4can4rfdluf7e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 13, 2020 at 08:24:30AM +0200, Jernej Skrabec wrote:
> This series adds missing nodes for OrangePi Lite2 and One Plus and
> fixes USB OTG mode to host because there is no way to toggle VBUS
> power supply on/off.
>
> The only remaining board specific functionality not enabled is USB3
> on OrangePi Lite2, but for that USB connector power supply support
> has to be added to driver first.
>
> Please take a look.

Applied all three, thanks!
Maxime

--bxl4can4rfdluf7e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXpVnagAKCRDj7w1vZxhR
xStmAQC2chM8vw0xMLPtHaFXgaLTF8837sWGbKvl8jDcqLna5QEA9HsyVfnVQNQV
xyi363QBArJKoKIJEdYpXvGVKfYfzwg=
=GKw8
-----END PGP SIGNATURE-----

--bxl4can4rfdluf7e--


--===============6012957095668879959==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6012957095668879959==--

