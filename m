Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EDCDB6C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 21:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0JcIs/0hVz4C6WJr/xR6IDDQDgTOugDXP88ukhG9Y0=; b=MUIYoSwiHbjLuf
	M3LzNbwypbHAsPVjo1XdBOnFeCz3uDyXgd8pg/3gY6IIEzWsCzn6qsylfx1yYBz2FlfRLMCpjgycB
	ITni5LSNaTkzORxs4jjvJmpNsDtQdX7DKdzAkZAgfIbCQsnK4mRTWiVR+x35OCIgUd2Wln2ndlx+9
	ORcKH+YJTWTaoS9TpTw1GI2WGDAghWl2lX4sxaScBW91sU2xIndZUHUJovTE7fSe9DX3jUzwvzFs6
	vvxOjPyEkTy10CM0V35Z8wp/BhuGf7BFicNZmYVB1Zi8Q0kBiravQh1NXaiKyhr8F/runPUMA/oGI
	REmsaM38tw8kuGYfy+Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLB3T-0007ZH-Mw; Thu, 17 Oct 2019 19:03:23 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLB3J-0007YI-Ga
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 19:03:14 +0000
Received: by mail-ot1-f66.google.com with SMTP id o44so2828470ota.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 12:03:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+qxiN1i8NgnAmFnuqifw0bfYtiKy3k77tTLRGy5BhP4=;
 b=TVHENfrDrxldOP6HEhWnkTNC9kXrI2fSW9aQRdeVWGkbLo8df/Nq6kKF3bYDTnCMXp
 ehM7UqNkOpsvywQfdv435lH8QqrsrdXd2WvCPSKjDkN83mt55eVFkINpxe/7u6WHx+4R
 ugHkKSHOnzbuvErrBmZH6S8IHM6myZICiidhFknsw/yijVsCZHFWrzcDEKmeIiu5SkjF
 FFDWDE0R8s/jntEwZUkT4hPrV3/N40X88w1sIjJF0DMgi4NOtwHmQdRBbjxdVnypk6wm
 8oiCSQE8totQcRveqVpCpJHiYFBEt9VU/MRYKN4vhhcs2gw/q8sQa40LFbdlW/sVkYfV
 vrxQ==
X-Gm-Message-State: APjAAAVdY/r/MrTxbKnglzEaFkSPSz1QTs8tXvbxkZ9XSzdEcAjcGpAa
 K1N9JhZL+J3FOzVBSrW0rw==
X-Google-Smtp-Source: APXvYqwfC0xQT9R4BEm53I1uAtAHkdVvYNYiviZLIvLVL5SP8gE5++QtXNV/rJ83zRkat6VY30bZIw==
X-Received: by 2002:a9d:6c0a:: with SMTP id f10mr4511862otq.155.1571338992427; 
 Thu, 17 Oct 2019 12:03:12 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m14sm799068otl.26.2019.10.17.12.03.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 12:03:10 -0700 (PDT)
Date: Thu, 17 Oct 2019 14:03:10 -0500
From: Rob Herring <robh@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v2 2/6] dt-bindings: Add DT binding for PCIE GEN4 EP of
 the layerscape
Message-ID: <20191017190310.GA32063@bogus>
References: <20191015083702.21792-1-xiaowei.bao@nxp.com>
 <20191015083702.21792-3-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015083702.21792-3-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_120313_551489_E3AFF5E9 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Tue, Oct 15, 2019 at 04:36:58PM +0800, Xiaowei Bao wrote:
> Add the documentation for the Device Tree binding of the layerscape
> PCIe GEN4 controller with EP mode.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v2: 
>  - remove the status entry in EP Example.
> 
>  .../bindings/pci/layerscape-pcie-gen4.txt          | 27 +++++++++++++++++++++-
>  1 file changed, 26 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt b/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
> index b40fb5d..06f9309 100644
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
> @@ -50,3 +65,13 @@ Example:
>  				<0000 0 0 3 &gic 0 0 GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
>  				<0000 0 0 4 &gic 0 0 GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
>  	};
> +
> +EP Example:
> +
> +	pcie_ep@3400000 {

To repeat my previous comment:

pcie-endpoint@...

> +		compatible = "fsl,lx2160a-pcie-ep";
> +		reg = <0x00 0x03400000 0x0 0x00100000
> +		       0x80 0x00000000 0x8 0x00000000>;
> +		reg-names = "regs", "addr_space";
> +		apio-wins = <8>;
> +	};
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
