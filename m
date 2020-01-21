Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C9A144281
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 17:52:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=faGWzBRthrzYsenzQMtuDCZIh+bkX530D2p8A0Oq9Yw=; b=gf7E0id9TUwmoG
	IKYbgH/lEBfohznM/1spylV5xDuKn3mo0Ftm3C2Y6+TVZV2aroqQl91awqElAZ2lWI1Zg0MqOZzF4
	pnEIrZZ1u0tBNoUt66yYq9lLMt3HtzlMOjLZizFQRT5lBJ3oO8mEhw+yVcY7CVfZ3JKOgEHAGPY/k
	UET9v3u3R13zUw+E3M5mSAN+WRWhxZMXLnsFhjWqFwcYs5YGtuyDYxXeLj3JtI8UpcdZmgComFmKT
	36F0GzoULoCvAbPwpyb1ICbgh79+kUmvW5vUwX8Dl560FSwdGKGl37lFQ5hq5z8si7HIN6Blrp/+l
	KdtpRkTBVEY1ubKGQV5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itwlS-000627-9c; Tue, 21 Jan 2020 16:52:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itwlF-00060h-Br
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 16:52:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E985328;
 Tue, 21 Jan 2020 08:52:15 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F2653F6C4;
 Tue, 21 Jan 2020 08:52:13 -0800 (PST)
Date: Tue, 21 Jan 2020 16:52:08 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH] PCI: keystone: Fix error handling when "num-viewport" DT
 property is not populated
Message-ID: <20200121165208.GA21742@e121166-lin.cambridge.arm.com>
References: <20200121115734.7047-1-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121115734.7047-1-kishon@ti.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_085217_446752_B5136F15 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Murali Karicheri <m-karicheri2@ti.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 05:27:34PM +0530, Kishon Vijay Abraham I wrote:
> Fix error handling when "num-viewport" DT property is not populated.
> 
> Fixes: 23284ad677a94 ("PCI: keystone: Add support for PCIe EP in AM654x Platforms")
> Cc: stable@vger.kernel.org # v5.2+
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/pci/controller/dwc/pci-keystone.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to pci/keystone, thanks.

Lorenzo

> diff --git a/drivers/pci/controller/dwc/pci-keystone.c b/drivers/pci/controller/dwc/pci-keystone.c
> index dbe31589eb61..2c127c321080 100644
> --- a/drivers/pci/controller/dwc/pci-keystone.c
> +++ b/drivers/pci/controller/dwc/pci-keystone.c
> @@ -1357,7 +1357,7 @@ static int __init ks_pcie_probe(struct platform_device *pdev)
>  		ret = of_property_read_u32(np, "num-viewport", &num_viewport);
>  		if (ret < 0) {
>  			dev_err(dev, "unable to read *num-viewport* property\n");
> -			return ret;
> +			goto err_get_sync;
>  		}
>  
>  		/*
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
