Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75243EA5AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 22:46:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=krIdpu4szhJO3ruq2SAlyKsnO/RrMQWWqdeXGAfFPcE=; b=PjMuAgIEX7gqz4
	sr0Fdx8sexSPx5KlbIwwPp6Y6su9Z6mMUNa3l8ILHo98lbQEI1isVW8MtXWSCUL888LDzrFjiTskE
	odPT4Iv4FteHe7ZfAlPgbuLIN/P0NoOcfqIAZLa9YuJjBhncvdvF9qmBj3hIc1zduKKtM/OFjTksm
	ZLqmArkC9rW0lfEasdUvgn/ORzhttDW8iNZQaje6/5uiKvtSwz9rQW/rQ2lcopGUQhWKMVJPS7I8t
	Y1tSRuW548rj1OHly2fWOiKQzyIL8pE6E/ShoJTxnWqZfVVmc9+bxZrRuRa7jSkVkxUCh/z+pCNuA
	T7VyPU9bPrO2IlQl2DhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPvnX-0003po-3E; Wed, 30 Oct 2019 21:46:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPvnN-0003p6-Nb
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 21:46:27 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77F5F20862;
 Wed, 30 Oct 2019 21:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572471985;
 bh=tul9G/l7oEq7DjuuWrHdlkxE9hMNRejXgxOVts2mk8A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=jaRpvqIMi991TIcZXEQyzF7YRHL9iXJUIgR3sM3Wo93AqZxd5xC3r55CtQFqbpcO4
 ljRtlF7QFdO4ofQjimn9JySEf22M9jxbjlwDUmLusyGhPOCsA5Aoj9/y6gKesmeVlI
 tHdiVnTLOqREjxEDBMut5RR4croVQFCamjKmm0r4=
Date: Wed, 30 Oct 2019 16:46:21 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] pci: controller: dwc: Remove dev_err use after
 platform_get_irq
Message-ID: <20191030214621.GA256263@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028202144.GA29158@saurav>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_144625_789078_F17436D6 
X-CRM114-Status: GOOD (  14.28  )
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
 0.0 FAKE_REPLY_C           No description available.
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
Cc: lorenzo.pieralisi@arm.com, jingoohan1@gmail.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org,
 linux-samsung-soc@vger.kernel.org, kgene@kernel.org,
 saurav.girepunje@hotmail.com, linux-pci@vger.kernel.org, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Please run "git log --oneline drivers/pci/controller/dwc/pci-exynos.c"
and make your subject line match, e.g.,

  PCI: exynos: Remove dev_err() usage after platform_get_irq()

The body of that was copied from similar commits like:

  fb5a35dbee8d pwm: Remove dev_err() usage after platform_get_irq()
  9a7957d0c955 mmc: Remove dev_err() usage after platform_get_irq()
  1df217868178 tty: Remove dev_err() usage after platform_get_irq()

It's nice when similar commits have similar subject lines.

In fact, this whole thing has been approached before:

  https://lore.kernel.org/lkml/20190730181557.90391-32-swboyd@chromium.org/

That patch would have fixed many similar issues in PCI, but I don't
know what happened to it.  Would you mind resurrecting that and fixing
the minor issues so we can do everything in PCI at once?

On Tue, Oct 29, 2019 at 01:51:44AM +0530, Saurav Girepunje wrote:
> Don't need dev_err() messages when platform_get_irq() fails now that
> platform_get_irq() prints an error message itself when something goes
> wrong.
> 
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
> ---
>  drivers/pci/controller/dwc/pci-exynos.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-exynos.c b/drivers/pci/controller/dwc/pci-exynos.c
> index 14a6ba4067fb..2293b346d96a 100644
> --- a/drivers/pci/controller/dwc/pci-exynos.c
> +++ b/drivers/pci/controller/dwc/pci-exynos.c
> @@ -403,7 +403,6 @@ static int __init exynos_add_pcie_port(struct exynos_pcie *ep,
>  
>  	pp->irq = platform_get_irq(pdev, 1);
>  	if (pp->irq < 0) {
> -		dev_err(dev, "failed to get irq\n");
>  		return pp->irq;
>  	}
>  	ret = devm_request_irq(dev, pp->irq, exynos_pcie_irq_handler,
> @@ -416,7 +415,6 @@ static int __init exynos_add_pcie_port(struct exynos_pcie *ep,
>  	if (IS_ENABLED(CONFIG_PCI_MSI)) {
>  		pp->msi_irq = platform_get_irq(pdev, 0);
>  		if (pp->msi_irq < 0) {
> -			dev_err(dev, "failed to get msi irq\n");
>  			return pp->msi_irq;
>  		}
>  	}
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
