Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3E9327E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 07:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5itpzdDRVY0llOkU0ctrVxyZ6yl8q/oAEFprz5klnI=; b=qg9rFStGmKEEnl
	tdfDWEoX7HIJ+R2lBmKD8vmE0kCq8sEgA/k8x+TU7B+VYxdjUEWVv077DD85Ru1LHKhyJN1+kacUO
	1F+9YGHUg04Pfx55U7/kVi0ALozGcg/eK1AtZHut0VG9xghKpi+GdhLBckFKW3A2tKicpuenNWlut
	qgB78fhMoK77I3uuw4Q8JcjIFLJD37aGprgHqFi1sgG0A3yWijlBSg1YWlLqMOyDWuc5boAuNLtQE
	5vSc+i/EV+QNzDTBknuIXdjZmnhksXFnzcZheJTU1cekXQaThTAsi7AKsABgk6yEf1Q9lEbw3Csl1
	5NQWfWmgiE28gA7Zu+IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXfHD-0008Iw-QL; Mon, 03 Jun 2019 05:12:55 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXfH7-0008Ic-84
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 05:12:51 +0000
Received: by mail-lj1-x243.google.com with SMTP id e13so14828797ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Jun 2019 22:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mobiveil.co.in; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1hhBDceAp7DealibgpzRgQkbsVjG+SPyfDmMhWMC+1k=;
 b=jG9jP4nThSDZwaD/kp6Xib4Vyzog5fkGaOB9Mcgv4DXEGXAX3fPA+ceqLabquL17Cy
 7tX1tYLDfASqHNZdWw9421ZUVBGDAvLcloFKmmp0yrGGjo8RmoLOehp9xgiAKKaLYiez
 8RIVCutou53+Y/XUepTtiE9JghvqzS/w1te3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1hhBDceAp7DealibgpzRgQkbsVjG+SPyfDmMhWMC+1k=;
 b=J7XjA1ZQWZE8v8L6t/TlU5XfJA/9BdcLAXndqze8a732M0OOntJP0OpJ3Jhhs8aNNA
 V2N3ES8B1p2vlyqZ9QQmmau6OH6T73lSPVVexLn+vcpO0zf6jftws5+587PTydbbjpgo
 RGf2R/QOO3kQv7C6duUAeYhEuwS0ziVFRCawGUaiLXcH6PU0mohH6OI+GcwNaClDsNt0
 tRCu8fG/n4byGR3g1H6easas+uR1+zX2LxO7hl+w1QhiHZ9ZTmQwN5CrHIItB1msq8ev
 MlRZje5A/UIbAOUkaC1Uj491remXtAUHs7gF9CDLTg5SBJoQjW9ni5FvjBPHMRSpyQA+
 SeOg==
X-Gm-Message-State: APjAAAUiAv4wgmn7d1m3ltIoI2OC8J23J3XBr1qQ0Ckh1M98dZTYHoQf
 S1H9zTjGjHBD+xpj4QvAuzLbFTEMQOKoDrmXHRrrb2k88bn5bHDzab/kH9q+asVwEWb8DqiDs7q
 2AnnCIbanTHSGdMXJx11VWzTiKrvGYG3Bb0mm/2Lhfme3
X-Google-Smtp-Source: APXvYqyWjAc8SYG4ta2+f5Ybndd/TXrp1FQlRY75lQ4TqUbou9Kfolc0l0Jje5R6RKuhzCRFDrhia/kPvTtHFiIVU30=
X-Received: by 2002:a2e:8555:: with SMTP id u21mr12390145ljj.133.1559538766557; 
 Sun, 02 Jun 2019 22:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190528065129.8769-1-Zhiqiang.Hou@nxp.com>
 <20190528065129.8769-6-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20190528065129.8769-6-Zhiqiang.Hou@nxp.com>
