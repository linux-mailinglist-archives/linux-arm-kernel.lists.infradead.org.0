Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B515FEB0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 01:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEFvtgQl+LJ/9gjZkcK0tQzUiVzKGGMmLM9RPdwiuvs=; b=BnmH3yubgjW4FU
	6SIharqbdYwg7JxY9r0KsaG+BNxa97DKTqjtEX4qVQTRPfnVntuBTTsLHG/El/to2I4oOBJEmBfB0
	EcsUjVspJawbHOGte/Tq5FOPMzFyrBDLb+gtaQeGKK0cQZOSZxdJwifw6hNMzd8NxFOeV6ibTH7Be
	O4bktJ1MzZwBl8JMsXRna6GlhMAly7TkEfh+KbDIqlSFUqy9K1VFX1FKpEGHp24+28TQvXERioXhr
	tYpBT7W+ErvduSahxSSsqHHFVAXNb54/6GepimH1IknSkMC7pr9FJbLift3beciGzBhOXwYIfKNLI
	ySsgG/gJOlCnxEFuer8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjBIu-0005dy-6V; Thu, 04 Jul 2019 23:38:16 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjBIh-0005dc-Vc
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 23:38:05 +0000
Received: by mail-oi1-x243.google.com with SMTP id w79so5917007oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 16:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ve/CczmjDTp62IiyOlOME0RVKS5HfvyxwnJvsVLm4Vs=;
 b=ftzysFAgpNAb+BruhLNH0hJPG1+DZJH5fW47QFP2ZCCrJsWY0QiqCN33vLIdmP+YKX
 oYjFGqBNFdAiE67/Scf00vlp73/xqc9pUOTQqv50+CArtatDE9N0E1fmMn6a6b4TXgvC
 b4ikeLch0hVf8zFQYSEq1w3vTKY09hc+kjsVZV/qqSlPyxPEUIxUQ7KsfqcwWe9BrcAA
 v/Qn7UXw1I9f8vsa2e7SuNV9MVKpvVtW0GhCb8C3HKqRROUiumhwmxjXK1mvWegh7J9t
 v+AIy6jg8Of0NKSl5vCY5SL/L+7uGHiv+8rWcdQo5jq8sjpRw09XucLUw0n59f/fPRH+
 PPcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ve/CczmjDTp62IiyOlOME0RVKS5HfvyxwnJvsVLm4Vs=;
 b=Hr+1yw1k8jL5/EMW3OHJyAj+fYITrGXpyqZKh2+YaebQPq6+pROFQQmM7WCZfme5dW
 EIM+4Zip4LwEkY1RGNU7GR5pRY45pgdQ59ftgfSw/tBdJGBK2uKq3O5mRFEqk+qT0a29
 Cg/2gERg3NDYuHatKo34Ii5kgt+SdeyNS8I4I+qzONpjmPOsahtKhIX6wTZihT0wJ7qP
 73ddvj06lmoagQcvuNO85DOA0DkYOOI8BZYlria6HovWuqTxkzthSukWDgy5u85JjWNP
 GpepUjXpdqSGkViBXQzaJ01Jxs+myZQ4CiWXFSfnhIDl+BrJFxPVKjLNKbmgjqjS5dhe
 qvCw==
X-Gm-Message-State: APjAAAXrIehQ8Cc23W30Hxn+EKirYH5u6yQUr/TomYsRBF3MIZ3lh7Qc
 ZxTmcLXnY5PNIFTzaiCg9HxfXxtlqNI5imrOywJGPQ==
X-Google-Smtp-Source: APXvYqxPvl0JaE/xctjYrnEPxDDTTNAKohKZCdbZNul+YnSwqo3/7CHb/acC/vbGgVjEA6Xdvr5WpUQKmbNeFnXQ/uE=
X-Received: by 2002:aca:ba02:: with SMTP id k2mr441491oif.70.1562283482013;
 Thu, 04 Jul 2019 16:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558547956.git.robin.murphy@arm.com>
 <20190626073533.GA24199@infradead.org>
 <20190626123139.GB20635@lakrids.cambridge.arm.com>
 <20190626153829.GA22138@infradead.org>
 <20190626154532.GA3088@mellanox.com>
 <20190626203551.4612e12be27be3458801703b@linux-foundation.org>
 <20190704115324.c9780d01ef6938ab41403bf9@linux-foundation.org>
 <20190704195934.GA23542@mellanox.com>
