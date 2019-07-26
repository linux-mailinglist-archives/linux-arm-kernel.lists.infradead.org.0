Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB72276425
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgr/4mBhXjKSuMftsuU7u62oW67qrmK6/6GmokxhVBg=; b=cwjPNz1xTEDkoh
	5+BiDCJt0+6fo0wEJIN/8Yk9kUJfTatotgIGvApjgto+KLAvBdorjYB9UNKKQt+a1Noj6haRB2/FC
	q20jP37YKOUXDNHXJqpHkEdQ6d/enht2O9BYIgBB7mXLqqr/qGvvY7VCaX3qiWAqbB1Ql9QXWchFw
	yyuq3hVwvAdrwEGmGHuxJgxOkze2/4DKW9u3XaXrMypTJZxj8ehBHK539cVkALzNAoGo0H/vgrJc6
	Xl579rwui6HSHBQp/qTkEfFRZ/nTx6RrHqzBlTH/eU1Rm6B8RHF1TqbchxKCh8J9FMTIqQ9qH5RID
	X3EGe8J2LpTAOYI8gvPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqy4z-0002cN-KG; Fri, 26 Jul 2019 11:08:05 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqy4n-0002b7-67
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:07:56 +0000
Received: by mail-wr1-x444.google.com with SMTP id p17so53978025wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=CfW0/Uj1OgAggtKrBTbEluQPIpf1ADip0TgDY/n68yM=;
 b=H9gy8ZmQFhfwK/04UZqTffDrq05VKUzZ0toGbjsNDisYjzr++WESm7BDwRM1BOoL2J
 GaepTcD69gvy4afuLlUBuQ93SNVWdkb0y+ipecR7PE6ZQt0eUjkzHRaLm1CMjc3sWEVV
 n6GSzlEQss2s371yXAFwb/Vj7DM9fTH75z1XQXuT55LW735B1f3fIHxFQ7/ScQAw33qq
 6gZa7oG+aGn028a8ggGe1DE/1V/BDSTB1rypcAAsnd3omzxF4UoxACdvt9ZirSs5cGEn
 WGHZ8SU/ibqDwZuuf4T5EXjHQUzsZ6BSuMDL/7+aEvIiW4ZEov6tApl+3L1AGNkAUxmE
 ByIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=CfW0/Uj1OgAggtKrBTbEluQPIpf1ADip0TgDY/n68yM=;
 b=MVCrh3N4Kq2mJsRP7UFqUFr7hiAcbac7zeg2iyQyWoHK84KYdOrxP+f1FZFqDF4gke
 ikIfd8nRzulPtbQ0ePQK/tLRDJiId6KxyJ/yS27AhxGh6lebF+xIjFTJHmCo1g7dzyja
 qt2X2uh8Z4YU71sVRT9vhMeyNNlL1cZijqt4HXMcAv+TU2OsKslN3oHEC2iU6ZSUjN27
 usalkcdGw06gJfp8D0nhWZG+fHm2k/zEHrKiu5tT5hjqKaXoVDd3w5FeVmu5Xu31wCIu
 4VHvuC4SHI2bx2fobmEF/KIPya3iJ2SMumD/nAUtuRAtNgcmX8WgYjeEdcHsHLCH1W1H
 ehvA==
X-Gm-Message-State: APjAAAXF1sVvoRPpGXNOkC8U+Ac8W/S9c3OcsgVp9IsVDb7fecXcm85R
 qZSDHAQZ0fqLjXxL4sIXc8zlHw==
X-Google-Smtp-Source: APXvYqz7heSi7NZtHOrsIecix+aMQfN+iBoiq92ThzNeOYFJ/Xli6ocLaDh4cykImILuYbhpjDCg7A==
X-Received: by 2002:a5d:6389:: with SMTP id p9mr74414005wru.297.1564139271233; 
 Fri, 26 Jul 2019 04:07:51 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id v65sm59674596wme.31.2019.07.26.04.07.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 04:07:50 -0700 (PDT)
