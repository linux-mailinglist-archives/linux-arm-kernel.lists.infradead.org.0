Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A3F1DE469
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 12:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5s3vnQRgd1xl52RYtOmUhk/6FtheLoO088+xHW0FoQ=; b=lhctG+EqnuFFJE
	SBdInwHGBH+s9A3fX2w+zpG0VnMvnZtIeMqGsOqirMYDsCLJrtSaRKxJurIxmyih6Y7UtpR5BQzLd
	CuG6UZeozdaE1CnC9dV6XggDqK+bb1PQKPcq2eG8R8Zsq3McnpbBrJOqh7+rs9iK3cWSKa9BZt+bX
	/T/QluYDHNPVS2JVbMz9156+LFhKHeJyoohOecrA581P8zcOvpcri2Qp6OB7eTirqr1BUWzIFI6IG
	O0Gb7MFvWpoIZsQgoKMpbrCEN13vi8RZyIq9I7Mu0+ycvAN/pfg49UMjGiFqP4GW7+8JAwYdIkdNi
	2pqNCAGtcCSXwMsfP6OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc4uq-0005Ln-Ux; Fri, 22 May 2020 10:28:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc4ki-0007ui-I3
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 10:18:10 +0000
Received: by mail-wr1-x443.google.com with SMTP id s8so9601356wrt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 03:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rDNDKX0HkLYt94EgaC8KrXxbFTf0b5UZDhkhcEUmDsA=;
 b=WVJ//CKH4dmTBE0aqIBZXt0aAGFbLb2/HSsz+TTszSD504939LXSss4CoipdpB/CaP
 UYEC49gciPAa156HBkX3vD6agGFcawT7wJGuqinqgdldtVpJcnYlHy8kYO+4r5wUGW4N
 dybibnHmXgJPE6Yx//FGirSeVMwet4YQ4pqdD8PfOkmlAM9lkmxvRxK8W5pq10wP/QdV
 nPZKGtAyqCQjPtUOqPpWTpK7PWQ7g8PDTvbQ9eAr9/mGFFzSg02tY1TfCtIKZQykmP7N
 B8ikx09FYbHX1EDesimTPNwCJGF8URn5yiI0zH0eo0dpPE+4HsehFV61iZGVMleox6n1
 gTbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rDNDKX0HkLYt94EgaC8KrXxbFTf0b5UZDhkhcEUmDsA=;
 b=gNbi7jENxI4clI2r5ELhSV9Q2t66YnrSDdbXbu14O/MWFz/DSZRwpCBToSy8Hwnky1
 BBxSd9iNGEpgaHAwSurVaesYP/8TMJQuGlcaRPntARbjcfP+oqdR/RRsDr9zT0ts/jZE
 JNWQJv5TlrltGYeBwxYZpUI6sRFburuyfYH2F7L1fbQCMD+5TveKwIa/8ldXeGcOj0Aj
 OfSAYRIO06PYkZ9AfVPq+lT9NagQce8696o9PbpNwJvFop26PY1QnNmUlZBKnekmRdPN
 o/LRtsIulR00sOa/I9rI0yenHtp4KaRF8jwVjAL9ek7p7WNDuCG+xo9UGO/rksVUByHn
 y19g==
X-Gm-Message-State: AOAM531z63+yX0yt2w////84cCy3Cz+vQxwh/8ra6NWC9M2P4y9fFaoF
 WC14ito3BfOlvUzoyhAforYSzA==
X-Google-Smtp-Source: ABdhPJzB2HI5kI/EmFJDdYOUgVosMpdPIKY9IaspD/NoZu4lv6KFYPamr6Pcq0PBpjpQXhtZ+2g/kQ==
X-Received: by 2002:a5d:66c5:: with SMTP id k5mr2740621wrw.17.1590142686217;
 Fri, 22 May 2020 03:18:06 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id d126sm9765981wmd.32.2020.05.22.03.18.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 03:18:05 -0700 (PDT)
Date: Fri, 22 May 2020 12:17:55 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v7 13/24] iommu/arm-smmu-v3: Enable broadcast TLB
 maintenance
Message-ID: <20200522101755.GA3453945@myrica>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-14-jean-philippe@linaro.org>
 <20200521141730.GJ6608@willie-the-truck>
 <0c896ad27b43b2de554cf772f9453d0a@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0c896ad27b43b2de554cf772f9453d0a@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_031808_657794_FC420275 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 fenghua.yu@intel.com, hch@infradead.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, zhangfei.gao@linaro.org,
 eric.auger@redhat.com, catalin.marinas@arm.com, felix.kuehling@amd.com,
 xuzaibo@huawei.com, Will Deacon <will@kernel.org>, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Eric]

On Thu, May 21, 2020 at 03:38:35PM +0100, Marc Zyngier wrote:
> On 2020-05-21 15:17, Will Deacon wrote:
> > [+Marc]
> > 
> > On Tue, May 19, 2020 at 07:54:51PM +0200, Jean-Philippe Brucker wrote:
> > > The SMMUv3 can handle invalidation targeted at TLB entries with shared
> > > ASIDs. If the implementation supports broadcast TLB maintenance,
> > > enable it
> > > and keep track of it in a feature bit. The SMMU will then be
> > > affected by
> > > inner-shareable TLB invalidations from other agents.
> > > 
> > > A major side-effect of this change is that stage-2 translation
> > > contexts
> > > are now affected by all invalidations by VMID. VMIDs are all shared
> > > and
> > > the only ways to prevent over-invalidation, since the stage-2 page
> > > tables
> > > are not shared between CPU and SMMU, are to either disable BTM or
> > > allocate
> > > different VMIDs. This patch does not address the problem.
> > 
> > This sounds like a potential performance issue, particularly as we
> > expose
> > stage-2 contexts via VFIO directly.

Yes it's certainly going to affect SMMU performance, though I haven't
measured it. QEMU and kvmtool currently use stage-1 translations instead
of stage-2, so it won't be a problem until they start using nested
translation (and unless the SMMU only supports stage-2).

In the coming month I'd like to have a look at coordinating VMID
allocation between KVM and SMMU, for guest SVA. If the guest wants to
share page tables with the SMMU, the SMMU has to use the same VMIDs as the
VM to receive broadcast TLBI.

Similarly to patch 06 ("arm64: mm: Pin down ASIDs for sharing mm with
devices") the SMMU would request a VMID allocated by KVM, when setting up
a nesting VFIO container. One major downside is that the VMID is pinned
and cannot be recycled on rollover while it's being used for DMA.

I wonder if we could use this even when page tables aren't shared between
CPU and SMMU, to avoid splitting the VMID space.

> > Maybe we could reserve some portion
> > of
> > VMID space for the SMMU? Marc, what do you reckon?
> 
> Certainly doable when we have 16bits VMIDs. With smaller VMID spaces (like
> on
> v8.0), this is a bit more difficult (we do have pretty large v8.0 systems
> around).

It's only an issue if those systems have an SMMUv3 supporting DVM. With
any luck that doesn't exist?

> How many VMID bits are we talking about?

That's anyone's guess... One passed-through device per VM would halve the
VMID space. But the SMMU allocates one VMID for each device assigned to a
guest, not one per VM (well one per domain, or VFIO container, but I think
it boils down to one per device with QEMU). So with SR-IOV for example it
should be pretty easy to reach 256 VMIDs in the SMMU.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
