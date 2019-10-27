Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6158E61FC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 11:13:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzlIGC5KhDAHdUyUSOXdV788MskSaQ/2GPP0j9d6xaQ=; b=DBq3hbQeA5xdsg
	ntYRyrUGOKRIO2RIQneYa7fF/MArT3ohy3LA1tWaNyFJ3g3J6b8aq/ngwX2/yt83wPCf47QB9qmi6
	wIbvTkjXIqs5Mf3LAkEUOt3He+JbZ0FVYNg7pUwZJ2BcamXJfnBqdBIbcMPXPoM81BccB+9CWrZoR
	HHQoOFHJDkl13RGAHJu4VRB8gP/0Cd9MD6aQB+R3j+DZpB0MBxsrf9h66meV7B9asjGnxZS/pWlYi
	/ugfD3SHUi3yvABvhtuRxHP2pvR9IYzsM9TgD55qUHBQ3FBfbQzq33dEjglnE5CPw3mti65gFcBSr
	MlVfVs0Dgx81ywFvU4XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOfYU-0000C3-Fm; Sun, 27 Oct 2019 10:13:50 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOfYH-0000At-0g; Sun, 27 Oct 2019 10:13:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so6837858wrr.10;
 Sun, 27 Oct 2019 03:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3IpxudYqh0cSrXHsSd20R7gPXReXwAlu/vXTGneJYeA=;
 b=hXSrnSicmffaawvfQsBwMScW37guK9vJsdCcRiACwyis734sAiZI/nTCvDoOIDsET7
 TxtFjanFZ02nUA7cHDwWPIFp3Wx9wPk9pHfz4krCdEpKEoPX88wY3FMAVOWGpc/OX7B7
 Bh1E0NNOMzTeVp4Ue0NCazljr31u3LzQ5gMLo8SsI4wQzZaKYBiglONEya/fahW+Ur24
 LYh1aPSCIPEnF5yPeMBKq7cfSMD04Tn75BpyUpRxCuL7HuhYqTCa0qEi32R38iOoOK4r
 CEYbDUa53uUuTladP7ghiETvoYMGUus48sJzOtcbbKyTm+HJp9KLFhdzkdxw26oeLZoq
 lZSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3IpxudYqh0cSrXHsSd20R7gPXReXwAlu/vXTGneJYeA=;
 b=frDmxrBRwwHooSDH3w8owcc4SD088UEir5jJ60kjxKb4SAXiQVwMYe/eC+pgvZtuD3
 rMvY2mpeufEErQ7eJz3x3CLZHhT63DRz/dHfwLFZI4Te4GgJcltmyJ3G60QfQX2sgHJ5
 giN0ZraorOx1jKawm++XSwkqn/TVrhzLVOR3bCk2Gm5Mdkxi0eppmfrbDVE+Uux2clxP
 d3Qh+2IkriHSRuMM98FCgFyvQ6D5Y8HNLE3DXkCCRMRcKrQFHfnI7GGJCzcDRU3oaNni
 VgAPB2DJz7LjwbhRZ5pHbG0YvPwk6VJ6l2DwF8njAQnhpvoSU9MJ+tFa/Vs2O+JJ2ijI
 K1jQ==
X-Gm-Message-State: APjAAAURlouZ66a0PRZWDmMG33g9BE2K9nZz0WzHS2/H0SMtEgHKHMZk
 4jwSQBTsj5a0MOn6eaaRDDVU34FRyPg=
X-Google-Smtp-Source: APXvYqw1cxLvV4/3XED3x2mClTOpoL5pylt99SzhNdORtAzzBZRNtAnqcjg/6X+pCOpQ4725HtypWQ==
X-Received: by 2002:a5d:4589:: with SMTP id p9mr10044913wrq.397.1572171214637; 
 Sun, 27 Oct 2019 03:13:34 -0700 (PDT)
Received: from gmail.com (host159-41-dynamic.116-80-r.retail.telecomitalia.it.
 [80.116.41.159])
 by smtp.gmail.com with ESMTPSA id d199sm8235130wmd.35.2019.10.27.03.13.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 03:13:33 -0700 (PDT)
Date: Sun, 27 Oct 2019 11:12:45 +0100
From: Beniamino Galvani <b.galvani@gmail.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] dt-bindings: i2c: meson: convert to yaml
Message-ID: <20191027101245.GA2194@gmail.com>
References: <20191021140053.9525-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021140053.9525-1-narmstrong@baylibre.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_031337_082675_F0793940 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 1.7 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (b.galvani[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 04:00:53PM +0200, Neil Armstrong wrote:
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic I2C Controller over to YAML schemas.

Acked-by: Beniamino Galvani <b.galvani@gmail.com>


> Cc: Beniamino Galvani <b.galvani@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../bindings/i2c/amlogic,meson6-i2c.yaml      | 53 +++++++++++++++++++
>  .../devicetree/bindings/i2c/i2c-meson.txt     | 30 -----------
>  2 files changed, 53 insertions(+), 30 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i2c/amlogic,meson6-i2c.yaml
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-meson.txt
> 
> diff --git a/Documentation/devicetree/bindings/i2c/amlogic,meson6-i2c.yaml b/Documentation/devicetree/bindings/i2c/amlogic,meson6-i2c.yaml
> new file mode 100644
> index 000000000000..49cad273c8e5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/amlogic,meson6-i2c.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/i2c/amlogic,meson6-i2c.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson I2C Controller
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +  - Beniamino Galvani <b.galvani@gmail.com>
> +
> +allOf:
> +  - $ref: /schemas/i2c/i2c-controller.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson6-i2c # Meson6, Meson8 and compatible SoCs
> +      - amlogic,meson-gxbb-i2c # GXBB and compatible SoCs
> +      - amlogic,meson-axg-i2c # AXG and compatible SoCs
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +examples:
> +  - |
> +    i2c@c8100500 {
> +        compatible = "amlogic,meson6-i2c";
> +        reg = <0xc8100500 0x20>;
> +        interrupts = <92>;
> +        clocks = <&clk81>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        eeprom@52 {
> +            compatible = "atmel,24c32";
> +            reg = <0x52>;
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-meson.txt b/Documentation/devicetree/bindings/i2c/i2c-meson.txt
> deleted file mode 100644
> index 13d410de077c..000000000000
> --- a/Documentation/devicetree/bindings/i2c/i2c-meson.txt
> +++ /dev/null
> @@ -1,30 +0,0 @@
> -Amlogic Meson I2C controller
> -
> -Required properties:
> - - compatible: must be:
> -	"amlogic,meson6-i2c" for Meson8 and compatible SoCs
> -	"amlogic,meson-gxbb-i2c" for GXBB and compatible SoCs
> -	"amlogic,meson-axg-i2c"for AXG and compatible SoCs
> -
> - - reg: physical address and length of the device registers
> - - interrupts: a single interrupt specifier
> - - clocks: clock for the device
> - - #address-cells: should be <1>
> - - #size-cells: should be <0>
> -
> -For details regarding the following core I2C bindings see also i2c.txt.
> -
> -Optional properties:
> -- clock-frequency: the desired I2C bus clock frequency in Hz; in
> -  absence of this property the default value is used (100 kHz).
> -
> -Examples:
> -
> -	i2c@c8100500 {
> -		compatible = "amlogic,meson6-i2c";
> -		reg = <0xc8100500 0x20>;
> -		interrupts = <0 92 1>;
> -		clocks = <&clk81>;
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -	};
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
