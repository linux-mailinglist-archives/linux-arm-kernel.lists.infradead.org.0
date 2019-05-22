Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33DD2714D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 23:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWJt9J+MkHqVNnzEff/Fxwy8NGHGqbGHd9zD3bjeJxU=; b=XZX3FlGiUQKgbB
	/vjSJ+6FHIqHKPwvGxnlQ4H5I0CnYtVgSeF3wxZ4OgOuIz6xu+utyRouEBsQZcby6PYYDCXi73NiX
	wKOS7cyFiEuUsIdeuhYvaUNipTfLtL24IltU2SYmFev02DvFjVQjozmPbiULI/Y7dlPi0UUZXnCt1
	TIx+UUbnXS5BHq0eTWwDMwLzVPhJkWjq195J5mZALX5jVAsZAkgEvc+gpwe86qGFKLpFpj/R7vwVI
	Jov7BRk31r/lPrOJK1CUkl91dGaAs7S0CkikWJYb/Fu73tv8MWkNpOks+ncR4n5vjNrfL2PS84Peg
	yYNzFSKr8eyphaCcss0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTYLu-0007Yq-V2; Wed, 22 May 2019 21:00:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTYLo-0007YO-6v
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 21:00:41 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3FF2121019;
 Wed, 22 May 2019 21:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558558839;
 bh=DAAiD6IH0KlDghAVNPmVbeERdOtKivo01YxuNAw7Lv4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NMu4b6BJ6eGOg5zZMYjFoMJPEjwWgJzXYlUFNL/cVGdMfzr6eLQQV4fTw0oerv/D+
 RP2brANDVsvcMxhzfOECmHSJFZ8Ghm4KstXuGdGVc+DEa3jtgRa2btaLFFe575w+TH
 4i9jAAXLgNkFwSgCIMEOX1dAXlJtDolPRrkjQVhw=
Date: Wed, 22 May 2019 16:00:38 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Isaac J. Manjarres" <isaacm@codeaurora.org>
Subject: Re: [RFC/PATCH 2/4] PCI: Export PCI ACS and DMA searching functions
 to modules
Message-ID: <20190522210038.GE79339@google.com>
References: <1558118857-16912-1-git-send-email-isaacm@codeaurora.org>
 <1558118857-16912-3-git-send-email-isaacm@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558118857-16912-3-git-send-email-isaacm@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_140040_268983_420B7EAA 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, kernel-team@android.com,
 linux-pci@vger.kernel.org, joro@8bytes.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, pratikp@codeaurora.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, lmark@codeaurora.org,
 frowand.list@gmail.com, linux-arm-kernel@lists.infradead.org,
 robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 11:47:35AM -0700, Isaac J. Manjarres wrote:
> IOMMU drivers that can be compiled as modules may
> want to use pci_for_each_dma_alias() and pci_request_acs(),
> so export those functions.
> 
> Signed-off-by: Isaac J. Manjarres <isaacm@codeaurora.org>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/pci.c    | 1 +
>  drivers/pci/search.c | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index 766f577..3f354c1 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -3124,6 +3124,7 @@ void pci_request_acs(void)
>  {
>  	pci_acs_enable = 1;
>  }
> +EXPORT_SYMBOL_GPL(pci_request_acs);
>  
>  static const char *disable_acs_redir_param;
>  
> diff --git a/drivers/pci/search.c b/drivers/pci/search.c
> index 2b5f720..cf9ede9 100644
> --- a/drivers/pci/search.c
> +++ b/drivers/pci/search.c
> @@ -111,6 +111,7 @@ int pci_for_each_dma_alias(struct pci_dev *pdev,
>  
>  	return ret;
>  }
> +EXPORT_SYMBOL_GPL(pci_for_each_dma_alias);
>  
>  static struct pci_bus *pci_do_find_bus(struct pci_bus *bus, unsigned char busnr)
>  {
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
