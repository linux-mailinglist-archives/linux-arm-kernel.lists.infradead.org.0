Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC11E1E3D59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:15:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzdne9H8V9xw1haReTI2NkwTPVNqGEMxaq1jc32O61Y=; b=Z/jSg6PQMCCV6/
	uCTy/lC6FW3Hc7nlUtbeiNH6NlOMk9LhxrhgkuLuUqkAuvrM2FIepDqpy04eCwVk1SC55xZsHP3Md
	5vwVq8qy3SOf3XMPJyM8tLicdUTbfnmF2NGFKmG0fUA+4yBCN0VfU8IBh20CcsdjqPx+cHhLjVQtb
	ofg1bHq6qtZqZY9bynHzXk4jksNJw7/QcVW99Ojpn5LT5d3sO8O8jZGHaEqVweB/QFyDethNdK50i
	0aRmc4AegtZ25iPq1OxJkQ1lW+l/ZXvK0mVCW2QWTiK5DFM6bBnzVDUb5sAQBy+6aa1l8n1Nz6GM9
	JMY7GmqWluYCHfbEgeVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jds9P-0006d4-A9; Wed, 27 May 2020 09:15:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jds93-0006be-7F
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:14:43 +0000
Received: by mail-wm1-x341.google.com with SMTP id f5so2301898wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 02:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ERVcxFTM0vT/1MH9e0iwQ2bGR9XL129932mJIGULC34=;
 b=cMob0knkFSJDBlUwLV6UPNqIun4MapJpUgHYb9tboeOz36yVvhh9l2hDsgB54ivPJO
 yiCC30cVW3EKTZ3OO3AfHqU8x+VtFkIIr0R9fGSd418KPIu5PXD3MofWwt9Cn2ZLKNWJ
 WbqhPncsVCI9jaz/XYl8TQfUkBhZcJJIY+1dRZnbr6+8xGUCHKX6T3hTbccnFO0xr8m3
 3EGoD8UDVloV9br85tJzoOvF0n7pBVf6BYmpEDvTfr4K+VpGOi5q5unNylupXEFoRhUj
 VLg7JlpiPYNFEZAuzR0Ht67wXC9aZNcjXjxPiAMlvjYvrPxmhzj07ZCy89z8WzMRBcry
 p1wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ERVcxFTM0vT/1MH9e0iwQ2bGR9XL129932mJIGULC34=;
 b=WKAfEQUvUwI3cIV76irUFqx+fKOKsA+jiKe0eslrNsmDw+NqhPHXNL3WvPilOoIzlp
 MTxX+a1GlAas/eGKJDjXqCyjZiAQqnL4BZDlw6Th4SKbiZtsETRJC02JxO4TJQCV7wxy
 7FYZ2zNgUXnxKEmybMWiBFqrx1xRCk9tj7eFoQsuZVIGnvb+tvkQz+A0bCNLrs7LFsaH
 z94YE4qg3SJrhx4jtV502L5xhb3OmI4z0tbR2Roxcmoam1YsmUE0jxjkkIHCUakYd8D5
 0sprfNAvTt74AcJLMOHwNKF+gamZ4ln6bq6V0nywIQ6ZZK7icQYOqYguJF19BKOy9ggs
 jvxQ==
X-Gm-Message-State: AOAM530T6Z+Q6J0hVMILPxwCjeEbWCBMHMQslthrjUuh/1QKUvf2hA2b
 zjT30bviqV7OePEEwmLAtK3WYQ==
X-Google-Smtp-Source: ABdhPJwwb+zSrIRkBY0A0SsuRcJOHMxMcWGLJGJHnizfqmIO4FBg2RexGKWtdOVRtUHcowLTG/s5zA==
X-Received: by 2002:a7b:c5d7:: with SMTP id n23mr3582615wmk.185.1590570879183; 
 Wed, 27 May 2020 02:14:39 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id r5sm2369132wrq.0.2020.05.27.02.14.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 02:14:38 -0700 (PDT)
Date: Wed, 27 May 2020 11:14:28 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
Subject: Re: [RFC] Use SMMU HTTU for DMA dirty page tracking
Message-ID: <20200527091428.GB265288@myrica>
References: <b926ec0b-fe87-0792-c41d-acad56c656a4@huawei.com>
 <20200522171452.GC3453945@myrica>
 <e68c1158-8573-a477-42ce-48cee510c3ce@huawei.com>
 <MWHPR11MB16454475DA1FF417CEF5A32B8CB10@MWHPR11MB1645.namprd11.prod.outlook.com>
 <897a84ac-0a71-ace7-e05b-3cc9f0b05c28@huawei.com>
 <MWHPR11MB1645AA007D24F2D005794E5C8CB10@MWHPR11MB1645.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MWHPR11MB1645AA007D24F2D005794E5C8CB10@MWHPR11MB1645.namprd11.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_021441_266602_E65AA8B8 
