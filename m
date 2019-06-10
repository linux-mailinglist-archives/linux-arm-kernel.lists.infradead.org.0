Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D491B3BF02
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 23:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDMj7mIDCx7WcSzSYod8a9hbXTkn7Uhjk7GILqnCGtI=; b=SortENSasfsdDS
	FO4bMqmskz7DWsn/U/g1pt2fH+vfE8ipP6Z/FMcsXkZIgMdtUvdW2gmp52epzgx7ENaHbBKFwF18Z
	Kn4rhaqUztlDmc3hhD/GGvCiHgihKQradqNBuuG83DbVrTWpP/sCeYJej/WeacznXfjR1tm6IoNWP
	j3m2jA6UcxiNDLsvuHL7uvEegNTDkz82+XCpdUkOD1v512L0S9OY5AjVBw0Nryq43k7fndXxWGpW1
	nny8kfFdRk8EYNvT7DJjjvQw1bh7dx8IXihIOrBxYaZmSMDl4gbqbrGLfyqADXyTWU+39/3JDtYDO
	S9yN7RHGkO7L+S0mA7Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haSIp-0001p1-G4; Mon, 10 Jun 2019 21:58:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haSId-0001ob-IO
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 21:57:56 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 174A820859
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 21:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560203875;
 bh=g4mY100w2qgQoqrm9iHtxlwWj9iN/wYo4Hcn8OgqS8Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=fO8OzSFz3yf/+buoGxsLocyYpw/2kZwneLtrMzQ05YDjIRyc2CdUqR1PIhjOLP5x/
 jvFdH7X9Uqd/8QErrXxULrDRJNIS7T+v9WXbPRP/d7ScW5DXaSbbrO3WHycdhZxgdR
 lftNaJOTMYM6k3XwuF9LnSP3XL1HG4cbXSzsrReg=
Received: by mail-qt1-f180.google.com with SMTP id p15so4777243qtl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 14:57:55 -0700 (PDT)
X-Gm-Message-State: APjAAAUfUtlX290dRFOGcMQQqZD8HMGtiXpcpmjhVMym2mIt2fhFC1+C
 mOuibIcKmwel0A07J8Y8C81FtKq4KSwDUurgQQ==
X-Google-Smtp-Source: APXvYqw1cfkjGTbC0jdIEGlyRcw4f3LBrmMrdCPBXItz9JGMvlPjCnQIatnqWLCFa+L6qVlKCb97ojLPMStDgnodVi8=
X-Received: by 2002:a0c:8a43:: with SMTP id 3mr13015726qvu.138.1560203874386; 
 Mon, 10 Jun 2019 14:57:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190531063849.26142-1-manivannan.sadhasivam@linaro.org>
 <20190531063849.26142-3-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190531063849.26142-3-manivannan.sadhasivam@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 10 Jun 2019 15:57:43 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+N7NA7m+dp+zpwFeZLM6B+OwRrqZdzKkJp2TRWi_e3Mw@mail.gmail.com>
Message-ID: <CAL_Jsq+N7NA7m+dp+zpwFeZLM6B+OwRrqZdzKkJp2TRWi_e3Mw@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: arm: stm32: Convert STM32 SoC
 bindings to DT schema
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_145755_624199_63F3E370 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 loic pallardy <loic.pallardy@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 12:39 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> This commit converts STM32 SoC bindings to DT schema using jsonschema.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../devicetree/bindings/arm/stm32/stm32.yaml  | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/stm32/stm32.yaml

Converting implies removal of something. The schema looks fine though.

>
> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> new file mode 100644
> index 000000000000..f53dc0f2d7b3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> @@ -0,0 +1,29 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/stm32/stm32.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 Platforms Device Tree Bindings
> +
> +maintainers:
> +  - Alexandre Torgue <alexandre.torgue@st.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: st,stm32f429
> +
> +      - items:
> +          - const: st,stm32f469
> +
> +      - items:
> +          - const: st,stm32f746
> +
> +      - items:
> +          - const: st,stm32h743
> +
> +      - items:
> +          - const: st,stm32mp157
> +...
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
