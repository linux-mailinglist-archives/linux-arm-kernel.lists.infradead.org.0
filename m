Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C07BD1C0870
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 22:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=KQiu+GjclSVVJwmTyY0A+bbkn1E75ajjV03qwDAHH+Y=; b=G0siLZvIrpu3CE
	B1oxgYp426V68rx7wFTlh+kwW/6FSwku6UhG/tebp4eBsm/Hm6HWizgQ9D6GwpBdQanhFv9hJyFXf
	tnc07t30/MZPB3vmzJdczrw9AsG+q4a/nYI4zkXvWnBt5JHLPfOyHObiWuWM//mB+css683NZ3Aep
	FGgpzNVvFXW2r+gvrXLBkvMxBXMzTltoQuEgjS9SZSRrB4xSUpSnzFjE6lGEHBcaqutpAdDnKT2DW
	HAaI59cc5iYm2n4B4+UtJtfcriPPTRdrtiUTBVmXp/zpnV741mqbM4r8am//M12Spsq2zz3/XbbQh
	vk0WM/sLYi6rTfaYfTJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUG2n-00068v-AC; Thu, 30 Apr 2020 20:44:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUFyn-0003Ve-1e; Thu, 30 Apr 2020 20:40:24 +0000
Received: from localhost (mobile-166-175-184-168.mycingular.net
 [166.175.184.168])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7BFEF206C0;
 Thu, 30 Apr 2020 20:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588279219;
 bh=5Snw5Ucaj8rYXrTv7rmk42pJX+ytZh64Y19B+5t8ZUU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=QQEcW57aBZptdf4jpOft/n3IKmo0zDugFzHwKTWq/Y2GcQ7r1C23c5kd2fISfvG+M
 HkGzyX5fzulrTCYiTUXYSwvpM/24r4Sq7SBY9lt0Atc1ZQSDUtNVdk1hQnUJbwkYPK
 ND3uH56xSkxeZT0Bch/NYTzZtMkCULqOh0dOlS4I=
Date: Thu, 30 Apr 2020 15:40:17 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH 5/5] PCI: brcmstb: disable L0s component of ASPM by default
Message-ID: <20200430204017.GA62947@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430185522.4116-5-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_134021_280731_31AA682B 
X-CRM114-Status: GOOD (  18.82  )
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

On Thu, Apr 30, 2020 at 02:55:22PM -0400, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
> 
> Some informal internal experiments has shown that the BrcmSTB ASPM L0s
> savings may introduce an undesirable noise signal on some customers'
> boards.  In addition, L0s was found lacking in realized power savings,
> especially relative to the L1 ASPM component.  This is BrcmSTB's
> experience and may not hold for others.  At any rate, we disable L0s
> savings by default unless the DT node has the 'brcm,aspm-en-l0s'
> property.

I assume this works by writing the PCIe Link Capabilities register,
which is read-only via the config space path used by the generic ASPM
code, so that code thinks the device doesn't support L0s at all.

Documentation/devicetree/bindings/pci/rockchip-pcie-host.txt includes
an "aspm-no-l0s" property.  It'd be nice if this could use the same
property.

> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index 2bc913c0262c..bc1d514b19e4 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -44,6 +44,9 @@
>  #define PCIE_RC_CFG_PRIV1_ID_VAL3			0x043c
>  #define  PCIE_RC_CFG_PRIV1_ID_VAL3_CLASS_CODE_MASK	0xffffff
>  
> +#define PCIE_RC_CFG_PRIV1_LINK_CAPABILITY			0x04dc
> +#define  PCIE_RC_CFG_PRIV1_LINK_CAPABILITY_ASPM_SUPPORT_MASK	0xc00
> +
>  #define PCIE_RC_DL_MDIO_ADDR				0x1100
>  #define PCIE_RC_DL_MDIO_WR_DATA				0x1104
>  #define PCIE_RC_DL_MDIO_RD_DATA				0x1108
> @@ -696,7 +699,7 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>  	int num_out_wins = 0;
>  	u16 nlw, cls, lnksta;
>  	int i, ret;
> -	u32 tmp;
> +	u32 tmp, aspm_support;
>  
>  	/* Reset the bridge */
>  	brcm_pcie_bridge_sw_init_set(pcie, 1);
> @@ -806,6 +809,15 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>  		num_out_wins++;
>  	}
>  
> +	/* Only support ASPM L1 unless L0s is explicitly desired */
> +	aspm_support = PCIE_LINK_STATE_L1;
> +	if (of_property_read_bool(pcie->np, "brcm,aspm-en-l0s"))
> +		aspm_support |= PCIE_LINK_STATE_L0S;
> +	tmp = readl(base + PCIE_RC_CFG_PRIV1_LINK_CAPABILITY);
> +	u32p_replace_bits(&tmp, aspm_support,
> +		PCIE_RC_CFG_PRIV1_LINK_CAPABILITY_ASPM_SUPPORT_MASK);
> +	writel(tmp, base + PCIE_RC_CFG_PRIV1_LINK_CAPABILITY);
> +
>  	/*
>  	 * For config space accesses on the RC, show the right class for
>  	 * a PCIe-PCIe bridge (the default setting is to be EP mode).
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
