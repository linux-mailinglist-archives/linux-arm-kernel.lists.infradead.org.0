Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E89C1106853
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 09:52:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7tIKjI6l9B1DG6jLs+XetLTVwqEHcym1e0bI52ujYQ=; b=b0Wa5C0Rvi9SFj
	nHPWUHa3KI9gyXBsVoZKbLotQl/1zi8XKey36co6no6lWMP5ZFuN32aMtTTAH/24fFWr+HfEYWIKK
	37mN+Zy58w0WPbFwC7qAbOglkzyL3M5JatYLam53jfCG389GE3XdWZ5z6Q1Z3fclaSjErNDnP233f
	qi5bE0IMywHtNdmSO6OJG1BdGiAxCR+SYno31lVtbwMkXnmSApopLC5aZKh0sj1ebVinEStblIggV
	OIlXx+DBc181Q5YzmmNkIssf8Ttz3/Q+XsltPt+Uz4lp3O+QkpoC2uMfBx8O/ag210/augqG5zyvI
	DLbokEqsIfR7G1MDGvhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY4g2-0005pt-PP; Fri, 22 Nov 2019 08:52:30 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY4ft-0005p9-0L
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 08:52:23 +0000
Received: by mail-wm1-x342.google.com with SMTP id z19so6641280wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 00:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=VLujAY+88BSOb76CMcCgkVoqi9J6jk/Juu0sTNbfFrc=;
 b=yEDyOG7p9b1boQO+yPx7T/orbtvdzS9mIWpquOyfMJ9T+E7hiwrWie93xwU1xvSViD
 bvudjI7Eq1xbenQ+82Ev17QXB9xQsOV0S8u0Aktao9baaIhS8eMQk3FktAdFybHCd3Bu
 kt+xSebTl/zAzI2oOpjKDxVRIt8+2qbzsYLewFCQaFi9/+hHk08CRmkI9kaLx/wDrxFv
 4h7GLulDtIIaaklXc93q6fwcm2eHriSRXc+ynHAMm3oEUEP3b0Ut6mmHKw2gEacTXmTO
 3K0EGm/AsE5DR5uS0b4ffNpnmx+FTzepNUVTUX8iTg7F0V4JrTGeCQSlYxu9K9ZtP2u1
 X6pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=VLujAY+88BSOb76CMcCgkVoqi9J6jk/Juu0sTNbfFrc=;
 b=CmFEGqa1gFz7RI+hrxt0zBEG/sJAcx//5C8v+iZmQUPh1qUNeObUEp4u2EEcOhVxyp
 Dd2kRuIxUKGdVKhcgdxzMgs4QJCicc7p5NZJLYU7pteTvv0phMc9y9rnvpAswaQNe85p
 a1O/m/bP1nX86AUPUxsZld9GpxXEB0OgPsRqgblCN0DtGcejrZR1B9xMi10lpN7qpjux
 VYlH1rlMKl1c+wjl8z1sMAVLZwWT0ipUaKgLFa3nkbLY/MOkdarrcjI0tee/P/GTnVJ5
 n7zPDYYyneo4FQ5iYLCxPQx9fezJ4ToJf6xzFqLLjcwSIslD157xTaSKwwrb5Uk5Pfh3
 PSDQ==
X-Gm-Message-State: APjAAAXUGlCnga/N5dWu7A8IVLuZSrT3oUf/Zo3t8N4eXMa5m+Yfvjh8
 bPgofw3dDi7hDasp84QgOii7TQ==
X-Google-Smtp-Source: APXvYqwwlH0gGZvD3X21WS+3zwwM2jmNykWqZjk3TmIFC2gjpoeu8T5W97x0a8ioyXpmeVYWqCEblg==
X-Received: by 2002:a1c:200f:: with SMTP id g15mr15378140wmg.96.1574412739032; 
 Fri, 22 Nov 2019 00:52:19 -0800 (PST)
