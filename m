Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624B41C3FCA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIRMJajY75LuQdr95EuhqVNR1uI0d8s0fNJG/xZ2jX0=; b=HOb/MSmzltlkQe
	Kcwil4W4/23Jx4ocI0DRAH4rlRnvTuJjkBqTZ2OMSX+7I04H0m8pj6y6G22aJQLy/UosB6vB4HKoq
	Y6u0U59NTessJ7oqTMAJoEO0BIJ/bz5qwT2q+Ss+pQoMPYoOVWtQpQu9+8YWP9j6I1eH07UW7jH6K
	/C7t9GJuxUk4pDzznvBEC4eHoJWIdMOnwwLGIIIwSLqC4MayTBFB35eYVu8iAffzdOIAw9ZrtKRFl
	/vYyX7ztr9HdBQPq8z9nUcskQ5dewG2bIQ/pC5SfaW8jlBby0DRrSkzEcwIODSlcf3K1Z1Ooa94OV
	/CO2FDaDMeOfcVn3X06w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVduq-0008BO-E8; Mon, 04 May 2020 16:26:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVduj-0008Ac-9s
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:25:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id e16so16597457wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 09:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=GL2JHfWb2mPYeSgeIH5WeIgVbATF3Ra0zLGdb9HxWZQ=;
 b=NPOSWeTNC3Un3eskvozXKMxNnsJ6r9fc/sgBE1d6gnYLdALaK8wjIX/j58IvqfxFmC
 cJ7U5u96OPGUoehpQYLz0ggsicjiGrgSLC1dqZkfAjTE0uE8MD2K1WFx/8y4Pzbpbd5R
 z1XLioC0bjQNb3+Z6msYsAptNDoFZ4CqIP/741UwHR5xz+ADrwIsStOoAMCNc23vCn0O
 CkGZuVDFZP0sdQAJ3dIDW/VXYBbjPmqlBAyRLYt21m9Bo4iyUVDnyUPUU+K5e2tYxPpF
 W5ts90uOmnfyFrIy99D6BSUc9rUBir+ZREIxahMT07HpDKv5DXmykWAMqamGEhd1zCAa
 cW9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GL2JHfWb2mPYeSgeIH5WeIgVbATF3Ra0zLGdb9HxWZQ=;
 b=eNDNGjvDDLZCt/XVbPGIJe24uJUJXsAFgJFU5iMmLwZET8NI39tXGAVMguqJEm9LqA
 3nO1s0r1UBT2M5A9H7H8TuGG62tHODelgmmKXRUDMMcYIoAEkm1Io9vmCLhQer9UmKLE
 gBhOaofpnQb+Peh23+BBDyscCtnEEg1FGkGrkpYjcBzuILzskKzyftMTVuaOLD1Ovdc7
 t8f4IyGgJdxV/18YTPkyVXe795XCtUOLxMgWFeccUs8fKA4mS5dx/edke3wEQapDezdQ
 mOThh3BMja1S7xyHqy4T372npm7wLbWGBMVU2pVYpNgpG1Z+pAHj8MnKGBlndV+/ThgU
 1VeA==
X-Gm-Message-State: AGi0PuZw87Tk/kj0lfGG8f4P3nucN8TtRWOC5a0eqJz5ncAFIt/nJqEe
 mCze/LQFVfVAnrCHgWKuqrPhrK0v75U=
X-Google-Smtp-Source: APiQypJewC2A5eJu+LlIEsZxNgowtLfUPSFwzAN1NtAObzTj2fsi/+uiw7oQbS2F9/ABw1GE+6Cvxw==
X-Received: by 2002:adf:f606:: with SMTP id t6mr7882808wrp.321.1588609551965; 
 Mon, 04 May 2020 09:25:51 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id r15sm6980383wrq.93.2020.05.04.09.25.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 09:25:51 -0700 (PDT)
Date: Mon, 4 May 2020 18:25:41 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH v6 05/25] iommu/iopf: Handle mm faults
Message-ID: <20200504162541.GG170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-6-jean-philippe@linaro.org>
 <9fc0e4cc-1242-bf96-5328-cc9039dcc9b6@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9fc0e4cc-1242-bf96-5328-cc9039dcc9b6@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_092553_347050_E59113B9 
X-CRM114-Status: GOOD (  23.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, jgg@ziepe.ca, linux-pci@vger.kernel.org,
 joro@8bytes.org, Jonathan.Cameron@huawei.com, robin.murphy@arm.com,
 fenghua.yu@intel.com, hch@infradead.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, zhangfei.gao@linaro.org,
 catalin.marinas@arm.com, felix.kuehling@amd.com, xuzaibo@huawei.com,
 will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 03, 2020 at 01:54:36PM +0800, Lu Baolu wrote:
> On 2020/4/30 22:34, Jean-Philippe Brucker wrote:
> > When a recoverable page fault is handled by the fault workqueue, find the
> > associated mm and call handle_mm_fault.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> > v5->v6: select CONFIG_IOMMU_SVA
> > ---
> >   drivers/iommu/Kconfig      |  1 +
> >   drivers/iommu/io-pgfault.c | 79 +++++++++++++++++++++++++++++++++++++-
> >   2 files changed, 78 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
> > index 4f33e489f0726..1e64ee6592e16 100644
> > --- a/drivers/iommu/Kconfig
> > +++ b/drivers/iommu/Kconfig
> > @@ -109,6 +109,7 @@ config IOMMU_SVA
> >   config IOMMU_PAGE_FAULT
> >   	bool
> > +	select IOMMU_SVA
> 
> It would be better to move this to the previous patch.
> 
[...]
> > @@ -104,6 +156,29 @@ static void iopf_handle_group(struct work_struct *work)
> >    *
> >    * Add a fault to the device workqueue, to be handled by mm.
> >    *
> > + * This module doesn't handle PCI PASID Stop Marker; IOMMU drivers must discard
> > + * them before reporting faults. A PASID Stop Marker (LRW = 0b100) doesn't
> > + * expect a response. It may be generated when disabling a PASID (issuing a
> > + * PASID stop request) by some PCI devices.
> > + *
> > + * The PASID stop request is issued by the device driver before unbind(). Once
> > + * it completes, no page request is generated for this PASID anymore and
> > + * outstanding ones have been pushed to the IOMMU (as per PCIe 4.0r1.0 - 6.20.1
> > + * and 10.4.1.2 - Managing PASID TLP Prefix Usage). Some PCI devices will wait
> > + * for all outstanding page requests to come back with a response before
> > + * completing the PASID stop request. Others do not wait for page responses, and
> > + * instead issue this Stop Marker that tells us when the PASID can be
> > + * reallocated.
> > + *
> > + * It is safe to discard the Stop Marker because it is an optimization.
> > + * a. Page requests, which are posted requests, have been flushed to the IOMMU
> > + *    when the stop request completes.
> > + * b. We flush all fault queues on unbind() before freeing the PASID.
> > + *
> > + * So even though the Stop Marker might be issued by the device *after* the stop
> > + * request completes, outstanding faults will have been dealt with by the time
> > + * we free the PASID.
> > + *
> >    * Return: 0 on success and <0 on error.
> >    */
> >   int iommu_queue_iopf(struct iommu_fault *fault, void *cookie)
> > 
> 
> The same for the comments.

I think I'll squash both patches, probably doesn't make it harder to
review.

Thanks,
Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
