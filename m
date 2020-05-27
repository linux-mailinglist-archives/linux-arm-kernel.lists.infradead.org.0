Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7121E4CF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 20:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=o2AAsTTHw+QUqPYJ43vWIj8xo+RNAEsSHYfbXkvZJPc=; b=Pvtnk+bXCwSCB/
	Mr/2VJnVTrAhSqMXyJLDDDByIxaZB44vNy8abtX9Ssnecwb/y/zH1kYVNl2xBhAscN4JAaTv9kpTM
	XYILVqnrNGBJYhns0xDw0SsbdS6DVJp7im2+kLmLJJn4jOzXs0y0eBRbHcS0MOnuMx2ymgkW7RkVL
	TKQ1By2ai5McBdXfxNwk2dM1UTjyDrxDHd4UzsgMllc1YevxNTqgzm7r7ioFNC4SpUsfURfXhtumN
	UKRkYdz1Gf66W7kxIMVZMRNTIp2bndmnaeIa5VfttGBFZ/DLpyv+CCoHmg3B8dAlprTbUQlq7kli+
	jM1rXkkvSdLG2oHxjT0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0dk-00055f-PS; Wed, 27 May 2020 18:18:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0dZ-00054j-6h
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 18:18:46 +0000
Received: from localhost (mobile-166-175-190-200.mycingular.net
 [166.175.190.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3CF692075A;
 Wed, 27 May 2020 18:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590603524;
 bh=IlJRE+s/Xn0kFANnhdpCDcIhPKRLpygy8ad6xlPlHjQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=nIx2hX8lM30uXBDTL7TuhND9kQ3G+qZ++mUq5WECUp59CfqdUpYK43QoUK7AXlVPf
 KxTUevqFBycL9TlKq7SmWveEDn1K/rg1pDaaEGJos75PWipKFqulr3bGwuDJBHuVi1
 7/+Jn7myhnHFa+KsZWLZ+HqvliJJB2ISAncHJDyU=
Date: Wed, 27 May 2020 13:18:42 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Zhangfei Gao <zhangfei.gao@linaro.org>
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
Message-ID: <20200527181842.GA256680@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590493749-13823-1-git-send-email-zhangfei.gao@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_111845_265545_091C4AC0 
X-CRM114-Status: GOOD (  16.89  )
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
Cc: jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-acpi@vger.kernel.org,
 Wangzhou <wangzhou1@hisilicon.com>, linux-crypto@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 kenneth-lee-2012@foxmail.com, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 07:49:07PM +0800, Zhangfei Gao wrote:
> Some platform devices appear as PCI but are actually on the AMBA bus,
> and they need fixup in drivers/pci/quirks.c handling iommu_fwnode.
> Here introducing PCI_FIXUP_IOMMU, which is called after iommu_fwnode
> is allocated, instead of reusing PCI_FIXUP_FINAL since it will slow
> down iommu probing as all devices in fixup final list will be
> reprocessed, suggested by Joerg, [1]

Is this slowdown significant?  We already iterate over every device
when applying PCI_FIXUP_FINAL quirks, so if we used the existing
PCI_FIXUP_FINAL, we wouldn't be adding a new loop.  We would only be
adding two more iterations to the loop in pci_do_fixups() that tries
to match quirks against the current device.  I doubt that would be a
measurable slowdown.

> For example:
> Hisilicon platform device need fixup in
> drivers/pci/quirks.c handling fwspec->can_stall, which is introduced in [2]
> 
> +static void quirk_huawei_pcie_sva(struct pci_dev *pdev)
> +{
> +    struct iommu_fwspec *fwspec;
> +
> +    pdev->eetlp_prefix_path = 1;
> +    fwspec = dev_iommu_fwspec_get(&pdev->dev);
> +    if (fwspec)
> +        fwspec->can_stall = 1;
> +}
> +
> +DECLARE_PCI_FIXUP_IOMMU(PCI_VENDOR_ID_HUAWEI, 0xa250, quirk_huawei_pcie_sva);
> +DECLARE_PCI_iFIXUP_IOMMU(PCI_VENDOR_ID_HUAWEI, 0xa251, quirk_huawei_pcie_sva); 
> 
> [1] https://www.spinics.net/lists/iommu/msg44591.html
> [2] https://www.spinics.net/lists/linux-pci/msg94559.html

If you reference these in the commit logs, please use lore.kernel.org
links instead of spinics.

> Zhangfei Gao (2):
>   PCI: Introduce PCI_FIXUP_IOMMU
>   iommu: calling pci_fixup_iommu in iommu_fwspec_init
> 
>  drivers/iommu/iommu.c             | 4 ++++
>  drivers/pci/quirks.c              | 7 +++++++
>  include/asm-generic/vmlinux.lds.h | 3 +++
>  include/linux/pci.h               | 8 ++++++++
>  4 files changed, 22 insertions(+)
> 
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
