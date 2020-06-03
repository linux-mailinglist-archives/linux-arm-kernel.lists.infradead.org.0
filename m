Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFFD1ED74E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 22:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=H1Sd2V/Z4WZNxJ11mDraqciejNWDdxdltj0w/YdwCgs=; b=gj1XaHsgSYW5qs
	hYxEYKi6/luF2XSOFXsHSx/IVoTZIZHG9EpFHyKZe2fQ6/McL3m2PJgCtr53cDs6EGUcFXpR/yD2l
	a17L90/D2dRUAEetjRgGIwwA15ZulBAWqD5svB+Us6UG3iGdjlaSDyBLoGWsRLC8WtrARCIHzZjSW
	hmpn3ryU8sNMTO4cvyU/Bet8FyRu0cpsOPuJgrXGG1ZLdKA1+RqHDfuMxOJ+8+pTO5pUM6FNGufMV
	xmZjzMle08yaye3UVYzUTbJBcFr2wp52Cr9wSVOYdth+BJxyLuo0tGwggeMJK54PeRfpvZVylZPQc
	y/rj/+IZ08Eio98KuKrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgZwN-0004eW-Ig; Wed, 03 Jun 2020 20:24:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgZwH-0004ds-Kl; Wed, 03 Jun 2020 20:24:42 +0000
Received: from localhost (mobile-166-175-190-200.mycingular.net
 [166.175.190.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CF9320734;
 Wed,  3 Jun 2020 20:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591215880;
 bh=aSC2B5FOwH/jbhjkwwbA2U3nvwRY/cfyOrIerqmUQNs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=MnEtRzWw/iwVqJdM8XNSEZR3W1o2W/SiVyK+PNVgMdgyYP+4GTHe322d/sltjhL9O
 9hAVj5iGCUzUOH6dMBBLwcCJFScUduFRdcmtSV1YsSipf0MrAYWlnkzofpFA87vWYf
 akJfAM9AkwWT++7aDkOalDa/000MJkwGzuMUv6q8=
Date: Wed, 3 Jun 2020 15:24:38 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH v3 05/13] PCI: brcmstb: Add suspend and resume pm_ops
Message-ID: <20200603202438.GA946895@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603192058.35296-6-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_132441_701081_FB07769D 
X-CRM114-Status: GOOD (  12.92  )
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 03, 2020 at 03:20:37PM -0400, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
> 
> Broadcom Set-top (BrcmSTB) boards typically support S2, S3, and S5 suspend
> and resume.  Now the PCIe driver may do so as well.
> 
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 49 +++++++++++++++++++++++++++
>  1 file changed, 49 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index 7c707e483181..f444751e247c 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -979,6 +979,49 @@ static void brcm_pcie_turn_off(struct brcm_pcie *pcie)
>  	brcm_pcie_bridge_sw_init_set(pcie, 1);
>  }
>  
> +static int brcm_pcie_suspend(struct device *dev)
> +{
> +	struct brcm_pcie *pcie = dev_get_drvdata(dev);
> +	int ret = 0;
> +
> +	brcm_pcie_turn_off(pcie);
> +	clk_disable_unprepare(pcie->clk);
> +
> +	return ret;

No need for "ret".

> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
