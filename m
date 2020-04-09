Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAAF1A3549
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8eAOmhMahuFlkg227LAN1LtItW14ooi4/zVbKPtI00=; b=nQozZI5AqTYxL8
	ymh3SXQylaMFtqgW95z+PPC3Ibih6nRCEY/7/hxvOq9BB390mP1VpLJSZ9lvBtuWsfnZL+r5LF9gj
	mD47TskgjcWqc3CMdv+ErXijtTZNv5KlmEr1R9ZRbjJWelbHvo7axyCpZqF/jQjaotf6bbBtNNiHe
	vtoEMm5tcBySmG6YJHvC9bZoUJnRarQA4N6/ylAO+dJ0oOLZzvogTIaJ+rLwqIMR2jr47n8+0mhcT
	anvkamnv+q6L1VpKwr+iKpMuCHur7Q8f6REWO4JS5qv7bkbimLrV0rCoYre/QDc9iFFP5P8O/52BN
	SHM3m7TyusldSNa/UqdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXiw-0000jq-OH; Thu, 09 Apr 2020 14:00:06 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMXil-0000jD-V1
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 13:59:57 +0000
Received: by mail-ua1-x943.google.com with SMTP id o14so488852uat.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 06:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6jkl82fMmpPtjMZVRujvoQOTRneX3UQjhsTCNuv3S3s=;
 b=FxVC96kMHeavDRhR9NWDUmy5X49gFWh+0HDbaZ+6UAnMrYLIJRBzFUzjIg5nPzxoBt
 5TBgUZVAHEdP1R0TyuZ9lnFvvuIHvJBobOtbitVPPXKY/vCVO3XVZYahbUJoDoTnPZNZ
 yqxmWfG17xufkMVcpF2SWFHvkVpXZk7zp+AM0WYwKew0o4xf3jubzWh/IKVh692yiXTG
 BK/OC78W9NuBBh4XwFtoL0dnoumlFR41FMU//UDE4T5k8Iae0juCPjjByqkCIX5G+Lve
 FjYpYaR8S3OAGW8iSoabqVJmnJk8LaYyh56y27V3s/ThIjWI03x7Dfs5AkWDG1u28hQI
 W+ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6jkl82fMmpPtjMZVRujvoQOTRneX3UQjhsTCNuv3S3s=;
 b=lKlJLKTWbcsHg0aNwJYWaIsk8SuZ05th71TlOn94sQd7ZnfmKpxg3KNhM+Dk2O8HfK
 PZqZC1DJaVZcWeAhxnvzobHDI2mGCcwhfTjf2vQvOwVLO3I98HA7s1NkUqVLq2FVyf98
 AA12y3aE8hWrgZu+YsBd+rnIblayqDORf2g5z8QfBpfSI1oWB5S4Vp1H/jAHN66e/V6G
 TMxO3CfUI1hFNxMRv4PXzEG8KgO+MOEY4bZtYPaTepdcGFkADCuY9NVsmcbBsO/LVnfI
 m6j6JgxqjZoqEy7eHZZdgZZc+/qUlX+SBAPYUYtuOYZN2GkHQ7MJCvp++xQnBFnmKZjs
 2W1w==
X-Gm-Message-State: AGi0PuZ/L8mQBDZICAOgxLagTCZkUpA5lmbpCRrsFh3VAvrEHw6Ffik7
 Yo6nVYM7J9Jaj8F7g6yb/TgRo/OTrA5+A53btVRatzJRwBI=
X-Google-Smtp-Source: APiQypIDFpo4gH1UScb4MbAQVnWTILN06mQONvAjwMuBOpgK2p9AlvbueRBggIkJbzWGyZJKZKNcrD7wzAfLjecKsWE=
X-Received: by 2002:ab0:608b:: with SMTP id i11mr9020160ual.94.1586440794633; 
 Thu, 09 Apr 2020 06:59:54 -0700 (PDT)
MIME-Version: 1.0
References: <1586402293-30579-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1586402293-30579-1-git-send-email-Anson.Huang@nxp.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 9 Apr 2020 19:29:43 +0530
Message-ID: <CAHLCerNonZ7qJi8Qihmj87QteEnxTF0PRS6vw5GPemMurOfS9Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: thermal: Convert i.MX8MM to json-schema
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_065955_999199_B735E041 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <Linux-imx@nxp.com>, kernel@pengutronix.de,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Thu, Apr 9, 2020 at 8:56 AM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> Convert the i.MX8MM thermal binding to DT schema format using json-schema

Would it be possible to have a single yaml file for all i.MX thermal
sensors by playing with required and optional properties ?

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/thermal/imx8mm-thermal.txt | 15 ------
>  .../bindings/thermal/imx8mm-thermal.yaml           | 53 ++++++++++++++++++++++
>  2 files changed, 53 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
>  create mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
>
> diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> deleted file mode 100644
> index 3629d3c..0000000
> --- a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -* Thermal Monitoring Unit (TMU) on Freescale i.MX8MM SoC
> -
> -Required properties:
> -- compatible : Must be "fsl,imx8mm-tmu" or "fsl,imx8mp-tmu".
> -- reg : Address range of TMU registers.
> -- clocks : TMU's clock source.
> -- #thermal-sensor-cells : Should be 0 or 1. See ./thermal.txt for a description.
> -
> -Example:
> -tmu: tmu@30260000 {
> -       compatible = "fsl,imx8mm-tmu";
> -       reg = <0x30260000 0x10000>;
> -       clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
> -       #thermal-sensor-cells = <0>;
> -};
> diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> new file mode 100644
> index 0000000..53a42b3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/imx8mm-thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8M Mini Thermal Binding
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - fsl,imx8mm-tmu
> +              - fsl,imx8mp-tmu
> +  reg:
> +    description: |
> +      Address range of TMU registers.
> +    maxItems: 1
> +  clocks:
> +    description: |
> +      TMU's clock source.
> +    maxItems: 1
> +
> +  # See ./thermal.txt for details

Don't point to thermal.txt anymore. thermal.txt will be replaced by
thermal-*.yaml files at some point soon.

> +  "#thermal-sensor-cells":
> +    enum:
> +      - 0

Don't you have multiple sensors connected to this controller? In that
case, 0 won't be a valid value.

> +      - 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - '#thermal-sensor-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mm-clock.h>
> +
> +    tmu: tmu@30260000 {
> +         compatible = "fsl,imx8mm-tmu";
> +         reg = <0x30260000 0x10000>;
> +         clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
> +         #thermal-sensor-cells = <0>;
> +    };
> +
> +...
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
