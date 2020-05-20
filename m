Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF121DC1D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 00:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uM+A1Xq5rVhfjh603WrfTazpEfTUXU7gyoqunvA2yHM=; b=EeJqFWt7qByign
	YGCndGeh1tZgJIdc99ZtpW4u1WSqF3oI9vG1IabRh4FIYlQn7KkaYAVNsXNURxHgfalVUBXGUkM9r
	MYQp/oZyMY40W0GhxEdb23SVtliuz0qSmYc2NuXSIfidcgMtZmzLOh/BmYTXiWHHuJ9jYMn9PmfO9
	YcbautqcPPcc+imRDxFw8Fcu9zSmgKVGOy095GYh7Bu1Nsw9gH2xkQ+rvPkyCc93gC3e+tHb2ELX7
	hSZ60lKXs4/wXpBCvVp8sZUqO2l6/Gb+9HDl7Sf1oinlw/FPQs4bLqvHoufmaMZscD++bPmkFTfb8
	swpsuywYoWFfPZ2jgwqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbWsE-0004hO-W3; Wed, 20 May 2020 22:07:38 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbWs2-0004h0-TW
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 22:07:28 +0000
Received: by mail-io1-f68.google.com with SMTP id h10so5087372iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 15:07:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WUh3b880eTZB9TUeMaUcw/6WEtirPL5dFoPDjLOVxK0=;
 b=ipeaumkc70Rn5ttrS0LeGbR/eN6PTH2NDXKqHoZ0HrsBMQZXOBTrwxAMV6tCOc2aBF
 XZAAxcvF0djwdW/4K7n6qDT6q2EpTyeOX2RRYRgpkJ18eGjpta4RRtK2neUR9u2/ISrZ
 A1pSFwOnF8qgit/g6SpoInKhogNDsnetjDnSy0O/uvrI/t5ZRSoFQ/gfrui5Ap0W7jlA
 xglAhzxcgQROReCHfFpSBc0z6hzuw99fQrigI0Sl86ogDIpE2Jgh4Gt4P9lUVGIjUfia
 be5UzVDCL9S1ipiUpoRZHygGZafQJFFiqI76rYf+E6yFlNtgADi5tV6pe0LHqcnydOfI
 YDcw==
X-Gm-Message-State: AOAM530ptjWFyvSs3DOikPoQFjHHnSJfGIoY3bJFdINkEq17DsqWACaL
 ULdSbXSbSOonsZnfQsFtAg==
X-Google-Smtp-Source: ABdhPJwWAIyGPF3V7h0vTyeYZmnRkJL8NmG4CG554Lffu6o5pQ/beMaQbAl2N3fnm/qyqabvBHC99w==
X-Received: by 2002:a05:6638:60e:: with SMTP id
 g14mr1231252jar.54.1590012445798; 
 Wed, 20 May 2020 15:07:25 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id i13sm2025192ill.65.2020.05.20.15.07.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 15:07:25 -0700 (PDT)
Received: (nullmailer pid 683784 invoked by uid 1000);
 Wed, 20 May 2020 22:07:24 -0000
Date: Wed, 20 May 2020 16:07:24 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v4 03/14] PCI: cadence: Add support to use custom read
 and write accessors
Message-ID: <20200520220724.GA636352@bogus>
References: <20200506151429.12255-1-kishon@ti.com>
 <20200506151429.12255-4-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506151429.12255-4-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_150726_947696_99048A55 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 08:44:18PM +0530, Kishon Vijay Abraham I wrote:
> Add support to use custom read and write accessors. Platforms that
> don't support half word or byte access or any other constraint
> while accessing registers can use this feature to populate custom
> read and write accessors. These custom accessors are used for both
> standard register access and configuration space register access of
> the PCIe host bridge.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/pci/controller/cadence/pcie-cadence.h | 107 +++++++++++++++---
>  1 file changed, 94 insertions(+), 13 deletions(-)

Actually, take back my R-by...

