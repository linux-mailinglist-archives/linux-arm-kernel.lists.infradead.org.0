Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7509364D55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 22:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAG8uINAyzfSHjcQbb/iIwiXXKmJXQUWSZViC8nsxlU=; b=JE/U3TtLei5bLC
	IZvHAltn+aC0vPS8uFitzCRRVhLLp6CLzDQQQsOmn1Xj55svRq4n+Z51G+S6oPvQPYW+3+18OPfpl
	BNtV/jzwzAOhyxCyNcGLUsUag/rUqi2oDH8gg1oJOI3bZNIZZ9f+a6k45POCXC0EB0fdUB9LZOXpP
	OUxbf4lSywaBnU2udPdvgaOEy7kp9Je5drLO5WvGcarCSVjbq0Rn9Xkb1KipcbBbwShk7yWuPpJXv
	Dg6F+bLJ4atHTKSpcMH7t+cd2qWg736CBoLKjo3k/d8hu3RlzrF3LmPmHG7aYX9PuqtJmYDQoo5dn
	p26TLzdvwvtfueUv5rPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlIzk-0004eP-1o; Wed, 10 Jul 2019 20:15:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlIz8-0004d0-Uz
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 20:14:42 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C5772064A;
 Wed, 10 Jul 2019 20:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562789678;
 bh=wtm+DjyVQOY6e2saxu9q/9JBUtIjNNcNelSObGoKHtc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CjFZzsIvy/bV1Wm5fVzdmbDSd8Z4gZtj9UPorTpWXw2d2eh2xapf/1TmvBENz5JoO
 IQhrfXxZ/31Nz2SFTi4+beNghuV5Vmstb+tuc+L0txzAo55jxD0Tm5W/MPYVFDkLh4
 Q1rrsydh6lhtmpjujnq6DeFlPyLX/z0uJ8/XLRSs=
Date: Wed, 10 Jul 2019 15:14:34 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V13 01/12] PCI: Add #defines for some of PCIe spec r4.0
 features
Message-ID: <20190710201433.GC35486@google.com>
References: <20190710062212.1745-1-vidyas@nvidia.com>
 <20190710062212.1745-2-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710062212.1745-2-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_131441_213581_A23C803B 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, Jul 10, 2019 at 11:52:01AM +0530, Vidya Sagar wrote:
> Add #defines only for the Data Link Feature and Physical Layer 16.0 GT/s
> features as defined in PCIe spec r4.0, sec 7.7.4 for Data Link Feature and
> sec 7.7.5 for Physical Layer 16.0 GT/s.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Reviewed-by: Thierry Reding <treding@nvidia.com>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

Looks good, thanks!

> ---
> V13:
> * Updated commit message to include references from spec
> * Removed unused defines and moved some from pcie-tegra194.c file
> * Addressed review comments from Bjorn
> 
> V12:
> * None
> 
> V11:
> * None
> 
> V10:
> * None
> 
> V9:
> * None
> 
> V8:
> * None
> 
> V7:
> * None
> 
> V6:
> * None
> 
> V5:
> * None
> 
> V4:
> * None
> 
> V3:
> * Updated commit message and description to explicitly mention that defines are
>   added only for some of the features and not all.
> 
> V2:
> * None
> 
>  include/uapi/linux/pci_regs.h | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/include/uapi/linux/pci_regs.h b/include/uapi/linux/pci_regs.h
> index f28e562d7ca8..d28d0319d932 100644
> --- a/include/uapi/linux/pci_regs.h
> +++ b/include/uapi/linux/pci_regs.h
> @@ -713,7 +713,9 @@
>  #define PCI_EXT_CAP_ID_DPC	0x1D	/* Downstream Port Containment */
>  #define PCI_EXT_CAP_ID_L1SS	0x1E	/* L1 PM Substates */
>  #define PCI_EXT_CAP_ID_PTM	0x1F	/* Precision Time Measurement */
> -#define PCI_EXT_CAP_ID_MAX	PCI_EXT_CAP_ID_PTM
> +#define PCI_EXT_CAP_ID_DLF	0x25	/* Data Link Feature */
> +#define PCI_EXT_CAP_ID_PL_16GT	0x26	/* Physical Layer 16.0 GT/s */
> +#define PCI_EXT_CAP_ID_MAX	PCI_EXT_CAP_ID_PL_16GT
>  
>  #define PCI_EXT_CAP_DSN_SIZEOF	12
>  #define PCI_EXT_CAP_MCAST_ENDPOINT_SIZEOF 40
> @@ -1053,4 +1055,14 @@
>  #define  PCI_L1SS_CTL1_LTR_L12_TH_SCALE	0xe0000000  /* LTR_L1.2_THRESHOLD_Scale */
>  #define PCI_L1SS_CTL2		0x0c	/* Control 2 Register */
>  
> +/* Data Link Feature */
> +#define PCI_DLF_CAP		0x04	/* Capabilities Register */
> +#define  PCI_DLF_EXCHANGE_ENABLE	0x80000000  /* Data Link Feature Exchange Enable */
> +
> +/* Physical Layer 16.0 GT/s */
> +#define PCI_PL_16GT_LE_CTRL	0x20	/* Lane Equalization Control Register */
> +#define  PCI_PL_16GT_LE_CTRL_DSP_TX_PRESET_MASK		0x0000000F
> +#define  PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_MASK		0x000000F0
> +#define  PCI_PL_16GT_LE_CTRL_USP_TX_PRESET_SHIFT	4
> +
>  #endif /* LINUX_PCI_REGS_H */
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
