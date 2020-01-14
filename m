Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D9E13B1C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 19:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXxoMA6DJR7e/VrPZcZs+/Fli8QXYsehfDDaw5BaCCw=; b=a/s8DV0pUIVRYu
	xX1S74FVQeO5RO2M6/DZkydGTT9FnNGZj0MtBpBLUbSVC1dwIZ2eK9ELEE2n4pt7hjPtD7zTufDfJ
	7NiXqC//9JInjORNDPjWgMNunRO0NsfhYT3VnIO65voM5Jc8OlxSJn9KBG5KqJSaUp7rqvkzkv0gt
	liGyPZhHJi/aiHdpKpZK61b05gmZFwQHNLhMS34pQDc4rffMKXx8iGOXNpedv3zYuASmWIBB0pVJi
	+MVLVF9yX5jzBs+qfoX8dPYkX0hl94W3vXSAOCKnx7QcSsjUzsISGCU8yuX4BIJ4vkwdMmXauNqhV
	xKWGeLHi/h5PiIfEHe1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQfn-0000T1-DQ; Tue, 14 Jan 2020 18:12:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQfd-0000HP-18; Tue, 14 Jan 2020 18:12:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B59841396;
 Tue, 14 Jan 2020 10:12:03 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8509B3F68E;
 Tue, 14 Jan 2020 10:12:01 -0800 (PST)
Date: Tue, 14 Jan 2020 18:11:59 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net
Subject: Re: [PATCH v5 2/6] ARM: dts: bcm2711: Enable PCIe controller
Message-ID: <20200114181159.GB11177@e121166-lin.cambridge.arm.com>
References: <20191216110113.30436-1-nsaenzjulienne@suse.de>
 <20191216110113.30436-3-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216110113.30436-3-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_101205_124201_C584FD33 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 mbrugger@suse.com, maz@kernel.org, f.fainelli@gmail.com, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 andrew.murray@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 12:01:08PM +0100, Nicolas Saenz Julienne wrote:
> This enables bcm2711's PCIe bus, which is hardwired to a VIA
> Technologies XHCI USB 3.0 controller.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> Changes since v4:
>   - Rebase commit taking into account genet support series
> 
> Changes since v3:
>   - Remove unwarranted comment
> 
> Changes since v2:
>   - Remove unused interrupt-map
>   - correct dma-ranges to it's full size, non power of 2 bus DMA
>     constraints now supported in linux-next[1]
>   - add device_type
>   - rename alias from pcie_0 to pcie0
> 
> Changes since v1:
>   - remove linux,pci-domain
> 
> [1] https://lkml.org/lkml/2019/11/21/235
> 
>  arch/arm/boot/dts/bcm2711.dtsi | 31 ++++++++++++++++++++++++++++++-
>  1 file changed, 30 insertions(+), 1 deletion(-)

Olof as we discussed previously, I will not merge this dts change and
drop it from the series - Nicolas should redirect it to arm-soc, please
let me know if my understanding is correct.

Thanks,
Lorenzo

> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> index e2f6ffb00aa9..b56388ce1216 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -331,7 +331,36 @@ scb {
>  		#address-cells = <2>;
>  		#size-cells = <1>;
>  
> -		ranges = <0x0 0x7c000000  0x0 0xfc000000  0x03800000>;
> +		ranges = <0x0 0x7c000000  0x0 0xfc000000  0x03800000>,
> +			 <0x6 0x00000000  0x6 0x00000000  0x40000000>;
> +
> +		pcie0: pcie@7d500000 {
> +			compatible = "brcm,bcm2711-pcie";
> +			reg = <0x0 0x7d500000 0x9310>;
> +			device_type = "pci";
> +			#address-cells = <3>;
> +			#interrupt-cells = <1>;
> +			#size-cells = <2>;
> +			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pcie", "msi";
> +			interrupt-map-mask = <0x0 0x0 0x0 0x7>;
> +			interrupt-map = <0 0 0 1 &gicv2 GIC_SPI 143
> +							IRQ_TYPE_LEVEL_HIGH>;
> +			msi-controller;
> +			msi-parent = <&pcie0>;
> +
> +			ranges = <0x02000000 0x0 0xf8000000 0x6 0x00000000
> +				  0x0 0x04000000>;
> +			/*
> +			 * The wrapper around the PCIe block has a bug
> +			 * preventing it from accessing beyond the first 3GB of
> +			 * memory.
> +			 */
> +			dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000
> +				      0x0 0xc0000000>;
> +			brcm,enable-ssc;
> +		};
>  
>  		genet: ethernet@7d580000 {
>  			compatible = "brcm,bcm2711-genet-v5";
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
