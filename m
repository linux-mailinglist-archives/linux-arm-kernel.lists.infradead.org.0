Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6F61E9C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 10:05:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqJV8930we89NhuCT9AGe3j/dRR8qrXtQglH0T4+MeM=; b=neYKmbImqnshoZ
	dZaNpClYVsczJeS/688oYvpWaoss8cpuT3gHYv/GTqCNyMfv1CedR5QIt5so+PhxcSosXiMXpVeM+
	CBYzhep8cCLjfGk0VmpOY68o2Nefn0ozYSIJnUd4BK/7s+KN8BHjXzkxxveOtq3+Rfuv1fOs1/Lhc
	vooH2WhbkZg4hLzP/LKSkzIKuoZC65cNYJGF8Wb4wt++zOOXTXoCC5nEsJbgJXGNYqqOJR9zWZmbx
	SnoT/mrKpeC5gIw4KQjGotQQBN0uIwfN3YbCZd1dkZ9bj9HMnAPKfauihqCD3lIgKJ+z5QH4tkeY1
	5s8ROOV4YCqn0Uk0kfSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQov4-0002Nf-De; Wed, 15 May 2019 08:05:46 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQouw-0002N6-2T
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 08:05:39 +0000
Received: by mail-qk1-f193.google.com with SMTP id a64so931283qkg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 01:05:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q+ccq2l1YBXRacKh6NL0gv9RFQ3XL6hLCYeRFYOlzPA=;
 b=FcYlwX91VF3mVed73nvdlfpdPExGOr/n3xjEbqsZ5DF5wZGzpsU7Br/LdgVHCWufMQ
 jEF6hKwIt4TDNAw/WtYY9pUKzOyQz6tT9c4sc2+SZMBtSMrccQx7+AxGz+SL4gbUTpj3
 N8mcXORDguNV5ofz0Ni0v5rv/Yb4PHpIl3NQ573k8B8LMopZHpHaSX92mhcmBytF9VbV
 1z2bUSrZ/TcCN8o23Aj1cpKZBEunPGs8wfKCr2PruPKQlnbamlYZXSkHoY99VVLcWd5g
 ieHN4T/ZTqQXrJWEqItXsxdtZxsOxxFuJExlevk471xc6zcuSWlVnz1iOJAltOFzIdtx
 dCfA==
X-Gm-Message-State: APjAAAVh/AmnVAztdN4/LK9RWJbAVRu5HcwEGyWc/f+uma5FnCuNW6Ms
 8vVWvG7FUi36hgL6MQGSqbILR3+CxfZUdXsaNjE=
X-Google-Smtp-Source: APXvYqyIH5XViMS1a+4nEhLjKpZlbMQT/F6wM51bbNHL491ybxO9CDxjXoTFt4avIv9Jz3PVxDBDwzIn6dZ25APRqtI=
X-Received: by 2002:a37:c441:: with SMTP id h1mr5276612qkm.291.1557907536423; 
 Wed, 15 May 2019 01:05:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190515072747.39941-1-xiaowei.bao@nxp.com>
 <20190515072747.39941-2-xiaowei.bao@nxp.com>
In-Reply-To: <20190515072747.39941-2-xiaowei.bao@nxp.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 15 May 2019 10:05:19 +0200
Message-ID: <CAK8P3a3AXRp_v_7hkoJA28tUCiSh1eYzbk4Q4h29OqL6y-KL8A@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: ls1028a: Add PCIe controller DT nodes
To: Xiaowei Bao <xiaowei.bao@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_010538_112528_700CD2B2 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 DTML <devicetree@vger.kernel.org>, gregkh <gregkh@linuxfoundation.org>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon <kishon@ti.com>, "M.h. Lian" <minghuan.Lian@nxp.com>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Philippe Ombredanne <pombredanne@nexb.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Leo Li <leoyang.li@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 9:36 AM Xiaowei Bao <xiaowei.bao@nxp.com> wrote:
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   52 ++++++++++++++++++++++++
>  1 files changed, 52 insertions(+), 0 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index b045812..50b579b 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -398,6 +398,58 @@
>                         status = "disabled";
>                 };
>
> +               pcie@3400000 {
> +                       compatible = "fsl,ls1028a-pcie";
> +                       reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
> +                              0x80 0x00000000 0x0 0x00002000>; /* configuration space */
> +                       reg-names = "regs", "config";
> +                       interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +                                    <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>; /* aer interrupt */
> +                       interrupt-names = "pme", "aer";
> +                       #address-cells = <3>;
> +                       #size-cells = <2>;
> +                       device_type = "pci";
> +                       dma-coherent;
> +                       num-lanes = <4>;
> +                       bus-range = <0x0 0xff>;
> +                       ranges = <0x81000000 0x0 0x00000000 0x80 0x00010000 0x0 0x00010000   /* downstream I/O */
> +                                 0x82000000 0x0 0x40000000 0x80 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */

Are you sure there is no support for 64-bit BARs or prefetchable memory?

Is this a hardware bug, or something that can be fixed in firmware?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
