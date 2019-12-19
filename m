Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA00E1265DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:36:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+905/UltH3stQtmgEgpwyqVd2SzApc4tFLJA5cTLewg=; b=V1CuO0vIY4MtCN
	Mr8rpngrmRp573OhyneFfy34vXmVzkcCKM3CwuRXmQNKzeIPmg2TJtNNQ9z3J/uxaKeLCgyz4sw+s
	wsh6MVeXm4PNO5j2qqSET5gdxJs7sn3n81wu1Fl4KDNyWrPxDp2sPSnLYUo6V7jxT62+33MIIkhV9
	8I7cXq3qMFx642eVm6h2fKmNMY7j0YpJDP653OyGGG/Rk0LwLuq/1a8TObf+XjO6eXiQ2BtbB57c4
	Lt+oaeGv3+YQFrOay5z6AmVMdWuhl+tWd9gE2b9HpTI5s6eukLwc1/GsxqVNnr4eEavuRK3onCAMM
	Khv+9bfQ4vYkFP2+dI0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihxqa-0004IF-9i; Thu, 19 Dec 2019 15:36:16 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxqQ-0004HY-6H
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:36:07 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 20A6C431; Thu, 19 Dec 2019 16:35:56 +0100 (CET)
Date: Thu, 19 Dec 2019 16:35:41 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v3 4/5] iommu: intel: Use generic_iommu_put_resv_regions()
Message-ID: <20191219153541.GA21694@8bytes.org>
References: <20191218134205.1271740-1-thierry.reding@gmail.com>
 <20191218134205.1271740-5-thierry.reding@gmail.com>
 <2b3020a1-221c-f86b-6440-e9ef65f0c12e@linux.intel.com>
 <20191219124747.GA1440537@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219124747.GA1440537@ulmo>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_073606_381680_3E992B68 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, iommu@lists.linux-foundation.org,
 Will Deacon <will@kernel.org>, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel@lists.infradead.org, Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 01:47:47PM +0100, Thierry Reding wrote:
> On Thu, Dec 19, 2019 at 09:53:22AM +0800, Lu Baolu wrote:
> > Please tweak the title to
> > 
> > "iommu/vt-d: Use generic_iommu_put_resv_regions()"
> > 
> > then,
> > 
> > Acked-by: Lu Baolu <baolu.lu@linux.intel.com>
> > 
> > Best regards,
> > baolu
> 
> Joerg, do you want me to resend with this change or is it more efficient
> if you fix up the subject while applying?

No need to re-send, I'll fix it up in this patch and in the others too.


	Joerg

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
