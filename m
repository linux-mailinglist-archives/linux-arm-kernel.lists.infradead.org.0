Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BDA170796
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:24:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lZk+XkLztLJ70Yf+vFBEgGibWuZrSNtZscxmosqWtJ4=; b=ZrBS6mxg/4KwQ2S1YPKNs+49Q
	aPM05MFqUb7b4jfnPzhzCn1nN0NsTNSEQCa/E0xUlSP3pwa299tNmHE3mMhiK1chkP9oAVb9adcN+
	pxwTMWrACNVS5MN9alAREYYy+M+YdV9Yza/JxDllgqFNEHxSDBMLynycYZnZUpkATluZHVgwSFkZF
	4pwyOMKoPxepZXfyjASewR0zXrxRctxafH5MPILl41FUPY6vGgvOoy9r3ben/3MaMU01ONaWPVO5z
	xX+ojqdXg+FVriH8seNRBgS0daE1CGHEDBFk3Sf4oUt6yORkU4FcLQY3lSshZJ9+X5S+aAFL6gCAN
	cRePQ6bWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71MT-0005CR-6R; Wed, 26 Feb 2020 18:24:45 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j71MK-0005By-6P
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:24:38 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 935E761D8;
 Wed, 26 Feb 2020 13:24:34 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 26 Feb 2020 13:24:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=gV1crvvxr36zMBtfehWsFeB8WGj
 6uZV2sTGpY7aRnRQ=; b=Snb74y/dbC1RNmGdmuhKjwow+8MomytmQE9KgfEaCgr
 DTEx6wcMLuoGUo950JpAQZk7aNoWChFmkJfb8tbwQy2J9pxWw2U3wW4oReh6Ny0c
 0avg0AKB0oA/uR0qvAo7XW4/3KJF90gC/YRidB4j0NeySKkQcVe3K6tgxKq+3af8
 rnkIvP26k/KdRkeEPK0XJ3WVDLg+g0gv0yAf7X/NnvwXFnTi7XUlEONPZOnvQNQV
 xykuMf2GaRWX3qlrJxVIY9dUWho/wkMlePM/7J+np4HOj1nrC2bx9l2XQecZItsT
 3aOede4cweZnPRo8EuchHv3ETOes+lMiMhQ4cLgVppQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=gV1crv
 vxr36zMBtfehWsFeB8WGj6uZV2sTGpY7aRnRQ=; b=IZfzZzHIfEKvQOzjVxhv6k
 Qwi4loNtwZZTn8bXnWCScAXmj4sbwH8nK3G2YAItTS1cdy7qtMunMvHfq5hSdKZM
 z+h3M1QzTmDzGamuazRI306gUMTXkVajqY9jZxvqQ0Dk2UHicC+6H60MVGb/fIvu
 kEDkk+/k8zcEg/rb5i9Hfg/bPIm+hJiyD3BPFOYQHPIoRH6Lj7Vp+xH2mA365BmX
 JXRHVUdXHbnID6fHZVz+YlHH+awoYLsOn0AFPIsaeSIkveN5UaiJaitm2OiLdFm0
 WqqszslwQ0Yrt/syzpApPZfaPVFDU/MpPWtX0uZtf/vK+e8mTvIZeYZmoAJvkBtw
 ==
X-ME-Sender: <xms:4bdWXiDs2cUGG-tf-gFQkg4d6E5I_HnsWhS5kZfPRXtXEkzTixGnjA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrleeggdduudefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpeguvghvihgtvghtrhgvvgdrohhrghdpghhithhhuhgsrdgtohhmnecukfhppeeltddr
 keelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:4bdWXj9BQCe5GnYNTRgl8K918CEqwQCHYkME02c_85ZO1fNnsIyvzA>
 <xmx:4bdWXi9qjG3-ou-Gf481UUek3utSlsOFAXPLYLF7WtFmHNJ9UgIQNA>
 <xmx:4bdWXqfzTVouAebt0tTNz01vnzH7u4dpgiDCCvfZ19zwqMo1s4tonA>
 <xmx:4rdWXhRY1M7h650ph0r505zfVFyjhDWtpaJWUe0Qq0l-sSy0ZDDkQg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 39B363060D1A;
 Wed, 26 Feb 2020 13:24:33 -0500 (EST)