In-Reply-To: <20190704195934.GA23542@mellanox.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 4 Jul 2019 16:37:51 -0700
Message-ID: <CAPcyv4iSviwyAPBnw5zDu_Ks0Ty0sFZ6QbEtVVU0PRd=ReRZNg@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
To: Jason Gunthorpe <jgg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_163804_021732_8C5F6756 
X-CRM114-Status: GOOD (  28.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 4, 2019 at 12:59 PM Jason Gunthorpe <jgg@mellanox.com> wrote:
>
> On Thu, Jul 04, 2019 at 11:53:24AM -0700, Andrew Morton wrote:
> > On Wed, 26 Jun 2019 20:35:51 -0700 Andrew Morton <akpm@linux-foundation.org> wrote:
> >
> > > > Let me know and I can help orchestate this.
> > >
> > > Well.  Whatever works.  In this situation I'd stage the patches after
> > > linux-next and would merge them up after the prereq patches have been
> > > merged into mainline.  Easy.
> >
> > All right, what the hell just happened?
>
> Christoph's patch series for the devmap & hmm rework finally made it
> into linux-next, sorry, it took quite a few iterations on the list to
> get all the reviews and tests, and figure out how to resolve some
> other conflicting things. So it just made it this week.
>
> Recall, this is the patch series I asked you about routing a few weeks
> ago, as it really exceeded the small area that hmm.git was supposed to
> cover. I think we are both caught off guard how big the conflict is!
>
> > A bunch of new material has just been introduced into linux-next.
> > I've partially unpicked the resulting mess, haven't dared trying to
> > compile it yet.  To get this far I'll need to drop two patch series
> > and one individual patch:
>
> > mm-clean-up-is_device__page-definitions.patch
> > mm-introduce-arch_has_pte_devmap.patch
> > arm64-mm-implement-pte_devmap-support.patch
> > arm64-mm-implement-pte_devmap-support-fix.patch
>
> This one we discussed, and I thought we agreed would go to your 'stage
> after linux-next' flow (see above). I think the conflict was minor
> here.
>
> > mm-sparsemem-introduce-struct-mem_section_usage.patch
> > mm-sparsemem-introduce-a-section_is_early-flag.patch
> > mm-sparsemem-add-helpers-track-active-portions-of-a-section-at-boot.patch
> > mm-hotplug-prepare-shrink_zone-pgdat_span-for-sub-section-removal.patch
> > mm-sparsemem-convert-kmalloc_section_memmap-to-populate_section_memmap.patch
> > mm-hotplug-kill-is_dev_zone-usage-in-__remove_pages.patch
> > mm-kill-is_dev_zone-helper.patch
> > mm-sparsemem-prepare-for-sub-section-ranges.patch
> > mm-sparsemem-support-sub-section-hotplug.patch
> > mm-document-zone_device-memory-model-implications.patch
> > mm-document-zone_device-memory-model-implications-fix.patch
> > mm-devm_memremap_pages-enable-sub-section-remap.patch
> > libnvdimm-pfn-fix-fsdax-mode-namespace-info-block-zero-fields.patch
> > libnvdimm-pfn-stop-padding-pmem-namespaces-to-section-alignment.patch
>
> Dan pointed to this while reviewing CH's series and said the conflicts
> would be manageable, but they are certainly larger than I expected!
>
> This series is the one that seems to be the really big trouble. I
> already checked all the other stuff that Stephen resolved, and it
> looks OK and managable. Just this one conflict with kernel/memremap.c
> is beyond me.
>
> What approach do you want to take to go forward? Here are some thoughts:
>
> CH has said he is away for the long weekend, so the path that involves
> the fewest people is if Dan respins the above on linux-next and it
> goes later with the arm patches above, assuming defering it for now
> has no other adverse effects on -mm.
>
> Pushing CH's series to -mm would need a respin on top of Dan's series
> above and would need to carry along the whole hmm.git (about 44
> patches). Signs are that this could be managed with the code currently
> in the GPU trees.
>
> If we give up on CH's series the hmm.git will not have conflicts,
> however we just kick the can to the next merge window where we will be
> back to having to co-ordinate amd/nouveau/rdma git trees and -mm's
> patch workflow - and I think we will be worse off as we will have
> totally given up on a git based work flow for this. :(

I think the problem would be resolved going forward post-v5.3 since we
won't have two tress managing kernel/memremap.c. This cycle however
there is a backlog of kernel/memremap.c changes in -mm.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
