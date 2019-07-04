Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC9E5FD21
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 20:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+e4rpAKFxoHD3IrIMSAEWxWrsWNYjMz2NXw1HVrSOV0=; b=KroYLFuVRKogy0
	qYl6dkE/ueYZAYQJkFtiyCwsIUHo5neXqAUGNmQlwMRAW03lWFPO9dkbJFnMrCBfQ5Csbfb3Tw/tU
	kXhhO7HbVaeDnxM3QnBy5/qdXVCcK4es2hdGN6CYMUjJidNXDTN2GZDCSs4JgXaClR2LSVQIBeIk1
	2sGzt6xJijXQAicx00kEUR+1kGbMAm6Oi38nYuFdekvuMRRrSxxGrcDFv09P85iZ8B3HwWaPbwpX6
	HnpW2PAL5rh9tFmBhvqHEg4mhh7UAMvlD4pthTPJKixuGu1Apu71+CDC33HoozdnkqVDw3SdJN1Xy
	Wloy+FEqJyZ8/4j4xFsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj6rT-0007Le-MC; Thu, 04 Jul 2019 18:53:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj6rG-0007LJ-DV
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 18:53:27 +0000
Received: from localhost.localdomain (c-73-223-200-170.hsd1.ca.comcast.net
 [73.223.200.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFC8621738;
 Thu,  4 Jul 2019 18:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562266405;
 bh=qkDBOADvWshMyVN7H3BLz2q7D8CF8WI3UnSO0p9XJrk=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=YP1CWkmH0JmPvIb/iq31MuI00kd3EDa/9+C6FkMW9xNGhHlkejojh07VR/3oy9+KK
 IaMaAVuXl15/ma/jlj84cLS06pu+hF+aZFECnsfjJYLa1fqDGmLqdbwVk7A2KeDeKQ
 /qpQ+nlJ635aiqGfp36Mf66+8oo8W3i8EH5ciKR8=
Date: Thu, 4 Jul 2019 11:53:24 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Jason Gunthorpe <jgg@mellanox.com>, Christoph Hellwig
 <hch@infradead.org>, Mark Rutland <mark.rutland@arm.com>, Robin Murphy
 <robin.murphy@arm.com>, "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "anshuman.khandual@arm.com"
 <anshuman.khandual@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Michal Hocko <mhocko@suse.com>, Robin
 Murphy <robin.murphy@arm.com>, Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
Message-Id: <20190704115324.c9780d01ef6938ab41403bf9@linux-foundation.org>
In-Reply-To: <20190626203551.4612e12be27be3458801703b@linux-foundation.org>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <20190626073533.GA24199@infradead.org>
 <20190626123139.GB20635@lakrids.cambridge.arm.com>
 <20190626153829.GA22138@infradead.org>
 <20190626154532.GA3088@mellanox.com>
 <20190626203551.4612e12be27be3458801703b@linux-foundation.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_115326_473730_5890C90B 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 20:35:51 -0700 Andrew Morton <akpm@linux-foundation.org> wrote:

> > Let me know and I can help orchestate this.
> 
> Well.  Whatever works.  In this situation I'd stage the patches after
> linux-next and would merge them up after the prereq patches have been
> merged into mainline.  Easy.

All right, what the hell just happened?  A bunch of new material has
just been introduced into linux-next.  I've partially unpicked the
resulting mess, haven't dared trying to compile it yet.  To get this
far I'll need to drop two patch series and one individual patch:


mm-clean-up-is_device__page-definitions.patch
mm-introduce-arch_has_pte_devmap.patch
arm64-mm-implement-pte_devmap-support.patch
arm64-mm-implement-pte_devmap-support-fix.patch

mm-sparsemem-introduce-struct-mem_section_usage.patch
mm-sparsemem-introduce-a-section_is_early-flag.patch
mm-sparsemem-add-helpers-track-active-portions-of-a-section-at-boot.patch
mm-hotplug-prepare-shrink_zone-pgdat_span-for-sub-section-removal.patch
mm-sparsemem-convert-kmalloc_section_memmap-to-populate_section_memmap.patch
mm-hotplug-kill-is_dev_zone-usage-in-__remove_pages.patch
mm-kill-is_dev_zone-helper.patch
mm-sparsemem-prepare-for-sub-section-ranges.patch
mm-sparsemem-support-sub-section-hotplug.patch
mm-document-zone_device-memory-model-implications.patch
mm-document-zone_device-memory-model-implications-fix.patch
mm-devm_memremap_pages-enable-sub-section-remap.patch
libnvdimm-pfn-fix-fsdax-mode-namespace-info-block-zero-fields.patch
libnvdimm-pfn-stop-padding-pmem-namespaces-to-section-alignment.patch

mm-sparsemem-cleanup-section-number-data-types.patch
mm-sparsemem-cleanup-section-number-data-types-fix.patch


I thought you were just going to move material out of -mm and into
hmm.git.  Didn't begin to suspect that new and quite disruptive
material would be introduced late in -rc7!!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
