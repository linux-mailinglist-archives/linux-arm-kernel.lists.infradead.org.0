Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2853B4EFDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 22:09:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bOXcN4csSquj4HBJlM8NG6wjdAxe268q9/ojnDRGWkw=; b=ouqoRayU8uDxJX
	bljBvmgb1M+lIkWmNC3Wpn8EvYIUjqqGPXVG/PEMuhGWF4QOwEc6VOCIUmj8Q1in/Eyr4WINhJJZx
	+GV5O3kYlTMNG4809u1W4TF/3gRYG9AAPpJZiBL/cMMF6m/HLnRi3lGjImqQpnrSfk1Dc9L/rEJ13
	ELBXzXSJ4f693+Fwd5wn0oQkND4+HVe5r5KjoL+ypGno/iCC7HXybVxl48Z9+v/GXTB0kARyIb7U5
	LkfIy463ePKN8z9aiJ6cj2NMVwfB1smtAl8hMsE2Lc6SR4yZsyLzmG6WNU4xpTzhmv6hdlq49v0me
	DyRFuPEhj5+EmL0HwcmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hePqM-0000KF-Mi; Fri, 21 Jun 2019 20:09:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hePq5-0000JW-Ma
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 20:08:50 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3524720673;
 Fri, 21 Jun 2019 20:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561147729;
 bh=AN0vpG2KBuc/fVCklXR8c1Pz5Joougr0bod/vOlROHY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2U833aO9vq7b8WUyV4aFXVud1ZYYJp/yHpkCVnTDf/1ox7RHLVEr+KNr5XdLHdM/L
 5R9vvD60BXVZIYCNNIhlzanqGZ10zfP8bP0HctPYDwbsIWn9vDAQ5/tj2wQGFyxHrz
 wwkghX8HdMF/fG1fgIcGjTVrV5Ej1HkzPi8lLv/w=
Date: Fri, 21 Jun 2019 15:08:48 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 4/4] arm64: pci: acpi: Preserve PCI resources
 configuration when asked by ACPI
Message-ID: <20190621200848.GE127746@google.com>
References: <20190615002359.29577-1-benh@kernel.crashing.org>
 <20190615002359.29577-4-benh@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190615002359.29577-4-benh@kernel.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_130849_749434_E7B7865B 
X-CRM114-Status: GOOD (  15.35  )
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

  arm64: PCI: Preserve firmware configuration when necessary

On Sat, Jun 15, 2019 at 10:23:59AM +1000, Benjamin Herrenschmidt wrote:
> When _DSM #5 returns 0 for a host bridge, we need to claim the existing
> resources rather than reassign everything.

Use imperative mood.  I'd remove the reference to _DSM #5.  This patch
does not directly reference _DSM, and it's conceivable a kernel
command line parameter or other mechanism could set
host->preserve_config.

> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> ---
>  arch/arm64/kernel/pci.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/kernel/pci.c b/arch/arm64/kernel/pci.c
> index 1419b1b4e9b9..a2c608a3fc41 100644
> --- a/arch/arm64/kernel/pci.c
> +++ b/arch/arm64/kernel/pci.c
> @@ -168,6 +168,7 @@ struct pci_bus *pci_acpi_scan_root(struct acpi_pci_root *root)
>  	struct acpi_pci_generic_root_info *ri;
>  	struct pci_bus *bus, *child;
>  	struct acpi_pci_root_ops *root_ops;
> +	struct pci_host_bridge *hb;
>  
>  	ri = kzalloc(sizeof(*ri), GFP_KERNEL);
>  	if (!ri)
> @@ -193,6 +194,16 @@ struct pci_bus *pci_acpi_scan_root(struct acpi_pci_root *root)
>  	if (!bus)
>  		return NULL;
>  
> +	hb = pci_find_host_bridge(bus);
> +
> +	/* If ACPI tells us to preserve the resource configuration, claim now */
> +	if (hb->preserve_config)
> +		pci_bus_claim_resources(bus);
> +
> +	/*
> +	 * Assign whatever was left unassigned. If we didn't claim above, this will
> +	 * reassign everything.

Wrap the comment so it fits in 80 columns (unless local arch/arm64 style
allows wider lines, but I don't see any other wide lines in the file).

This series generally looks good to me.

> +	 */
>  	pci_assign_unassigned_root_bus_resources(bus);
>  
>  	list_for_each_entry(child, &bus->children, node)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
