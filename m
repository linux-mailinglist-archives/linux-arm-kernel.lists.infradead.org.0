Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE6F1E68E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 19:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ly9p8NA9jV9Mh5ec+qgSGzBwkCLu9g1LH/7s3KcGOC4=; b=np1aAZiBEw4+dSRKrvIeqIfCf
	fNQec4+JuNa/TL6eZXUCcl06LjvcGR2FQtyaARD4/LUqtRb8najgUGv8r3psUE04po8J3fGYs96PI
	0+is0z0ItUAJh66YJDfHSzY/Ma2wpBdljehjAB1kEwNfQMc+y+/y2OmxoUYcPtRrYMUFWwF9uCmAc
	QoS/TF+r+7+8BZbX7lBWblzzYVPvGn4fryG+bZ1yJjhszSBUqOGjs7FoYZIWTtZRYFw+0klr5PtRb
	S37OI8G7D2S/ugRTGudCfE26iCSBD29F6SNTX+YuhGyiKq9Q03eBjALpS5lTQTkljlwjpaKN7aZKx
	NYR92fYRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeMj9-0001XG-V5; Thu, 28 May 2020 17:53:59 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeMj1-0001Wl-Ec
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 17:53:52 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a45so899271pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 10:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=YhNvAW92ZEK9h867b9iS1cctCTKmkiLmuttZMDJHtJE=;
 b=emHONirD3EAxo3LU0LbehdMV2tvAYzhhZj+1YScvp5WcGmvA3O1HiPHHAhkB5/i2I8
 AwKkbxcjFa4qDTdVR7oY+EQ3fgFNOCNkmf+pBLAIRxTbLmGBjOquLusQ4rDcSfHpH1Se
 lrnGl4e/MGk5aZOcMKC+UUVrqtpA0npeJ6Sho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=YhNvAW92ZEK9h867b9iS1cctCTKmkiLmuttZMDJHtJE=;
 b=EkMzZhG6KEHI5nL5j8+4kcdb0olvidkgbZNBekXcLqn6wIByOx0pZC+zfPfAcwZ63n
 89CpTD7SP4MBpAdJPDq9V5eUeP7Mba9TQAl2PaunnIqNAGnHyToD+6ynIZlr6Wi73+Ev
 6gkiQDFW9GJmGL62E5D5jUNhThwgXCvfO8nb8QTFJbr5G3GnPTCoeJHEWH+6FOCCfxDV
 ESeiuYGh5jzA8wmEaYNzHML2XVVAg7GeHCnqK0jgnkUkvMzUcuw0wnXKLiHeMvKpNwTU
 mstLqZJKB3TQeldQdX9IeZwTcsa6ZlJNp8RibMKrlen2QtnAkrkzsxTFQ7VmA7g8SZMu
 0hIQ==
X-Gm-Message-State: AOAM532/Pl574Cn79NVrK6lkGv0dh7G/6CwjMT39AE2tkyC00mqDGzsf
 R1JNV7uvkM7p15QsoVbW1EJrk+cnXLGrzQ==
X-Google-Smtp-Source: ABdhPJz39e6oQezEw97jMiTLOwizsYhOWisoOEQMD7a0yn+8WmCvramZUqi5jMADbrC+KSjdBVmKPw==
X-Received: by 2002:a17:902:ff09:: with SMTP id
 f9mr4855405plj.322.1590688429968; 
 Thu, 28 May 2020 10:53:49 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id x8sm2161803pfm.202.2020.05.28.10.53.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 May 2020 10:53:49 -0700 (PDT)
Subject: Re: [PATCH 11/15] PCI: iproc: Use pci_host_probe() to register host
To: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200522234832.954484-1-robh@kernel.org>
 <20200522234832.954484-12-robh@kernel.org>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <9da2fea3-85bb-a137-c7a8-82cb5eae6d44@broadcom.com>
Date: Thu, 28 May 2020 10:53:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200522234832.954484-12-robh@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_105351_490073_6B071CA5 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Branden <sbranden@broadcom.com>, linux-pci@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020-05-22 4:48 p.m., Rob Herring wrote:
> The iproc host driver does the same host registration and bus scanning
> calls as pci_host_probe, so let's use it instead.
>
> The only difference is pci_assign_unassigned_bus_resources() was called
> instead of pci_bus_size_bridges() and pci_bus_assign_resources(). This
> should be the same.
>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Signed-off-by: Rob Herring <robh@kernel.org>
Acked-by: Scott Branden <scott.branden@broadcom.com>
> ---
>   drivers/pci/controller/pcie-iproc.c | 18 +++++-------------
>   drivers/pci/controller/pcie-iproc.h |  2 --
>   2 files changed, 5 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> index 8c7f875acf7f..232fca0754e1 100644
> --- a/drivers/pci/controller/pcie-iproc.c
> +++ b/drivers/pci/controller/pcie-iproc.c
> @@ -1470,7 +1470,6 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
>   {
>   	struct device *dev;
>   	int ret;
> -	struct pci_bus *child;
>   	struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
>   
>   	dev = pcie->dev;
> @@ -1531,21 +1530,12 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
>   	host->map_irq = pcie->map_irq;
>   	host->swizzle_irq = pci_common_swizzle;
>   
> -	ret = pci_scan_root_bus_bridge(host);
> +	ret = pci_host_probe(host);
>   	if (ret < 0) {
>   		dev_err(dev, "failed to scan host: %d\n", ret);
>   		goto err_power_off_phy;
>   	}
>   
> -	pci_assign_unassigned_bus_resources(host->bus);
> -
> -	pcie->root_bus = host->bus;
> -
> -	list_for_each_entry(child, &host->bus->children, node)
> -		pcie_bus_configure_settings(child);
> -
> -	pci_bus_add_devices(host->bus);
> -
>   	return 0;
>   
>   err_power_off_phy:
> @@ -1558,8 +1548,10 @@ EXPORT_SYMBOL(iproc_pcie_setup);
>   
>   int iproc_pcie_remove(struct iproc_pcie *pcie)
>   {
> -	pci_stop_root_bus(pcie->root_bus);
> -	pci_remove_root_bus(pcie->root_bus);
> +	struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
> +
> +	pci_stop_root_bus(host->bus);
> +	pci_remove_root_bus(host->bus);
>   
>   	iproc_pcie_msi_disable(pcie);
>   
> diff --git a/drivers/pci/controller/pcie-iproc.h b/drivers/pci/controller/pcie-iproc.h
> index 4f03ea539805..c2676e442f55 100644
> --- a/drivers/pci/controller/pcie-iproc.h
> +++ b/drivers/pci/controller/pcie-iproc.h
> @@ -54,7 +54,6 @@ struct iproc_msi;
>    * @reg_offsets: register offsets
>    * @base: PCIe host controller I/O register base
>    * @base_addr: PCIe host controller register base physical address
> - * @root_bus: pointer to root bus
>    * @phy: optional PHY device that controls the Serdes
>    * @map_irq: function callback to map interrupts
>    * @ep_is_internal: indicates an internal emulated endpoint device is connected
> @@ -85,7 +84,6 @@ struct iproc_pcie {
>   	void __iomem *base;
>   	phys_addr_t base_addr;
>   	struct resource mem;
> -	struct pci_bus *root_bus;
>   	struct phy *phy;
>   	int (*map_irq)(const struct pci_dev *, u8, u8);
>   	bool ep_is_internal;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