Date: Fri, 26 Jul 2019 13:07:47 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: crypto: Add DT bindings documentation
 for amlogic-crypto
Message-ID: <20190726110747.GA14435@Red>
References: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
 <1564083776-20540-2-git-send-email-clabbe@baylibre.com>
 <CAL_JsqLbYwRpNWHGkYbomWLMpum_DXW4OjNNRrwTRM=w86dONw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqLbYwRpNWHGkYbomWLMpum_DXW4OjNNRrwTRM=w86dONw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_040753_267195_8CE46252 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 Herbert Xu <herbert@gondor.apana.org.au>, baylibre-upstreaming@groups.io,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, linux-amlogic@lists.infradead.org,
 David Miller <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 04:55:30PM -0600, Rob Herring wrote:
> On Thu, Jul 25, 2019 at 1:43 PM Corentin Labbe <clabbe@baylibre.com> wrot=
e:
> >
> > This patch adds documentation for Device-Tree bindings for the
> > Amlogic GXL cryptographic offloader driver.
> >
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../bindings/crypto/amlogic-gxl-crypto.yaml   | 45 +++++++++++++++++++
> =

> Follow the compatible string for the filename: amlogic,gxl-crypto.yaml
> =

> >  1 file changed, 45 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/amlogic-gx=
l-crypto.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/crypto/amlogic-gxl-crypt=
o.yaml b/Documentation/devicetree/bindings/crypto/amlogic-gxl-crypto.yaml
> > new file mode 100644
> > index 000000000000..41265e57c00b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/crypto/amlogic-gxl-crypto.yaml
> > @@ -0,0 +1,45 @@
> > +# SPDX-License-Identifier: GPL-2.0
> =

> Dual (GPL-2.0 OR BSD-2-Clause) is preferred for new bindings. Not a
> requirement though.
> =

> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/crypto/amlogic-gxl-crypto.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Amlogic GXL Cryptographic Offloader
> > +
> > +maintainers:
> > +  - Corentin Labbe <clabbe@baylibre.com>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> =

> Don't need 'oneOf' when there is only 1.
> =

> > +      - const: amlogic,gxl-crypto
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: blkmv
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +
> > +examples:
> > +  - |
> > +    crypto: crypto@c883e000 {
> > +        compatible =3D "amlogic,gxl-crypto";
> > +        reg =3D <0x0 0xc883e000 0x0 0x36>;
> =

> This should throw errors because the default size on examples are 1
> cell. But validating the examples with the schema only just landed in
> 5.3-rc1.
> =

> > +        interrupts =3D <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>,
> > +            <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
> =

> This doesn't match the schema.
> =

> > +        clocks =3D <&clkc CLKID_BLKMV>;
> > +        clock-names =3D "blkmv";
> > +    };
> > --
> > 2.21.0
> >

Hello

I will fix all your remarks.
I have tried to valide them but fail to do it:
make ARCH=3Darm64 CROSS_COMPILE=3Daarch64-unknown-linux-gnu- KBUILD_OUTPUT=
=3D~/crossbuild/next/arm64/default/defconfig/ dt_binding_check
make[1]=A0: on entre dans le r=E9pertoire =AB=A0/usr/src/crossbuild/next/ar=
m64/default/defconfig=A0=BB
arch/arm64/Makefile:56: CROSS_COMPILE_COMPAT not defined or empty, the comp=
at vDSO will not be built
  GEN     Makefile
scripts/kconfig/conf  --syncconfig Kconfig
arch/arm64/Makefile:56: CROSS_COMPILE_COMPAT not defined or empty, the comp=
at vDSO will not be built
  SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
