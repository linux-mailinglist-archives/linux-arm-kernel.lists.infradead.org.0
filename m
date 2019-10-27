Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475C5E6777
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 22:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifqn5mVXfi/2uWPgv7Aa9QvinLo+bN8i1mPqGxTvytc=; b=AdpYfD0+rt/dHK
	ZYcqNPQrDlAIBXpuIpdd/MuF4+hIEng1d3OAVBYQM5UHPfO7xtcpzChS67W8rt7QJabt555jblHPZ
	QRcUxsbWkF/GNx29E+UhDwW8ET+CxEbobos3XQXtWSlwnu/YNDIRq7zlvlemFKept1Q41uCOgX56H
	yrMuxqNnxr/1M3HWWZVl1XN3nT9P2Uw3NwPosA/HaZjyXOSX+9A5zlxDir2BgFaTzw0cFz2VMbhz5
	w4fMuFz/iDSc5sXTFBdy4GbNmocvWOSCO6gz/cyXcRU97bgqmYGoOgh+neB9zb3SQyhZwLU27nhba
	EbyqWKsYYrT7B3BRd/tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOpye-0002Ix-VQ; Sun, 27 Oct 2019 21:21:32 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOpyV-0002I2-HU
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 21:21:24 +0000
Received: by mail-ot1-f66.google.com with SMTP id i6so233564oto.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 27 Oct 2019 14:21:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=b/1qX8QqURu4yTR6/F+UUQyKvsmnZpVehqktiXte3R0=;
 b=uT9X/C5gFp2eZJkhTtFWNco1p+/bS/aWiJcgNaOmoKnD9WCvh0KGL1ZOJzAPF7kBFg
 5MX5AQQOZsIG0bgZLNTZZvszlXNhy5KsuKdHzwDpfGcHw0uS9dCAJKk5rVliWvA6FM1c
 KGxXwJAlkMsV1E0wTzN5w+o4XG85hyjkMMJrjR5WVz5ciMmJa4/xtipTzXPM4b7UHNp4
 rqMDGEqLCHJzs+E8HoD2a53o0zbCN9+DNz48XvLYXVEJwycaE3sWDFggRjERBhjkMbk0
 S6iMyGvCRsY9dbbc74xjScvl1r+Zer6hyeXvG9r4Rcaz5XHyPP3CSFm2dsqSG3mec9t8
 RyZQ==
X-Gm-Message-State: APjAAAUspHSoewf/VDKeYLvQo+Q+KpBp8AoLT1cjMIVhDsk2egAhZdjm
 u+NO5jG5MEwGAplmricAoA==
X-Google-Smtp-Source: APXvYqxeon+14sBfRLWGf2262ii9N4LSrDCmUuiwS4ja+XW6LEnxA7FhNfNFumE68Q5l0ZieaUkX9Q==
X-Received: by 2002:a9d:6357:: with SMTP id y23mr11151500otk.86.1572211282486; 
 Sun, 27 Oct 2019 14:21:22 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o23sm3054166ote.67.2019.10.27.14.21.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 14:21:21 -0700 (PDT)
Date: Sun, 27 Oct 2019 16:21:21 -0500
From: Rob Herring <robh@kernel.org>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: timer: imx: gpt: Add pin group bindings
 for input capture
Message-ID: <20191027212121.GA3049@bogus>
References: <20191016010544.14561-1-slongerbeam@gmail.com>
 <20191016010544.14561-3-slongerbeam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016010544.14561-3-slongerbeam@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_142123_578203_4742E716 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, "open list:CLOCKSOURCE,
 CLOCKEVENT DRIVERS" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 06:05:44PM -0700, Steve Longerbeam wrote:
> Add pin group bindings to support input capture function of the i.MX
> GPT.
> 
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> ---
>  .../devicetree/bindings/timer/fsl,imxgpt.txt  | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> index 5d8fd5b52598..32797b7b0d02 100644
> --- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> +++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> @@ -33,6 +33,13 @@ Required properties:
>             an entry for each entry in clock-names.
>  - clock-names : must include "ipg" entry first, then "per" entry.
>  
> +Optional properties:
> +
> +- pinctrl-0: For the i.MX GPT to support the Input Capture function,
> +  	     the input capture channel pin groups must be listed here.
> +- pinctrl-names: must be "default".
> +
> +
>  Example:
>  
>  gpt1: timer@10003000 {
> @@ -43,3 +50,24 @@ gpt1: timer@10003000 {
>  		 <&clks IMX27_CLK_PER1_GATE>;
>  	clock-names = "ipg", "per";
>  };
> +
> +
> +Example with input capture channel 0 support:
> +
> +pinctrl_gpt_input_capture0: gptinputcapture0grp {
> +	fsl,pins = <
> +		MX6QDL_PAD_SD1_DAT0__GPT_CAPTURE1 0x1b0b0
> +	>;
> +};
> +
> +gpt: gpt@2098000 {

timer@...

I don't really think this merits another example though. 

> +	compatible = "fsl,imx6q-gpt", "fsl,imx31-gpt";
> +	reg = <0x02098000 0x4000>;
> +	interrupts = <0 55 IRQ_TYPE_LEVEL_HIGH>;
> +	clocks = <&clks IMX6QDL_CLK_GPT_IPG>,
> +		<&clks IMX6QDL_CLK_GPT_IPG_PER>,
> +		<&clks IMX6QDL_CLK_GPT_3M>;
> +	clock-names = "ipg", "per", "osc_per";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_gpt_input_capture0>;
> +};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
