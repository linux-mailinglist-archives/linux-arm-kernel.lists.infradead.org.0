Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936A74F020
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 22:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pudWbdycjNxbugD54qgkSKBo1nr1U38FtLVFsbi3Ndc=; b=eGteercoZct8bt
	KeO7QmGTbxsfva8xaFbpGIvJQsjWEhs2zi22SZQxdk6eQ2hg4hL9q8HJFHeIl/rhZi9vsTcCYSl7f
	6aA2MWBQL7U5ShckYWcx+wvPm+f1BtBQj7Kq5vO+4War6TOqSz30DdqUT8JNeF0qhBulZxm65Vq+/
	lGxOLlXbFY1/SLX4Z/vgoAjI9FL7ukPiuYW6c5cepDZy/OeUmVgqO/MbcQyaiGu0aF2oO7StZ3UzC
	nI+gNcHdOFMFiticGvTPC0w3XOP4JXLc0lGnd4uRtVnOBzG/WA4BAT337hOu1rBsIhgZD879vSCqg
	rW3elvINv/px48nOUoxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heQSp-0006Mq-Ja; Fri, 21 Jun 2019 20:48:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heQSf-0006ML-Se
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 20:48:43 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D05922070B;
 Fri, 21 Jun 2019 20:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561150121;
 bh=UARkIfuRiTv1x4Vk35qpvirV8jE6wnx9e7VMEObMkz4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VHwjHIU6xRF5auZ52FutTR1fB/ccIOlGU8fKnV63z+BOvcVim5oDP9rvl+8sCovYQ
 uBRhBA4p+W0AQ9c9yxrunjyqSB8Qp6wHxdM6Ty1+z16/drVnlXsraza6rK3yfoPd5z
 7+5FoQybKAQwgk3llwZqUYVnt21zucF3ih44WLV0=
Date: Fri, 21 Jun 2019 15:48:39 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 1/4] arm64: pci: acpi: Use
 pci_assign_unassigned_root_bus_resources()
Message-ID: <20190621204839.GF127746@google.com>
References: <20190615002359.29577-1-benh@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190615002359.29577-1-benh@kernel.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_134841_948853_9AC979E1 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, Zeev Zilberman <zeev@amazon.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ali Saidi <alisaidi@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 15, 2019 at 10:23:56AM +1000, Benjamin Herrenschmidt wrote:
> Instead of the simpler
> 
> 	pci_bus_size_bridges(bus);
> 	pci_bus_assign_resources(bus);
> 
> Use pci_assign_unassigned_root_bus_resources(). This should have no effect
> as long as we are reassigning everything. Once we start honoring FW
> resource allocations, this will bring up the "reallocation" feature
> which can help making room for SR-IOV when necessary.
> 
> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>

I applied these to pci/resource, with my comments and acks from
Lorenzo and Ard.  Let me know if I was too aggressive or got something
wrong; I consider these branches malleable until the merge window.

Thanks for the first step on this long journey :)

> ---
>  arch/arm64/kernel/pci.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/pci.c b/arch/arm64/kernel/pci.c
> index bb85e2f4603f..1419b1b4e9b9 100644
> --- a/arch/arm64/kernel/pci.c
> +++ b/arch/arm64/kernel/pci.c
> @@ -193,8 +193,7 @@ struct pci_bus *pci_acpi_scan_root(struct acpi_pci_root *root)
>  	if (!bus)
>  		return NULL;
>  
> -	pci_bus_size_bridges(bus);
> -	pci_bus_assign_resources(bus);
> +	pci_assign_unassigned_root_bus_resources(bus);
>  
>  	list_for_each_entry(child, &bus->children, node)
>  		pcie_bus_configure_settings(child);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