/linux-next/Documentation/devicetree/bindings/arm/atmel-at91.yaml: ignoring=
, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/atmel-at91.yaml
/linux-next/Documentation/devicetree/bindings/arm/axxia.yaml: ignoring, err=
or parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/axxia.yaml
/linux-next/Documentation/devicetree/bindings/arm/amlogic.yaml: ignoring, e=
rror parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/amlogic.yaml
/linux-next/Documentation/devicetree/bindings/arm/renesas.yaml: ignoring, e=
rror parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/renesas.yaml
/linux-next/Documentation/devicetree/bindings/arm/sirf.yaml: ignoring, erro=
r parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/sirf.yaml
/linux-next/Documentation/devicetree/bindings/arm/spear.yaml: ignoring, err=
or parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/spear.yaml
/linux-next/Documentation/devicetree/bindings/arm/qcom.yaml: ignoring, erro=
r parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/qcom.yaml
/linux-next/Documentation/devicetree/bindings/arm/pmu.yaml: ignoring, error=
 parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/pmu.yaml
/linux-next/Documentation/devicetree/bindings/arm/digicolor.yaml: ignoring,=
 error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/digicolor.yaml
/linux-next/Documentation/devicetree/bindings/arm/sunxi.yaml: ignoring, err=
or parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/sunxi.yaml
/linux-next/Documentation/devicetree/bindings/arm/zte.yaml: ignoring, error=
 parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/zte.yaml
/linux-next/Documentation/devicetree/bindings/arm/altera/socfpga-clk-manage=
r.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/altera/socfpga-clk-manager.yaml
/linux-next/Documentation/devicetree/bindings/arm/cpus.yaml: ignoring, erro=
r parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/cpus.yaml
/linux-next/Documentation/devicetree/bindings/arm/rda.yaml: ignoring, error=
 parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/rda.yaml
/linux-next/Documentation/devicetree/bindings/arm/psci.yaml: ignoring, erro=
r parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/psci.yaml
/linux-next/Documentation/devicetree/bindings/arm/calxeda.yaml: ignoring, e=
rror parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/calxeda.yaml
/linux-next/Documentation/devicetree/bindings/arm/ti/nspire.yaml: ignoring,=
 error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/ti/nspire.yaml
/linux-next/Documentation/devicetree/bindings/arm/ti/ti,davinci.yaml: ignor=
ing, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/ti/ti,davinci.yaml
/linux-next/Documentation/devicetree/bindings/arm/fsl.yaml: ignoring, error=
 parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/fsl.yaml
/linux-next/Documentation/devicetree/bindings/arm/xilinx.yaml: ignoring, er=
ror parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/xilinx.yaml
/linux-next/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml: ignori=
ng, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/intel-ixp4xx.yaml
/linux-next/Documentation/devicetree/bindings/arm/altera.yaml: ignoring, er=
ror parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/altera.yaml
/linux-next/Documentation/devicetree/bindings/arm/rockchip.yaml: ignoring, =
error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/rockchip.yaml
/linux-next/Documentation/devicetree/bindings/arm/mediatek.yaml: ignoring, =
error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/mediatek.yaml
/linux-next/Documentation/devicetree/bindings/arm/vt8500.yaml: ignoring, er=
ror parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/vt8500.yaml
/linux-next/Documentation/devicetree/bindings/arm/al,alpine.yaml: ignoring,=
 error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/al,alpine.yaml
/linux-next/Documentation/devicetree/bindings/arm/l2c2x0.yaml: ignoring, er=
ror parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/l2c2x0.yaml
/linux-next/Documentation/devicetree/bindings/arm/moxart.yaml: ignoring, er=
ror parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/moxart.yaml
/linux-next/Documentation/devicetree/bindings/arm/sti.yaml: ignoring, error=
 parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/sti.yaml
/linux-next/Documentation/devicetree/bindings/arm/primecell.yaml: ignoring,=
 error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/primecell.yaml
