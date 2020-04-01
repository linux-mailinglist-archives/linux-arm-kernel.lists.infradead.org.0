Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8B119B735
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 22:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=/8iBtxCXr1Hi4RoUgzG80GTrZQa9/j9qfcJWG3GjzrU=; b=umWQJVkeUuYkWH
	KQKIBIqQvVFLKgt6Ka1BnpnhXmGA09FQnHDqBnAnUzhW9YKAdP8Caxxgm0kK0qZbh4ZjS+3upkgWc
	42q8KvnZgYucwVDlPUm9+lO+45vPGLFiT6fp/pJoOTUYl/LLlhT/NPEnkLMTFgoUCJ/9/oMb8MDgX
	K4ISIDR/ri/at6YJ6iNMWRyLaBvWG9leUo2jL3XPVdzE+b6swYhtGteS9UdOQqcplHUeAWUD9OGYr
	nCKjUwvG3bDyRsXZ++6As3jgEsDIEH3VxIjbGRc8hiXD637OjdfO26DukmSErKlo90E+QnS0iJz2G
	TjdHixeA7oeBiuu5B2Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJkBX-0006HK-Dq; Wed, 01 Apr 2020 20:42:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJkBN-0006Gt-JT; Wed, 01 Apr 2020 20:41:54 +0000
Received: from localhost (mobile-166-170-223-166.mycingular.net
 [166.170.223.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36A3320784;
 Wed,  1 Apr 2020 20:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585773712;
 bh=fOb6323VVZj8kSp5HYZBO6o0MOZ9Hc27kb2duDD/dnM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=zqlOgx8EK/+RtZkVEUJkxz5HghOAcO1dHWzBPmGkHR5NyuhO4dmVH21IpMJ/fSX/9
 JJyPeI7JSEUwtXf7u0DS6YMZiRa3WhAM8uH+EZaZbh3cqkZt9PS6lUTFKtQMwF6QBI
 014NBWXhsw2Zj22M8wwX6RSyHBASz9wMpd88c1OE=
Date: Wed, 1 Apr 2020 15:41:49 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v6 3/4] PCI: brcmstb: Wait for Raspberry Pi's firmware
 when present
Message-ID: <20200401204149.GA131584@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324182812.20420-4-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_134153_658993_5AA42DEC 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, wahrenst@gmx.net,
 sergei.shtylyov@cogentembedded.com, tim.gover@raspberrypi.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 07:28:11PM +0100, Nicolas Saenz Julienne wrote:
> xHCI's PCI fixup, run at the end of pcie-brcmstb's probe, depends on

Is there a function name for this fixup that you can mention?

> RPi4's VideoCore firmware interface to be up and running. It's possible
> for both initializations to race, so make sure it's available prior to
> starting.

I guess "both initializations" means brcm_pcie_probe() and something
else?  It'd be nice to include that function name here, too.

> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index 3a10e678c7f4..a3d3070a5832 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -28,6 +28,8 @@
>  #include <linux/string.h>
>  #include <linux/types.h>
>  
> +#include <soc/bcm2835/raspberrypi-firmware.h>
> +
>  #include "../pci.h"
>  
>  /* BRCM_PCIE_CAP_REGS - Offset for the mandatory capability config regs */
> @@ -917,11 +919,24 @@ static int brcm_pcie_probe(struct platform_device *pdev)
>  {
>  	struct device_node *np = pdev->dev.of_node, *msi_np;
>  	struct pci_host_bridge *bridge;
> +	struct device_node *fw_np;
>  	struct brcm_pcie *pcie;
>  	struct pci_bus *child;
>  	struct resource *res;
>  	int ret;
>  
> +	/*
> +	 * We have to wait for the Raspberry Pi's firmware interface to be up
> +	 * as some PCI fixups depend on it.

It'd be nice to know the nature of this dependency between the
firmware interface and the fixups.  This may be useful for future
maintenance.  E.g., if PCI config access doesn't work until the
firmware interface is up, that would affect almost everything.  But
you say "some PCI fixups", so I suppose the actual dependency is
probably something else.

> +	 */
> +	fw_np = of_find_compatible_node(NULL, NULL,
> +					"raspberrypi,bcm2835-firmware");
> +	if (fw_np && !rpi_firmware_get(fw_np)) {
> +		of_node_put(fw_np);
> +		return -EPROBE_DEFER;
> +	}
> +	of_node_put(fw_np);
> +
>  	bridge = devm_pci_alloc_host_bridge(&pdev->dev, sizeof(*pcie));
>  	if (!bridge)
>  		return -ENOMEM;
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
