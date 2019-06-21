Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D87014EFD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 22:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXMM/axSLShDf2ICYkOnHAQdTTAp8zFjKAkDXVoNDP4=; b=kGzKOt5RTviXAA
	Z96LmIaf00sl/0GlYu7vBAbgAHm8bJ9ylJaDNEXY+rgBHY9JexwF4HduJHwMalbVEWXV6SObfPh+j
	GLBmtv1LUrb3Mfs+wdSrDlGDTMfXVB4f3Dl8JmOaoANwvS+xZo86iQwHLqThwIgZoAWwlolQJfgIF
	Zwq3DOnSsyS0KWeKYUYDOEy99uyBsPCeH3yFEoGgAgnuabkIkqTjPsZ8zwDlNDMBoIq00rdN2vgqL
	w6zS9ouNVbJu+6toT9fsvrxgpMG+x2TjPdAwzIte7PfagZ7e74YJz0U/YoRv6eKALEUGeXGjByep6
	Xe2GQbAmkiK85A0JzDjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hePoH-0007Y3-Lx; Fri, 21 Jun 2019 20:06:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hePo4-0007Xb-2P
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 20:06:45 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F36620673;
 Fri, 21 Jun 2019 20:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561147603;
 bh=4Q+RFCpdW2sWFHYDR6CaEb8dLMWyiQ24AKk3JVhgTc4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=niInD/1ACc2tCSDVeaqiAMarUOMqAUFTDnSdC2VuCBdoSt83DJwWtg+RwP1CoAbXB
 MYdKJKyDuvdUesMUQHgKBLBYEPrcdwVh7mq5CHbRPGdNW7WIrRevMyidGrqqg2Gp4o
 aX7baCouS+jszHQECG1ZwtOuubQkBo59I4wI+7Ug=
Date: Fri, 21 Jun 2019 15:06:41 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 1/4] arm64: pci: acpi: Use
 pci_assign_unassigned_root_bus_resources()
Message-ID: <20190621200641.GB127746@google.com>
References: <20190615002359.29577-1-benh@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190615002359.29577-1-benh@kernel.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_130644_131346_79EF9097 
X-CRM114-Status: GOOD (  15.40  )
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

Match the subject line convention, e.g.,

  arm64: PCI: Use pci_assign_unassigned_root_bus_resources()

But the function name doesn't really tell us anything unless we already
know how everything works.  I think the point is that
pci_assign_unassigned_root_bus_resources() gives us the possibility of
reallocating things if necessary.  A subject that hints at that would be
good.

On Sat, Jun 15, 2019 at 10:23:56AM +1000, Benjamin Herrenschmidt wrote:
> Instead of the simpler
> 
> 	pci_bus_size_bridges(bus);
> 	pci_bus_assign_resources(bus);
> 
> Use pci_assign_unassigned_root_bus_resources(). This should have no
> effect as long as we are reassigning everything. 

  pci_bus_size_bridges(bus) == __pci_bus_size_bridges(bus, NULL)
  pci_bus_assign_resources(bus) == __pci_bus_assign_resources(bus, NULL, NULL)

and we have:

  pci_assign_unassigned_root_bus_resources()
  {
    ...
    __pci_bus_size_bridges(bus, add_list);
    __pci_bus_assign_resources(bus, add_list, &fail_head);

so I guess this should have no effect as long as we were able to
assign everything.  If we were unable to assign something, previously
we did nothing and left it unassigned, but after this patch, we will
attempt to do some reallocation.  Right?

> Once we start honoring FW resource allocations, this will bring up
> the "reallocation" feature which can help making room for SR-IOV
> when necessary.

I think this should be reordered so it's immediately before the patch
that checks hb->preserve_config, i.e., the patch that honors FW
assignments.

> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
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