/linux-next/Documentation/devicetree/bindings/arm/bitmain.yaml: ignoring, e=
rror parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/bitmain.yaml
/linux-next/Documentation/devicetree/bindings/arm/socionext/milbeaut.yaml: =
ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/socionext/milbeaut.yaml
/linux-next/Documentation/devicetree/bindings/arm/stm32/stm32.yaml: ignorin=
g, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/stm32/stm32.yaml
/linux-next/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml: ignorin=
g, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/nxp/lpc32xx.yaml
/linux-next/Documentation/devicetree/bindings/arm/tegra.yaml: ignoring, err=
or parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/arm/tegra.yaml
/linux-next/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.y=
aml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/bus/allwinner,sun8i-a23-rsb.yaml
/linux-next/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.=
yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/bus/allwinner,sun50i-a64-de2.yaml
/linux-next/Documentation/devicetree/bindings/clock/milbeaut-clock.yaml: ig=
noring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/clock/milbeaut-clock.yaml
/linux-next/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu=
.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/clock/allwinner,sun4i-a10-ccu.yaml
/linux-next/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml: igno=
ring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/clock/imx8mn-clock.yaml
/linux-next/Documentation/devicetree/bindings/clock/fixed-factor-clock.yaml=
: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/clock/fixed-factor-clock.yaml
/linux-next/Documentation/devicetree/bindings/clock/fixed-clock.yaml: ignor=
ing, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/clock/fixed-clock.yaml
/linux-next/Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yam=
l: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/crypto/amlogic,gxl-crypto.yaml
/linux-next/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-cr=
ypto.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/crypto/allwinner,sun4i-a10-crypto.yaml
/linux-next/Documentation/devicetree/bindings/display/simple-framebuffer.ya=
ml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/simple-framebuffer.yaml
/linux-next/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-m=
ipi-dsi.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/allwinner,sun6i-a31-mipi-dsi.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/pda,91-00156-a0=
.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/pda,91-00156-a0.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/bananapi,s070wv=
20-ct16.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/bananapi,s070wv20-ct16.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/lvds.yaml: igno=
ring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/lvds.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/panel-common.ya=
ml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/panel-common.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/armadeus,st0700=
-adapt.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/armadeus,st0700-adapt.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/sgd,gktw70sdae4=
se.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/sgd,gktw70sdae4se.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/ronbo,rb070d30.=
yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/ronbo,rb070d30.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/tpo,tpg110.yaml=
: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/tpo,tpg110.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/ampire,am-48027=
2h3tmqw-t01h.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/ampire,am-480272h3tmqw-t01h.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/innolux,ee101ia=
-01d.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/innolux,ee101ia-01d.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/mitsubishi,aa12=
1td01.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/mitsubishi,aa121td01.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/mitsubishi,aa10=
4xd12.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/mitsubishi,aa104xd12.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/raspberrypi,7in=
ch-touchscreen.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/raspberrypi,7inch-touchscreen.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/tfc,s9700rtwv43=
tr-01b.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/tfc,s9700rtwv43tr-01b.yaml
/linux-next/Documentation/devicetree/bindings/display/panel/dlc,dlc0700yzg-=
1.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/display/panel/dlc,dlc0700yzg-1.yaml
/linux-next/Documentation/devicetree/bindings/example-schema.yaml: ignoring=
, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/example-schema.yaml
/linux-next/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network=
-processing-engine.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/firmware/intel,ixp4xx-network-processing-engine.yaml
/linux-next/Documentation/devicetree/bindings/gpio/pl061-gpio.yaml: ignorin=
g, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/gpio/pl061-gpio.yaml
/linux-next/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.=
yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/i2c/allwinner,sun6i-a31-p2wi.yaml
/linux-next/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml:=
 ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/i2c/marvell,mv64xxx-i2c.yaml