Date: Wed, 26 Feb 2020 19:24:31 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 05/13] dt-bindings: clock: Convert Calxeda clock bindings
 to json-schema
Message-ID: <20200226182431.xmmgbtxsa6qovnsv@gilmour.lan>
References: <20200226180901.89940-1-andre.przywara@arm.com>
 <20200226180901.89940-6-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200226180901.89940-6-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_102436_381538_F7DA7D78 
X-CRM114-Status: GOOD (  20.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Eric Auger <eric.auger@redhat.com>, soc@kernel.org,
 Will Deacon <will@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5088056936211036427=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5088056936211036427==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oxpe5iexw42u333m"
Content-Disposition: inline


--oxpe5iexw42u333m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 26, 2020 at 06:08:53PM +0000, Andre Przywara wrote:
> Convert the Calxeda clock bindings to DT schema format using json-schema.
>
> This just covers the actual PLL and divider clock nodes. In the actual
> DTs they are somewhat unconnected (no ranges or bus compatible) children
> of the sregs node, but for the actual clock bindings this is not
> relevant.
>
> One oddity is that the addresses are relative to the parent node,
> without that being pronounced using a ranges property.
> But this is too late to fix now.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
>
> ---
>  .../devicetree/bindings/clock/calxeda.txt     | 17 ----
>  .../devicetree/bindings/clock/calxeda.yaml    | 83 +++++++++++++++++++
>  2 files changed, 83 insertions(+), 17 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/calxeda.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/calxeda.yaml
>
> diff --git a/Documentation/devicetree/bindings/clock/calxeda.txt b/Documentation/devicetree/bindings/clock/calxeda.txt
> deleted file mode 100644
> index 0a6ac1bdcda1..000000000000
> --- a/Documentation/devicetree/bindings/clock/calxeda.txt
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -Device Tree Clock bindings for Calxeda highbank platform
> -
> -This binding uses the common clock binding[1].
> -
> -[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
> -
> -Required properties:
> -- compatible : shall be one of the following:
> -	"calxeda,hb-pll-clock" - for a PLL clock
> -	"calxeda,hb-a9periph-clock" - The A9 peripheral clock divided from the
> -		A9 clock.
> -	"calxeda,hb-a9bus-clock" - The A9 bus clock divided from the A9 clock.
> -	"calxeda,hb-emmc-clock" - Divided clock for MMC/SD controller.
> -- reg : shall be the control register offset from SYSREGs base for the clock.
> -- clocks : shall be the input parent clock phandle for the clock. This is
> -	either an oscillator or a pll output.
> -- #clock-cells : from common clock binding; shall be set to 0.
> diff --git a/Documentation/devicetree/bindings/clock/calxeda.yaml b/Documentation/devicetree/bindings/clock/calxeda.yaml
> new file mode 100644
> index 000000000000..0ad66af0eb0c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/calxeda.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/calxeda.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Device Tree Clock bindings for Calxeda highbank platform
> +
> +description: |
> +  This binding covers the Calxeda SoC internal peripheral and bus clocks
> +  as used by peripherals. The clocks live inside the "system register"
> +  region of the SoC, so are typically presented as children of an
> +  "hb-sregs" node.
> +
> +maintainers:
> +  - Andre Przywara <andre.przywara@arm.com>
> +
> +properties:
> +  "#clock-cells":
> +    const: 0
> +
> +  compatible:
> +    enum:
> +      - calxeda,hb-pll-clock
> +      - calxeda,hb-a9periph-clock
> +      - calxeda,hb-a9bus-clock
> +      - calxeda,hb-emmc-clock
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array

There's no need to specify the type, it's already checked by a schemas
there:
https://github.com/devicetree-org/dt-schema/blob/master/schemas/clock/clock.yaml

Maxime

--oxpe5iexw42u333m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXla33wAKCRDj7w1vZxhR
xVCCAP9FAtviN9vMSzmOMnEaf0clsEnPEWJoqlOFffHEYfYkVQD+PsaFiKiidYgC
Vj9cjeIjaMRIA5EoTsMzHLWl1v8W6A8=
=mtDo
-----END PGP SIGNATURE-----

--oxpe5iexw42u333m--


--===============5088056936211036427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5088056936211036427==--

