Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39694ADE52
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=re89XcphihZtw44Vt1631zifaMwRtahRY+OSiH/Lg+0=; b=PGPj/JzTSM7RwI
	C8wk74dlbpXdkNtqlTZ6pDdGeWiKMfm6NC+MuqcICkflH7BJxXc3x5WQ5/lQUqWwsFKS3xED476zR
	jAu/qviK4UMD1Di3zh+la5HbZvtyWTPkSJD4mTZiBUQKOQ1f0U5lgo3bPuJmUKH7NbXj6BrHbkVQ8
	lmZhbAb0cev2UTnGemjgvf1ing2ve5hl0dWTChm851CHCOH2a6IlKH/3enUnsAGabO39Zp0tuhLc0
	rMUWrepYqsPeA5QsSkLLxBgHHG0RaFc7Num7f/oDZrsYMMBtujNk5tnGEr1GLfAPL5bsveepugTh+
	uPFhq5pA1ThLYbzVP9UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7NyU-0004Lm-RC; Mon, 09 Sep 2019 18:01:14 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7NyM-0004L8-7e
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:01:07 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 11:01:05 -0700
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="196273339"
Received: from ahduyck-desk1.jf.intel.com ([10.7.198.76])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 11:01:05 -0700
Message-ID: <cca53aa628a25ead13a2f71060b56bde66e19d05.camel@linux.intel.com>
Subject: Re: [PATCH v9 3/8] mm: Move set/get_pcppage_migratetype to mmzone.h
From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
To: "Kirill A. Shutemov" <kirill@shutemov.name>, Alexander Duyck
 <alexander.duyck@gmail.com>
Date: Mon, 09 Sep 2019 11:01:04 -0700
In-Reply-To: <20190909095608.jwachx3womhqmjbl@box>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172528.10910.37051.stgit@localhost.localdomain>
 <20190909095608.jwachx3womhqmjbl@box>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_110106_319825_6F656D93 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, kvm@vger.kernel.org,
 david@redhat.com, catalin.marinas@arm.com, mhocko@kernel.org,
 linux-mm@kvack.org, will@kernel.org, aarcange@redhat.com,
 virtio-dev@lists.oasis-open.org, mst@redhat.com, willy@infradead.org,
 wei.w.wang@intel.com, ying.huang@intel.com, riel@surriel.com,
 dan.j.williams@intel.com, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 konrad.wilk@oracle.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 pbonzini@redhat.com, akpm@linux-foundation.org, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-09-09 at 12:56 +0300, Kirill A. Shutemov wrote:
> On Sat, Sep 07, 2019 at 10:25:28AM -0700, Alexander Duyck wrote:
> > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > 
> > In order to support page reporting it will be necessary to store and
> > retrieve the migratetype of a page. To enable that I am moving the set and
> > get operations for pcppage_migratetype into the mm/internal.h header so
> > that they can be used outside of the page_alloc.c file.
> > 
> > Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> > Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> I'm not sure that it's great idea to export this functionality beyond
> mm/page_alloc.c without any additional safeguards. How would we avoid to
> messing with ->index when the page is not in the right state of its
> life-cycle. Can we add some VM_BUG_ON()s here?

I am not sure what we would need to check on though. There are essentially
2 cases where we are using this. The first is the percpu page lists so the
value is set either as a result of __rmqueue_smallest or
free_unref_page_prepare. The second one which hasn't been added yet is for
the Reported pages case which I add with patch 6.

When I use it for page reporting I am essentially using the Reported flag
to identify what pages in the buddy list will have this value set versus
those that may not. I didn't explicitly define it that way, but that is
how I am using it so that the value cannot be trusted unless the Reported
flag is set.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