/linux-next/Documentation/devicetree/bindings/i2c/i2c-gpio.yaml: ignoring, =
error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/i2c/i2c-gpio.yaml
/linux-next/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml: igno=
ring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/iio/adc/avia-hx711.yaml
/linux-next/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml: igno=
ring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/iio/adc/adi,ad7780.yaml
/linux-next/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml: igno=
ring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/iio/adc/adi,ad7124.yaml
/linux-next/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml: i=
gnoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/iio/accel/adi,adxl345.yaml
/linux-next/Documentation/devicetree/bindings/iio/accel/adi,adxl372.yaml: i=
gnoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/iio/accel/adi,adxl372.yaml
/linux-next/Documentation/devicetree/bindings/iio/frequency/adf4371.yaml: i=
gnoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/iio/frequency/adf4371.yaml
/linux-next/Documentation/devicetree/bindings/iio/light/tsl2583.yaml: ignor=
ing, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/iio/light/tsl2583.yaml
/linux-next/Documentation/devicetree/bindings/iio/light/isl29018.yaml: igno=
ring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/iio/light/isl29018.yaml
/linux-next/Documentation/devicetree/bindings/iio/light/tsl2772.yaml: ignor=
ing, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/iio/light/tsl2772.yaml
/linux-next/Documentation/devicetree/bindings/iio/chemical/sensirion,sps30.=
yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/iio/chemical/sensirion,sps30.yaml
/linux-next/Documentation/devicetree/bindings/iio/pressure/bmp085.yaml: ign=
oring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/iio/pressure/bmp085.yaml
/linux-next/Documentation/devicetree/bindings/iio/proximity/devantech-srf04=
.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/iio/proximity/devantech-srf04.yaml
/linux-next/Documentation/devicetree/bindings/input/gpio-vibrator.yaml: ign=
oring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/input/gpio-vibrator.yaml
/linux-next/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lra=
dc-keys.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/input/allwinner,sun4i-a10-lradc-keys.yaml
/linux-next/Documentation/devicetree/bindings/interrupt-controller/arm,gic.=
yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/interrupt-controller/arm,gic.yaml
/linux-next/Documentation/devicetree/bindings/interrupt-controller/arm,gic-=
v3.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/interrupt-controller/arm,gic-v3.yaml
/linux-next/Documentation/devicetree/bindings/interrupt-controller/intel,ix=
p4xx-interrupt.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/interrupt-controller/intel,ixp4xx-interrupt.yaml
/linux-next/Documentation/devicetree/bindings/leds/backlight/lm3630a-backli=
ght.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/leds/backlight/lm3630a-backlight.yaml
/linux-next/Documentation/devicetree/bindings/misc/intel,ixp4xx-queue-manag=
er.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/misc/intel,ixp4xx-queue-manager.yaml
/linux-next/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.y=
aml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/mmc/allwinner,sun4i-a10-mmc.yaml
/linux-next/Documentation/devicetree/bindings/mmc/mmc-controller.yaml: igno=
ring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/mmc/mmc-controller.yaml
/linux-next/Documentation/devicetree/bindings/mtd/nand-controller.yaml: ign=
oring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/mtd/nand-controller.yaml
/linux-next/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.=
yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/mtd/allwinner,sun4i-a10-nand.yaml
/linux-next/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac=
.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/net/allwinner,sun8i-a83t-emac.yaml
/linux-next/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.=
yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/net/allwinner,sun4i-a10-emac.yaml
/linux-next/Documentation/devicetree/bindings/net/snps,dwmac.yaml: ignoring=
, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/net/snps,dwmac.yaml
/linux-next/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.=
yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/net/allwinner,sun7i-a20-gmac.yaml
/linux-next/Documentation/devicetree/bindings/net/ethernet-phy.yaml: ignori=
ng, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/net/ethernet-phy.yaml
/linux-next/Documentation/devicetree/bindings/net/mdio.yaml: ignoring, erro=
r parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/net/mdio.yaml
/linux-next/Documentation/devicetree/bindings/net/ethernet-controller.yaml:=
 ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/net/ethernet-controller.yaml
