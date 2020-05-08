Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9D81CA63B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 10:40:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xG6g68xdAL85r0jZXsFrS1wzif+4A7/x8ICwh5F9hnk=; b=ifD83SrYIx2Tug4f6kp8+omGq
	IB3VNBZ/Ydq58ME40nhQsr5Zmqat4QD2VStewyXjsNv0WSQU1XEja3T7IQB3eBAxMM5x6G+waGuT4
	Ee7VCGxdPeqqUYr9WVOXKC8byOEnV+L8IRuJPnyE8Fq6EdKFmpL8j+qsrlISxPh5VFvXp624lpkIr
	rObUXJl4jvq25fI+nEGH9hGHBF4aku9RKAuXnzd+mpj3fy7iFNlbCmF+7E33a+L5300dsnPMtbgjo
	M+koyw7VYP74zUNiatoENLhiS1oaPhfaDEaeg4FpM3JQmg1ntZgnQXOW2Y/FjZoIX9sMZDkoK5k7X
	AN6WnalkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWyXx-00014h-IG; Fri, 08 May 2020 08:39:53 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyXp-00014J-4Y
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 08:39:46 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 08 May 2020 17:39:44 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 6E0DB60057;
 Fri,  8 May 2020 17:39:44 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 8 May 2020 17:39:44 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id E913F1A12B9;
 Fri,  8 May 2020 17:39:43 +0900 (JST)
Received: from [10.213.29.153] (unknown [10.213.29.153])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 1AB5F120136;
 Fri,  8 May 2020 17:39:43 +0900 (JST)
Subject: Re: [PATCH v3 1/2] dt-bindings: PCI: Add UniPhier PCIe endpoint
 controller description
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <1584956454-8829-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1584956454-8829-2-git-send-email-hayashi.kunihiko@socionext.com>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <9af851d6-03a2-1c4f-1749-4ebd2ce0465c@socionext.com>
Date: Fri, 8 May 2020 17:39:42 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1584956454-8829-2-git-send-email-hayashi.kunihiko@socionext.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_013945_400663_E3C31CC1 
X-CRM114-Status: GOOD (  23.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/03/23 18:40, Kunihiko Hayashi wrote:
> Add DT bindings for PCIe controller implemented in UniPhier SoCs
> when configured in endpoint mode. This controller is based on
> the DesignWare PCIe core.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>   .../devicetree/bindings/pci/uniphier-pcie-ep.txt   | 53 ++++++++++++++++++++++
>   MAINTAINERS                                        |  2 +-
>   2 files changed, 54 insertions(+), 1 deletion(-)
>   create mode 100644 Documentation/devicetree/bindings/pci/uniphier-pcie-ep.txt
> 
> diff --git a/Documentation/devicetree/bindings/pci/uniphier-pcie-ep.txt b/Documentation/devicetree/bindings/pci/uniphier-pcie-ep.txt
> new file mode 100644
> index 0000000..072dc78
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/uniphier-pcie-ep.txt
> @@ -0,0 +1,53 @@
> +Socionext UniPhier PCIe endpoint controller bindings
> +
> +This describes the devicetree bindings for PCIe endpoint controller
> +implemented on Socionext UniPhier SoCs.
> +
> +UniPhier PCIe endpoint controller is based on the Synopsys DesignWare
> +PCI core. It shares common functions with the PCIe DesignWare core driver
> +and inherits common properties defined in
> +Documentation/devicetree/bindings/pci/designware-pcie.txt.
> +
> +Required properties:
> +- compatible: Should be
> +	"socionext,uniphier-pro5-pcie-ep" for Pro5 SoC
> +- reg: Specifies offset and length of the register set for the device.
> +	According to the reg-names, appropriate register sets are required.
> +- reg-names: Must include the following entries:
> +	"dbi"        - controller configuration registers
> +	"dbi2"       - controller configuration registers for shadow
> +	"link"       - SoC-specific glue layer registers
> +	"addr_space" - PCIe configuration space
> +- clocks: A phandle to the clock gate for PCIe glue layer including
> +	the endpoint controller.
> +- clock-names: Should contain the following:
> +	"gio", "link" - for Pro5 SoC
> +- resets: A phandle to the reset line for PCIe glue layer including
> +	the endpoint controller.
> +- reset-names: Should contain the following:
> +	"gio", "link" - for Pro5 SoC
> +
> +Optional properties:
> +- phys: A phandle to generic PCIe PHY. According to the phy-names, appropriate
> +	phys are required.
> +- phy-names: Must be "pcie-phy".
> +
> +Example:
> +
> +	pcie_ep: pcie-ep@66000000 {
> +		compatible = "socionext,uniphier-pro5-pcie-ep",
> +			     "snps,dw-pcie-ep";
> +		status = "disabled";
> +		reg-names = "dbi", "dbi2", "link", "addr_space";
> +		reg = <0x66000000 0x1000>, <0x66001000 0x1000>,
> +		      <0x66010000 0x10000>, <0x67000000 0x400000>;
> +		clock-names = "gio", "link";
> +		clocks = <&sys_clk 12>, <&sys_clk 24>;
> +		reset-names = "gio", "link";
> +		clocks = <&sys_rst 12>, <&sys_rst 24>;

This example contains a mistake. I'll fix it.

> +		num-ib-windows = <16>;
> +		num-ob-windows = <16>;
> +		num-lanes = <4>;
> +		phy-names = "pcie-phy";
> +		phys = <&pcie_phy>;
> +	};
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 50e8b90..01a4631 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13151,7 +13151,7 @@ PCIE DRIVER FOR SOCIONEXT UNIPHIER
>   M:	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>   L:	linux-pci@vger.kernel.org
>   S:	Maintained
> -F:	Documentation/devicetree/bindings/pci/uniphier-pcie.txt
> +F:	Documentation/devicetree/bindings/pci/uniphier-pcie*.txt
>   F:	drivers/pci/controller/dwc/pcie-uniphier.c
>   
>   PCIE DRIVER FOR ST SPEAR13XX
> 

It is my chance to convert this to dt-schema.
I'll fix above and send dt-schema version in next.

Thank you,
  
---
Best Regards
Kunihiko Hayashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