X-CRM114-Status: GOOD (  24.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Zhao, Yan Y" <yan.y.zhao@intel.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, "maz@kernel.org" <maz@kernel.org>,
 "alex.williamson@redhat.com" <alex.williamson@redhat.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Xiang Zheng <zhengxiang9@huawei.com>, James Morse <james.morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "prime.zeng@hisilicon.com" <prime.zeng@hisilicon.com>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 Wang Haibin <wanghaibin.wang@huawei.com>, Will Deacon <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 08:40:47AM +0000, Tian, Kevin wrote:
> > From: Xiang Zheng <zhengxiang9@huawei.com>
> > Sent: Wednesday, May 27, 2020 2:45 PM
> > 
> > 
> > On 2020/5/27 11:27, Tian, Kevin wrote:
> > >> From: Xiang Zheng
> > >> Sent: Monday, May 25, 2020 7:34 PM
> > >>
> > >> [+cc Kirti, Yan, Alex]
> > >>
> > >> On 2020/5/23 1:14, Jean-Philippe Brucker wrote:
> > >>> Hi,
> > >>>
> > >>> On Tue, May 19, 2020 at 05:42:55PM +0800, Xiang Zheng wrote:
> > >>>> Hi all,
> > >>>>
> > >>>> Is there any plan for enabling SMMU HTTU?
> > >>>
> > >>> Not outside of SVA, as far as I know.
> > >>>
> > >>
> > >>>> I have seen the patch locates in the SVA series patch, which adds
> > >>>> support for HTTU:
> > >>>>     https://www.spinics.net/lists/arm-kernel/msg798694.html
> > >>>>
> > >>>> HTTU reduces the number of access faults on SMMU fault queue
> > >>>> (permission faults also benifit from it).
> > >>>>
> > >>>> Besides reducing the faults, HTTU also helps to track dirty pages for
> > >>>> device DMA. Is it feasible to utilize HTTU to get dirty pages on device
> > >>>> DMA during VFIO live migration?
> > >>>
> > >>> As you know there is a VFIO interface for this under discussion:
> > >>> https://lore.kernel.org/kvm/1589781397-28368-1-git-send-email-
> > >> kwankhede@nvidia.com/
> > >>> It doesn't implement an internal API to communicate with the IOMMU
> > >> driver
> > >>> about dirty pages.
> > >
> > > We plan to add such API later, e.g. to utilize A/D bit in VT-d 2nd-level
> > > page tables (Rev 3.0).
> > >
> > 
> > Thank you, Kevin.
> > 
> > When will you send this series patches? Maybe(Hope) we can also support
> > hardware-based dirty pages tracking via common APIs based on your
> > patches. :)
> 
> Yan is working with Kirti on basic live migration support now. After that
> part is done, we will start working on A/D bit support. Yes, common APIs
> are definitely the goal here.
> 
> > 
> > >>
> > >>>
> > >>>> If SMMU can track dirty pages, devices are not required to implement
> > >>>> additional dirty pages tracking to support VFIO live migration.
> > >>>
> > >>> It seems feasible, though tracking it in the device might be more
> > >>> efficient. I might have misunderstood but I think for live migration of
> > >>> the Intel NIC they trap guest accesses to the device and introspect its
> > >>> state to figure out which pages it is accessing.
> > >
> > > Does HTTU implement A/D-like mechanism in SMMU page tables, or just
> > > report dirty pages in a log buffer? Either way tracking dirty pages in IOMMU
> > > side is generic thus doesn't require device-specific tweak like in Intel NIC.
> > >
> > 
> > Currently HTTU just implement A/D-like mechanism in SMMU page tables.
> > We certainly
> > expect SMMU can also implement PML-like feature so that we can avoid
> > walking the
> > whole page table to get the dirty pages.

There is no reporting of dirty pages in log buffer. It might be possible
to do software logging based on PRI or Stall, but that requires special
support in the endpoint as well as the SMMU.

> Is there a link to HTTU introduction?

I don't know any gentle introduction, but there are sections D5.4.11
"Hardware management of the Access flag and dirty state" in the ARM
Architecture Reference Manual (DDI0487E), and section 3.13 "Translation
table entries and Access/Dirty flags" in the SMMU specification
(IHI0070C). HTTU stands for "Hardware Translation Table Update".

In short, when HTTU is enabled, the SMMU translation performs an atomic
read-modify-write on the leaf translation table descriptor, setting some
bits depending on the type of memory access. This can be enabled
independently on both stage-1 and stage-2 tables (equivalent to your 1st
and 2nd page tables levels, I think).

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
