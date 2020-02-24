Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE9A169FC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:11:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhyZw4ckU/QhxgxF59fsxIfy+SSa4yS/qLHERy0z6Gk=; b=R/JAyDJeQpwr+P
	d0zKpt7dEXei24pKv+zvXMxMcpI5w1/ZnQQaGHUMZgGBYu2tEGmhSDK1ViD3Ac98nPMUJ+Xevv8XU
	lnj8qUioKl9smEaov2XV+NAdQe5nXUh5nXBzHJ1rcI1RSdMZWEXBT2xhR96xgZoJqTt3jTkL+4Tt7
	IWOg5QOcDaKBsBc4o7lVWxxpXv0jMwQ21JB2JOmeOCEZHQhAFssjyFR4StwkpfloitrCeqHbfu/RZ
	QlgAxKzIpgFyTnWtMGb8k3zOQOAfUcu0rq1CFY7VLQdJWYD1Dpy9j/6cPksb9IestROgxWQHw6FJX
	n9ZG15XYQU+P07wxvudw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j68pt-0000Qp-4h; Mon, 24 Feb 2020 08:11:29 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j68pk-0000QK-3S
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 08:11:21 +0000
Received: from mwalle01.sab.local. (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 7C5B122ED5;
 Mon, 24 Feb 2020 09:11:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582531878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uunZrjy3s12DlnbMOTQxFCthmdhavGDhtf/Hy0AGfm4=;
 b=m9o9jxnJg36uapNHQq8CiIPZZ86tRsoXEi2xbTjK5WeVWxg1a1X3z/QkoZVdwrQgymsIsx
 YNvAOcuus8KyqKkUNvDDZQrM8CyYSbKuSUyS/Tq+PQ5SNfwbAA0dVxjM3YQkUOmp16v8SO
 pBdHRGdFQ157gdiJUdjz9ZF7weMgNA8=
From: Michael Walle <michael@walle.cc>
To: xiaowei.bao@nxp.com
Subject: Re: [PATCH v6 2/3] arm64: dts: ls1028a: Add PCIe controller DT nodes
Date: Mon, 24 Feb 2020 09:11:05 +0100
Message-Id: <20200224081105.13878-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190902034319.14026-2-xiaowei.bao@nxp.com>
References: <20190902034319.14026-2-xiaowei.bao@nxp.com>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 7C5B122ED5
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.765]; DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.51.225.64:email,0.53.103.224:email];
 RCPT_COUNT_TWELVE(0.00)[17]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:12941, ipnet:213.135.0.0/19, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_001120_459541_AC69B904 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 roy.zang@nxp.com, linux-pci@vger.kernel.org, Zhiqiang.Hou@nxp.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, minghuan.Lian@nxp.com,
 Michael Walle <michael@walle.cc>, robh+dt@kernel.org, mingkai.hu@nxp.com,
 bhelgaas@google.com, shawnguo@kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xiaowei, Hi Shawn,

> LS1028a implements 2 PCIe 3.0 controllers.

Patch 1/3 and 3/3 are in Linus' tree but nobody seems to care about this patch
anymore :(

This doesn't work well with the IOMMU, because the iommu-map property is
missing. The bootloader needs the &smmu phandle to fixup the entry. See
below.

Shawn, will you add this patch to your tree once its fixed, considering it
just adds the device tree node for the LS1028A?

> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> ---
> v2:
>  - Fix up the legacy INTx allocate failed issue.
> v3:
>  - No change.
> v4:
>  - Remove the num-lanes property.
> v5:
>  - Add the num-viewport property.
> v6:
>  - move num-viewport to 8.
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 52 ++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 72b9a75..c043b1d 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -625,6 +625,58 @@
>  			};
>  		};
>  
> +		pcie@3400000 {
> +			compatible = "fsl,ls1028a-pcie";
> +			reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
> +			       0x80 0x00000000 0x0 0x00002000>; /* configuration space */
> +			reg-names = "regs", "config";
> +			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>; /* aer interrupt */
> +			interrupt-names = "pme", "aer";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			device_type = "pci";
> +			dma-coherent;
> +			num-viewport = <8>;
> +			bus-range = <0x0 0xff>;
> +			ranges = <0x81000000 0x0 0x00000000 0x80 0x00010000 0x0 0x00010000   /* downstream I/O */
> +				  0x82000000 0x0 0x40000000 0x80 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +			msi-parent = <&its>;
iommu-map = <0 &smmu 0 0>; /* fixed up by bootloader */

> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 7>;
> +			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 2 &gic 0 0 GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 3 &gic 0 0 GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 4 &gic 0 0 GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +
> +		pcie@3500000 {
> +			compatible = "fsl,ls1028a-pcie";
> +			reg = <0x00 0x03500000 0x0 0x00100000   /* controller registers */
> +			       0x88 0x00000000 0x0 0x00002000>; /* configuration space */
> +			reg-names = "regs", "config";
> +			interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pme", "aer";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			device_type = "pci";
> +			dma-coherent;
> +			num-viewport = <8>;
> +			bus-range = <0x0 0xff>;
> +			ranges = <0x81000000 0x0 0x00000000 0x88 0x00010000 0x0 0x00010000   /* downstream I/O */
> +				  0x82000000 0x0 0x40000000 0x88 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +			msi-parent = <&its>;
likewise


With these two fixes:

Tested-by: Michael Walle <michael@walle.cc>

-michael

> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 7>;
> +			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 2 &gic 0 0 GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 3 &gic 0 0 GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 4 &gic 0 0 GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +
>  		pcie@1f0000000 { /* Integrated Endpoint Root Complex */
>  			compatible = "pci-host-ecam-generic";
>  			reg = <0x01 0xf0000000 0x0 0x100000>;
> -- 
> 2.9.5
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
