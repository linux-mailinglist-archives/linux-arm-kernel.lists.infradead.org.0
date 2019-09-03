Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF794A6925
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 14:59:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72eSP/aqik/ULZhjdV4DvR5r2XnDVS5db9jS1vk/iKk=; b=HIqJw6KOZQobPA
	i1rSohx1Sdnl9aZdu5oN8bSMpNN5GljxjKkzV7ylYhVl+y5VNjhr9NCL7sANYIRYmZfDfO64OBr4H
	K546zuFDd7aFdhPTrkF9Cl89i/2jkDlQZBaIyTckjLMMQSHIYnoZpHoiBeJh2O80XscNDPgq0KA3/
	7il535LnEN+nLKX7eq1kxKfiBrZySnZlhGyhcxWYracL8Cwf2TPFAbmtpd//x7gtfSX1OSrcQXSVG
	dTxPfIgsPsbIBokDVOycz3xdsEsie5aqCc0uQevTcFz2CuxGRBAC7RDZI8h4gPnnFe3mh8UVAVevo
	NpzQeoq0M64G1RQIjA4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i58Om-0002Fk-GD; Tue, 03 Sep 2019 12:59:04 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i58Oa-0002F3-Jy
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 12:58:53 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 6786C284; Tue,  3 Sep 2019 14:58:50 +0200 (CEST)
Date: Tue, 3 Sep 2019 14:58:49 +0200
From: Joerg Roedel <joro@8bytes.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH v2 -next] iommu/arm-smmu-v3: Fix build error without
 CONFIG_PCI_ATS
Message-ID: <20190903125848.GC11530@8bytes.org>
References: <20190903024212.20300-1-yuehaibing@huawei.com>
 <20190903065056.17988-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903065056.17988-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_055852_810576_B71FD281 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: robin.murphy@arm.com, iommu@lists.linux-foundation.org, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 02:50:56PM +0800, YueHaibing wrote:
> If CONFIG_PCI_ATS is not set, building fails:
> 
> drivers/iommu/arm-smmu-v3.c: In function arm_smmu_ats_supported:
> drivers/iommu/arm-smmu-v3.c:2325:35: error: struct pci_dev has no member named ats_cap; did you mean msi_cap?
>   return !pdev->untrusted && pdev->ats_cap;
>                                    ^~~~~~~
> 
> ats_cap should only used when CONFIG_PCI_ATS is defined,
> so use #ifdef block to guard this.
> 
> Fixes: bfff88ec1afe ("iommu/arm-smmu-v3: Rework enabling/disabling of ATS for PCI masters")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
> v2: Add arm_smmu_ats_supported() of no CONFIG_PCI_ATS
> ---
>  drivers/iommu/arm-smmu-v3.c | 7 +++++++
>  1 file changed, 7 insertions(+)

Applied, thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
