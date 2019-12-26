Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0B512AB8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 11:13:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aLzEhsBKJaqY9W9Gmt40XIZwZG7mCw6lkFjwsgJfSg0=; b=FiZ8y5T/KTNdVz9LH5nph+QvG
	y+rDNjUt7+XwW4UPB5IVIKnD1PN9AQKKsZ8jJ3XhaCFCvpGxyjUStsIeB5V+GuDBt0gEun6F9/Gkb
	wYdcdi0qlqJq2AOqZeXHdKq8mIsi4nC5X1h5vcXERbGy3hHxiMPvYzi8w6V0yvQP+Ge+lOvLT1y69
	qebE/b9gvvGbSmNjWPtTbyE2DHMHwjhWoiV2uM6qCQnMbCh9nNGDsBs2ShdWFiTs7frkqgMzlvUBc
	59b4EN+hfIJ5liXpEkSdWA3oButl4+WCIbCV7fnvH+4LaPoZZy/YFzt8qmHgX16GmS8xNfO6JAtqz
	qv8kRzvGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikQ8z-0002Ua-9N; Thu, 26 Dec 2019 10:13:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikQ8m-0002Tx-S3
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 10:13:15 +0000
Received: from localhost (lfbn-lyo-1-633-204.w90-119.abo.wanadoo.fr
 [90.119.206.204])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C39CD206CB;
 Thu, 26 Dec 2019 10:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577355192;
 bh=XKgSXeOZ0xu54J+uvOH0sgeJ1AtiZFyRjKDwwibbcW0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KwTdXUr1oybIqcY+zz8Tn7EC3Hclm9AVvfiTY3R0W08IEvfxOAeOIFuevCq/W7lkK
 EfgIdzfGctRyFoUIaNcOdrihgZEBrD+Q/erSrApvVu15Tr0XI8y85f2mb/7YVqPjKu
 fU0bQSkvA0Rkxj0LCb1S+JLLDXGl9GV8PJ/aSnX4=
Date: Thu, 26 Dec 2019 11:14:33 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v5 2/8] dt-bindings: mailbox: Add a sun6i message box
 binding
Message-ID: <20191226101433.is5jqzkn3f7qv6jt@hendrix.home>
References: <20191215042455.51001-1-samuel@sholland.org>
 <20191215042455.51001-3-samuel@sholland.org>
 <20191216140422.on4bredklgdxywbw@gilmour.lan>
 <d3a1c7c2-953a-cbfe-970e-c00f9a9f5742@sholland.org>
MIME-Version: 1.0
In-Reply-To: <d3a1c7c2-953a-cbfe-970e-c00f9a9f5742@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_021312_948943_CFA2316C 
X-CRM114-Status: GOOD (  23.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 linux-sunxi@googlegroups.com, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7545292835992298365=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7545292835992298365==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="emgowsokxyl7s5kc"
Content-Disposition: inline


--emgowsokxyl7s5kc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Dec 16, 2019 at 01:45:08PM -0600, Samuel Holland wrote:
> On 12/16/19 8:04 AM, Maxime Ripard wrote:
> > Hi,
> >
> > On Sat, Dec 14, 2019 at 10:24:49PM -0600, Samuel Holland wrote:
> >> This mailbox hardware is present in Allwinner sun6i, sun8i, sun9i, and
> >> sun50i SoCs. Add a device tree binding for it. As it has only been
> >> tested on the A83T, A64, H3/H5, and H6 SoCs, only those compatibles are
> >> included.
> >>
> >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> >> ---
> >>  .../mailbox/allwinner,sun6i-a31-msgbox.yaml   | 78 +++++++++++++++++++
> >>  1 file changed, 78 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml b/Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
> >> new file mode 100644
> >> index 000000000000..dd746e07acfd
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
> >> @@ -0,0 +1,78 @@
> >> +# SPDX-License-Identifier: GPL-2.0
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/mailbox/allwinner,sun6i-a31-msgbox.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Allwinner sunxi Message Box
> >> +
> >> +maintainers:
> >> +  - Samuel Holland <samuel@sholland.org>
> >> +
> >> +description: |
> >> +  The hardware message box on sun6i, sun8i, sun9i, and sun50i SoCs is a
> >> +  two-user mailbox controller containing 8 unidirectional FIFOs. An interrupt
> >> +  is raised for received messages, but software must poll to know when a
> >> +  transmitted message has been acknowledged by the remote user. Each FIFO can
> >> +  hold four 32-bit messages; when a FIFO is full, clients must wait before
> >> +  attempting more transmissions.
> >> +
> >> +  Refer to ./mailbox.txt for generic information about mailbox device-tree
> >> +  bindings.
> >> +
> >> +properties:
> >> +  compatible:
> >> +     items:
> >> +      - enum:
> >> +          - allwinner,sun8i-a83t-msgbox
> >> +          - allwinner,sun8i-h3-msgbox
> >> +          - allwinner,sun50i-a64-msgbox
> >> +          - allwinner,sun50i-h6-msgbox
> >> +      - const: allwinner,sun6i-a31-msgbox
> >
> > This will fail for the A31, since it won't have two compatibles but
> > just one.
>
> You asked me earlier to only include compatibles that had been tested, so I did.
> This hasn't been tested on the A31, so there's no A31-only compatible.

The binding is the description, and that description already matches
the A31 compatible, and it's completely abstract from whether we have
software to support it.

We have bindings that have no drivers in the tree for example, but are
just there to make the representation complete.

In this case, we shouldn't enable it in the A31 DTSI, but we should
document the binding properly.

> >> +  '#mbox-cells':
> >> +    const: 1
> >
> > However, you should document what the argument is about?
>
> Ok. "Number of cells used to encode a mailbox specifier" should work.

It's not really what I meant, what I meant is what is is that
specifier you're talking about here. The customers' mailbox properties
will have a phandle and a number: what is this number representing?

Maxime

--emgowsokxyl7s5kc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXgSICQAKCRDj7w1vZxhR
xcTaAP9BWdxgvK6iqBRFqkPE4oDAfjIRlh8hIgMDnZ2PpAYrggEAxyvUS1jgv0e/
PC/VTzMBZCU8znd1SCHWpM660gfLeQI=
=zc+u
-----END PGP SIGNATURE-----

--emgowsokxyl7s5kc--


--===============7545292835992298365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7545292835992298365==--

