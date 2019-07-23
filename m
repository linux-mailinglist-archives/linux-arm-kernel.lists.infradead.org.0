Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B68C72268
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 00:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szqdtRwK8H446Sz4W3Dsadsmg2rw59KPUxgu+tqXTNQ=; b=YgR5Al6HNGGfrK
	H4pcBsvFeVYDzbyTReqid2VyrJ0biMRtCe4AtwILPJwZ7YImLrzkEYm7tUxIFJctLy89EVYYzOXC0
	QvhSoAJxqPOMWJioN7TtzYiB8ATrghA1LxEWuD5eDvsWfZVe12WVAvRvc/5rhvQtJyfjNyzM9HAZM
	9CrgzOPlb5lePSoUPm7qgCJeol3LJAgntmG+BXEYdmJ6sA4jAZg+4crmQ48vcKdbXqJR7qLPWRrkJ
	6N5KCq5X92ZL/9loSekNhtD1bGEMCkRR3pSbC7XDPv88CLZlspUg4hazGnDLf62aqbDIUKIIGxpMo
	lhImGtNkdNi8iwlYunkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq3Kx-0006wX-9z; Tue, 23 Jul 2019 22:32:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq3Kf-0006vy-UR
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 22:32:31 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE97B229F3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 22:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563921149;
 bh=KRGyoog8m5Y5cpAsI7fSu8XujIiwfwHpdopSDKGv8lI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DjBjihMrAblKU2YRuoTftYTHNzv1uEcbWnmbdLP12bpNuAEunBCRPBMBaUk+oi7ej
 nDCr0BYMWeFCRtffKUbuAMfeMGDqP8lzVm5GDzL5VTlOsT0zriKNPgbH+y6Cj5jw5c
 sncv/xIfPhuf3MM07b+Dm0aKaHn8tld3jGI2M7BQ=
Received: by mail-qt1-f182.google.com with SMTP id z4so43569927qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 15:32:28 -0700 (PDT)
X-Gm-Message-State: APjAAAV9TE4RWP94OxdfYePdmT5Jn1sF/eT2Hufh37zYJDeYNcVfZt+M
 Lp1sllvW3LrkD/rbC3IE38sVhbp7yLZcTcZLWw==
X-Google-Smtp-Source: APXvYqwfoClSOrKbu6CT9RTzisAhHFe5/alrfNoWmvSRZ0JhTVbIQjdWY8lSXYWQs5CGy8HyiUVSlShpxw7B4w0OWGk=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr55862838qtc.300.1563921148138; 
 Tue, 23 Jul 2019 15:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190723084104.12639-1-daniel.baluta@nxp.com>
 <20190723084104.12639-6-daniel.baluta@nxp.com>
In-Reply-To: <20190723084104.12639-6-daniel.baluta@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 23 Jul 2019 16:32:16 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ0A8MikmZb0KZd5r72J2o73GJ_E0o4CzW_=OVu2OcPKA@mail.gmail.com>
Message-ID: <CAL_JsqJ0A8MikmZb0KZd5r72J2o73GJ_E0o4CzW_=OVu2OcPKA@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] dt-bindings: dsp: fsl: Add DSP core binding support
To: Daniel Baluta <daniel.baluta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_153230_116247_24C0A672 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>, Marco Felsch <m.felsch@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 paul.olaru@nxp.com, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 2:41 AM Daniel Baluta <daniel.baluta@nxp.com> wrote:
>
> This describes the DSP device tree node.
>
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  .../devicetree/bindings/dsp/fsl,dsp.yaml      | 87 +++++++++++++++++++
>  1 file changed, 87 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
>
> diff --git a/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml b/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
> new file mode 100644
> index 000000000000..d112486eda0e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
> @@ -0,0 +1,87 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/freescale/fsl,dsp.yaml#

This needs updating to match the path.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8 DSP core
> +
> +maintainers:
> +  - Daniel Baluta <daniel.baluta@nxp.com>
> +
> +description: |
> +  Some boards from i.MX8 family contain a DSP core used for
> +  advanced pre- and post- audio processing.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8qxp-dsp
> +
> +  reg:
> +    description: Should contain register location and length
> +
> +  clocks:
> +    items:
> +      - description: ipg clock
> +      - description: ocram clock
> +      - description: core clock
> +
> +  clock-names:
> +    items:
> +      - const: ipg
> +      - const: ocram
> +      - const: core
> +
> +  power-domains:
> +    description:
> +      List of phandle and PM domain specifier as documented in
> +      Documentation/devicetree/bindings/power/power_domain.txt
> +    maxItems: 4

Need a blank line here.

With those 2 fixes:

Reviewed-by: Rob Herring <robh@kernel.org>

> +  mboxes:
> +    description:
> +      List of <&phandle type channel> - 2 channels for TXDB, 2 channels for RXDB
> +      (see mailbox/fsl,mu.txt)
> +    maxItems: 4
> +
> +  mbox-names:
> +    items:
> +      - const: txdb0
> +      - const: txdb1
> +      - const: rxdb0
> +      - const: rxdb1
> +
> +  memory-region:
> +    description:
> +       phandle to a node describing reserved memory (System RAM memory)
> +       used by DSP (see bindings/reserved-memory/reserved-memory.txt)
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - power-domains
> +  - mboxes
> +  - mbox-names
> +  - memory-region
> +
> +examples:
> +  - |
> +    #include <dt-bindings/firmware/imx/rsrc.h>
> +    #include <dt-bindings/clock/imx8-clock.h>
> +    dsp@596e8000 {
> +        compatbile = "fsl,imx8qxp-dsp";
> +        reg = <0x596e8000 0x88000>;
> +        clocks = <&adma_lpcg IMX_ADMA_LPCG_DSP_IPG_CLK>,
> +                 <&adma_lpcg IMX_ADMA_LPCG_OCRAM_IPG_CLK>,
> +                 <&adma_lpcg IMX_ADMA_LPCG_DSP_CORE_CLK>;
> +        clock-names = "ipg", "ocram", "core";
> +        power-domains = <&pd IMX_SC_R_MU_13A>,
> +                        <&pd IMX_SC_R_MU_13B>,
> +                        <&pd IMX_SC_R_DSP>,
> +                        <&pd IMX_SC_R_DSP_RAM>;
> +        mbox-names = "txdb0", "txdb1", "rxdb0", "rxdb1";
> +        mboxes = <&lsio_mu13 2 0>, <&lsio_mu13 2 1>, <&lsio_mu13 3 0>, <&lsio_mu13 3 1>;
> +    };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
