Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1086766A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1sMgtoCjAADCzIAYolX46sHVO6fjtoc4YRRvPQnE0E=; b=TqWBJHjA/iDTZR
	Umo6tN5ddXAmOGSLFjTHf706n2qKRRHSpiL07yj4dyrtmzTW1DP2upN7cH5j27jbRk2b6d2zcTO45
	zyXjDf+dRXwB5Q/GMgX58P4T2z6V/Ue26eYDpfZQtPYbiBMmOT4bYH6r1oH9wHY9380zfhA1MDO9t
	Qgb1JlOYOrAVdKjDTjclltXSJVm2PXuCCNhWa4j3SWP6oll7HQ3hZNL7pcNQD+colxDgHACIYA9g+
	JlEqUr8HExBQ4UIPd15rxKputQw4SANkJ4nP6NXIW2SgE2vZdDBuHrL0jJ/yN/s9DIXVu8Ha+JeDc
	Ti2yVuYtIuAXxywc7Uvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzkG-0007uT-HZ; Fri, 26 Jul 2019 12:54:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzjx-0007rn-A4
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:54:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id y4so54366010wrm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 05:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=zM09sw2mge+SQJ/dkUCgGryrhGvD/50/pwMZAHGvtdE=;
 b=HP04bG7UUn/40T8KeRZpcMYv0bVm/9wExt2hbTo7ft2WDYx1LIV1oi1nM77t7flwKG
 OIXyF2pOt66IX7pAna70XlXHjoWOWZc1aON2H7Vn+7JaHgKb5mDjAvIvDBCuh32Uh27e
 aBZIkQEXhSyDWRsY4rJODFtHY6uR+7LuFHdF4OBId6uu9ya2jgPG21j2DmFPOsBuBP2R
 sYQKfjj3cY2eEg1tkmcfTOOXTAZaB/tFSL8Mem6mdLDJrByVODcYJuA/GTPfr4nSMHLb
 LN1S2lC0G/9CXlaXc1tR9YgmQhgPiQAU0d3D9gJrfzKLr16kWeQ4tVAMESwsYVBc4l4O
 fFJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=zM09sw2mge+SQJ/dkUCgGryrhGvD/50/pwMZAHGvtdE=;
 b=RPakWO00/Ihy73ZyfArG9V/xbgQb5cFLQT2KQA7eWxyk0cjBl6slnSPf5tzmduERYO
 Oi9p9oIx0wr+IibZUDsbUMyCRfNGY8WbXPROx0+TosIibKXWYHG05jnBeq2ySqx14liY
 dctkJCknsDOmFiqWKOkyH5/jxeQ/064EQxBrS71+YxGLXwPc8w4yn8QNkbLjeKuboFFY
 dZcEhEs9QYzKv1VvUOhF3ovK1ugeXJJs1mluNNegP82lzcZzxXxUF30A727K+8sPV1a9
 90wrjNmtrbBUPvHVPEbIE792rtPvLK0mgBph4aImp6J6gC+2+vGo4gDPx9bGwREei7dz
 UoyQ==
X-Gm-Message-State: APjAAAUnhRxksRfsxEBapo81z+pIvoFwSxag7NFazIcEoF4yNOnsZLCf
 NcauPVJBcsntOf4G86ApI8QOAQ==
X-Google-Smtp-Source: APXvYqyLQwQihi2zuCw1a4dIGsqBppyZjq70RkBd4dJPH1h1Qb4gYh91igcpNqGd3ffnC7Jp9bBcQQ==
X-Received: by 2002:a05:6000:1186:: with SMTP id
 g6mr91773053wrx.17.1564145667866; 
 Fri, 26 Jul 2019 05:54:27 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n14sm96819304wra.75.2019.07.26.05.54.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 05:54:27 -0700 (PDT)
Date: Fri, 26 Jul 2019 14:54:24 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: baylibre-upstreaming@groups.io
Subject: Re: [PATCH 1/4] dt-bindings: crypto: Add DT bindings documentation
 for amlogic-crypto