Received: from [192.168.1.68] (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id v6sm6946456wrt.13.2019.11.22.00.52.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Nov 2019 00:52:18 -0800 (PST)
Subject: Re: [PATCH 2/6] dt-bindings: usb: dwc3: Add the Amlogic A1 Family
 DWC3 Glue Bindings
To: Hanjie Lin <hanjie.lin@amlogic.com>, Jerome Brunet
 <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Kevin Hilman <khilman@baylibre.com>
References: <1574405757-76184-1-git-send-email-hanjie.lin@amlogic.com>
 <1574405757-76184-3-git-send-email-hanjie.lin@amlogic.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <462c13a6-a2ea-44c7-d43d-46ac82d43bf7@baylibre.com>
Date: Fri, 22 Nov 2019 09:52:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1574405757-76184-3-git-send-email-hanjie.lin@amlogic.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_005221_077789_E615A076 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


On 22/11/2019 07:55, Hanjie Lin wrote:
> The Amlogic A1 SoC Family embeds 1 USB Controllers:
>  - a DWC3 IP configured as Host for USB2 and USB3
> 
> A glue connects the controllers to the USB2 PHY of A1 SoC.
> 
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> ---
>  .../devicetree/bindings/usb/amlogic,dwc3.txt       | 53 ++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt b/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
> index 6ffb09b..63dc60b 100644
> --- a/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
> +++ b/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
> @@ -128,3 +128,56 @@ Example device nodes:
>  				snps,quirk-frame-length-adjustment;
>  			};
>  	};
> +
> +Amlogic Meson A1 DWC3 USB SoC Controller Glue
> +
> +The Amlogic A1 embeds a DWC3 USB IP Core configured for USB2 in
> +host-only mode.
> +
> +Required properties:
> +- compatible:	Should be "amlogic,meson-a1-usb-ctrl"
> +- clocks:       The clocks needed by the usb controller
> +- clock-names:  Should contain the name of the clocks: "usb_ctrl", "usb_bus",
> +                "xtal_usb_phy", "xtal_usb_ctrl"
> +- resets:	a handle for the shared "USB" reset line
> +- reg:		The base address and length of the registers
> +- phys: 	handle to used PHYs on the system
> +	- a <0> phandle can be used if a PHY is not used
> +- phy-names:	names of the used PHYs on the system :
> +	- "usb2-phy0" for USB2 PHY if USBHOST port is used
> +
> +Required child nodes:
> +
> +A child node must exist to represent the core DWC3 IP block. The name of
> +the node is not important. The content of the node is defined in dwc3.txt.
> +
> +PHY documentation is provided in the following places:
> +- Documentation/devicetree/bindings/phy/amlogic,meson-a1-usb2-phy.yaml
> +
> +Example device nodes:
> +	usb: usb@ffe09000 {
> +			status = "okay";
> +			compatible = "amlogic,meson-a1-usb-ctrl";
> +			reg = <0x0 0xffe09000 0x0 0xa0>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			clocks = <&clkc_periphs CLKID_USB_CTRL>,
> +				 <&clkc_periphs CLKID_USB_BUS>,
> +				 <&clkc_periphs CLKID_XTAL_USB_PHY>,
> +				 <&clkc_periphs CLKID_XTAL_USB_CTRL>;
> +			clock-names = "usb_ctrl", "usb_bus", "xtal_usb_phy", "xtal_usb_ctrl";
> +			resets = <&reset RESET_USBCTRL>;
> +			phys = <&usb2_phy0>;
> +			phy-names = "usb2-phy0";
> +
> +			dwc3: usb@ff400000 {
> +					compatible = "snps,dwc3";
> +					reg = <0x0 0xff400000 0x0 0x100000>;
> +					interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +					dr_mode = "host";
> +					snps,dis_u2_susphy_quirk;
> +					snps,quirk-frame-length-adjustment = <0x20>;
> +			};
> +	};
> 

This seems very similar to the g12a bindings, seems you could update the yaml g12a bindings
with specific clocks and required for amlogic,meson-a1-usb-ctrl.

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
