Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EFF12FFA9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 01:36:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUo9xVJHg017cGRU2g24TnrLzhPcyzcUH8OoSGIOxUQ=; b=IU7iNaiC5/vadd
	3ziWsqKy5xbuPhjsQGOT21XefCob9er7VlwK14UuEaNJyUL3eb5Vao8R23PgZPKceTR+jBDK++/rA
	VplyzwnMH+wGFsPPoaWawiXROYmcrU3TTmonX1wgGFbQy6FF9sNtn1Us2rxWoP3lXD9N1nMkyuefc
	indGmj/FjSkCTtBuLjya7G/R29GFQA1O8ttqcORGYbJ0qU538DF7ox3Vw1mUZNCjbJ6w8YypeTqle
	oFlfjIc+Uxclpm7x2bNgM5j1HEp5SaT5HdCEv3RFQcTBdRu2j9orXAaFbg9l4+9iP92x0lePVXDI9
	V7mZ6Pqpw90JgeeXyjGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inXQw-0004Gd-DP; Sat, 04 Jan 2020 00:36:50 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inXQk-0004G0-SN
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 00:36:40 +0000
Received: by mail-io1-f66.google.com with SMTP id z8so43112639ioh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 16:36:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=onR7Gnh/HEyizscz7/aRTtEnV/BPOWeM3TZPN0CJufc=;
 b=ArG41MXlkQ4hNvb9bMUFKTtvXAV5WfJB04JuUsluOijkM54XL1x1ibFSrBtoBF5VHr
 eIQetNG3lrc9P+i+Y2GZnLgOmvVEqr/Ghd9q+9dW1MP1wjmvmg2GOe4rCRYoAVt42445
 2g8AfKjxSQrj/HquYCw0ljunryBcDNxjjEh+bZGL0TaIC+3kusijQfFcp/mAyW6wqYp2
 wNrlwMFfmF3dBRJwFSl68a+0yph6KjxdPlT+pZrZHDG7D4JAQjTCY1n87f/bWhQjMWO7
 INMFKgTV468eXeGxDKnHGYAEfg7Xk+20r9RLJWe0MvzqEk4YvCHJHZNeURYhYYaOn+ia
 gpnQ==
X-Gm-Message-State: APjAAAUJEpOjUFKSOYQKs3abq8gR/HWP7ztWMAQMAVuaJ6OKcrRMbToP
 ejWzuBYHsdkDqc74Z469i3c+97k=
X-Google-Smtp-Source: APXvYqzMPwVj52mv3HuSTEHxhdp8VGLKlAFZpwnyO0e+UODDwCc0SKM2bCo9bxzLKdRPHMaCyBfp8A==
X-Received: by 2002:a6b:6117:: with SMTP id v23mr21860058iob.79.1578098197689; 
 Fri, 03 Jan 2020 16:36:37 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id e7sm15201963iot.71.2020.01.03.16.36.35
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 16:36:36 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219a5
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Fri, 03 Jan 2020 17:36:34 -0700
Date: Fri, 3 Jan 2020 17:36:34 -0700
From: Rob Herring <robh@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] ARM: dts: imx: drop "fsl,aips-bus"
Message-ID: <20200104003634.GA6058@bogus>
References: <1577696078-21720-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577696078-21720-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_163638_952640_98E94EDB 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 08:58:05AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> There is no binding doc for "fsl,aips-bus", "simple-bus" is enough
> for aips usage, so drop it.

NAK. The AIPS bus has registers, so 'simple-bus' alone is not enough.

What you should do is change 'aips' node names to 'bus'.

