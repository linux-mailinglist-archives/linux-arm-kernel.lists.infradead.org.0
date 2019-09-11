Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5AFAFAFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 13:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBDJvIsD7zk/KDIx45N7R/E2hKTXnQV+mlUABJLHBro=; b=HIKuiVJQY8w6BL
	Q1yYXlZxHgBdwhFep5Y1sXRCXrMxSSZMApb+1lDZJlmcdVrerJgWDORgDiVYhPUPiHfAtUIKwiP71
	RQ1RJ0eN5CyvxjhiowCBDWg4NZquX3E2QpIm/Wb1MvGpeULNEiQi4a9BBe8AmFyPR6z6ctbGF9UFv
	PnSU+RmFSbr5NIYh/0QQxAuxM+27ohaGU68rg5koCvQYmnlZ9/glq0BO0dbHBudK7g1k3F/JRHNmL
	P0XNlHlVBPB4l2Y+nBJReaQnpiTdlGqwMdHWROm3MtPjH0VQ8Erh659i2LW4wP1kxsN6sl284sIsV
	qH8f7U3CyiYfMfkGDWMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i80M9-0000ya-5n; Wed, 11 Sep 2019 11:00:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i80Ld-0000wg-00; Wed, 11 Sep 2019 10:59:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCDB428;
 Wed, 11 Sep 2019 03:59:37 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5402E3F59C;
 Wed, 11 Sep 2019 03:59:37 -0700 (PDT)
Date: Wed, 11 Sep 2019 11:59:35 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 2/6] PCI: amlogic: Fix probed clock names
Message-ID: <20190911105935.GQ9720@e119886-lin.cambridge.arm.com>
References: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
 <1567950178-4466-3-git-send-email-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567950178-4466-3-git-send-email-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_035941_094283_EB8F2DE4 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lorenzo.pieralisi@arm.com, khilman@baylibre.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, repk@triplefau.lt, maz@kernel.org,
 bhelgaas@google.com, linux-amlogic@lists.infradead.org, yue.wang@Amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 08, 2019 at 01:42:54PM +0000, Neil Armstrong wrote:
> Fix the clock names used in the probe function according
> to the bindings.
> 
> Fixes: 9c0ef6d34fdb ("PCI: amlogic: Add the Amlogic Meson PCIe controller driver")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> ---
>  drivers/pci/controller/dwc/pci-meson.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
> index 541f37a6f6a5..ab79990798f8 100644
> --- a/drivers/pci/controller/dwc/pci-meson.c
> +++ b/drivers/pci/controller/dwc/pci-meson.c
> @@ -250,15 +250,15 @@ static int meson_pcie_probe_clocks(struct meson_pcie *mp)
>  	if (IS_ERR(res->port_clk))
>  		return PTR_ERR(res->port_clk);
>  
> -	res->mipi_gate = meson_pcie_probe_clock(dev, "pcie_mipi_en", 0);
> +	res->mipi_gate = meson_pcie_probe_clock(dev, "mipi", 0);
>  	if (IS_ERR(res->mipi_gate))
>  		return PTR_ERR(res->mipi_gate);
>  
> -	res->general_clk = meson_pcie_probe_clock(dev, "pcie_general", 0);
> +	res->general_clk = meson_pcie_probe_clock(dev, "general", 0);
>  	if (IS_ERR(res->general_clk))
>  		return PTR_ERR(res->general_clk);
>  
> -	res->clk = meson_pcie_probe_clock(dev, "pcie", 0);
> +	res->clk = meson_pcie_probe_clock(dev, "pclk", 0);
>  	if (IS_ERR(res->clk))
>  		return PTR_ERR(res->clk);
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
