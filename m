Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEAE158A19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 07:52:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+DzK0hvWqJsHuDgzeIVc6v13K716mt0YyuZeERuvOOk=; b=u8RlrCcGwKbKhpVFI6Rnv03jx
	6xP8j3SFM87PlW2LP/+8YzhVnsMLn2kzl+1ZgDOGk2O3YRD8F8CygpW9C9JlRQDqAMqldg4YkPYsl
	4tpO+wCKXxiSuV45hWXQC8geHMiUtV9lzQ/qAx7dK40RoWz3+u367uhmZtToCS4GJ8FdPzCEavKk1
	nt/zrHgVE9VvH4yG3WZ6/iUtzDaxRF0AnvbdK5niYIZzBjP/aiL/tuCF5R3ymNa8eIFdB1NnzhgkY
	3LktdWfoHYH3JhuoPsLG5jwgiAiGhCr1b4yWncDsZadSeojvN2iU6EvNBp1GdvzDBIECaqI/eo3N+
	LGNC9ikPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1POi-0005Iw-Dj; Tue, 11 Feb 2020 06:51:52 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1POb-0005IE-6H
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 06:51:46 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 40BA1210F2;
 Tue, 11 Feb 2020 01:51:44 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Tue, 11 Feb 2020 01:51:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=5mDUEWpE27ncbun9QxnoOkNQ68K
 ltXN7NhZqgt6xf/0=; b=i9Of1F543FGmbjSaxpADoL/tvuOCEilkgZFWr32r404
 2N+l8izu/XeI5g+3aZ/p/I71RmooyGBikOeB6FJONOMKYXtPuIRwhAAPSK99GDb0
 5LQfYGvAwdYY7ZQH4/FnlSbnMzYg1C6HFOH9l9yvep8Y1FZ9nSbIuMY5/QRanIw9
 nVcMwzqGs0MgqwP/gg+DLC7HfLD0LbSCSkEQb+DjqK8M6THHVFeXuV7WD5hNiFjJ
 XdtlapWxtOoL5rCFKihONBPtcOiA+mKs/OraRkAVp8InDEVG140Plh112mnc9+q7
 v6tRtzTQw+OLb4Apif31HO8rAjwZNIyQ869pPmdPIwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=5mDUEW
 pE27ncbun9QxnoOkNQ68KltXN7NhZqgt6xf/0=; b=YupaDDKQH8KkWvnj2NMsIN
 msFS1kTRSKEbfKZS10UPmHHwVCfjrpUOezeaGNk/jpbGSzBLxvInhDwlPZFWGq/a
 RQNh3HEImSUcJnff1rA2rVEGqTAOAFx4Lg/l4NMJPoBvAaCzVNAwWb0R5N3KDw5a
 dE0gNPlrXjJuS4X3wljMN2soBxNgjjadGVuM/fCoT4k8PvAbFDqTde2vNpt2bYaA
 eVsvKWJsWfnWF5L1a5fsT5KL884rYRiY+IiMq69mHLmDDYb+N16rg0I7ymNnCrAv
 EeRA+uXGgqRaRNk6cM9P9dKx5lrjCH7nwnbl1WF9jG4v/okO3webGxMINu4QDf4Q
 ==
X-ME-Sender: <xms:_05CXq0CtvoQXJAcPrhrQMOIT1ST4XuqlYRm0tpBZDMidPaCvxz4ZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedvgddutddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:_05CXriOJZeHzY9O8vaqAZvXD-JoCRwm6Qcf6sUurLr_TUEMAx1QNg>
 <xmx:_05CXlqfjFeJENiJBc08Z3wzVMYqyq2OXWQN4srPF0JRVGOq4G5DwQ>
 <xmx:_05CXgp7eeiyHw7V9ufN1NbIxMP2Xu5q79kS7LUN2MVvQpF0UJ7OpA>
 <xmx:AE9CXkfzX29Ll92AO5dJHI3FkAIDopGKpsDxe4ohKkrmMgLiIG47xw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5427230600DC;
 Tue, 11 Feb 2020 01:51:43 -0500 (EST)
Date: Tue, 11 Feb 2020 07:51:41 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2] arm64: dts: allwinner: h6: orangepi-3: Add eMMC node
Message-ID: <20200211065141.2kn2gsg5kvzu7kl6@gilmour.lan>
References: <20200210174007.118575-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200210174007.118575-1-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_225145_374655_D26FB4DA 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============1734621782256007479=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1734621782256007479==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ip7qoenpyd2aql5h"
Content-Disposition: inline


--ip7qoenpyd2aql5h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 10, 2020 at 06:40:07PM +0100, Jernej Skrabec wrote:
> OrangePi 3 can optionally have 8 GiB eMMC (soldered on board). Because
> those pins are dedicated to eMMC exclusively, node can be added for both
> variants (with and without eMMC). Kernel will then scan bus for presence
> of eMMC and act accordingly.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
> Changes since v1:
> - don't make separate DT just for -emmc variant - add node to existing
>   orangepi 3 DT
>
>  arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> index c311eee52a35..1e0abd9d047f 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> @@ -144,6 +144,15 @@ brcm: sdio-wifi@1 {
>  	};
>  };
>
> +&mmc2 {
> +	vmmc-supply = <&reg_cldo1>;
> +	vqmmc-supply = <&reg_bldo2>;
> +	cap-mmc-hw-reset;
> +	non-removable;

Given that non-removable is documented as "Non-removable slot (like
eMMC); assume always present.", we should probably get rid of that
property?

Maxime

--ip7qoenpyd2aql5h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkJO/QAKCRDj7w1vZxhR
xfyQAQDzdcTDZGRSxQJIm3oA/QlF8QG2IrKgtCKGemsMjPqABQD+NO1FjcZSa0TE
tMAAZO2Qmyl/RlZtTR+iTc7WYemlvgw=
=ZKuN
-----END PGP SIGNATURE-----

--ip7qoenpyd2aql5h--


--===============1734621782256007479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1734621782256007479==--