> 
> diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
> index df14ad002fe9..70b6b25153e8 100644
> --- a/drivers/pci/controller/cadence/pcie-cadence.h
> +++ b/drivers/pci/controller/cadence/pcie-cadence.h
> @@ -223,6 +223,11 @@ enum cdns_pcie_msg_routing {
>  	MSG_ROUTING_GATHER,
>  };
>  
> +struct cdns_pcie_ops {
> +	u32	(*read)(void __iomem *addr, int size);
> +	void	(*write)(void __iomem *addr, int size, u32 value);
> +};
> +
>  /**
>   * struct cdns_pcie - private data for Cadence PCIe controller drivers
>   * @reg_base: IO mapped register base
> @@ -239,7 +244,7 @@ struct cdns_pcie {
>  	int			phy_count;
>  	struct phy		**phy;
>  	struct device_link	**link;
> -	const struct cdns_pcie_common_ops *ops;
> +	const struct cdns_pcie_ops *ops;
>  };
>  
>  /**
> @@ -299,69 +304,145 @@ struct cdns_pcie_ep {
>  /* Register access */
>  static inline void cdns_pcie_writeb(struct cdns_pcie *pcie, u32 reg, u8 value)
>  {
> -	writeb(value, pcie->reg_base + reg);
> +	void __iomem *addr = pcie->reg_base + reg;
> +
> +	if (pcie->ops && pcie->ops->write) {
> +		pcie->ops->write(addr, 0x1, value);
> +		return;
> +	}
> +
> +	writeb(value, addr);
>  }
>  
>  static inline void cdns_pcie_writew(struct cdns_pcie *pcie, u32 reg, u16 value)
>  {
> -	writew(value, pcie->reg_base + reg);
> +	void __iomem *addr = pcie->reg_base + reg;
> +
> +	if (pcie->ops && pcie->ops->write) {
> +		pcie->ops->write(addr, 0x2, value);
> +		return;
> +	}
> +
> +	writew(value, addr);
>  }

cdns_pcie_writeb and cdns_pcie_writew are used, so remove them.

>  
>  static inline void cdns_pcie_writel(struct cdns_pcie *pcie, u32 reg, u32 value)
>  {
> -	writel(value, pcie->reg_base + reg);
> +	void __iomem *addr = pcie->reg_base + reg;
> +
> +	if (pcie->ops && pcie->ops->write) {
> +		pcie->ops->write(addr, 0x4, value);
> +		return;
> +	}
> +
> +	writel(value, addr);

writel isn't broken for you, so you don't need this either.

>  }
>  
>  static inline u32 cdns_pcie_readl(struct cdns_pcie *pcie, u32 reg)
>  {
> -	return readl(pcie->reg_base + reg);
> +	void __iomem *addr = pcie->reg_base + reg;
> +
> +	if (pcie->ops && pcie->ops->read)
> +		return pcie->ops->read(addr, 0x4);
> +
> +	return readl(addr);

And neither is readl.

>  }
>  
>  /* Root Port register access */
>  static inline void cdns_pcie_rp_writeb(struct cdns_pcie *pcie,
>  				       u32 reg, u8 value)
>  {
> -	writeb(value, pcie->reg_base + CDNS_PCIE_RP_BASE + reg);
> +	void __iomem *addr = pcie->reg_base + CDNS_PCIE_RP_BASE + reg;
> +
> +	if (pcie->ops && pcie->ops->write) {
> +		pcie->ops->write(addr, 0x1, value);
> +		return;
> +	}
> +
> +	writeb(value, addr);
>  }
>  
>  static inline void cdns_pcie_rp_writew(struct cdns_pcie *pcie,
>  				       u32 reg, u16 value)
>  {
> -	writew(value, pcie->reg_base + CDNS_PCIE_RP_BASE + reg);
> +	void __iomem *addr = pcie->reg_base + CDNS_PCIE_RP_BASE + reg;
> +
> +	if (pcie->ops && pcie->ops->write) {
> +		pcie->ops->write(addr, 0x2, value);
> +		return;
> +	}
> +
> +	writew(value, addr);

You removed 2 out of 3 calls to this. I think I'd just make the root 
port writes always be 32-bit. It is all just one time init stuff 
anyways.

Either rework the calls to assemble the data into 32-bits or keep these 
functions and do the RMW here.

>  }
>  
>  /* Endpoint Function register access */
>  static inline void cdns_pcie_ep_fn_writeb(struct cdns_pcie *pcie, u8 fn,
>  					  u32 reg, u8 value)
>  {
> -	writeb(value, pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg);
> +	void __iomem *addr = pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg;
> +
> +	if (pcie->ops && pcie->ops->write) {
> +		pcie->ops->write(addr, 0x1, value);
> +		return;
> +	}
> +
> +	writeb(value, addr);

Same for these EP functions. 

Unless there are places where doing a RMW is fundamentally broken like 
in config space (not counting the one time init stuff).

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
