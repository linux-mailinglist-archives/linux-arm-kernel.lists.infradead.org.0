Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8540F125D5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:12:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BQPXvFMHA+UVFqBCjMSzf/cp8iNrmVfBGR9ihf+NRzg=; b=jyz2E9/0jJADyIGZdAXUJ8T99
	jUIJgr99XPG0QUX5Y9YZLXaykA47RfnmKTpsa+8o7jUDpaM+O4qXEJOWk5QQGg+Wxms7inimfV9nU
	rNjPipxMeTekkDwWLNgd/orZMbVWT6OSkG/wVzV7PvKBhckSnTZNDHUvErFuxlRMGXVrazoF6z181
	J6eOyUoVdOHmN47fg1YLPuJyhUI/+xsvbEWvdsydwhwOfZyo9+Si+mz3ykNtKe8lMIZXaxO/ug1Z4
	74ApAJ3xZSfd1oV6+FFWo2qesYgn0FBD6skUOPnz0Hax4xnjve57DtdIePqFqoaAR8vOnSo6Z755J
	qXz3NQQMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihrrc-000405-6I; Thu, 19 Dec 2019 09:12:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihrrR-0003zb-Mu
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 09:12:47 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82AEC21D7D;
 Thu, 19 Dec 2019 09:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576746765;
 bh=ZbxHfG9y4vIMWKbc3+hFLIbewsQNOoX8QrADlrcLuWU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t2alWsEOvF8DCjRjimhRTAdpzJWLpz/GTNQyHJISxzvJfKdtGuDmaCglDwOgE1Lyf
 XOnOercEVcK2Pu111Fo+Q42qArfYxIvHSt3BQTYvn0p6XEfrpnsG1PhyUTwDbGlrXV
 kbtmCaSBCgmtTdaviJG/wPa3SO3LE2F5sTLB/YFc=
Date: Thu, 19 Dec 2019 10:12:42 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v7 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
Message-ID: <20191219091242.a3etnhybf3sfrmf5@gilmour.lan>
References: <20191218042121.1471954-1-anarsoul@gmail.com>
 <20191218042121.1471954-3-anarsoul@gmail.com>
 <20191218220037.4g6pzdvrhroaj4qu@gilmour.lan>
 <CA+E=qVdfV5LKBEar8eT286+ADrpygEkbe5OX1GVRw+khatrJhA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+E=qVdfV5LKBEar8eT286+ADrpygEkbe5OX1GVRw+khatrJhA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_011245_792235_A670DDD6 
X-CRM114-Status: GOOD (  20.00  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6665419260178335527=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6665419260178335527==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fd7bvdcala2bzv3x"
Content-Disposition: inline


--fd7bvdcala2bzv3x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 18, 2019 at 02:27:00PM -0800, Vasily Khoruzhick wrote:
> On Wed, Dec 18, 2019 at 2:00 PM Maxime Ripard <mripard@kernel.org> wrote:
> > On Tue, Dec 17, 2019 at 08:21:16PM -0800, Vasily Khoruzhick wrote:
> > > From: Yangtao Li <tiny.windzz@gmail.com>
> > >
> > > sun8i-thermal driver supports thermal sensor in wide range of Allwinner
> > > SoCs. Add YAML schema for its bindings.
> > >
> > > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > > ---
> > >  .../thermal/allwinner,sun8i-a83t-ths.yaml     | 146 ++++++++++++++++++
> > >  1 file changed, 146 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> > > new file mode 100644
> > > index 000000000000..8768c2450633
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> > > @@ -0,0 +1,146 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/thermal/allwinner,sun8i-a83t-ths.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Allwinner SUN8I Thermal Controller Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Yangtao Li <tiny.windzz@gmail.com>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - allwinner,sun8i-a83t-ths
> > > +      - allwinner,sun8i-h3-ths
> > > +      - allwinner,sun8i-r40-ths
> > > +      - allwinner,sun50i-a64-ths
> > > +      - allwinner,sun50i-h5-ths
> > > +      - allwinner,sun50i-h6-ths
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  resets:
> > > +    maxItems: 1
> > > +
> > > +  nvmem-cells:
> > > +    maxItems: 1
> > > +    description: Calibration data for thermal sensors
> > > +
> > > +  nvmem-cell-names:
> > > +    const: calibration
> > > +
> > > +allOf:
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            const: allwinner,sun50i-h6-ths
> > > +
> > > +    then:
> > > +      properties:
> > > +        clocks:
> > > +          minItems: 1
> > > +          maxItems: 1
> >
> > When minItems and maxItems are equal, you can only set one, the other
> > will be filled automatically.
>
> Is it documented anywhere? I have a feeling like I'm shooting in the
> dark. So far I've read Documentation/devicetree/writing-schema.rst,
> Documentation/devicetree/bindings/example-schema.yaml and few other
> schemas for inspiration but yet I don't have solid understanding how
> it's supposed to be written. Examples are pretty scarce and figuring
> out why certain construction doesn't work is pretty tricky.

It's somewhat documented with
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/example-schema.yaml#n80
and
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/example-schema.yaml#n102

But I guess it wasn't clear enough? Feel free to update it to
something that would be better

Maxime

--fd7bvdcala2bzv3x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfs/CgAKCRDj7w1vZxhR
xWnZAQDQjjz1zdDw2o0CKbXeWoqNzvCd9sNbulu3JkcPz9GjDAD/Z9Zm7vB9ZgYg
ilf8Y1BHYMty/J1hDT69ZHP/Ayu9PgY=
=KdAM
-----END PGP SIGNATURE-----

--fd7bvdcala2bzv3x--


--===============6665419260178335527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6665419260178335527==--

