Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAB819A15B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 23:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmuZdnRnT+JU+yUGk8IkLBkABQra5dHb77LnC7HWEZY=; b=Y4rKdND9kVvF9i
	uZTXOYMFglRaH+gjV+ARG45KXJnr/LHYk22oi3aNWknJ4amHU90gwzDQRkJx/iT2ePRKTEPOSp/ES
	tK8V6MXD182Nhlj8GcPE5evRhNLrIbJ/5LySZO0xNhqMW2YX2V+M/t6KwexyQfvGlvoItNq3dcTrD
	Ka0ndb8OAKpc++a1d1yWBn7+r7MZo1jJyihiznSPa+zLHzmLVqR/bAVqwL5y95EZtRFVuUY6PxiwK
	nvihXtMTq8nQkd7z3u4kGK74/r3Hdo7rNqZ+O9ynsuZ/Y2zeVs8g3+9E9UOK0jR9SOp8xQ8dCebqe
	anJBu69ziV7XmfecgMxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOqt-0006W2-Kl; Tue, 31 Mar 2020 21:55:19 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOqZ-0006Ks-It
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 21:55:00 +0000
Received: by mail-io1-f67.google.com with SMTP id i3so14310439ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 14:54:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=11pFjDa/Z9YxdK11hpWSqQAE1GxHCAeolDe4bFA2Hvw=;
 b=U1+Yfo6my3vfnJowdir5gsW1F2EwR1Z7hQuMjUIfpfoZ4Qwxd9H34zflywIcoOvpbR
 gRzmivFWKHqEvT2ZSnUT4V+3ZMwhBFWmk9dpDtZdeLfRg8pPabEcaovYx4FJM+E/X8Hn
 eKz9benk46IO6EmNfSA8x9yWEtJW5vOfEl92fpwe7gn/tJbPXLpa3w63geXK3YY2Inch
 kQz0X1++7iZy+e5DyrB0crhAVHb6LD6a46w/59QdVDcbVTz17b8JuJiuV3tFZIsrTVdQ
 jEQCUQimXY1SA9Khfdg2dIwvt5VyRi0Ns3+K40gCloi7B2/+jJADwktcQer2ZcOUhcuq
 6X+g==
X-Gm-Message-State: ANhLgQ1pM+kcPWuvD7UX8mJINR0JlSQzefL7L8LfLP+biKvyp2zQIuMW
 jumboarCJr3+JfZJ+H/nlA==
X-Google-Smtp-Source: ADFU+vupLX8M6U2FZmDT40jwK+DGW65CRtTxIt40vQQvbEj5lptgfL6vlhVc89Nm4mf08y9N6gacyg==
X-Received: by 2002:a6b:580d:: with SMTP id m13mr17554237iob.59.1585691698738; 
 Tue, 31 Mar 2020 14:54:58 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id l14sm36289ioj.22.2020.03.31.14.54.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 14:54:58 -0700 (PDT)
Received: (nullmailer pid 7976 invoked by uid 1000);
 Tue, 31 Mar 2020 21:54:56 -0000
Date: Tue, 31 Mar 2020 15:54:56 -0600
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH v2 02/13] Documentation: mfd: Add DT bindings for i.MX
 Audiomix
Message-ID: <20200331215456.GA656@bogus>
References: <1585150731-3354-1-git-send-email-abel.vesa@nxp.com>
 <1585150731-3354-3-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585150731-3354-3-git-send-email-abel.vesa@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_145459_618533_9610F37E 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 05:38:40PM +0200, Abel Vesa wrote:
> The i.MX Audiomix is a mix of clock gates, reset bits
> and some other i.MX audio specific functionalities.
> Add information for the MFD, its clock and reset controllers.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  .../devicetree/bindings/mfd/fsl,imx-audiomix.txt   | 34 ++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/fsl,imx-audiomix.txt

Please use DT schema format.
 
> diff --git a/Documentation/devicetree/bindings/mfd/fsl,imx-audiomix.txt b/Documentation/devicetree/bindings/mfd/fsl,imx-audiomix.txt
> new file mode 100644
> index 00000000..1622818
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/fsl,imx-audiomix.txt
> @@ -0,0 +1,34 @@
> +Freescale i.MX Audiomix
> +======================================
> +
> +Audiomix is a conglomerate of different functionalities.
> +
> +Required properties:
> +- compatible: Should be "fsl,<chip>-mix" for the MFD device
> +	Should be"fsl,<chip>-audiomix-clk" for the clock controller
> +	Should be"fsl,<chip>-audiomix-reset" for the reset controller
> +	Some functionalities of the audiomix will be registered as syscon.
> +- reg: should be register base and length as documented in the
> +  datasheet
> +
> +example:
> +	audiomix: audiomix@30e20000 {
> +		compatible = "fsl,imx8mp-mix";
> +		reg = <0x30e20000 0x10000>;
> +
> +		audiomix_clk: clock-controller {
> +			compatible = "fsl,imx8mp-audiomix-clk";
> +			#clock-cells = <1>;
> +			clocks = <&clk IMX8MP_CLK_AUDIO_ROOT>,
> +				 <&clk IMX8MP_CLK_AUDIO_AHB>,
> +				 <&clk IMX8MP_CLK_AUDIO_AXI_DIV>;

None of these clocks are needed for the other functions in this MFD.

I'm not all that convinced that these child nodes are needed. A single 
node can be a clock and reset provider. If you have other things to add 
to the binding, do so now even if you don't have driver support.

> +			clock-names = "audio_root",
> +				      "audio_ahb",
> +				      "audio_axi_div";
> +		};
> +
> +		audiomix_reset: reset-controller {
> +			compatible = "fsl,imx8mp-audiomix-reset";
> +			#reset-cells = <1>;
> +		};
> +	};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