Message-ID: <20190726125424.GA20366@Red>
References: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
 <1564083776-20540-2-git-send-email-clabbe@baylibre.com>
 <CAL_JsqLbYwRpNWHGkYbomWLMpum_DXW4OjNNRrwTRM=w86dONw@mail.gmail.com>
 <15B4F061F360B2F0.8182@groups.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15B4F061F360B2F0.8182@groups.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_055429_574343_A2FB4AF3 
X-CRM114-Status: GOOD (  20.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Herbert Xu <herbert@gondor.apana.org.au>, Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, linux-amlogic@lists.infradead.org,
 David Miller <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 01:07:47PM +0200, Corentin Labbe via Groups.Io wrot=
e:
> On Thu, Jul 25, 2019 at 04:55:30PM -0600, Rob Herring wrote:
> > On Thu, Jul 25, 2019 at 1:43 PM Corentin Labbe <clabbe@baylibre.com> wr=
ote:
> > >
> > > This patch adds documentation for Device-Tree bindings for the
> > > Amlogic GXL cryptographic offloader driver.
> > >
> > > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > > ---
> > >  .../bindings/crypto/amlogic-gxl-crypto.yaml   | 45 +++++++++++++++++=
++
> > =

> > Follow the compatible string for the filename: amlogic,gxl-crypto.yaml
> > =

> > >  1 file changed, 45 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/crypto/amlogic-=
gxl-crypto.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/crypto/amlogic-gxl-cry=
pto.yaml b/Documentation/devicetree/bindings/crypto/amlogic-gxl-crypto.yaml
> > > new file mode 100644
> > > index 000000000000..41265e57c00b
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/crypto/amlogic-gxl-crypto.yaml
> > > @@ -0,0 +1,45 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > =

> > Dual (GPL-2.0 OR BSD-2-Clause) is preferred for new bindings. Not a
> > requirement though.
> > =

> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/crypto/amlogic-gxl-crypto.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Amlogic GXL Cryptographic Offloader
> > > +
> > > +maintainers:
> > > +  - Corentin Labbe <clabbe@baylibre.com>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > =

> > Don't need 'oneOf' when there is only 1.
> > =

> > > +      - const: amlogic,gxl-crypto
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    maxItems: 1
> > > +
> > > +  clock-names:
> > > +    const: blkmv
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - interrupts
> > > +  - clocks
> > > +  - clock-names
> > > +
> > > +examples:
> > > +  - |
> > > +    crypto: crypto@c883e000 {
> > > +        compatible =3D "amlogic,gxl-crypto";
> > > +        reg =3D <0x0 0xc883e000 0x0 0x36>;
> > =

> > This should throw errors because the default size on examples are 1
> > cell. But validating the examples with the schema only just landed in
> > 5.3-rc1.
> > =

> > > +        interrupts =3D <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>,
> > > +            <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
> > =

> > This doesn't match the schema.
> > =

> > > +        clocks =3D <&clkc CLKID_BLKMV>;
> > > +        clock-names =3D "blkmv";
> > > +    };
> > > --
> > > 2.21.0
> > >
> =

> Hello
> =

> I will fix all your remarks.
> I have tried to valide them but fail to do it:
> make ARCH=3Darm64 CROSS_COMPILE=3Daarch64-unknown-linux-gnu- KBUILD_OUTPU=
T=3D~/crossbuild/next/arm64/default/defconfig/ dt_binding_check
> make[1]=A0: on entre dans le r=E9pertoire =AB=A0/usr/src/crossbuild/next/=
arm64/default/defconfig=A0=BB
> arch/arm64/Makefile:56: CROSS_COMPILE_COMPAT not defined or empty, the co=
mpat vDSO will not be built
>   GEN     Makefile
> scripts/kconfig/conf  --syncconfig Kconfig
> arch/arm64/Makefile:56: CROSS_COMPILE_COMPAT not defined or empty, the co=
mpat vDSO will not be built
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
> /linux-next/Documentation/devicetree/bindings/arm/atmel-at91.yaml: ignori=
ng, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/atmel-at91.yaml
> /linux-next/Documentation/devicetree/bindings/arm/axxia.yaml: ignoring, e=
rror parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/axxia.yaml
> /linux-next/Documentation/devicetree/bindings/arm/amlogic.yaml: ignoring,=
 error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/amlogic.yaml
> /linux-next/Documentation/devicetree/bindings/arm/renesas.yaml: ignoring,=
 error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/renesas.yaml
> /linux-next/Documentation/devicetree/bindings/arm/sirf.yaml: ignoring, er=
ror parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/sirf.yaml
> /linux-next/Documentation/devicetree/bindings/arm/spear.yaml: ignoring, e=
rror parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/spear.yaml
> /linux-next/Documentation/devicetree/bindings/arm/qcom.yaml: ignoring, er=
ror parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/qcom.yaml
> /linux-next/Documentation/devicetree/bindings/arm/pmu.yaml: ignoring, err=
or parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/pmu.yaml
> /linux-next/Documentation/devicetree/bindings/arm/digicolor.yaml: ignorin=
g, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/digicolor.yaml
> /linux-next/Documentation/devicetree/bindings/arm/sunxi.yaml: ignoring, e=
rror parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/sunxi.yaml
> /linux-next/Documentation/devicetree/bindings/arm/zte.yaml: ignoring, err=
or parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/zte.yaml
> /linux-next/Documentation/devicetree/bindings/arm/altera/socfpga-clk-mana=
ger.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/altera/socfpga-clk-manager.yaml
> /linux-next/Documentation/devicetree/bindings/arm/cpus.yaml: ignoring, er=
ror parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/cpus.yaml
> /linux-next/Documentation/devicetree/bindings/arm/rda.yaml: ignoring, err=
or parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/rda.yaml
> /linux-next/Documentation/devicetree/bindings/arm/psci.yaml: ignoring, er=
ror parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/psci.yaml
> /linux-next/Documentation/devicetree/bindings/arm/calxeda.yaml: ignoring,=
 error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/calxeda.yaml
> /linux-next/Documentation/devicetree/bindings/arm/ti/nspire.yaml: ignorin=
g, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/ti/nspire.yaml
> /linux-next/Documentation/devicetree/bindings/arm/ti/ti,davinci.yaml: ign=
oring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/ti/ti,davinci.yaml
> /linux-next/Documentation/devicetree/bindings/arm/fsl.yaml: ignoring, err=
or parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/fsl.yaml
> /linux-next/Documentation/devicetree/bindings/arm/xilinx.yaml: ignoring, =
error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/xilinx.yaml
> /linux-next/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml: igno=
ring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/intel-ixp4xx.yaml
> /linux-next/Documentation/devicetree/bindings/arm/altera.yaml: ignoring, =
error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/altera.yaml
> /linux-next/Documentation/devicetree/bindings/arm/rockchip.yaml: ignoring=
, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/rockchip.yaml
> /linux-next/Documentation/devicetree/bindings/arm/mediatek.yaml: ignoring=
, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/mediatek.yaml
> /linux-next/Documentation/devicetree/bindings/arm/vt8500.yaml: ignoring, =
error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/vt8500.yaml
> /linux-next/Documentation/devicetree/bindings/arm/al,alpine.yaml: ignorin=
g, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/al,alpine.yaml
> /linux-next/Documentation/devicetree/bindings/arm/l2c2x0.yaml: ignoring, =
error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/l2c2x0.yaml
> /linux-next/Documentation/devicetree/bindings/arm/moxart.yaml: ignoring, =
error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/moxart.yaml
> /linux-next/Documentation/devicetree/bindings/arm/sti.yaml: ignoring, err=
or parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/sti.yaml
> /linux-next/Documentation/devicetree/bindings/arm/primecell.yaml: ignorin=
g, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/primecell.yaml
> /linux-next/Documentation/devicetree/bindings/arm/bitmain.yaml: ignoring,=
 error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/bitmain.yaml
> /linux-next/Documentation/devicetree/bindings/arm/socionext/milbeaut.yaml=
: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/socionext/milbeaut.yaml
> /linux-next/Documentation/devicetree/bindings/arm/stm32/stm32.yaml: ignor=
ing, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/stm32/stm32.yaml
> /linux-next/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml: ignor=
ing, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/nxp/lpc32xx.yaml
> /linux-next/Documentation/devicetree/bindings/arm/tegra.yaml: ignoring, e=
rror parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/arm/tegra.yaml
> /linux-next/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb=
.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/bus/allwinner,sun8i-a23-rsb.yaml
> /linux-next/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de=
2.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/bus/allwinner,sun50i-a64-de2.yaml
> /linux-next/Documentation/devicetree/bindings/clock/milbeaut-clock.yaml: =
ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/clock/milbeaut-clock.yaml
> /linux-next/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-c=
cu.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/clock/allwinner,sun4i-a10-ccu.yaml
> /linux-next/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml: ig=
noring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/clock/imx8mn-clock.yaml
> /linux-next/Documentation/devicetree/bindings/clock/fixed-factor-clock.ya=
ml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/clock/fixed-factor-clock.yaml
> /linux-next/Documentation/devicetree/bindings/clock/fixed-clock.yaml: ign=
oring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/clock/fixed-clock.yaml
> /linux-next/Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.y=
aml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/crypto/amlogic,gxl-crypto.yaml
> /linux-next/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-=
crypto.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/crypto/allwinner,sun4i-a10-crypto.yaml
> /linux-next/Documentation/devicetree/bindings/display/simple-framebuffer.=
yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/simple-framebuffer.yaml
> /linux-next/Documentation/devicetree/bindings/display/allwinner,sun6i-a31=
-mipi-dsi.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/pda,91-00156-=
a0.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/pda,91-00156-a0.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/bananapi,s070=
wv20-ct16.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/bananapi,s070wv20-ct16.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/lvds.yaml: ig=
noring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/lvds.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/panel-common.=
yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/panel-common.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/armadeus,st07=
00-adapt.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/armadeus,st0700-adapt.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/sgd,gktw70sda=
e4se.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/sgd,gktw70sdae4se.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/ronbo,rb070d3=
0.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/ronbo,rb070d30.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/tpo,tpg110.ya=
ml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/tpo,tpg110.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/ampire,am-480=
272h3tmqw-t01h.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/ampire,am-480272h3tmqw-t01h.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/innolux,ee101=
ia-01d.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/innolux,ee101ia-01d.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/mitsubishi,aa=
121td01.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/mitsubishi,aa121td01.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/mitsubishi,aa=
104xd12.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/mitsubishi,aa104xd12.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/raspberrypi,7=
inch-touchscreen.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/raspberrypi,7inch-touchscreen.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/tfc,s9700rtwv=
43tr-01b.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/tfc,s9700rtwv43tr-01b.yaml
> /linux-next/Documentation/devicetree/bindings/display/panel/dlc,dlc0700yz=
g-1.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/display/panel/dlc,dlc0700yzg-1.yaml
> /linux-next/Documentation/devicetree/bindings/example-schema.yaml: ignori=
ng, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/example-schema.yaml
> /linux-next/Documentation/devicetree/bindings/firmware/intel,ixp4xx-netwo=
rk-processing-engine.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/firmware/intel,ixp4xx-network-processing-engine.yaml
> /linux-next/Documentation/devicetree/bindings/gpio/pl061-gpio.yaml: ignor=
ing, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/gpio/pl061-gpio.yaml
> /linux-next/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2w=
i.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/i2c/allwinner,sun6i-a31-p2wi.yaml
> /linux-next/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yam=
l: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/i2c/marvell,mv64xxx-i2c.yaml
> /linux-next/Documentation/devicetree/bindings/i2c/i2c-gpio.yaml: ignoring=
, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/i2c/i2c-gpio.yaml
> /linux-next/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml: ig=
noring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/iio/adc/avia-hx711.yaml
> /linux-next/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml: ig=
noring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/iio/adc/adi,ad7780.yaml
> /linux-next/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml: ig=
noring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/iio/adc/adi,ad7124.yaml
> /linux-next/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml:=
 ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/iio/accel/adi,adxl345.yaml
> /linux-next/Documentation/devicetree/bindings/iio/accel/adi,adxl372.yaml:=
 ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/iio/accel/adi,adxl372.yaml
> /linux-next/Documentation/devicetree/bindings/iio/frequency/adf4371.yaml:=
 ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/iio/frequency/adf4371.yaml
> /linux-next/Documentation/devicetree/bindings/iio/light/tsl2583.yaml: ign=
oring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/iio/light/tsl2583.yaml
> /linux-next/Documentation/devicetree/bindings/iio/light/isl29018.yaml: ig=
noring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/iio/light/isl29018.yaml
> /linux-next/Documentation/devicetree/bindings/iio/light/tsl2772.yaml: ign=
oring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/iio/light/tsl2772.yaml
> /linux-next/Documentation/devicetree/bindings/iio/chemical/sensirion,sps3=
0.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/iio/chemical/sensirion,sps30.yaml
> /linux-next/Documentation/devicetree/bindings/iio/pressure/bmp085.yaml: i=
gnoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/iio/pressure/bmp085.yaml
> /linux-next/Documentation/devicetree/bindings/iio/proximity/devantech-srf=
04.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/iio/proximity/devantech-srf04.yaml
> /linux-next/Documentation/devicetree/bindings/input/gpio-vibrator.yaml: i=
gnoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/input/gpio-vibrator.yaml
> /linux-next/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-l=
radc-keys.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/input/allwinner,sun4i-a10-lradc-keys.yaml
> /linux-next/Documentation/devicetree/bindings/interrupt-controller/arm,gi=
c.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/interrupt-controller/arm,gic.yaml
> /linux-next/Documentation/devicetree/bindings/interrupt-controller/arm,gi=
c-v3.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/interrupt-controller/arm,gic-v3.yaml
> /linux-next/Documentation/devicetree/bindings/interrupt-controller/intel,=
ixp4xx-interrupt.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/interrupt-controller/intel,ixp4xx-interrupt.yaml
> /linux-next/Documentation/devicetree/bindings/leds/backlight/lm3630a-back=
light.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/leds/backlight/lm3630a-backlight.yaml
> /linux-next/Documentation/devicetree/bindings/misc/intel,ixp4xx-queue-man=
ager.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/misc/intel,ixp4xx-queue-manager.yaml
> /linux-next/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc=
.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/mmc/allwinner,sun4i-a10-mmc.yaml
> /linux-next/Documentation/devicetree/bindings/mmc/mmc-controller.yaml: ig=
noring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/mmc/mmc-controller.yaml
> /linux-next/Documentation/devicetree/bindings/mtd/nand-controller.yaml: i=
gnoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/mtd/nand-controller.yaml
> /linux-next/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nan=
d.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/mtd/allwinner,sun4i-a10-nand.yaml
> /linux-next/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-em=
ac.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/net/allwinner,sun8i-a83t-emac.yaml
> /linux-next/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-ema=
c.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/net/allwinner,sun4i-a10-emac.yaml
> /linux-next/Documentation/devicetree/bindings/net/snps,dwmac.yaml: ignori=
ng, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/net/snps,dwmac.yaml
> /linux-next/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gma=
c.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/net/allwinner,sun7i-a20-gmac.yaml
> /linux-next/Documentation/devicetree/bindings/net/ethernet-phy.yaml: igno=
ring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/net/ethernet-phy.yaml
> /linux-next/Documentation/devicetree/bindings/net/mdio.yaml: ignoring, er=
ror parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/net/mdio.yaml
> /linux-next/Documentation/devicetree/bindings/net/ethernet-controller.yam=
l: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/net/ethernet-controller.yaml
> /linux-next/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdi=
o.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/net/allwinner,sun4i-a10-mdio.yaml
> /linux-next/Documentation/devicetree/bindings/nvmem/nvmem.yaml: ignoring,=
 error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/nvmem/nvmem.yaml
> /linux-next/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-s=
id.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/nvmem/allwinner,sun4i-a10-sid.yaml
> /linux-next/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml: =
ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/nvmem/nvmem-consumer.yaml
> /linux-next/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mip=
i-dphy.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
> /linux-next/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinc=
trl.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/pinctrl/aspeed,ast2400-pinctrl.yaml
> /linux-next/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinc=
trl.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/pinctrl/aspeed,ast2500-pinctrl.yaml
> /linux-next/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.ya=
ml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/pinctrl/st,stm32-pinctrl.yaml
> /linux-next/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm=
.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/pwm/allwinner,sun4i-a10-pwm.yaml
> /linux-next/Documentation/devicetree/bindings/regulator/gpio-regulator.ya=
ml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/regulator/gpio-regulator.yaml
> /linux-next/Documentation/devicetree/bindings/regulator/max8660.yaml: ign=
oring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/regulator/max8660.yaml
> /linux-next/Documentation/devicetree/bindings/regulator/fixed-regulator.y=
aml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/regulator/fixed-regulator.yaml
> /linux-next/Documentation/devicetree/bindings/regulator/regulator.yaml: i=
gnoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/regulator/regulator.yaml
> /linux-next/Documentation/devicetree/bindings/riscv/cpus.yaml: ignoring, =
error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/riscv/cpus.yaml
> /linux-next/Documentation/devicetree/bindings/riscv/sifive.yaml: ignoring=
, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/riscv/sifive.yaml
> /linux-next/Documentation/devicetree/bindings/rtc/rtc.yaml: ignoring, err=
or parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/rtc/rtc.yaml
> /linux-next/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml: ignor=
ing, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/rtc/trivial-rtc.yaml
> /linux-next/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc=
.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/rtc/allwinner,sun6i-a31-rtc.yaml
> /linux-next/Documentation/devicetree/bindings/rtc/allwinner,sun4i-a10-rtc=
.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/rtc/allwinner,sun4i-a10-rtc.yaml
> /linux-next/Documentation/devicetree/bindings/serial/pl011.yaml: ignoring=
, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/serial/pl011.yaml
> /linux-next/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yam=
l: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/serial/snps-dw-apb-uart.yaml
> /linux-next/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-s=
pdif.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/sound/allwinner,sun4i-a10-spdif.yaml
> /linux-next/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i=
2s.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/sound/allwinner,sun4i-a10-i2s.yaml
> /linux-next/Documentation/devicetree/bindings/spi/spi-pl022.yaml: ignorin=
g, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/spi/spi-pl022.yaml
> /linux-next/Documentation/devicetree/bindings/spi/spi-controller.yaml: ig=
noring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/spi/spi-controller.yaml
> /linux-next/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi=
.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/spi/allwinner,sun4i-a10-spi.yaml
> /linux-next/Documentation/devicetree/bindings/spi/spi-gpio.yaml: ignoring=
, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/spi/spi-gpio.yaml
> /linux-next/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi=
.yaml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/spi/allwinner,sun6i-a31-spi.yaml
> /linux-next/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml: =
ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/timer/arm,arch_timer.yaml
> /linux-next/Documentation/devicetree/bindings/timer/arm,global_timer.yaml=
: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/timer/arm,global_timer.yaml
> /linux-next/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.y=
aml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/timer/arm,arch_timer_mmio.yaml
> /linux-next/Documentation/devicetree/bindings/timer/intel,ixp4xx-timer.ya=
ml: ignoring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/timer/intel,ixp4xx-timer.yaml
> /linux-next/Documentation/devicetree/bindings/trivial-devices.yaml: ignor=
ing, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/trivial-devices.yaml
> /linux-next/Documentation/devicetree/bindings/usb/generic-ohci.yaml: igno=
ring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/usb/generic-ohci.yaml
> /linux-next/Documentation/devicetree/bindings/usb/usb-hcd.yaml: ignoring,=
 error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/usb/usb-hcd.yaml
> /linux-next/Documentation/devicetree/bindings/usb/generic-ehci.yaml: igno=
ring, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/usb/generic-ehci.yaml
> /linux-next/Documentation/devicetree/bindings/vendor-prefixes.yaml: ignor=
ing, error parsing file
> warning: no schema found in file: /linux-next/Documentation/devicetree/bi=
ndings/vendor-prefixes.yaml
> /usr/lib64/python3.6/site-packages/dtschema/schemas/serial.yaml: ignoring=
, error parsing file
> Traceback (most recent call last):
>   File "/usr/lib64/python3.6/site-packages/jsonschema/validators.py", lin=
e 739, in resolve_from_url
>     document =3D self.store[url]
>   File "/usr/lib64/python3.6/site-packages/jsonschema/_utils.py", line 23=
, in __getitem__
>     return self.store[self.normalize(uri)]
> KeyError: 'http://devicetree.org/meta-schemas/base.yaml'
> =

> During handling of the above exception, another exception occurred:
> =

> Traceback (most recent call last):
>   File "/usr/lib64/python3.6/site-packages/jsonschema/validators.py", lin=
e 742, in resolve_from_url
>     document =3D self.resolve_remote(url)
>   File "/usr/lib64/python3.6/site-packages/jsonschema/validators.py", lin=
e 821, in resolve_remote
>     result =3D self.handlers[scheme](uri)
>   File "/usr/lib64/python3.6/site-packages/dtschema/lib.py", line 523, in=
 http_handler
>     return load_schema(uri.replace(schema_base_url, ''))
>   File "/usr/lib64/python3.6/site-packages/dtschema/lib.py", line 102, in=
 load_schema
>     return yaml.load(f.read())
>   File "/usr/lib64/python3.6/site-packages/ruamel/yaml/main.py", line 266=
, in load
>     return constructor.get_single_data()
>   File "/usr/lib64/python3.6/site-packages/ruamel/yaml/constructor.py", l=
ine 102, in get_single_data
>     node =3D self.composer.get_single_node()
>   File "_ruamel_yaml.pyx", line 703, in _ruamel_yaml.CParser.get_single_n=
ode (ext/_ruamel_yaml.c:9583)
>   File "_ruamel_yaml.pyx", line 904, in _ruamel_yaml.CParser._parse_next_=
event (ext/_ruamel_yaml.c:12818)
> ruamel.yaml.parser.ParserError: found incompatible YAML document
>   in "<unicode string>", line 4, column 1
> =

> During handling of the above exception, another exception occurred:
> =

> Traceback (most recent call last):
>   File "/usr/lib/python-exec/python3.6/dt-mk-schema", line 32, in <module>
>     schemas =3D dtschema.process_schemas(args.schemas, core_schema=3D(not=
 args.useronly))
>   File "/usr/lib64/python3.6/site-packages/dtschema/lib.py", line 487, in=
 process_schemas
>     sch =3D process_schema(os.path.abspath(filename))
>   File "/usr/lib64/python3.6/site-packages/dtschema/lib.py", line 428, in=
 process_schema
>     DTValidator.check_schema(schema)
>   File "/usr/lib64/python3.6/site-packages/dtschema/lib.py", line 572, in=
 check_schema
>     meta_schema =3D cls.resolver.resolve_from_url(schema['$schema'])
>   File "/usr/lib64/python3.6/site-packages/jsonschema/validators.py", lin=
e 744, in resolve_from_url
>     raise exceptions.RefResolutionError(exc)
> jsonschema.exceptions.RefResolutionError: found incompatible YAML document
>   in "<unicode string>", line 4, column 1
> make[2]: *** [/linux-next/Documentation/devicetree/bindings/Makefile:31: =
Documentation/devicetree/bindings/processed-schema.yaml] Error 1
> make[1]: *** [/linux-next/Makefile:1278: dt_binding_check] Error 2
> make[1]=A0: on quitte le r=E9pertoire =AB=A0/usr/src/crossbuild/next/arm6=
4/default/defconfig=A0=BB
> make: *** [Makefile:179: sub-make] Error 2
> =

> Do you know what happens ?
> =


Just found the problem

Sorry for the noise.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