> 
> Scirpt:
> sed -i 's/compatible = "fsl,aips-bus", "simple-bus";/compatible = "simple-bus";/'
> arch/arm/boot/dts/imx*
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm/boot/dts/imx25.dtsi   | 4 ++--
>  arch/arm/boot/dts/imx31.dtsi   | 4 ++--
>  arch/arm/boot/dts/imx50.dtsi   | 4 ++--
>  arch/arm/boot/dts/imx51.dtsi   | 4 ++--
>  arch/arm/boot/dts/imx53.dtsi   | 4 ++--
>  arch/arm/boot/dts/imx6qdl.dtsi | 4 ++--
>  arch/arm/boot/dts/imx6sl.dtsi  | 4 ++--
>  arch/arm/boot/dts/imx6sll.dtsi | 4 ++--
>  arch/arm/boot/dts/imx6sx.dtsi  | 6 +++---
>  arch/arm/boot/dts/imx6ul.dtsi  | 4 ++--
>  arch/arm/boot/dts/imx6ull.dtsi | 2 +-
>  arch/arm/boot/dts/imx7s.dtsi   | 6 +++---
>  12 files changed, 25 insertions(+), 25 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx25.dtsi b/arch/arm/boot/dts/imx25.dtsi
> index 40b95a290bd6..3b7a0b249d80 100644
> --- a/arch/arm/boot/dts/imx25.dtsi
> +++ b/arch/arm/boot/dts/imx25.dtsi
> @@ -76,7 +76,7 @@
>  		ranges;
>  
>  		aips@43f00000 { /* AIPS1 */
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x43f00000 0x100000>;
> @@ -333,7 +333,7 @@
>  		};
>  
>  		aips@53f00000 { /* AIPS2 */
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x53f00000 0x100000>;
> diff --git a/arch/arm/boot/dts/imx31.dtsi b/arch/arm/boot/dts/imx31.dtsi
> index 6b62f0745b82..b0e7e3bf8a1a 100644
> --- a/arch/arm/boot/dts/imx31.dtsi
> +++ b/arch/arm/boot/dts/imx31.dtsi
> @@ -64,7 +64,7 @@
>  		};
>  
>  		aips@43f00000 { /* AIPS1 */
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x43f00000 0x100000>;
> @@ -226,7 +226,7 @@
>  		};
>  
>  		aips@53f00000 { /* AIPS2 */
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x53f00000 0x100000>;
> diff --git a/arch/arm/boot/dts/imx50.dtsi b/arch/arm/boot/dts/imx50.dtsi
> index 0bfe7c91d0eb..961de09b571d 100644
> --- a/arch/arm/boot/dts/imx50.dtsi
> +++ b/arch/arm/boot/dts/imx50.dtsi
> @@ -102,7 +102,7 @@
>  		ranges;
>  
>  		aips@50000000 { /* AIPS1 */
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x50000000 0x10000000>;
> @@ -390,7 +390,7 @@
>  		};
>  
>  		aips@60000000 {	/* AIPS2 */
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x60000000 0x10000000>;
> diff --git a/arch/arm/boot/dts/imx51.dtsi b/arch/arm/boot/dts/imx51.dtsi
> index dea86b98e9c3..86708688371b 100644
> --- a/arch/arm/boot/dts/imx51.dtsi
> +++ b/arch/arm/boot/dts/imx51.dtsi
> @@ -159,7 +159,7 @@
>  		};
>  
>  		aips@70000000 { /* AIPS1 */
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x70000000 0x10000000>;
> @@ -441,7 +441,7 @@
>  		};
>  
>  		aips@80000000 {	/* AIPS2 */
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x80000000 0x10000000>;
> diff --git a/arch/arm/boot/dts/imx53.dtsi b/arch/arm/boot/dts/imx53.dtsi
> index ed341cfd9d09..f46a83c7d2c4 100644
> --- a/arch/arm/boot/dts/imx53.dtsi
> +++ b/arch/arm/boot/dts/imx53.dtsi
> @@ -223,7 +223,7 @@
>  		};
>  
>  		aips@50000000 { /* AIPS1 */
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x50000000 0x10000000>;
> @@ -655,7 +655,7 @@
>  		};
>  
>  		aips@60000000 {	/* AIPS2 */
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x60000000 0x10000000>;
> diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
> index e6b4b8525f98..9b7635e9cf3c 100644
> --- a/arch/arm/boot/dts/imx6qdl.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl.dtsi
> @@ -295,7 +295,7 @@
>  		};
>  
>  		aips-bus@2000000 { /* AIPS1 */
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x02000000 0x100000>;
> @@ -936,7 +936,7 @@
>  		};
>  
>  		aips-bus@2100000 { /* AIPS2 */
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x02100000 0x100000>;
> diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
> index 59c54e6ad09a..4b4f22217dfe 100644
> --- a/arch/arm/boot/dts/imx6sl.dtsi
> +++ b/arch/arm/boot/dts/imx6sl.dtsi
> @@ -144,7 +144,7 @@
>  		};
>  
>  		aips1: aips-bus@2000000 {
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x02000000 0x100000>;
> @@ -787,7 +787,7 @@
>  		};
>  
>  		aips2: aips-bus@2100000 {
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x02100000 0x100000>;
> diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
> index a1bc5bb31756..fac8f22255aa 100644
> --- a/arch/arm/boot/dts/imx6sll.dtsi
> +++ b/arch/arm/boot/dts/imx6sll.dtsi
> @@ -145,7 +145,7 @@
>  		};
>  
>  		aips1: aips-bus@2000000 {
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x02000000 0x100000>;
> @@ -664,7 +664,7 @@
>  		};
>  
>  		aips2: aips-bus@2100000 {
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x02100000 0x100000>;
> diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
> index 59bad60a47dc..4499be62c8bb 100644
> --- a/arch/arm/boot/dts/imx6sx.dtsi
> +++ b/arch/arm/boot/dts/imx6sx.dtsi
> @@ -236,7 +236,7 @@
>  		};
>  
>  		aips1: aips-bus@2000000 {
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x02000000 0x100000>;
> @@ -831,7 +831,7 @@
>  		};
>  
>  		aips2: aips-bus@2100000 {
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x02100000 0x100000>;
> @@ -1189,7 +1189,7 @@
>  		};
>  
>  		aips3: aips-bus@2200000 {
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x02200000 0x100000>;
> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index d9fdca12819b..63d276fc2477 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -205,7 +205,7 @@
>  		};
>  
>  		aips1: aips-bus@2000000 {
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x02000000 0x100000>;
> @@ -772,7 +772,7 @@
>  		};
>  
>  		aips2: aips-bus@2100000 {
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x02100000 0x100000>;
> diff --git a/arch/arm/boot/dts/imx6ull.dtsi b/arch/arm/boot/dts/imx6ull.dtsi
> index b7e67d121322..633fa08bc972 100644
> --- a/arch/arm/boot/dts/imx6ull.dtsi
> +++ b/arch/arm/boot/dts/imx6ull.dtsi
> @@ -52,7 +52,7 @@
>  / {
>  	soc {
>  		aips3: aips-bus@2200000 {
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x02200000 0x100000>;
> diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
> index 139ab9b98472..552b14be14a1 100644
> --- a/arch/arm/boot/dts/imx7s.dtsi
> +++ b/arch/arm/boot/dts/imx7s.dtsi
> @@ -317,7 +317,7 @@
>  		};
>  
>  		aips1: aips-bus@30000000 {
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x30000000 0x400000>;
> @@ -669,7 +669,7 @@
>  		};
>  
>  		aips2: aips-bus@30400000 {
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x30400000 0x400000>;
> @@ -809,7 +809,7 @@
>  		};
>  
>  		aips3: aips-bus@30800000 {
> -			compatible = "fsl,aips-bus", "simple-bus";
> +			compatible = "simple-bus";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			reg = <0x30800000 0x400000>;
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
