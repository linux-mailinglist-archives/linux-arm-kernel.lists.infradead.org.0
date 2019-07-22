Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6443370C22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 23:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MW9T0q/t/VoiOj68s/lCVNeFgqNtvsoK0aDJ1TvMvnQ=; b=UQn0BBlP6zyiOy
	mII/fqSWqHwyv4IMN24WGBvHs74dSWKeG1Qgp200ckxqr6VPUv8Scp6x1VE7mtuBwtlcjv9FEFBtc
	FVQZHLhDED+5FOOZKFCqT9pR7JRSrCB7d1Jb+RVGVIHPkTMfRyoXBWRcrFCsSVSNQn5E2SQpcSiPU
	3LAVNzCiC3DTXw0TPpCKukKPGwDh/8Yvht6m/6oSmwC/OF5W8+pNMQ6I4wShmkE120m+aLM55gRwi
	iHreou6PUK89xI71fDBCeoh90Btyu3KySDT4kOOIK4J6QkicpfZb3SSHZDbah+OH6HsMIqfXyVjQR
	VHgB14LYBdzHGxfGOWqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgGF-0005vT-MB; Mon, 22 Jul 2019 21:54:23 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgFy-0005uk-RA; Mon, 22 Jul 2019 21:54:08 +0000
Received: by mail-io1-f68.google.com with SMTP id k8so77458260iot.1;
 Mon, 22 Jul 2019 14:54:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+/tFZBmBqzo/zPORNqy/FURXPMyOxXiM7Nwwcf4TGGM=;
 b=gQLAvfLUDxHYb4Jh9WiI5w1fpmuu0Ex4nCQpsJCrBly7cOeP6myPwzyLvUDsQ8vAs6
 ME3klBI+rrl+hL0wdH5hmG6t6MN4Y3igHlVewfZ8s8OqSDGOPd+7NIzXpQBy5pTMl4FD
 XNvcrzlSoIVq0GFxvFUOigVvU2MgIpPR2XY1NmPseF0U5FgGyIz/KJv/b1IHpntnTbOn
 VbfkZPENGdaWhJiW7IRJw3oOAT2zfEZmTcD08W6hVoMkND+vI0Rc3Wy1YxC1oy27xdLE
 5gOpBDxhQ4dVmXa1D04Wg0mmoil6WHClwNcPxAQb7rx/MobUut45A7BiL2S7gcB0hgM4
 yxoA==
X-Gm-Message-State: APjAAAVEJ/+qcMu2Spjt+OK0/szmpdFgS3wFeR7PqWxPkf8bX/yNkK1F
 4lYfcBe/I3il8qsKp31Y8A==
X-Google-Smtp-Source: APXvYqyUL19XUYrZJxeGwxCR1U5Xwb7mxgpPlG0YNI4SIrs8fiL5rMGhTWsuUHHsuUiVX5EpIhEE/Q==
X-Received: by 2002:a5e:8f08:: with SMTP id c8mr67180363iok.52.1563832445617; 
 Mon, 22 Jul 2019 14:54:05 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id s4sm52874406iop.25.2019.07.22.14.54.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 14:54:05 -0700 (PDT)
Date: Mon, 22 Jul 2019 15:54:04 -0600
From: Rob Herring <robh@kernel.org>
To: Manish Narani <manish.narani@xilinx.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: mmc: arasan: Update documentation
 for SD Card Clock
Message-ID: <20190722215404.GA28292@bogus>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
 <1561958991-21935-2-git-send-email-manish.narani@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561958991-21935-2-git-send-email-manish.narani@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_145406_882605_1C22B549 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, kernel@esmil.dk,
 viresh.kumar@linaro.org, linux-kernel@vger.kernel.org, tony.xie@rock-chips.com,
 philipp.tomsich@theobroma-systems.com, heiko@sntech.de,
 michal.simek@xilinx.com, linux-rockchip@lists.infradead.org,
 jolly.shah@xilinx.com, devicetree@vger.kernel.org, scott.branden@broadcom.com,
 nava.manne@xilinx.com, ayaka@soulik.info, mdf@kernel.org,
 linux-arm-kernel@lists.infradead.org, rajan.vaja@xilinx.com,
 linux-mmc@vger.kernel.org, adrian.hunter@intel.com, olof@lixom.net,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 10:59:41AM +0530, Manish Narani wrote:
> The clock handling is to be updated in the Arasan SDHCI. As the
> 'devm_clk_register' is deprecated in the clock framework, this needs to
> specify one more clock named 'clk_sdcard' to get the clock in the driver
> via 'devm_clk_get()'. This clock represents the clock from controller to
> the card.

Please explain why in terms of the binding, not some driver calls.

 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> index 1edbb04..15c6397 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> @@ -23,6 +23,10 @@ Required Properties:
>    - reg: From mmc bindings: Register location and length.
>    - clocks: From clock bindings: Handles to clock inputs.
>    - clock-names: From clock bindings: Tuple including "clk_xin" and "clk_ahb"
> +		 Apart from these two there is one more optional clock which
> +		 is "clk_sdcard". This clock represents output clock from
> +		 controller and card. This must be specified when #clock-cells
> +		 is specified.
>    - interrupts: Interrupt specifier
>  
>  Required Properties for "arasan,sdhci-5.1":
> @@ -36,9 +40,10 @@ Optional Properties:
>    - clock-output-names: If specified, this will be the name of the card clock
>      which will be exposed by this device.  Required if #clock-cells is
>      specified.
> -  - #clock-cells: If specified this should be the value <0>.  With this property
> -    in place we will export a clock representing the Card Clock.  This clock
> -    is expected to be consumed by our PHY.  You must also specify
> +  - #clock-cells: If specified this should be the value <0>. With this
> +    property in place we will export one clock representing the Card
> +    Clock. This clock is expected to be consumed by our PHY. You must also
> +    specify

specify what?

The 3rd clock input I assume? This statement means any existing users 
with 2 clock inputs and #clock-cells are in error now. Is that correct? 

>    - xlnx,fails-without-test-cd: when present, the controller doesn't work when
>      the CD line is not connected properly, and the line is not connected
>      properly. Test mode can be used to force the controller to function.
> @@ -70,8 +75,8 @@ Example:
>  		compatible = "rockchip,rk3399-sdhci-5.1", "arasan,sdhci-5.1";
>  		reg = <0x0 0xfe330000 0x0 0x10000>;
>  		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&cru SCLK_EMMC>, <&cru ACLK_EMMC>;
> -		clock-names = "clk_xin", "clk_ahb";
> +		clocks = <&cru SCLK_EMMC>, <&cru ACLK_EMMC>, <&sdhci 0>;
> +		clock-names = "clk_xin", "clk_ahb", "clk_sdcard";
>  		arasan,soc-ctl-syscon = <&grf>;
>  		assigned-clocks = <&cru SCLK_EMMC>;
>  		assigned-clock-rates = <200000000>;
> -- 
> 2.1.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
