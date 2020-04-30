Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DDD1C07FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 22:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=gx3UXxnHIv+jYygnTdZ9XPUsBjIFdz2v6wBiYLuCGBE=; b=liViazgai914h1
	sAV3a8bUD927mSdD1Adc994wboO6Qf60f/bQkQQkoytN4/blfyvu2G8WaHuA+xU4lS9qtGSEv7UK2
	1knkzYjr8zVwPrAAAOUdCCe5qcswkLOVN1dgZCZA0bsUvQbrKNaRClQmjgCi+WvHb/RXtBYwGrO9X
	+g6OPHmCXZKW0IWI5vqEt8XyrZ+1EFkIl3OfIdpGxgXojU7OYbNQ1f3KcHPX/GJbQKUMVpmvlJmgx
	GCCk92iP9UWK5HAAIradmmfu4MqSD9C19e/hn2cpphC0yj1fdtiTCWzjUbAxPOWPhDrFt9P88V31u
	OdlQ/66BdrItYzlXWngw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUFrm-00059v-9b; Thu, 30 Apr 2020 20:33:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUFrb-00059M-CK; Thu, 30 Apr 2020 20:32:56 +0000
Received: from localhost (mobile-166-175-184-168.mycingular.net
 [166.175.184.168])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 630C020731;
 Thu, 30 Apr 2020 20:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588278774;
 bh=zzOnZ2B7AsiXDdVWneijt0yscUPJzfIVROepioX7gdA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=zd5B1ASeI/cKNjmR9Kf5s0atSdNzjmUWfNULcGEiUguAUlByj0/PuGPATMJIx9jHv
 WCAH+L+iFs5BnjP2mGyb5l94EBqey4Zj0mSzBEZGBt1rtwBurlaMNpQ4opqZkzjKPx
 C3AKyYptt/ieWhnd4glH2ZPvpWjAI2QT7vwx6c+w=
Date: Thu, 30 Apr 2020 15:32:52 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH 3/5] PCI: brcmstb: enable CRS
Message-ID: <20200430203252.GA62266@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430185522.4116-3-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_133255_461090_38F91208 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 02:55:20PM -0400, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
> 
> Configuration Retry Request Status is off by default on this
> PCIe controller.  Turn it on.

Are you talking about CRS itself, i.e., the ability of a Root Port to
deal with Completions with Configuration Retry Request Status?  That
really shouldn't be switchable in the hardware since it's a required
feature for all PCIe devices.

Or are you talking about CRS Software Visibility, which is controlled
by a bit in the PCIe Root Control register?  That *should* be managed
by the PCI core in pci_enable_crs().  Does that generic method of
controlling it not work for this device?

It looks like maybe the latter, since the generic:

  #define  PCI_EXP_RTCTL_CRSSVE   0x0010

matches your new PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL_RC_CRS_EN_MASK.

If pci_enable_crs() doesn't work on this device, it sounds like a
hardware defect that we need to work around, but I'm not sure that
just enabling it unconditionally here is the right thing.

> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index 5b0dec5971b8..2bc913c0262c 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -34,6 +34,9 @@
>  #define BRCM_PCIE_CAP_REGS				0x00ac
>  
>  /* Broadcom STB PCIe Register Offsets */
> +#define PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL			0x00c8
> +#define  PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL_RC_CRS_EN_MASK	0x10
> +
>  #define PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1				0x0188
>  #define  PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1_ENDIAN_MODE_BAR2_MASK	0xc
>  #define  PCIE_RC_CFG_VENDOR_SPCIFIC_REG1_LITTLE_ENDIAN			0x0
> @@ -827,6 +830,12 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>  		 pci_speed_string(pcie_link_speed[cls]), nlw,
>  		 ssc_good ? "(SSC)" : "(!SSC)");
>  
> +	/* Enable configuration request retry (CRS) */
> +	tmp = readl(base + PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL);
> +	u32p_replace_bits(&tmp, 1,
> +			  PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL_RC_CRS_EN_MASK);
> +	writel(tmp, base + PCIE_RC_CFG_PCIE_ROOT_CAP_CONTROL);
> +
>  	/* PCIe->SCB endian mode for BAR */
>  	tmp = readl(base + PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1);
>  	u32p_replace_bits(&tmp, PCIE_RC_CFG_VENDOR_SPCIFIC_REG1_LITTLE_ENDIAN,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