/linux-next/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.=
yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/net/allwinner,sun4i-a10-mdio.yaml
/linux-next/Documentation/devicetree/bindings/nvmem/nvmem.yaml: ignoring, e=
rror parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/nvmem/nvmem.yaml
/linux-next/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid=
.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/nvmem/allwinner,sun4i-a10-sid.yaml
/linux-next/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml: ig=
noring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/nvmem/nvmem-consumer.yaml
/linux-next/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-=
dphy.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
/linux-next/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctr=
l.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/pinctrl/aspeed,ast2400-pinctrl.yaml
/linux-next/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctr=
l.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/pinctrl/aspeed,ast2500-pinctrl.yaml
/linux-next/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml=
: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/pinctrl/st,stm32-pinctrl.yaml
/linux-next/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.y=
aml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/pwm/allwinner,sun4i-a10-pwm.yaml
/linux-next/Documentation/devicetree/bindings/regulator/gpio-regulator.yaml=
: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/regulator/gpio-regulator.yaml
/linux-next/Documentation/devicetree/bindings/regulator/max8660.yaml: ignor=
ing, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/regulator/max8660.yaml
/linux-next/Documentation/devicetree/bindings/regulator/fixed-regulator.yam=
l: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/regulator/fixed-regulator.yaml
/linux-next/Documentation/devicetree/bindings/regulator/regulator.yaml: ign=
oring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/regulator/regulator.yaml
/linux-next/Documentation/devicetree/bindings/riscv/cpus.yaml: ignoring, er=
ror parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/riscv/cpus.yaml
/linux-next/Documentation/devicetree/bindings/riscv/sifive.yaml: ignoring, =
error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/riscv/sifive.yaml
/linux-next/Documentation/devicetree/bindings/rtc/rtc.yaml: ignoring, error=
 parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/rtc/rtc.yaml
/linux-next/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml: ignorin=
g, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/rtc/trivial-rtc.yaml
/linux-next/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.y=
aml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/rtc/allwinner,sun6i-a31-rtc.yaml
/linux-next/Documentation/devicetree/bindings/rtc/allwinner,sun4i-a10-rtc.y=
aml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/rtc/allwinner,sun4i-a10-rtc.yaml
/linux-next/Documentation/devicetree/bindings/serial/pl011.yaml: ignoring, =
error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/serial/pl011.yaml
/linux-next/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml:=
 ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/serial/snps-dw-apb-uart.yaml
/linux-next/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spd=
if.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/sound/allwinner,sun4i-a10-spdif.yaml
/linux-next/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s=
.yaml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/sound/allwinner,sun4i-a10-i2s.yaml
/linux-next/Documentation/devicetree/bindings/spi/spi-pl022.yaml: ignoring,=
 error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/spi/spi-pl022.yaml
/linux-next/Documentation/devicetree/bindings/spi/spi-controller.yaml: igno=
ring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/spi/spi-controller.yaml
/linux-next/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.y=
aml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/spi/allwinner,sun4i-a10-spi.yaml
/linux-next/Documentation/devicetree/bindings/spi/spi-gpio.yaml: ignoring, =
error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/spi/spi-gpio.yaml
/linux-next/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.y=
aml: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/spi/allwinner,sun6i-a31-spi.yaml
/linux-next/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml: ig=
noring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/timer/arm,arch_timer.yaml
/linux-next/Documentation/devicetree/bindings/timer/arm,global_timer.yaml: =
ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/timer/arm,global_timer.yaml
/linux-next/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yam=
l: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/timer/arm,arch_timer_mmio.yaml
/linux-next/Documentation/devicetree/bindings/timer/intel,ixp4xx-timer.yaml=
: ignoring, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/timer/intel,ixp4xx-timer.yaml
/linux-next/Documentation/devicetree/bindings/trivial-devices.yaml: ignorin=
g, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/trivial-devices.yaml
/linux-next/Documentation/devicetree/bindings/usb/generic-ohci.yaml: ignori=
ng, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/usb/generic-ohci.yaml
/linux-next/Documentation/devicetree/bindings/usb/usb-hcd.yaml: ignoring, e=
rror parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/usb/usb-hcd.yaml
/linux-next/Documentation/devicetree/bindings/usb/generic-ehci.yaml: ignori=
ng, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/usb/generic-ehci.yaml
/linux-next/Documentation/devicetree/bindings/vendor-prefixes.yaml: ignorin=
g, error parsing file
warning: no schema found in file: /linux-next/Documentation/devicetree/bind=
ings/vendor-prefixes.yaml
/usr/lib64/python3.6/site-packages/dtschema/schemas/serial.yaml: ignoring, =
error parsing file
Traceback (most recent call last):
  File "/usr/lib64/python3.6/site-packages/jsonschema/validators.py", line =
