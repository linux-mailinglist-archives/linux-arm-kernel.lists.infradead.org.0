Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C0312E0D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 23:41:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAcKxD81f0SLYixVDmb/THghOqDWTa84gkXpwd9+Zg8=; b=odfgX1Q7G4Wd2S
	8+7WQSNxszWE656vb3DrYoVhgylb4FHlX03Y8LpQGjFQc+deshe4I2VwstxpdLfoSw3ctZ74RT7h4
	KzmVX8scbUkJ6oS/5PjXUJjGJEh3eXc+G8cLXuc8B4vtoUSosOtx8hjmKWUsUwzO47yHFU+pAeZuT
	lhuThLPiztRMdmTi3MDStDQ6xgSh6z91afvGOhnsVowf06hyM/IB8zZJup5DtV/nxpfXG6ts2DczC
	PC0sPDF3Zgx8x5Xeg/I5wBubWN/JYJcVO4+ImGimsBx6qzBMzCd/PIiXnivExlSKna8uELZUZJEgC
	0gAfvxSl67fQs5/4O8Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1immgW-0007xo-W7; Wed, 01 Jan 2020 22:41:49 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1immgO-0007xU-6N
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 22:41:41 +0000
Received: by mail-io1-xd42.google.com with SMTP id k24so6484097ioc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 14:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=onn2kaRu8qHeOZCfu0hDViiisLBTz+9+t6L3wfr8DUc=;
 b=WLwZN7rfzNDtuKGgQ50YNh1Ptb/5IhKEp1Ugg02orWYHliwrTp4i/WpQ84fPfF/xd6
 HM28dUtBsh3qdRrHED54HHve30uwQRjzAe9yPyuiHswRNxuaLNasjUrBpVs9tk9EBfwp
 JGNrtrxVQC0xnUYd7rfBigqkyE8j8CPivvX8tvU4R1Q3l0SXHqq8rBRqTEYWYfeLHDyW
 Hf2wsq6S6sqTNlIQXmmRKJHkdJ4ohYqwcB57i8ZBIBpVkOPQGsqazsTeMuGysznyc6wf
 +I03Lm49PgF63eQ1zzwAsRR2WSYiFbASOunR6KjsX90hy2xzTBNpBqFNcqUvahQS9Z5P
 9gjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=onn2kaRu8qHeOZCfu0hDViiisLBTz+9+t6L3wfr8DUc=;
 b=qgQMbnMtgZavRfO/vTgQ5zJlhbUVF5h51zkQKStQnR+nwEPFEVuVFtmhlmR471TbzU
 9vcM7KqAK/mlY5kab4d3BqtXpTJJSWLAJ3fExfqMj3dZTdzsNdq+ni/B0697WwWztjvH
 FTU5Y5PcYgvx9YUgJF/HoyJ9+20FPBhEF+rn8j8Wv7KaBMqQCIxIqqCOzeNfoGn5fX74
 j8AfTyCinQledHlMaG2ma+lQcs2H4Pvbz9cEFuc0hgX+/Z85z6it8AQVTiz5JeeQvFfP
 fTm5Y5lq39skQjVfblY8WQdELKCyoi9vIVBQ0BRNu3kE92PeIVjfgZzmM9QSTJ7OgN30
 ezLQ==
X-Gm-Message-State: APjAAAW4HPOjC8O8oCCViKGq//YJtaJB1tT3KXy9Td8+rztmDbRGmChi
 U1fJLoj5JDWRwSQYWnrQ9khRHmts9kdKbrXvsgM=
X-Google-Smtp-Source: APXvYqx6ei8sTZU+VpaBvdE5BPvS2Lf8otC9ORUm8LAyhktY0sGrmucBFvIIqydp9NRNLgqtuEW+yjYVaTvUmJLD5gc=
X-Received: by 2002:a5e:8505:: with SMTP id i5mr49776442ioj.158.1577918497545; 
 Wed, 01 Jan 2020 14:41:37 -0800 (PST)
MIME-Version: 1.0
References: <20200101175011.1875-1-michael@amarulasolutions.com>
In-Reply-To: <20200101175011.1875-1-michael@amarulasolutions.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 1 Jan 2020 16:41:26 -0600
Message-ID: <CAHCN7xL_jAT4PYtkMXZbBy=VCUyzRqYaCbKs0oi6p297CCiOdg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm: Add CAAM node
To: Michael Trimarchi <michael@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_144140_261168_E6FEEF17 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-amarula@amarulasolutions.com,
 arm-soc <linux-arm-kernel@lists.infradead.org>, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 1, 2020 at 11:50 AM Michael Trimarchi
<michael@amarulasolutions.com> wrote:
>
> Add node for CAAM - Cryptographic Acceleration and Assurance Module.
>

I believe a series similar to this was already done and applied:

https://patchwork.kernel.org/patch/11300663/

adam

> Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 31 +++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 7360dc0685eb..428a8b43086e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -667,6 +667,37 @@
>                                 status = "disabled";
>                         };
>
> +                       crypto: crypto@30900000 {
> +                               compatible = "fsl,sec-v4.0";
> +                               #address-cells = <1>;
> +                               #size-cells = <1>;
> +                               reg = <0x30900000 0x40000>;
> +                               ranges = <0 0x30900000 0x40000>;
> +                               interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> +                               clocks = <&clk IMX8MM_CLK_AHB>,
> +                                        <&clk IMX8MM_CLK_IPG_ROOT>;
> +                               clock-names = "aclk", "ipg";
> +                               status = "disabled";
> +
> +                               sec_jr0: jr0@1000 {
> +                                        compatible = "fsl,sec-v4.0-job-ring";
> +                                        reg = <0x1000 0x1000>;
> +                                        interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
> +                               };
> +
> +                               sec_jr1: jr1@2000 {
> +                                        compatible = "fsl,sec-v4.0-job-ring";
> +                                        reg = <0x2000 0x1000>;
> +                                        interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
> +                               };
> +
> +                               sec_jr2: jr2@3000 {
> +                                        compatible = "fsl,sec-v4.0-job-ring";
> +                                        reg = <0x3000 0x1000>;
> +                                        interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
> +                               };
> +                       };
> +
>                         i2c1: i2c@30a20000 {
>                                 compatible = "fsl,imx8mm-i2c", "fsl,imx21-i2c";
>                                 #address-cells = <1>;
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