From: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
Date: Mon, 3 Jun 2019 10:42:33 +0530
Message-ID: <CAKnKUHH8JU2Bqgq90rfgZ8r0xxB_RMRj16DBBLDhMpg3mwFU2Q@mail.gmail.com>
Subject: Re: [PATCHv6 5/6] arm64: dts: lx2160a: Add PCIe controller DT nodes
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_221249_352965_18605A6A 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hou Zhiqiang
   Two instances [@3600000 and @3800000] of the six has a different
window count, the RC can not have more than 8 windows.
apio-wins = <256>;  //Can we change it to 8
ppio-wins = <24>;    //Can we change it to 8

On Tue, May 28, 2019 at 12:20 PM Z.q. Hou <zhiqiang.hou@nxp.com> wrote:
>
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
>
> The LX2160A integrated 6 PCIe Gen4 controllers.
>
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> ---
> V6:
>  - No change.
>
>  .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 163 ++++++++++++++++++
>  1 file changed, 163 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> index 125a8cc2c5b3..7a2b91ff1fbc 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -964,5 +964,168 @@
>                                 };
>                         };
>                 };
> +
> +               pcie@3400000 {
> +                       compatible = "fsl,lx2160a-pcie";
> +                       reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
> +                              0x80 0x00000000 0x0 0x00001000>; /* configuration space */
> +                       reg-names = "csr_axi_slave", "config_axi_slave";
> +                       interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
> +                                    <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +                                    <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
> +                       interrupt-names = "aer", "pme", "intr";
> +                       #address-cells = <3>;
> +                       #size-cells = <2>;
> +                       device_type = "pci";
> +                       dma-coherent;
> +                       apio-wins = <8>;
> +                       ppio-wins = <8>;
> +                       bus-range = <0x0 0xff>;
> +                       ranges = <0x82000000 0x0 0x40000000 0x80 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +                       msi-parent = <&its>;
> +                       #interrupt-cells = <1>;
> +                       interrupt-map-mask = <0 0 0 7>;
> +                       interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 2 &gic 0 0 GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 3 &gic 0 0 GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 4 &gic 0 0 GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
> +                       status = "disabled";
> +               };
> +
> +               pcie@3500000 {
> +                       compatible = "fsl,lx2160a-pcie";
> +                       reg = <0x00 0x03500000 0x0 0x00100000   /* controller registers */
> +                              0x88 0x00000000 0x0 0x00001000>; /* configuration space */
> +                       reg-names = "csr_axi_slave", "config_axi_slave";
> +                       interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
> +                                    <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +                                    <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
> +                       interrupt-names = "aer", "pme", "intr";
> +                       #address-cells = <3>;
> +                       #size-cells = <2>;
> +                       device_type = "pci";
> +                       dma-coherent;
> +                       apio-wins = <8>;
> +                       ppio-wins = <8>;
> +                       bus-range = <0x0 0xff>;
> +                       ranges = <0x82000000 0x0 0x40000000 0x88 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +                       msi-parent = <&its>;
> +                       #interrupt-cells = <1>;
> +                       interrupt-map-mask = <0 0 0 7>;
> +                       interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 2 &gic 0 0 GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 3 &gic 0 0 GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 4 &gic 0 0 GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +                       status = "disabled";
> +               };
> +
> +               pcie@3600000 {
> +                       compatible = "fsl,lx2160a-pcie";
> +                       reg = <0x00 0x03600000 0x0 0x00100000   /* controller registers */
> +                              0x90 0x00000000 0x0 0x00001000>; /* configuration space */
> +                       reg-names = "csr_axi_slave", "config_axi_slave";
> +                       interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
> +                                    <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +                                    <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
> +                       interrupt-names = "aer", "pme", "intr";
> +                       #address-cells = <3>;
> +                       #size-cells = <2>;
> +                       device_type = "pci";
> +                       dma-coherent;
> +                       apio-wins = <256>;
> +                       ppio-wins = <24>;
> +                       bus-range = <0x0 0xff>;
> +                       ranges = <0x82000000 0x0 0x40000000 0x90 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +                       msi-parent = <&its>;
> +                       #interrupt-cells = <1>;
> +                       interrupt-map-mask = <0 0 0 7>;
> +                       interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 2 &gic 0 0 GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 3 &gic 0 0 GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 4 &gic 0 0 GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
> +                       status = "disabled";
> +               };
> +
> +               pcie@3700000 {
> +                       compatible = "fsl,lx2160a-pcie";
> +                       reg = <0x00 0x03700000 0x0 0x00100000   /* controller registers */
> +                              0x98 0x00000000 0x0 0x00001000>; /* configuration space */
> +                       reg-names = "csr_axi_slave", "config_axi_slave";
> +                       interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
> +                                    <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +                                    <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
> +                       interrupt-names = "aer", "pme", "intr";
> +                       #address-cells = <3>;
> +                       #size-cells = <2>;
> +                       device_type = "pci";
> +                       dma-coherent;
> +                       apio-wins = <8>;
> +                       ppio-wins = <8>;
> +                       bus-range = <0x0 0xff>;
> +                       ranges = <0x82000000 0x0 0x40000000 0x98 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +                       msi-parent = <&its>;
> +                       #interrupt-cells = <1>;
> +                       interrupt-map-mask = <0 0 0 7>;
> +                       interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 2 &gic 0 0 GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 3 &gic 0 0 GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 4 &gic 0 0 GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
> +                       status = "disabled";
> +               };
> +
> +               pcie@3800000 {
> +                       compatible = "fsl,lx2160a-pcie";
> +                       reg = <0x00 0x03800000 0x0 0x00100000   /* controller registers */
> +                              0xa0 0x00000000 0x0 0x00001000>; /* configuration space */
> +                       reg-names = "csr_axi_slave", "config_axi_slave";
> +                       interrupts = <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
> +                                    <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +                                    <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
> +                       interrupt-names = "aer", "pme", "intr";
> +                       #address-cells = <3>;
> +                       #size-cells = <2>;
> +                       device_type = "pci";
> +                       dma-coherent;
> +                       apio-wins = <256>;
> +                       ppio-wins = <24>;
> +                       bus-range = <0x0 0xff>;
> +                       ranges = <0x82000000 0x0 0x40000000 0xa0 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +                       msi-parent = <&its>;
> +                       #interrupt-cells = <1>;
> +                       interrupt-map-mask = <0 0 0 7>;
> +                       interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 2 &gic 0 0 GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 3 &gic 0 0 GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 4 &gic 0 0 GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>;
> +                       status = "disabled";
> +               };
> +
> +               pcie@3900000 {
> +                       compatible = "fsl,lx2160a-pcie";
> +                       reg = <0x00 0x03900000 0x0 0x00100000   /* controller registers */
> +                              0xa8 0x00000000 0x0 0x00001000>; /* configuration space */
> +                       reg-names = "csr_axi_slave", "config_axi_slave";
> +                       interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
> +                                    <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +                                    <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
> +                       interrupt-names = "aer", "pme", "intr";
> +                       #address-cells = <3>;
> +                       #size-cells = <2>;
> +                       device_type = "pci";
> +                       dma-coherent;
> +                       apio-wins = <8>;
> +                       ppio-wins = <8>;
> +                       bus-range = <0x0 0xff>;
> +                       ranges = <0x82000000 0x0 0x40000000 0xa8 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +                       msi-parent = <&its>;
> +                       #interrupt-cells = <1>;
> +                       interrupt-map-mask = <0 0 0 7>;
> +                       interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 2 &gic 0 0 GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 3 &gic 0 0 GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <0000 0 0 4 &gic 0 0 GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
> +                       status = "disabled";
> +               };
> +
>         };
>  };
> --
> 2.17.1
>


-- 
Thanks,
Regards,
Karthikeyan Mitran

-- 
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any 
attachments, is for the sole use of the intended recipient(s) and may 
contain proprietary confidential or privileged information or otherwise be 
protected by law. Any unauthorized review, use, disclosure or distribution 
is prohibited. If you are not the intended recipient, please notify the 
sender and destroy all copies and the original message.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
