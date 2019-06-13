Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A3844D06
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 22:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xcwFkHsRqLm0AmQnrujWHuPLF2OlOGNFSKtEJsaOI+s=; b=BIsyn8GBwTE0Pn
	CXP0kEeGW2zD6FNWsK9ai1DznLbie/BHVxOY2KJOkkTsEQ7xiuXxd83514gZtzfhXjj6x8CtQ0eSE
	c1aiYDRlbxBlC+tBf6wcrxT7CS5N2TsbwhAXW8qEOOUV25a2Yrn29GYzVTeXe1LIjyIs1WXMnigrg
	TZB591qjS81WgBYvcrgoqFkNOiv/WYmfdUKDJ107Gj070LYqmUsBfmAoaD8pSGYcnZhjVyhTl8WpG
	MkFw0Zfh7kotceFKdHVsGOtJcRmjIBvUZox7ZqMT6AnIRydj3UrCsH567B5SJNmMeNl1cYKk4Ktnk
	cXJyrlDyTpM/BhaNocMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbW1L-0000hP-IR; Thu, 13 Jun 2019 20:08:27 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbW1C-0000Y2-5U
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 20:08:19 +0000
Received: by mail-qt1-f194.google.com with SMTP id n11so21946188qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 13:08:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UwChhjSzjeOfvvnEfR7YJU7oQ/qodwbm5JIdXsqXlRo=;
 b=f4wdWtp9DWUOoI5bC6SbvBpK8s9f4/DantLEA5h2mnZSpPBW3/7idzmUYXfEtrG6GW
 kDgH/b246ljriiH2dvreS7SThyS0Jehnbf3804tvxGZrpOMDPrZ2KqnONKetKMwIJ33U
 jsNvme5rcOQWiox1RF/Ht8lxGcAuwByk0pqcScq0ITKBE+eZdtHW9/Jz4mh6JILzZ8uS
 2rSfdMglrsu0c27cQ4ff2AW0mTjsjr1/nXcHvcTMKFrjwHIv+bQTIN8SScqXqs3uKsas
 Pr5pdiy/o6dK0nPfckQGtjlsJmnDEHrMt1X3gmfv21w6NMBlzUIqi3P7qAznb/BAx0OH
 lcyA==
X-Gm-Message-State: APjAAAWHexx1DjGOojGoUNU1K82rIGM7voPXWdxfCzzzTrzdCF7tdtrt
 LbkcbGD35jSG/e2+NzXwVA==
X-Google-Smtp-Source: APXvYqxlMoVZh97RRGXb4sVgHdetYuU+vA47kS1FGVMnu6eGCEIfvRk5fRpKmQ3WZnBR9tg5KwicmA==
X-Received: by 2002:a0c:d91b:: with SMTP id p27mr5042508qvj.236.1560456496941; 
 Thu, 13 Jun 2019 13:08:16 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id j62sm248574qte.89.2019.06.13.13.08.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 13:08:16 -0700 (PDT)
Date: Thu, 13 Jun 2019 14:08:13 -0600
From: Rob Herring <robh@kernel.org>
To: Wen He <wen.he_1@nxp.com>
Subject: Re: [v1 1/4] dt-bindings: display: Add DT bindings for LS1028A
 HDP-TX PHY.
Message-ID: <20190613200813.GA895@bogus>
References: <20190508103703.40885-1-wen.he_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508103703.40885-1-wen.he_1@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_130818_216763_8D1F5E85 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 10:35:25AM +0000, Wen He wrote:
> Add DT bindings documentmation for the HDP-TX PHY controller. The describes
> which could be found on NXP Layerscape ls1028a platform.

Drop the hard stop (.) from the subject.

> 
> Signed-off-by: Wen He <wen.he_1@nxp.com>
> ---
>  .../devicetree/bindings/display/fsl,hdp.txt   | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/fsl,hdp.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/fsl,hdp.txt b/Documentation/devicetree/bindings/display/fsl,hdp.txt
> new file mode 100644
> index 000000000000..36b5687a1261
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/fsl,hdp.txt
> @@ -0,0 +1,56 @@
> +NXP Layerscpae ls1028a HDP-TX PHY Controller
> +============================================
> +
> +The following bindings describe the Cadence HDP TX PHY on ls1028a that
> +offer multi-protocol support of standars such as eDP and Displayport,
> +supports for 25-600MHz pixel clock and up to 4k2k at 60MHz resolution.
> +The HDP transmitter is a Cadence HDP TX controller IP with a companion
> +PHY IP.

I'm confused. This binding covers both blocks or is just one of them?

> +
> +Required properties:
> +  - compatible:   Should be "fsl,ls1028a-dp" for ls1028a.
> +  - reg:          Physical base address and size of the block of registers used
> +  by the processor.
> +  - interrupts:   HDP hotplug in/out detect interrupt number
> +  - clocks:       A list of phandle + clock-specifier pairs, one for each entry
> +  in 'clock-names'
> +  - clock-names:  A list of clock names. It should contain:
> +      - "clk_ipg": inter-Integrated circuit clock
> +      - "clk_core": for the Main Display TX controller clock
> +      - "clk_pxl": for the pixel clock feeding the output PLL of the processor
> +      - "clk_pxl_mux": for the high PerfPLL bypass clock
> +      - "clk_pxl_link": for the link rate pixel clock
> +      - "clk_apb": for the APB interface clock
> +      - "clk_vif": for the Video pixel clock

The 'clk_' part is redundant.

> +
> +Required sub-nodes:
> +  - port: The HDP connection to an encoder output port. The connection
> +    is modelled using the OF graph bindings specified in
> +    Documentation/devicetree/bindings/graph.txt
> +
> +
> +Example:
> +
> +/ {
> +        ...
> +
> +	hdp: display@f200000 {
> +                compatible = "fsl,ls1028a-dp";
> +		reg = <0x0 0xf1f0000 0x0 0xffff>,
> +		    <0x0 0xf200000 0x0 0xfffff>;
> +                interrupts = <0 221 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&sysclk>, <&hdpclk>, <&dpclk>,
> +                         <&dpclk>, <&dpclk>, <&pclk>, <&dpclk>;
> +		clock-names = "clk_ipg", "clk_core", "clk_pxl",
> +                              "clk_pxl_mux", "clk_pxl_link", "clk_apb",
> +                              "clk_vif";
> +
> +		port {
> +			dp1_output: endpoint {
> +				remote-endpoint = <&dp0_input>;
> +			};
> +		};
> +        };
> +
> +        ...
> +};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