739, in resolve_from_url
    document =3D self.store[url]
  File "/usr/lib64/python3.6/site-packages/jsonschema/_utils.py", line 23, =
in __getitem__
    return self.store[self.normalize(uri)]
KeyError: 'http://devicetree.org/meta-schemas/base.yaml'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/lib64/python3.6/site-packages/jsonschema/validators.py", line =
742, in resolve_from_url
    document =3D self.resolve_remote(url)
  File "/usr/lib64/python3.6/site-packages/jsonschema/validators.py", line =
821, in resolve_remote
    result =3D self.handlers[scheme](uri)
  File "/usr/lib64/python3.6/site-packages/dtschema/lib.py", line 523, in h=
ttp_handler
    return load_schema(uri.replace(schema_base_url, ''))
  File "/usr/lib64/python3.6/site-packages/dtschema/lib.py", line 102, in l=
oad_schema
    return yaml.load(f.read())
  File "/usr/lib64/python3.6/site-packages/ruamel/yaml/main.py", line 266, =
in load
    return constructor.get_single_data()
  File "/usr/lib64/python3.6/site-packages/ruamel/yaml/constructor.py", lin=
e 102, in get_single_data
    node =3D self.composer.get_single_node()
  File "_ruamel_yaml.pyx", line 703, in _ruamel_yaml.CParser.get_single_nod=
e (ext/_ruamel_yaml.c:9583)
  File "_ruamel_yaml.pyx", line 904, in _ruamel_yaml.CParser._parse_next_ev=
ent (ext/_ruamel_yaml.c:12818)
ruamel.yaml.parser.ParserError: found incompatible YAML document
  in "<unicode string>", line 4, column 1

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/lib/python-exec/python3.6/dt-mk-schema", line 32, in <module>
    schemas =3D dtschema.process_schemas(args.schemas, core_schema=3D(not a=
rgs.useronly))
  File "/usr/lib64/python3.6/site-packages/dtschema/lib.py", line 487, in p=
rocess_schemas
    sch =3D process_schema(os.path.abspath(filename))
  File "/usr/lib64/python3.6/site-packages/dtschema/lib.py", line 428, in p=
rocess_schema
    DTValidator.check_schema(schema)
  File "/usr/lib64/python3.6/site-packages/dtschema/lib.py", line 572, in c=
heck_schema
    meta_schema =3D cls.resolver.resolve_from_url(schema['$schema'])
  File "/usr/lib64/python3.6/site-packages/jsonschema/validators.py", line =
744, in resolve_from_url
    raise exceptions.RefResolutionError(exc)
jsonschema.exceptions.RefResolutionError: found incompatible YAML document
  in "<unicode string>", line 4, column 1
make[2]: *** [/linux-next/Documentation/devicetree/bindings/Makefile:31: Do=
cumentation/devicetree/bindings/processed-schema.yaml] Error 1
make[1]: *** [/linux-next/Makefile:1278: dt_binding_check] Error 2
make[1]=A0: on quitte le r=E9pertoire =AB=A0/usr/src/crossbuild/next/arm64/=
default/defconfig=A0=BB
make: *** [Makefile:179: sub-make] Error 2

Do you know what happens ?

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
