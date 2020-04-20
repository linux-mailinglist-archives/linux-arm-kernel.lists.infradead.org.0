Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EE31B034D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 09:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=21fhs/pw43FeZVSTzQwvcfPA4ImWJcIGRni0OApBMS4=; b=THA3uZ03Q6ktL4
	m5ZLsbOdzPGvc32ueFgSFWzOYjRQr9u4qnapTZiQpWXuLaT92+TVp+5qkhmuTN3dxECX5dpM4R9Im
	ubLUBPG+yBDDkHhpYGCS2AcdcLqUXqkwnHWUh6LYngKvzyVzpphmIaoq9wwyYLWkwIU6K0HVz5kpY
	Ak8qVLS227/AGLQCiFg9zCNWuQuWv2QDUsfUMUiUP7CMZVJLX7KzX5e9cbSqXF6/kdT1tXfzc3Mws
	JDVhgMT6gAAo/I1nQiytiqIGMN0CIgLJJ7zhgm7bIAGvlrVMPbV+luqMu4pZ6XhjP15ZtOa8NduoF
	6XWmg8HRby8BOSnyAnqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQR4b-00033r-KC; Mon, 20 Apr 2020 07:42:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQR4S-00033F-8B
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 07:42:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id x18so10862637wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 00:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=36LtjihBEpeBnaRGeeCm9e2L3d20jrMG7L1AL/HArJs=;
 b=BM8Iccy/hIQbCpSekYbFcZATX4MvhvRHEo8t56sYYDBHLuWrWlNfN2U/Avqh8pAzQ+
 lJSChUqVOtITG+ntElIAo3FofQYlSUeJmVFTj1QctC3aH4uQ5UOifop/IzHxEXYnZ5my
 opGELuSrSZd/x7koJ8jWqGqe0lytTCYPvTb7bSWeBNbpH/ZOHDSjLzxqvp1xpOJsbc7o
 xGsbkEr+LTYIBgtKOpVnk5Pox8r0hmqVt3bRtQ6GUZafBrjVD4r2u3tGSKQbcyjfOLch
 9Sfd2Iw3VJ/3lDfpUqoBIiiH3MRh0hqtXjIK8Ip29Za7xcLJ1b9QXuz0Pl6RJ3xDyOUI
 iYMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=36LtjihBEpeBnaRGeeCm9e2L3d20jrMG7L1AL/HArJs=;
 b=leKql0UbZyPWoKoxSspY5irqGo75U01ZvTkfQrs5iAtviJVqEr5kB0kDEA5g+zw78b
 p9tPIjb9wrS2U1A6udQvkWCAw7sUhfO+mhy/tOLPeC3dtMBpGfdijmM8sjAOC7tf8dV8
 7e8lXcxS5YQ5dkerSzL/KeQiTyYiJ8iJgdcMtv69CsZaHjBEVVaacCyi38o3p9tpH+7M
 MEhmzxBAnjCJTRnISmv5N9Q7oNnfnnY7DBSn/BVBPD+pZGx+xvpOMb2AL8+md/hPhbd7
 a0GQEHqaCl8yXzwKgZDtq2uHbGKksOx+PTrK8iUF01eOXK12S2hdXiHUZkGU87CAfDDd
 GY7Q==
X-Gm-Message-State: AGi0PuYvJMJ5dlypBfWqrIDdyC+4j3ND4hyMDSnmYq/TiHNWQ3hvOpj5
 f8Qn0ocU79la6QcWKUYod1UQ5A==
X-Google-Smtp-Source: APiQypIBGqen1kzX4d4Wf5UYEkYdzKCnAPaaEvwxdtpe+zlIYgN/+aoVVamwm9Ox3hy3wg9aLlAaUA==
X-Received: by 2002:a5d:6107:: with SMTP id v7mr16380670wrt.270.1587368542719; 
 Mon, 20 Apr 2020 00:42:22 -0700 (PDT)
Received: from myrica ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id i25sm203507wml.43.2020.04.20.00.42.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 00:42:22 -0700 (PDT)
Date: Mon, 20 Apr 2020 09:42:13 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v5 02/25] iommu/sva: Manage process address spaces
Message-ID: <20200420074213.GA3180232@myrica>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
 <20200414170252.714402-3-jean-philippe@linaro.org>
 <20200416072852.GA32000@infradead.org>
 <20200416085402.GB1286150@myrica>
 <20200416121331.GA18661@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416121331.GA18661@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_004224_304939_20E8490F 
X-CRM114-Status: GOOD (  15.02  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-mm@kvack.org, iommu@lists.linux-foundation.org, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 05:13:31AM -0700, Christoph Hellwig wrote:
> On Thu, Apr 16, 2020 at 10:54:02AM +0200, Jean-Philippe Brucker wrote:
> > On Thu, Apr 16, 2020 at 12:28:52AM -0700, Christoph Hellwig wrote:
> > > > +	rcu_read_lock();
> > > > +	hlist_for_each_entry_rcu(bond, &io_mm->devices, mm_node)
> > > > +		io_mm->ops->invalidate(bond->sva.dev, io_mm->pasid, io_mm->ctx,
> > > > +				       start, end - start);
> > > > +	rcu_read_unlock();
> > > > +}
> > > 
> > > What is the reason that the devices don't register their own notifiers?
> > > This kinds of multiplexing is always rather messy, and you do it for
> > > all the methods.
> > 
> > This sends TLB and ATC invalidations through the IOMMU, it doesn't go
> > through device drivers
> 
> I don't think we mean the same thing, probably because of my rather
> imprecise use of the word device.
> 
> What I mean is that the mmu_notifier should not be embedded into the
> io_mm structure (whch btw, seems to have a way to generic name, just
> like all other io_* prefixed names), but instead into the
> iommu_bond structure.  That avoid the whole multiplexing layer.

Right, I can see the appeal. I still like having a single mmu notifier per
mm because it ensures we allocate a single PASID per mm (as required by
x86). I suppose one alternative is to maintain a hashtable of mm->pasid,
to avoid iterating over all bonds during allocation.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
