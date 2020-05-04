Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 167491C3E2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 17:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zD93uH7cDm7NzQcvkKD4ou+tnGF75gFRzlDP4LSk7Y=; b=Hc9e5zyKiFj6na
	EQMtlcs9Z8jQSIYoyFt/WH1vPixv+MTFD812IU42uZiPX1Vln9X0y9XW8CqvXhBPiNfqlEeUrUeQu
	bzvpVn+QEYxPrEbL0jvWLTfIwj0HxoWrjVGFULNeosOFwGoeW+Dk9LvZ3gJLWOoiQOfZBx9xa5Kh5
	/0lzxKOjKQxSqGz0ajLWo00MQVd52wwx8qgxEVL9oWPCuqqrEJ6lczUljVQG3rMW15p8t4ONqD4pm
	ZIftgF0Zy8HL/hmzZ3GtJC/tg1rwogQ4cLieFJljdD5fnko4YBtGeAj3CakrMHTZK8fbrIrRacUeW
	brQagSEO5TN8wz5BibqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcj3-0005lp-Vl; Mon, 04 May 2020 15:09:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVciw-0005kn-07
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 15:09:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id k1so2512774wro.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 08:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ymxZ/AHKc54MsFnFnjiy487/cd2cO0lIerw33LQLJwg=;
 b=QNbwqk4D1MPIi3P7kInzB1wd9Nwnz4c2VQo9LuhJOdRLdMrPzNMgpvKqTLZMK1uPi+
 P2pe+v2OCrrPEexPYdYwl192CIA5G6xYliglrRqqtdaIAR+usOr6a/3cJuAgWCIrlSe1
 OdskZIteDeuDIgetVe9zuT/oEpmFwh99LEyLr+Zq8PUuCUTWaKKGaTmfFvbQ2/+u5d3b
 tftW1WWsJsddoYK8llhhdNTtirX5vLRtjEeFAIEdNjNGfsIxaS1xLDMsskU7xZaWG3ng
 uBZkgyMKL71WDmOBvkjPrl5x7RLtobyGsphgAfOHe28m7ebcN/qz+Xrs9em6Jezxz6jQ
 4Kkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ymxZ/AHKc54MsFnFnjiy487/cd2cO0lIerw33LQLJwg=;
 b=kbWUXcubXGAfLKkI2jO4lh/0WYYJ7GM7lD3uf8B3kq/L5clZ77C3eJuMisAZ5s4D5J
 Tn/mzsqcGXlbghu/gnCMCbai4s4BgrgnXSnRaFi2TLyCjwx3R5c+Zdg++Q8+3Rq2woSO
 VyU7KPmdJLWZzqqD6QjvTqghqL220lx4Ptrn6R2nk3o+ACcXAy6wSgwFdF3vu/AkkAlB
 hbu1Rtg60gIcoNWiwXgQ5CLTmho0NN9umnIdz+RqMjbEucDpIyygfCCf/TqKqxnxWTS0
 9JpDlfThhRe/dJJC09brGD3Gwt/mQJVNUx1Y+XFcJ1JXGUvg+Y0ifnh7KYTLXwqKsnGT
 wL8Q==
X-Gm-Message-State: AGi0PubdemtSXyVXLHWHNILpWkkBzVUFKBfBGRnPluXaywIPAQHxkxv3
 ViXv3p/G5hFHy52v/6/FWUHSHw==
X-Google-Smtp-Source: APiQypIDrGUvuteScMrJ9fLWEogSG6ijt2/PYwyFrJ0NSjLGFvyO34VY4LnIIaZoFl/ctKT+r9PVxQ==
X-Received: by 2002:adf:ee86:: with SMTP id b6mr56993wro.419.1588604976411;
 Mon, 04 May 2020 08:09:36 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id w83sm14711145wmb.37.2020.05.04.08.09.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 08:09:35 -0700 (PDT)
Date: Mon, 4 May 2020 17:09:26 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jacob Pan <jacob.jun.pan@linux.intel.com>
Subject: Re: [PATCH v6 00/25] iommu: Shared Virtual Addressing for SMMUv3
Message-ID: <20200504150926.GA176594@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430141816.595b758f@jacob-builder>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430141816.595b758f@jacob-builder>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_080938_038745_E046BCB5 
X-CRM114-Status: GOOD (  17.33  )
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com, "Liu,
 Yi L" <yi.l.liu@intel.com>, jgg@ziepe.ca, linux-pci@vger.kernel.org,
 joro@8bytes.org, Jonathan.Cameron@huawei.com, robin.murphy@arm.com,
 fenghua.yu@intel.com, hch@infradead.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, zhangfei.gao@linaro.org,
 catalin.marinas@arm.com, felix.kuehling@amd.com, xuzaibo@huawei.com,
 will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 02:18:16PM -0700, Jacob Pan wrote:
> On Thu, 30 Apr 2020 16:33:59 +0200
> Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:
> 
> > Shared Virtual Addressing (SVA) allows to share process page tables
> > with devices using the IOMMU, PASIDs and I/O page faults. Add SVA
> > support to the Arm SMMUv3 driver.
> > 
> > Since v5 [1]:
> > 
> > * Added patches 1-3. Patch 1 adds a PASID field to mm_struct as
> >   discussed in [1] and [2]. This is also needed for Intel ENQCMD.
> > Patch 2 adds refcounts to IOASID and patch 3 adds a couple of helpers
> > to allocate the PASID.
> > 
> > * Dropped most of iommu-sva.c. After getting rid of io_mm following
> >   review of v5, there wasn't enough generic code left to justify the
> >   indirect branch overhead of io_mm_ops in the MMU notifiers. I ended
> > up with more glue than useful code, and couldn't find an easy way to
> > deal with domains in the SMMU driver (we keep PASID tables per domain,
> >   while x86 keeps them per device). The direct approach in patch 17 is
> >   nicer and a little easier to read. The SMMU driver only gained 160
> >   lines, while iommu-sva lost 470 lines.
> > 
> >   As a result I dropped the MMU notifier patch.
> > 
> >   Jacob, one upside of this rework is that we now free ioasids in
> >   blocking context, which might help with your addition of notifiers
> > to ioasid.c
> > 
> Thanks for the note. It does make notifier much easier, plus the
> refcount can alleviate the constraint on ordering.
> 
> I guess we don't share mmu notifier code for now :)

I think it's more efficient for each IOMMU driver to at least implement
their own invalidate_range() callback and avoid indirect branches. For the
rest I couldn't find a lot of code to share, most of it is writing PASID
tables and invalidating. We can revisit later, as long as we agree on the
bind() API the implementations should be similar enough.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
