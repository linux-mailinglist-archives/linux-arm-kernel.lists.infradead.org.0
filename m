Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BC7C2969
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 00:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJpd95ANTkpY6NJv/pXF5FCYu1rCRIZwSDuw+XaaWlk=; b=hHFbufZKB0GKoD
	7uSNu+NteLcNhM23inj6d/Mu66FN+rdkt9jZUA4FxrtjDtMTodMQ6RM0FKEyhnKe7E5QHqBKYn9DI
	gr2rnCCqUPZCEYMad+pJv6Qf/JB5x45R/jkwnUY7zbKNL/iTnVkxklEM0uvnQohgmXhd9pyBsW+gM
	HEuz5CKeKwxUqPPA73wQ7LQl/x+EwmNbMF/usFNJ7mXBkooIV2lnmPvhguZFLOnu63iYvQsMOIVeb
	6y+RS9DneEcB7Rh90AyOzYpOfVkOa3RskyxBDatpGkHDFi6ow30N8kdHhEuTOKzIJwx9PpYHdw3x5
	YwXIMGfeVd3ITSvC14KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF43s-0005jG-Rb; Mon, 30 Sep 2019 22:22:32 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF43j-0005iG-Vd
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 22:22:25 +0000
Received: by mail-oi1-f196.google.com with SMTP id t84so12594608oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 15:22:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3gV+N2q4c7xBEndHGGNd7K/X6ylfrBjCj+XYgXjqaaA=;
 b=iR5HkaN6kuliW+jSYHHVerG2QVFnP0KPFik4Fuqrr4Z/5LbKo5Ji8KpH+WxYBdtFto
 ppFePMs6KkIgUGyGvsN3x9IB2ShHnWMCrgqLfx5S5eDKqu/KX26kdupDLUDSC2wNXIOT
 2D1KlaM29vyakGZkNffcWfWHZxEILp7NtsrKP0+HMwC55Y62ANSII9aOEz6SjKusbasd
 r5o/Ei4sJTDYfuCC8LWlAo35y8puHwVETFUwiPRcx8c1y2rB/fl6qOIw8yDWhwu2FP6J
 LQJZuyXIKazoCm8KHbnvFxBCRRF/5xOTNuHRrpOVmvDFlJnsyaw0xW/aY7W4f7fFdENe
 wvbg==
X-Gm-Message-State: APjAAAVpS05GWSsCx498ZBK9ZRMlsrU8aY0yeSv3SAsso8Mfm+IZit25
 9n6dmEXcs7mDeRy/lso2ub3ukzc=
X-Google-Smtp-Source: APXvYqxVlkZ7EqGOYTrAdHZlOQJmcXo93WrERqOQtRgYQpwCMDU3zVOggGVnVmoHHdYMkoNNmQkgxA==
X-Received: by 2002:aca:3387:: with SMTP id z129mr1221964oiz.65.1569882142647; 
 Mon, 30 Sep 2019 15:22:22 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t82sm4686884oie.12.2019.09.30.15.22.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 15:22:22 -0700 (PDT)
Date: Mon, 30 Sep 2019 17:22:21 -0500
From: Rob Herring <robh@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH 2/6] dt-bindings: Add DT binding for PCIE GEN4 EP of the
 layerscape
Message-ID: <20190930222221.GA13251@bogus>
References: <20190916021742.22844-1-xiaowei.bao@nxp.com>
 <20190916021742.22844-3-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916021742.22844-3-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_152224_017930_9AF39940 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 linux-pci@vger.kernel.org, Zhiqiang.Hou@nxp.com, linux-kernel@vger.kernel.org,
 kishon@ti.com, Minghuan.Lian@nxp.com, linux-arm-kernel@lists.infradead.org,
 bhelgaas@google.com, andrew.murray@arm.com, leoyang.li@nxp.com,
 shawnguo@kernel.org, mingkai.hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 10:17:38AM +0800, Xiaowei Bao wrote:
> Add the documentation for the Device Tree binding of the layerscape
> PCIe GEN4 controller with EP mode.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
>  .../bindings/pci/layerscape-pcie-gen4.txt          | 28 +++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt b/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
> index b40fb5d..414a86c 100644
> --- a/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
> +++ b/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
> @@ -3,6 +3,8 @@ NXP Layerscape PCIe Gen4 controller
>  This PCIe controller is based on the Mobiveil PCIe IP and thus inherits all
>  the common properties defined in mobiveil-pcie.txt.
>  
> +HOST MODE
> +=========
>  Required properties:
>  - compatible: should contain the platform identifier such as:
>    "fsl,lx2160a-pcie"
> @@ -23,7 +25,20 @@ Required properties:
>  - msi-parent : See the generic MSI binding described in
>    Documentation/devicetree/bindings/interrupt-controller/msi.txt.
>  
> -Example:
> +DEVICE MODE
> +=========
> +Required properties:
> +- compatible: should contain the platform identifier such as:
> +  "fsl,lx2160a-pcie-ep"
> +- reg: base addresses and lengths of the PCIe controller register blocks.
> +  "regs": PCIe controller registers.
> +  "addr_space" EP device CPU address.
> +- apio-wins: number of requested apio outbound windows.
> +
> +Optional Property:
> +- max-functions: Maximum number of functions that can be configured (default 1).
> +
> +RC Example:
>  
>  	pcie@3400000 {
>  		compatible = "fsl,lx2160a-pcie";
> @@ -50,3 +65,14 @@ Example:
>  				<0000 0 0 3 &gic 0 0 GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
>  				<0000 0 0 4 &gic 0 0 GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
>  	};
> +
> +EP Example:
> +
> +	pcie_ep@3400000 {

pcie-endpoint@...

> +		compatible = "fsl,lx2160a-pcie-ep";
> +		reg = <0x00 0x03400000 0x0 0x00100000
> +		       0x80 0x00000000 0x8 0x00000000>;
> +		reg-names = "regs", "addr_space";
> +		apio-wins = <8>;
> +		status = "disabled";

Don't show status in examples.

> +	};
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
