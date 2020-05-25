Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F371E0FB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 15:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiGQkmvDCyO3JWFeXRXm/St0FKTFlPpUgTlcu4by2+M=; b=QijEKB+vREFt6D
	at48rfgs9PWOezPPG0KB+YZOmSyo0Fe5J9ynIIuAg9KJn515CPNVoozc08d34T2ry2LZXxNhmNeQL
	7fhPTBlrJ4xTv7pj8ksZ/HCfgL65oXDc8yHu0C+lrI/fOWDM9D7eR1z5RXrSFbmZigctjg8+LPG/S
	jwOWD2lmL5n7/qDa0rDnhTxJGLfBApmgTwq864ZOmT1TBbIJgNQDRIm1Bx8ISWU83SAR9rub8NBUv
	2PTdwfzy9nv4B4uKh7A110c15Ivo9H5KxPyBZMTf3cUWsVYAwwrSU4ah8o9QkvVg+j9zteCzcFXn3
	DwzpMik3WHspz8ZL5F0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdDOE-0008G0-LS; Mon, 25 May 2020 13:43:38 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdDO6-0008Et-UV
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 13:43:32 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 9FEF7327; Mon, 25 May 2020 15:43:19 +0200 (CEST)
Date: Mon, 25 May 2020 15:43:18 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Zhangfei Gao <zhangfei.gao@linaro.org>
Subject: Re: [PATCH 0/2] Let pci_fixup_final access iommu_fwnode
Message-ID: <20200525134318.GB5221@8bytes.org>
References: <1589256511-12446-1-git-send-email-zhangfei.gao@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589256511-12446-1-git-send-email-zhangfei.gao@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_064331_133266_C70ADD40 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Herbert Xu <herbert@gondor.apana.org.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-acpi@vger.kernel.org, Wangzhou <wangzhou1@hisilicon.com>,
 linux-crypto@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kenneth-lee-2012@foxmail.com, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 12:08:29PM +0800, Zhangfei Gao wrote:
> Some platform devices appear as PCI but are
> actually on the AMBA bus, and they need fixup in
> drivers/pci/quirks.c handling iommu_fwnode.
> So calling pci_fixup_final after iommu_fwnode is allocated.
> 
> For example: 
> Hisilicon platform device need fixup in 
> drivers/pci/quirks.c
> 
> +static void quirk_huawei_pcie_sva(struct pci_dev *pdev)
> +{
> +	struct iommu_fwspec *fwspec;
> +
> +	pdev->eetlp_prefix_path = 1;
> +	fwspec = dev_iommu_fwspec_get(&pdev->dev);
> +	if (fwspec)
> +		fwspec->can_stall = 1;
> +}
> +
> +DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_HUAWEI, 0xa250, quirk_huawei_pcie_sva);
> +DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_HUAWEI, 0xa251, quirk_huawei_pcie_sva);

I don't think it is a great idea to hook this into PCI_FIXUP_FINAL. The
fixup list needs to be processed for every device, which will slow down
probing.

So either we introduce something like PCI_FIXUP_IOMMU, if this is
entirely PCI specific. If it needs to be generic we need some fixup
infrastructure in the IOMMU code itself.

Regards,

	Joerg

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
