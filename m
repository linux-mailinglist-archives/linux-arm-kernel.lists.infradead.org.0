Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E013F8BDF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWOlvNVKAsRXpj6RkTAwfhZtLngEoACJ6kMMbnH822Y=; b=Ni19gDYlrOwGGX
	8XUUclS0ptvb5fE6VW5f7FGaFLwUuFcUeIjJt3WdPuCAkORGDKeM5Q/xjplkakhwaSMXmWh1EGipo
	KweOfhG21GDHf3syTUzD+m/JJZQNN+UjXZpFX7ArYY6flGHxXadMU6G5W++KxxqKmv6Lz6rqRfj89
	rFvqU52ymYhcCxKkWwzgiSiAqLpXf8EJfst0msLoGwprzdUWJR0lSfHpy3SLQM1xHxQ2ELz+F7fFi
	y1tJ7FhX/WCUW+DxY/wTN6/KUMdpbJYb9A2P5b2zlZaiUC8bOyL2CJNpddFVGTQae8W0Y0k7yFMxs
	hmaKaPcBs1stovTBiiHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZIG-00027d-UL; Tue, 13 Aug 2019 16:05:05 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZI4-00026y-CN
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 16:04:53 +0000
Received: by mail-ot1-f66.google.com with SMTP id g17so23526346otl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 09:04:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Yg/tdFt298Hyk/OxrmEU7+mFLMHSrwTggBrmycRWebA=;
 b=MEBGIQPrPdalvCGNQbWmbsXSRx2ACMjQY5XgDXpS2imviY7cONuXVljAetnhzJFEon
 fb3YccTG9CdNV101pwSzyQyefG/apmwA3fzoccQ8LRxaBuOhaWur+hKSgAoVXXS1pPBm
 HZF/jgDP5OzLFWmYeWhHFbPxSB4GIoF0v5DVjMvF79oD5QHL1C7TYK9qIhCJSpNf+IFf
 Q2zr9SMoWGmTRlasSkkcLaQtttMGbZT9mtDdCaytY/gepb+pzn7OImR8GvGkI5HDFXpc
 Ls+wfki9zL0wVjzzHZigMggHLV9xkSeaRBwfnXVLqeJMRaqnu7Kqx6uu/eIvw51r53Bm
 Hbcw==
X-Gm-Message-State: APjAAAUXc1RdbedcBmLpMYFzVv/FY/nqXMxZajnK+IAx3Z5sQPF2t6CU
 R15c0G1xk+1QOvzlXgvgYw==
X-Google-Smtp-Source: APXvYqysIOYL/gXYF6/LQ0CkFVBddSF7hzJ2kMCDtw7RVQKrbAXD64plvuQNUfr+HZ96QtSKg4f7Vw==
X-Received: by 2002:a6b:8b0b:: with SMTP id n11mr41354893iod.101.1565712289907; 
 Tue, 13 Aug 2019 09:04:49 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id w17sm2608740ior.23.2019.08.13.09.04.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 09:04:49 -0700 (PDT)
Date: Tue, 13 Aug 2019 10:04:48 -0600
From: Rob Herring <robh@kernel.org>
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add PHYTEC i.MX6 UL/ULL
 devicetree bindings
Message-ID: <20190813160448.GA27548@bogus>
References: <1563954573-370205-1-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563954573-370205-1-git-send-email-s.riedmueller@phytec.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_090452_423239_FF1FB9E4 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Andrew Smirnov <andrew.smirnov@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 09:49:32AM +0200, Stefan Riedmueller wrote:
> Add devicetree bindings for i.MX6 UL/ULL based phyCORE-i.MX6 UL/ULL and
> phyBOARD-Segin.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 7294ac36f4c0..40f007859092 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -161,12 +161,20 @@ properties:
>          items:
>            - enum:
>                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> +              - phytec,imx6ul-pbacd10     # PHYTEC phyBOARD-Segin with i.MX6 UL
> +              - phytec,imx6ul-pbacd10-emmc  # PHYTEC phyBOARD-Segin eMMC Kit
> +              - phytec,imx6ul-pbacd10-nand  # PHYTEC phyBOARD-Segin NAND Kit
> +              - phytec,imx6ul-pcl063      # PHYTEC phyCORE-i.MX 6UL

This doesn't match what is in the dts files:

arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi:    compatible = "phytec,imx6ul-pcl063", "fsl,imx6ul";                    
arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts:      compatible = "phytec,imx6ul-pbacd10", "phytec,imx6ul-pcl063", 
"fsl,imx6ul";
arch/arm/boot/dts/imx6ul-phytec-phyboard-segin.dtsi:    compatible = "phytec,imx6ul-pbacd-10", "phytec,imx6ul-pcl063",
"fsl,imx6ul";

>            - const: fsl,imx6ul
>  
>        - description: i.MX6ULL based Boards
>          items:
>            - enum:
>                - fsl,imx6ull-14x14-evk     # i.MX6 UltraLiteLite 14x14 EVK Board
> +              - phytec,imx6ull-pbacd10    # PHYTEC phyBOARD-Segin with i.MX6 ULL
> +              - phytec,imx6ull-pbacd10-emmc # PHYTEC phyBOARD-Segin eMMC Kit
> +              - phytec,imx6ull-pbacd10-nand # PHYTEC phyBOARD-Segin NAND Kit
> +              - phytec,imx6ull-pcl063     # PHYTEC phyCORE-i.MX 6ULL
>            - const: fsl,imx6ull
>  
>        - description: i.MX6ULZ based Boards
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
