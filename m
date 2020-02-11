Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B50A6158AEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 08:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zxjAU4uwxHBF+rbw0CnqnPjCsb2lvaeO9v5EYEep1aw=; b=pcokGi5IWTxF9XYf3yRCM/bZx
	DV+hfyYYH7qZ/WC8DU2SkEX29P+LQbBOwo2zaOwI7YnEWNXiLIPkbWwNkJNB03xxxHNQ4oVHqmftY
	IbdT9LZrOtYcCX2ewowFsS9KgpILL8VLGYJ6J4onDicoDxfvFr6lT5VxJWn0JHcvhO5yhWmBTy7ZS
	jV7Lwlfc0Ackjo3AxTPHGHViz/1s9ntc3sizXx+fVnma413luwFR3xMT7lPlZ8RuDY4vv4yGhoLdC
	27oaBiKDbZto1xB+FACmDgs5d3wke3QzavhbeTOgPsgawW9WmmthbHD0ZBrzXqsZJybM2zu7QXbAc
	SXC91RUvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1QOl-0004tj-0G; Tue, 11 Feb 2020 07:55:59 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1QOd-0004tA-0O
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 07:55:52 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 5094C21EF0;
 Tue, 11 Feb 2020 02:55:46 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 11 Feb 2020 02:55:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=bDzaHqtwQUFZE+Dy4NRoFKxmNG5
 +GGPYxI+l8r1MwFQ=; b=YhsfNJtJ6Pb7W/ceDmfLt/on8tDZB0gCgQRgwuDDGKr
 ygTvj7uTGDj2NfguoIpZEaWVrGdbxo3W6BabhWKG/R1Jc4plK+EK0X5A+AZkdzFL
 mvP3mUWTiCywWtKpCqIYKul2GiVb0uIBCpgU6V6iCWvi9+NI+Ux8kka0q6RuE4lo
 m+jGENbJwV6lY6+Jx1ou4+zG1kXD3S6M0fweTIiYKYpTW12V16eMle3k6xxgfT81
 w0GV7yHcRDidikxTsfy8Ku1cwL9Ge3ecSfGqu6LMC9fVMK1qMNUOkpfQwQDIDT6i
 s7dNn8sN2TkYAj0VgZkvNpgkG+vj8Lr0gHY+u2xk4RQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=bDzaHq
 twQUFZE+Dy4NRoFKxmNG5+GGPYxI+l8r1MwFQ=; b=KhQvtpkmZQd4kmPcJ8Qerv
 FnmzHrBEYdzY+srav0m9FJqVKLTLrrdSjeZzsn5yEAnkAsLGUIbSUkAICqxWLwzF
 seevLmQGns8Y0Bm32oDqMHZurf49km5XF4Uc1UvpLM9gMgvrIQg50ztnw/gXT9F/
 Ww8TqKd/mzeeW1eYQOBR3mCiTJWUw03ezC62K60vBdowbY/4+nPJH7r3Xl+2bKM7
 O5C3v8nNPmjsd908u5HTt+aTSvZBHz8sR8f9vaqG3NK8QD0VqsF1TksiykaSfxPS
 vRMwAoZ+LFpLt8L+bLccTRP7vJ+L8oGZh6AHX3usoTyIhUjuKvlbmk7wodoVKfUg
 ==
X-ME-Sender: <xms:AV5CXjQalR8O__4Ob0LnWlz9SHjcdT4RG9-UlIXSob2kkLmUbB25Fg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedvgdduudefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:AV5CXgVsbY1u_VfbPPLc4e-bORlVs6jftb1rZy54XHzUSelZHq5beg>
 <xmx:AV5CXgqFhJwt7Aa5AXvDbi69uCmZZXlO-Evp3TF8cu1IRQOYh3MIqA>
 <xmx:AV5CXqVbypt3zfi2gjB1rv0TSCQ0sWqBlCzeOap_yfhv4mX8EYGztQ>
 <xmx:Al5CXhnGdPQFOuz3lLGZq9mjCxwvvQ6XRpfRzxN9s-hniL-oeQEkHA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0016E3280060;
 Tue, 11 Feb 2020 02:55:44 -0500 (EST)
Date: Tue, 11 Feb 2020 08:55:43 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Nikolay Borisov <nborisov@suse.com>
Subject: Re: [PATCH 2/3] arm64: dts: allwinner: a64: Add hwspinlock node
Message-ID: <20200211075543.ytsxizbysdosnx4p@gilmour.lan>
References: <20200210170143.20007-1-nborisov@suse.com>
 <20200210170143.20007-3-nborisov@suse.com>
MIME-Version: 1.0
In-Reply-To: <20200210170143.20007-3-nborisov@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_235551_407161_2D254B90 
X-CRM114-Status: GOOD (  12.33  )
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
Cc: linux-arm-kernel@lists.infradead.org, bjorn.andersson@linaro.org
Content-Type: multipart/mixed; boundary="===============8211053127759764422=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8211053127759764422==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zeuganoww73sgpth"
Content-Disposition: inline


--zeuganoww73sgpth
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Feb 10, 2020 at 07:01:42PM +0200, Nikolay Borisov wrote:
> Add a node describing the hwspinlock on A64.
>
> Signed-off-by: Nikolay Borisov <nborisov@suse.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 27e48234f1c2..01de89fc09cc 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -1182,5 +1182,14 @@
>  			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&osc24M>;
>  		};
> +
> +		hwspinlock: spinlock@1c18000 {

Nodes are supposed to be ordered by ascending physical address

> +			compatible = "allwinner,sun50i-a64-hwspinlock";
> +			reg = <0x01c18000 0x1000>;
> +			clocks = <&ccu CLK_BUS_SPINLOCK>;
> +			resets = <&ccu RST_BUS_SPINLOCK>;
> +			#hwlock-cells = <1>;
> +			status = "disabled";

Is there a reason to disable it?

Also, my understanding was that hwspinlocks were meant to be used by
client drivers, so surely we must tie them to other device nodes too,
right?

Maxime

--zeuganoww73sgpth
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkJd/wAKCRDj7w1vZxhR
xZV7AQC+e9bRs4sm1n0wez17MCuAP/kPdwifNJ29f2lEnNVFwgD/VJb+dv6qMs8q
VxpgHufQum5lLBELTL23mvRLSArP/QQ=
=vxgy
-----END PGP SIGNATURE-----

--zeuganoww73sgpth--


--===============8211053127759764422==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8211053127759764422==--

