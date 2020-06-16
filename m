Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B981C1FC164
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 00:05:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=SEZy+yHSM55BzScuC/kUzLMz+fEqWHj88BILEuIpzi8=; b=H98GHRqUiMszc6
	K2Li+SAv8ZOyxWmrPtKIXamc98FXx0AvrvDUXMbZc+6MlbPqb4aRWF0ObZr1DsE8niahmsJf1CPU5
	yDfe6ZrrGwtf2KZxig1gPoKuXRaV/Cbv3OvH2ltmno4Qg0BXp1Wx3qmtxiew4aG1iEowHfpZSq11E
	P8hQ7hKnFczfrtwcmrIJqIaJlmXSUc0eBlU8Dr6PD/GRLnPQM5ZhEKgGBDBcfvhedl+hnZQIAnKtn
	41T/AI/AO2mm6QVhDPW0zqExOpRdd4ZoEiE9vUH8cwQ5G+Iw1ny/PaeMdkPznisVc+nYMR8FHAHjI
	JMA2wxJrcUSKpV52opbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlJi5-0003Ak-FG; Tue, 16 Jun 2020 22:05:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlJhj-00033N-2u; Tue, 16 Jun 2020 22:05:16 +0000
Received: from localhost (mobile-166-170-222-206.mycingular.net
 [166.170.222.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CBECB212CC;
 Tue, 16 Jun 2020 22:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592345114;
 bh=hv4wPFyEJRd4xzxF/vGpJzArF+FF4asaZjnXJFSaXAQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=pN5SkitGCKCS+Mw9K8Zik3vNpfxrZdM1jl+uXR1ciXvPJnFlnB3yP53tqSYPbeOz0
 d0/kRrFurOBuvMgPzdUG8On6/wDy2XoCjDE3/AawEKqdrMVF3EgWJ0uWNdenDgocZt
 GzGxSMdsavN5Uxaa793zchM9Tt4TzTKMm7i8FXe8=
Date: Tue, 16 Jun 2020 17:05:11 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH v5 06/12] PCI: brcmstb: Add bcm7278 PERST support
Message-ID: <20200616220511.GA1984089@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616205533.3513-7-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_150515_208059_C4380C91 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 04:55:13PM -0400, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
> 
> The PERST bit was moved to a different register in 7278-type STB chips.  In
> addition, the polarity of the bit was also changed; for other chips writing
> a 1 specified assert; for 7278-type chips, writing a 0 specifies assert.
> 
> Signal-wise, PERST is an asserted-low signal.

s/PERST/PERST#/ to match usage of the signal name in spec.

The PERST bit above is the name of a register bit, so use whatever
matches the STB spec.

> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index 7c148eb65170..d0e256d8578a 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -83,6 +83,7 @@
>  
>  #define PCIE_MISC_PCIE_CTRL				0x4064
>  #define  PCIE_MISC_PCIE_CTRL_PCIE_L23_REQUEST_MASK	0x1
> +#define PCIE_MISC_PCIE_CTRL_PCIE_PERSTB_MASK		0x4
>  
>  #define PCIE_MISC_PCIE_STATUS				0x4068
>  #define  PCIE_MISC_PCIE_STATUS_PCIE_PORT_MASK		0x80
> @@ -685,9 +686,16 @@ static inline void brcm_pcie_perst_set(struct brcm_pcie *pcie, u32 val)
>  {
>  	u32 tmp;
>  
> -	tmp = readl(pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
> -	u32p_replace_bits(&tmp, val, PCIE_RGR1_SW_INIT_1_PERST_MASK);
> -	writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
> +	if (pcie->type == BCM7278) {
> +		/* Perst bit has moved and assert value is 0 */

s/Perst/PERST/ or PERST# so it doesn't look like an English word and
to match the STB spec.

> +		tmp = readl(pcie->base + PCIE_MISC_PCIE_CTRL);
> +		u32p_replace_bits(&tmp, !val, PCIE_MISC_PCIE_CTRL_PCIE_PERSTB_MASK);
> +		writel(tmp, pcie->base +  PCIE_MISC_PCIE_CTRL);
> +	} else {
> +		tmp = readl(pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
> +		u32p_replace_bits(&tmp, val, PCIE_RGR1_SW_INIT_1_PERST_MASK);
> +		writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
> +	}
>  }
>  
>  static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pcie *pcie,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
