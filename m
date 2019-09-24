Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED31ABCA24
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 16:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UgijV6HHX4abX/qVFBR8IkbB07tCNvJnHSLci1XHZDk=; b=YGO1seoU4FGFK2
	PKIUr07t2qvPd/o5XcyfVgWE0ASYkUCk7Q1EcAJjU4cVn40UCrscSSe4attjehs7dbEVvvlVVqVUs
	EBwaZc3Fj0PM1YtNfglsBdk016wq601678Kv/Lf40Cj2oPuZeRPU9FwIEWb84DkhzlzNZOGBndzjD
	dSVaUtNGB2H/QX5lwyyIoPu8NS7gsOx/7g+yCLaER7yqJd2GXolZgsaKV/PdhK2ra9XIeb6jAP1OX
	ctAts6Ok04ERaPKpGzhGD/2udu7vnPI5LjTvuNXfprh/v/5E3FLJWLCOV8suVoebFoZtfX/G9sdSm
	JY4jZCv9dmpR3MNzDvNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iClje-000601-Sf; Tue, 24 Sep 2019 14:24:11 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCljH-0005yE-9I
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 14:23:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5AB60AC84;
 Tue, 24 Sep 2019 14:23:43 +0000 (UTC)
Date: Tue, 24 Sep 2019 16:23:42 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v10 0/6] mm / virtio: Provide support for unused page
 reporting
Message-ID: <20190924142342.GX23050@dhcp22.suse.cz>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918175109.23474.67039.stgit@localhost.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_072347_470327_19803D9A 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 david@redhat.com, lcapitulino@redhat.com, linux-mm@kvack.org,
 alexander.h.duyck@linux.intel.com, aarcange@redhat.com,
 virtio-dev@lists.oasis-open.org, mst@redhat.com, willy@infradead.org,
 wei.w.wang@intel.com, vbabka@suse.cz, riel@surriel.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 osalvador@suse.de, nitesh@redhat.com, konrad.wilk@oracle.com,
 dave.hansen@intel.com, linux-kernel@vger.kernel.org, pbonzini@redhat.com,
 akpm@linux-foundation.org, mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 18-09-19 10:52:25, Alexander Duyck wrote:
[...]
> In order to try and keep the time needed to find a non-reported page to
> a minimum we maintain a "reported_boundary" pointer. This pointer is used
> by the get_unreported_pages iterator to determine at what point it should
> resume searching for non-reported pages. In order to guarantee pages do
> not get past the scan I have modified add_to_free_list_tail so that it
> will not insert pages behind the reported_boundary.
> 
> If another process needs to perform a massive manipulation of the free
> list, such as compaction, it can either reset a given individual boundary
> which will push the boundary back to the list_head, or it can clear the
> bit indicating the zone is actively processing which will result in the
> reporting process resetting all of the boundaries for a given zone.

Is this any different from the previous version? The last review
feedback (both from me and Mel) was that we are not happy to have an
externally imposed constrains on how the page allocator is supposed to
maintain its free lists.

If this is really the only way to go forward then I would like to hear
very convincing arguments about other approaches not being feasible.
There are none in this cover letter unfortunately. This will be really a
hard sell without them.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
