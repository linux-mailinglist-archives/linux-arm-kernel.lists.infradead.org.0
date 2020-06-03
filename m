Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F05B91ED40E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 18:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HcLOwr20+oke8vT6ykOnONKfR95ke2Wd6GWO5lG+dAM=; b=uldb2N+tZsXNk/
	+WfiU72xroZxWpDD9ovyr35+q9IfqXlUlwiCfyOmc39mFhYLJYWMT2M+eFfFDl4dz/SUsQ7vpjVD8
	aYvy8ReedmhtXv0ZOxHx89dP3JTwtpJ3tEVzsPSbaOll/B5o1+QiNJJvX+06hDyL+L+vh3v8c3fbs
	k75smNQnioiuLAvBP3uOKK2YxAWfREwPNX3DkJWHK+eCDErXI/agqU3u/sbjTF5hdKOdp7pt5ZGi3
	tVEMwVxSA2QRvr4dtbKjF2Zs2uHlm0GCjQiWLNpFyHE66yhx9oxpj8fI96IOUpr0fyLXSV4cPyKIz
	u3OviWnYU5s6ZDDpO3zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgW42-0001R0-DL; Wed, 03 Jun 2020 16:16:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgW3t-0001QJ-PS
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 16:16:19 +0000
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
 [209.85.210.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C65ED207D5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  3 Jun 2020 16:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591200976;
 bh=BoDLkq02THt+WbJVaiCCXtU5luclbfhVMmW4TS/e9Qg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0xIWs3b4/5BAZl5fKQdnqF63gWHhHFrLKLNd3bnlrXtYV3z5O3XIMZKKAeViSvDpj
 7QtQQmZgy6EEP1w0l1pRehQWLxi2AUoS7PW4Tszk7IMBO1IehQCvOH9ILZ2VVEHWlA
 elWvPMGVyHjgU46ArmjkTY1B+lAU3xRVTCndgAlI=
Received: by mail-ot1-f50.google.com with SMTP id v17so2347424ote.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 09:16:16 -0700 (PDT)
X-Gm-Message-State: AOAM532N/58L6cHVAqIpFQWRpr8URdhmPiphWhYoj11pKjgTZHig+F5V
 +cH6KFFCD0hMSNzpdB8tH10ap2pgKXprGsu3NA==
X-Google-Smtp-Source: ABdhPJygRbGJCR00jC843Jp0prKdRc4VE8QO7dAZqmdODfIB/KZwGlghUEPf3SCOdRw3ZaN+HGgzsMSbMQOZ9qnxXPM=
X-Received: by 2002:a05:6830:3104:: with SMTP id
 b4mr575554ots.192.1591200976092; 
 Wed, 03 Jun 2020 09:16:16 -0700 (PDT)
MIME-Version: 1.0
References: <1591184925-13055-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1591184925-13055-1-git-send-email-Anson.Huang@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 3 Jun 2020 10:15:55 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKGibK00edV5eG8HR1A0ks7ojY5uNssaqtYwiGJWt+GuA@mail.gmail.com>
Message-ID: <CAL_JsqKGibK00edV5eG8HR1A0ks7ojY5uNssaqtYwiGJWt+GuA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: rtc: Convert imxdi rtc to json-schema
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_091617_866525_AD6A77FC 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Roland Stigge <stigge@antcom.de>, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <Linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 3, 2020 at 5:59 AM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> Convert the i.MXDI RTC binding to DT schema format using json-schema
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/rtc/imxdi-rtc.txt          | 20 -----------
>  .../devicetree/bindings/rtc/imxdi-rtc.yaml         | 42 ++++++++++++++++++++++
>  2 files changed, 42 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rtc/imxdi-rtc.txt
>  create mode 100644 Documentation/devicetree/bindings/rtc/imxdi-rtc.yaml
>
> diff --git a/Documentation/devicetree/bindings/rtc/imxdi-rtc.txt b/Documentation/devicetree/bindings/rtc/imxdi-rtc.txt
> deleted file mode 100644
> index c797bc9..0000000
> --- a/Documentation/devicetree/bindings/rtc/imxdi-rtc.txt
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -* i.MX25 Real Time Clock controller
> -
> -Required properties:
> -- compatible: should be: "fsl,imx25-rtc"
> -- reg: physical base address of the controller and length of memory mapped
> -  region.
> -- clocks: should contain the phandle for the rtc clock
> -- interrupts: rtc alarm interrupt
> -
> -Optional properties:
> -- interrupts: dryice security violation interrupt (second entry)
> -
> -Example:
> -
> -rtc@53ffc000 {
> -       compatible = "fsl,imx25-rtc";
> -       reg = <0x53ffc000 0x4000>;
> -       clocks = <&clks 81>;
> -       interrupts = <25 56>;
> -};
> diff --git a/Documentation/devicetree/bindings/rtc/imxdi-rtc.yaml b/Documentation/devicetree/bindings/rtc/imxdi-rtc.yaml
> new file mode 100644
> index 0000000..6e43926
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rtc/imxdi-rtc.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rtc/imxdi-rtc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: i.MX25 Real Time Clock controller
> +
> +maintainers:
> +  - Roland Stigge <stigge@antcom.de>
> +
> +properties:
> +  compatible:
> +    const: fsl,imx25-rtc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: rtc alarm interrupt
> +      - description: dryice security violation interrupt
> +    minItems: 1
> +    maxItems: 2
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks

Needs:

additionalProperties: false

(or if you have a top level $ref, 'unevaluatedProperties: false')

I fixed these up in what I applied already, but please check all of
yours pending and fix.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
