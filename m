Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F194104C5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 08:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=80pEAronZu8q3hqDHGf5sdZUhZzAUAV8IOewKSJs2sg=; b=t2BE5wuwOP7pAuxXffllqLAlY
	KX2AblykphOLXWX7Tvdpx4TaaRwaTRduP17j6GrerfK33NldYYX+PMbJhZs1yXvn+cBJsInTJ0qbZ
	RFfPOO1Bbg4w2t0vlQEMfeT0sZ8nJ6Pqqh6bqA8a19gkp8E2tN0U1ajytMlOhD17w7Kyvp3mdm5rW
	S6uq08FTncciEoGF5FLyp0ksPpqll6kg2tt23EoTZ1nhbAPsE9BVmDUvlYjjqX9hVf0wK7SyFzSNq
	Ep4v/3pw0Z4tcWwIkPLdKGujssuhabFOn3/swPQX9XdXx+XiRS0ztg3H+mEz9+E1KXB40DbasiWxu
	cuiNt7jEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXgnb-0006gJ-VI; Thu, 21 Nov 2019 07:22:43 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXgnT-0006eF-KB
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 07:22:37 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 1D5A022162;
 Thu, 21 Nov 2019 02:22:34 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 21 Nov 2019 02:22:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=MwfkCwkdcRiv+8/3qpqEvwuZ4rX
 zWItWd1EmUBW3PsQ=; b=nTPUFYDtRJCL69rq7UGBDxTE4CFo6gjISw0QPf7Jlii
 AwlcXKYbt1aFR97qKYf9xOUiWkE0Hu+nK2uHq/oN81kSd0Ny4uZ5oO1Iz6y0HDb4
 aRGwYm7gH0NlIcN9h5cJ7CR1eQUm0DsC8FeMNYkIw38FlYnqfJCkdu3TzVxkGCpw
 bikCvEANpO6NnwID5QO5R5p+NKYzAOpg3D9CfJfpeRQnwGKoEN3epnGedaW9HFgT
 4PozloX8drniV01oTHX+TqHyeOMECYD2ge9N0qlw5qk+jnMuqLbO/WTqP4UUbUc8
 TP+Lt6ByICVsgza+JkHjoIcUSz3IbLYv11SKGOpTe8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=MwfkCw
 kdcRiv+8/3qpqEvwuZ4rXzWItWd1EmUBW3PsQ=; b=qfbmpe6R3TX5JHuGrF7eHt
 oRmjVwk+nis+IN3Azq6BzsEqG64iO2aoUWWcLXZ36gGMMmFJWpJ9CLCzllz0Ute1
 dLjxXfmDG3V6Nbq4l2dZx0dVEv8g2AutYWYvy6z5Y1Hi/CEcDk0MjE6e5D2LfKdw
 9Hy0p/xKik3homV0Gg3RwpCV1cxvBDOWOGQ5B9lLFuC1R1t+n/0pxwsbXYqxixEY
 R5W94+86Bl7zDr4uu6GBzx7p0ESQbjFuJPbo+F7RQCb95ViTLCeQT76YwXeq11lI
 dw/AdMCy4W69ipx5XZn3Nmre6CXR3BK0r5MjWDvrc25oKV3sNJTDD+DLM044Mmaw
 ==
X-ME-Sender: <xms:OTvWXUBlmG9hkuO4_VN79i0gzZ7hr1svhM66wWdTQ2ouZzs6z8_1aQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudehuddguddtjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujggfsehgtderredtredvnecuhfhrohhmpeforgig
 ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppe
 eltddrkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvges
 tggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:OTvWXbqQOWB03V7hpeECWTCtOXKgMKs5xkITPx7T2tXrQJD7cA5d9A>
 <xmx:OTvWXaiS0-QdbRvkUBJShPuAchWoR04sKbX5Z6K-41L2ljGYB5kR9w>
 <xmx:OTvWXQyqBJr9aSoNFkGyx65z6IXFzHny7k9GwR2_jVYO927Wh4kGzQ>
 <xmx:OjvWXZgkZWSNyAp8HMbC4BttzCu6ratVtm1mi80D-hv-XopAyWzkLw>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 04E0180061;
 Thu, 21 Nov 2019 02:22:32 -0500 (EST)
Date: Thu, 21 Nov 2019 08:22:30 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 1/3] arm64: dts: allwinner: H6: Add PMU mode
Message-ID: <20191121072230.GD4345@gilmour.lan>
References: <20191121011835.8467-1-andre.przywara@arm.com>
 <20191121011835.8467-2-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20191121011835.8467-2-andre.przywara@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_232235_995482_867C071D 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6009861646387049983=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6009861646387049983==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="u19xsR7broAOK+6q"
Content-Disposition: inline


--u19xsR7broAOK+6q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Nov 21, 2019 at 01:18:33AM +0000, Andre Przywara wrote:
> Add the Performance Monitoring Unit (PMU) device tree node to the H6
> .dtsi, which tells DT users which interrupts are triggered by PMU
> overflow events on each core. The numbers come from the manual and have
> been checked in U-Boot and with perf in Linux.
>
> Tested with perf record and taskset on a Pine H64.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Queued all three patches for 5.6, thanks for taking the time to do
this.

> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> index 29824081b43b..86a77b1734e0 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -70,6 +70,16 @@
>  		clock-output-names = "ext_osc32k";
>  	};
>
> +        pmu {

This was indented with spaces however, unlike the rest of the DT. I've
fixed it while applying.

Maxime

--u19xsR7broAOK+6q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXdY7NgAKCRDj7w1vZxhR
xYXuAQDv9VC09OZ7z6KgiULlHRC5xWKX7VRmpxFLQMtSRcAaQQD9G6OgTaAepAWN
Wn+sewnoGCWbGGCUlkIDV6UjLVOaYQQ=
=tclI
-----END PGP SIGNATURE-----

--u19xsR7broAOK+6q--


--===============6009861646387049983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6009861646387049983==--

