Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 235649F68F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 01:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwwzejqasvVnR2G9BmR3DbwDn6gG83dsFrVFWXYY7qE=; b=Ewij6IT06ydvBt
	vzEA06lXyNomnmhLFEB5KkEN4nkBL2O/ao+vP9m+9ZFtA/bz5lkwlBdY7aoZf6f4wzFNT/xT02Vya
	ZQnG6fXE46TEDPEg7mllR8x7ooqF7ShqZCHchjsc4HlTY0E8yoiE8iKmEd9MCWbzPo9uizmMbTIEW
	67fmmJiSWV48Sn1QJY/3bgf0Qjks4PdTEOMxupJoMr5QkPYkDp/+kHfpTdObUHi8G8F/8QbSDnQ5X
	p7GEBBzaL0p+r39qqY9XKOmKXD9d/LkG8wN+wReW6gijR8yfpLRvTrJ8KevszzwvRIPoR12gXOYuj
	bb4OMMtonxtXrwHZ4wQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2kYX-0008Ft-6t; Tue, 27 Aug 2019 23:07:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2kYJ-0008FG-Jw
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 23:07:05 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09904214DA;
 Tue, 27 Aug 2019 23:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566947222;
 bh=WE4QEs46+F0AXHLzxSkuwUCWzJwNYQIvdKGLoOjedEQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Nbk0GzfVvfIDS2w248ZujPEbSU7RmkyFzJLmfCKhInfK7r2zQ1n5pr30kuzojc1n1
 iUk/K5GEwiUWMu8ikTnYZfkz7SG2Df3/BexhC7K6iOIijWSxbH3ARYdCgKerqaJMQE
 RkwKbTq8PTfLbZU2WoVQnFT0U0cpKug0xXpfRtHE=
Date: Tue, 27 Aug 2019 18:06:59 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krzysztof Wilczynski <kw@linux.com>
Subject: Re: [PATCH] PCI: Fix misspelled words.
Message-ID: <20190827230659.GF9987@google.com>
References: <20190819115306.27338-1-kw@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819115306.27338-1-kw@linux.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_160703_692709_4D437B78 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Richard Zhu <hongxing.zhu@nxp.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 01:53:06PM +0200, Krzysztof Wilczynski wrote:
> Fix misspelled words in include/linux/pci.h, drivers/pci/Kconfig,
> and in the documentation for Freescale i.MX6 and Marvell Armada 7K/8K
> PCIe interfaces.  No functional change intended.
> 
> Related commit 96291d565550 ("PCI: Fix typos and whitespace errors").
> 
> Signed-off-by: Krzysztof Wilczynski <kw@linux.com>

Applied with Thomas' ack and Rob's reviewed-by to pci/trivial for
v5.4, thanks!

> ---
>  Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt | 2 +-
>  Documentation/devicetree/bindings/pci/pci-armada8k.txt   | 2 +-
>  drivers/pci/Kconfig                                      | 2 +-
>  include/linux/pci.h                                      | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt
> index a7f5f5afa0e6..de4b2baf91e8 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt
> @@ -50,7 +50,7 @@ Additional required properties for imx7d-pcie and imx8mq-pcie:
>  - power-domains: Must be set to a phandle pointing to PCIE_PHY power domain
>  - resets: Must contain phandles to PCIe-related reset lines exposed by SRC
>    IP block
> -- reset-names: Must contain the following entires:
> +- reset-names: Must contain the following entries:
>  	       - "pciephy"
>  	       - "apps"
>  	       - "turnoff"
> diff --git a/Documentation/devicetree/bindings/pci/pci-armada8k.txt b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> index 9e3fc15e1af8..1aaa09254001 100644
> --- a/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> +++ b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
> @@ -11,7 +11,7 @@ Required properties:
>  - reg-names:
>     - "ctrl" for the control register region
>     - "config" for the config space region
> -- interrupts: Interrupt specifier for the PCIe controler
> +- interrupts: Interrupt specifier for the PCIe controller
>  - clocks: reference to the PCIe controller clocks
>  - clock-names: mandatory if there is a second clock, in this case the
>     name must be "core" for the first clock and "reg" for the second
> diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
> index 2ab92409210a..46f4912a370d 100644
> --- a/drivers/pci/Kconfig
> +++ b/drivers/pci/Kconfig
> @@ -170,7 +170,7 @@ config PCI_P2PDMA
>  
>  	  Many PCIe root complexes do not support P2P transactions and
>  	  it's hard to tell which support it at all, so at this time,
> -	  P2P DMA transations must be between devices behind the same root
> +	  P2P DMA transactions must be between devices behind the same root
>  	  port.
>  
>  	  If unsure, say N.
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index 463486016290..5a89854bd3cb 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -961,7 +961,7 @@ resource_size_t pcibios_align_resource(void *, const struct resource *,
>  				resource_size_t,
>  				resource_size_t);
>  
> -/* Weak but can be overriden by arch */
> +/* Weak but can be overridden by arch */
>  void pci_fixup_cardbus(struct pci_bus *);
>  
>  /* Generic PCI functions used internally */
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
