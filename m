Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C6A1E3D00
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXEhomPDpqgyVeczScpatLvRlRLxreGdr5md6eSEgcE=; b=cKrgKh5PE5OEwX
	2hHTWCGK4sJfK/FKKe3m/VSuZf0TkDarnAAut6jdlAdZegzh0usxDkHHuToS5/8LivBJRETiz42FW
	IZgPvT/lVCYIa3I/4Xu+DEzABZqyQe5HcHehUQNTTU7V7lzwnZxvDAxhP6k+6DD/WKAIMihUpG0IC
	z/MjvDXPah+B3Lp6suS4lNEenKIJMl9lPcdR7LzcD2imOyI77bZFbJogdDSbhwnjO072OgL+CFq2s
	1MCUevKwu3SKyMNN4KSNkuHKkQCboyMTxm/22MkP5xms9El8qCLaKsq8EJKEmqBgjfJtYV7TGtXtM
	0c81/Cjek92X2zTX10Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrwP-0006Xr-2E; Wed, 27 May 2020 09:01:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrw5-0006Vd-Ru
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:01:19 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1184920723;
 Wed, 27 May 2020 09:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590570077;
 bh=WaKZbkte9zWy+gFwJcABM4VB+ItBxdRy7nyXN7rBb3o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mGy3UQlKkCSG671Ydi7G9PDHAXHw3tvtIYrcoZsk94xWH7NkmD8YF+mjSEFmwocHn
 dx9nTApSCbCQ2C0rP4Wh0RmwLgzASHW4OVNvv0tAMviYc/4qJ0+c7Nh6YkoAjWCiYF
 MbwANd2b+y59F8114ucQHxhJVnTvz7S8zkgTDHe8=
Date: Wed, 27 May 2020 11:01:15 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Zhangfei Gao <zhangfei.gao@linaro.org>
Subject: Re: [PATCH 2/2] iommu: calling pci_fixup_iommu in iommu_fwspec_init
Message-ID: <20200527090115.GB179718@kroah.com>
References: <1590493749-13823-1-git-send-email-zhangfei.gao@linaro.org>
 <1590493749-13823-3-git-send-email-zhangfei.gao@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590493749-13823-3-git-send-email-zhangfei.gao@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_020117_935178_1A28C31E 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-acpi@vger.kernel.org, Wangzhou <wangzhou1@hisilicon.com>,
 linux-crypto@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, kenneth-lee-2012@foxmail.com,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 07:49:09PM +0800, Zhangfei Gao wrote:
> Calling pci_fixup_iommu in iommu_fwspec_init, which alloc
> iommu_fwnode. Some platform devices appear as PCI but are
> actually on the AMBA bus, and they need fixup in
> drivers/pci/quirks.c handling iommu_fwnode.
> So calling pci_fixup_iommu after iommu_fwnode is allocated.
> 
> Signed-off-by: Zhangfei Gao <zhangfei.gao@linaro.org>
> ---
>  drivers/iommu/iommu.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
> index 7b37542..fb84c42 100644
> --- a/drivers/iommu/iommu.c
> +++ b/drivers/iommu/iommu.c
> @@ -2418,6 +2418,10 @@ int iommu_fwspec_init(struct device *dev, struct fwnode_handle *iommu_fwnode,
>  	fwspec->iommu_fwnode = iommu_fwnode;
>  	fwspec->ops = ops;
>  	dev_iommu_fwspec_set(dev, fwspec);
> +
> +	if (dev_is_pci(dev))
> +		pci_fixup_device(pci_fixup_iommu, to_pci_dev(dev));

Why can't the caller do this as it "knows" it is a PCI device at that
point in time, right?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
