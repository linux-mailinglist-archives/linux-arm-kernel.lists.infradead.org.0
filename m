Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1236378F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 16:14:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/u55wyUM2HZCZ8ONBheUPYeYN0Vpv0Pzsz+2b6SsE6s=; b=U6nBF3CqNwknIG
	037+DeKx9y9L9nsSrVf1Qw/QNDlsC3CTVrBuopcb1F5nAvXBWzfJoYQnemQJXayA2l6z+O4fS73b6
	DR+VSlWxW6zyqTen09qbJzI24ycIuZVWj81dNcF/CkaODNeu6hS1mwCD5h+FHwOU/dC/PNU9BRCVH
	oeeDcG9243fKxs0pm9FHVMISW4SRNsRr+CZUzlo5/4ju0uqjgVYz6ka9lXol7JUruds01lfEKXjXX
	rR8AaBuiaAlnioCZ6zthVO5cpqw7rlS5kpMxsIM0fc810iwHBbm8+cghCO8VIdmnItwP5C4yiz6Ij
	8PoprjBpR9MpdDGefrsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkqtL-0006IL-BK; Tue, 09 Jul 2019 14:14:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkqt5-0006I1-Gz
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 14:14:32 +0000
Received: from localhost (249.sub-174-234-174.myvzw.com [174.234.174.249])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 175D92080C;
 Tue,  9 Jul 2019 14:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562681670;
 bh=aByOK+zzVwLPzmHerWij80ctxh6Sgg+/BIZzdxbJl4c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AGNoPj52haojTKl83cHZhTcXgNZoRA03liHpBu8SHLapzLI5hKhvptQB/VzjqI+Gd
 81+/WoF2FUAEVmTEC+Gps7rhtlY6ZjvnZdmu5exXK6xN+a6GL3lPXvn8ULTA6Zon/Y
 0RpkAvPpzrniAx4NnJlh0LbdktlTQk6jN6IdViro=
Date: Tue, 9 Jul 2019 09:14:27 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V12 01/12] PCI: Add #defines for some of PCIe spec r4.0
 features
Message-ID: <20190709141427.GB35486@google.com>
References: <20190701124010.7484-1-vidyas@nvidia.com>
 <20190701124010.7484-2-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701124010.7484-2-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_071431_601439_1ADB8A5B 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kishon@ti.com, kthota@nvidia.com, thierry.reding@gmail.com,
 gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 linux-tegra@vger.kernel.org, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 06:09:59PM +0530, Vidya Sagar wrote:
> Add #defines only for the Data Link Feature and Physical Layer 16.0 GT/s
> features.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Reviewed-by: Thierry Reding <treding@nvidia.com>

Please include spec references in the commit log, e.g., PCIe r5.0, sec
7.7.4, for Data Link Feature and sec 7.7.5 for Physical Layer 16 GT/s.

>  include/uapi/linux/pci_regs.h | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/include/uapi/linux/pci_regs.h b/include/uapi/linux/pci_regs.h
> index f28e562d7ca8..1c79f6a097d2 100644
> --- a/include/uapi/linux/pci_regs.h
> +++ b/include/uapi/linux/pci_regs.h
> @@ -713,7 +713,9 @@
>  #define PCI_EXT_CAP_ID_DPC	0x1D	/* Downstream Port Containment */
>  #define PCI_EXT_CAP_ID_L1SS	0x1E	/* L1 PM Substates */
>  #define PCI_EXT_CAP_ID_PTM	0x1F	/* Precision Time Measurement */
> -#define PCI_EXT_CAP_ID_MAX	PCI_EXT_CAP_ID_PTM
> +#define PCI_EXT_CAP_ID_DLF	0x25	/* Data Link Feature */
> +#define PCI_EXT_CAP_ID_PL	0x26	/* Physical Layer 16.0 GT/s */

Maybe PCI_EXT_CAP_ID_PL_16GT so there's a little more hint of what
this is for?

> +#define PCI_EXT_CAP_ID_MAX	PCI_EXT_CAP_ID_PL
>  
>  #define PCI_EXT_CAP_DSN_SIZEOF	12
>  #define PCI_EXT_CAP_MCAST_ENDPOINT_SIZEOF 40
> @@ -1053,4 +1055,22 @@
>  #define  PCI_L1SS_CTL1_LTR_L12_TH_SCALE	0xe0000000  /* LTR_L1.2_THRESHOLD_Scale */
>  #define PCI_L1SS_CTL2		0x0c	/* Control 2 Register */
>  
> +/* Data Link Feature */
> +#define PCI_DLF_CAP		0x04	/* Capabilities Register */
> +#define  PCI_DLF_LOCAL_DLF_SUP_MASK	0x007fffff  /* Local Data Link Feature Supported */
> +#define  PCI_DLF_EXCHANGE_ENABLE	0x80000000  /* Data Link Feature Exchange Enable */
> +#define PCI_DLF_STS		0x08	/* Status Register */
> +#define  PCI_DLF_REMOTE_DLF_SUP_MASK	0x007fffff  /* Remote Data Link Feature Supported */
> +#define  PCI_DLF_REMOTE_DLF_SUP_VALID	0x80000000  /* Remote Data Link Feature Support Valid */

I'm a little bit ambivalent about adding #defines that aren't used.  I
personally would probably just add the things we use, so the header
file gives a clue about what's currently implemented.  But I guess
either way is fine.

> +/* Physical Layer 16.0 GT/s */
> +#define PCI_PL_16GT_CAP		0x04	/* Capabilities Register */
> +#define PCI_PL_16GT_CTRL	0x08	/* Control Register */
> +#define PCI_PL_16GT_STS		0x0c	/* Status Register */
> +#define PCI_PL_16GT_LDPM_STS	0x10	/* Local Data Parity Mismatch Status Register */
> +#define PCI_PL_16GT_FRDPM_STS	0x14	/* First Retimer Data Parity Mismatch Status Register */
> +#define PCI_PL_16GT_SRDPM_STS	0x18	/* Second Retimer Data Parity Mismatch Status Register */
> +#define PCI_PL_16GT_RSVD	0x1C	/* Reserved */

Use lower-case hex consistently here.  There's no global consistency
in this file, but we can at least be consistent in each section.  But
I'm even more hesitant about included unused #defines for "reserved"
fields, so if you drop this it would take care of both :)

> +#define PCI_PL_16GT_LE_CTRL	0x20	/* Lane Equalization Control Register */

This is the only register you actually use.  You defined a local
PL16G_CAP_OFF_DSP_16G_TX_PRESET_MASK for this register.  Shouldn't
that be defined here instead of in
drivers/pci/controller/dwc/pcie-tegra194.c?

>  #endif /* LINUX_PCI_REGS_H */
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
