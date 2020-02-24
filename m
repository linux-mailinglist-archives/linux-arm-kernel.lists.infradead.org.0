Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2620716A48A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 12:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S6polK2hcnfV9+qqrhqSasAnGZfXDYI3sTx15CyAPtY=; b=LouPZDtKNc0C34k+Mq5pzZeML
	XE8IwoZOjOk8UDLjY/20dtjLg6JW9e7XMIfC84SKZdqq45e+018bcrrsR3aF0XOOruEpUVx3DJPoz
	htGezb793De+jBJCEAQ3WFWx91JqQpxzfaol4CQiBCX29TNWt14I1ERpdN3kkmFSo5eas//qACiZe
	UWjIM/+tOdJgc5xuiMvJSttXu7CMc5NfhgloVgKlRALyEa2Vf722qsBFlgwkJosbpI6VnAiG+HHz2
	chJq7W1fuZzv+CzpnYGeBDVX59+yVT0TzHzG32rHen+KRTnHdXOQM49q/KYoXRydFjCG7I5R1psDs
	IEjyB9oZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6BVx-0001nI-ON; Mon, 24 Feb 2020 11:03:05 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6BVn-0001mY-Ny
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 11:02:57 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id C782F46F;
 Mon, 24 Feb 2020 06:02:53 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 06:02:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=xHt2MK1heAneZjk7lxOHA207z1m
 V+6niWv3tm6W4trM=; b=oLgLtF9Af//57lWcVGNMlOihaz1k9FQCx+lIUsnnjQf
 XuLwscDFImI1pV3dttYo285rMu/FvYuFuZs6FcbZMZ41Ajxe0ZaXd11YM1Dv4xzR
 HyspdQnyE4KnGUlNBXHGPlm0rhVfZO3qLoS29RYcV/siui5UgAFe9iuJH2hPgIZc
 JmGK7VbeTWHTIgqq0ZqkHjqP/q0Kf/BnyXSu0fVj/K0BKRByJTljuRG2qhtyoqdP
 0xRyeodSCVsshCMKRASEa6FheP4B7CCR6tdu4hVCUZN+/mwAsND79SZ7YFHj6Pap
 nVSs0Q6oRYtuAI5H1nZour18aCD0e1sAab1uqVVBjkQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=xHt2MK
 1heAneZjk7lxOHA207z1mV+6niWv3tm6W4trM=; b=M6fHG36NgdH8xdAdDANRO5
 F1LkjzYHOossC9uRzvXexUPrRjreGhNVVj1ikQRFTUN0TlzIoflwTDwut0/k8nRq
 QgbITFTNV3W3yP2/mfGsykTkARfnRqEi5gW2Uq68OI4ZIg+DF24PjW8q/mlPMD9z
 v5g7MDRwFFD17fhrb28y2k89Yrk0T1MNRANtYwLyMMP/zpA2xQffh8mLwT1y5ec7
 vH6lZmGM7HxevW2kzoJPZIRGK++KzpuJeHiYgdZ7hgboVDJfUXhB+MA+6LiqQLFF
 4jssje7YzJi2vUCSf014B5Zsw1faGNPWm5Q3rRvPpgNSjKFpdxEhMHp2mL2IrZpg
 ==
X-ME-Sender: <xms:Wq1TXnEcBlSfOhJ8C0JNkgaSpKWsoXA3_8qG11wWKLY0KO_Zhw881A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtgddvfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Wq1TXlz0QizJwVtlb7NBSTi_b2j7ky9Sq2KgFgzjALWQY8YE4BvUSw>
 <xmx:Wq1TXkjrkjETxdF64tBXJq5iHfJ3zM9-yNhEneghxHG7WVUQ_0u5tw>
 <xmx:Wq1TXiLSr4vzEJmfeMyJbAaHLqXSre4dSUW0JC5IN-CW-z8gG8EFaw>
 <xmx:Xa1TXkUAZW5yNro3fwZmf6i4muMubNGSs8O2zUAVHGqItmKKBeoXyg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 057D8328005E;
 Mon, 24 Feb 2020 06:02:49 -0500 (EST)
Date: Mon, 24 Feb 2020 12:02:48 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v2] bus: sunxi-rsb: Return correct data when mixing
 16-bit and 8-bit reads
Message-ID: <20200224110248.hpi3dhp3t7q56hmm@gilmour.lan>
References: <20200221202728.1583768-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200221202728.1583768-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_030255_824738_A01FBFA1 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Samuel Holland <samuel@sholland.org>,
 open list <linux-kernel@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 linux-sunxi@googlegroups.com, Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2746926291989116690=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2746926291989116690==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="srx47feia3nohrm4"
Content-Disposition: inline


--srx47feia3nohrm4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 21, 2020 at 09:27:26PM +0100, Ondrej Jirman wrote:
> When doing a 16-bit read that returns data in the MSB byte, the
> RSB_DATA register will keep the MSB byte unchanged when doing
> the following 8-bit read. sunxi_rsb_read() will then return
> a result that contains high byte from 16-bit read mixed with
> the 8-bit result.
>
> The consequence is that after this happens the PMIC's regmap will
> look like this: (0x33 is the high byte from the 16-bit read)
>
> % cat /sys/kernel/debug/regmap/sunxi-rsb-3a3/registers
> 00: 33
> 01: 33
> 02: 33
> 03: 33
> 04: 33
> 05: 33
> 06: 33
> 07: 33
> 08: 33
> 09: 33
> 0a: 33
> 0b: 33
> 0c: 33
> 0d: 33
> 0e: 33
> [snip]
>
> Fix this by masking the result of the read with the correct mask
> based on the size of the read. There are no 16-bit users in the
> mainline kernel, so this doesn't need to get into the stable tree.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Acked-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime

--srx47feia3nohrm4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlOtWAAKCRDj7w1vZxhR
xZ3GAQDQc1KfI9aGFO2vdN8rwe58X/8JKWbnV1gWWOW6MvI39wEAzTL/pyT7Z9hY
YnHiJd9rQY5Llx/U60FxMs+RfZ15wAY=
=Ggtt
-----END PGP SIGNATURE-----

--srx47feia3nohrm4--


--===============2746926291989116690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2746926291989116690==--

