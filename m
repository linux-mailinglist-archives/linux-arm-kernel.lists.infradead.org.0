Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE35AEA0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJzRhYHtya+XoBik9jx4TYxPBdTeq6AqwzShlXmFwLk=; b=XJSIZbJVz9ejn8
	QUws2YiRticxk7OiYYMArD6y/M2o4UTwKcFxiLkrb4QasA8DDNbp0r0aCXYMHoLyC5+Ud6R3Mh33Y
	LmbpzbM+YOZ43oXRSgLaroeZ0o+FLO6TW9/WI2ZKnLMo1YqyTIe8lklwCxKsOLS2tMIJLMTuk+x2O
	L3M+2BvYCpfnYTxfWs09q9SfUB5GUPEYjPrI+wnfonBPFG8mnNs8oAsxe+TpxTUWV/SH9LOFBb/wv
	GijXtvQbC5OsQU0FCZSUYMSaSPLOROMoZb+jL9wHVgTWHrUcCYaLoyeBg0kcPk7ERLb++j7cgmZM1
	rIKswtMTj2HXrDooZ8tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ezs-0006k1-9X; Tue, 10 Sep 2019 12:11:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ezd-0006j6-Q5
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:11:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 668EEB150;
 Tue, 10 Sep 2019 12:11:31 +0000 (UTC)
Date: Tue, 10 Sep 2019 14:11:30 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Subject: Re: [PATCH v9 1/8] mm: Add per-cpu logic to page shuffling
Message-ID: <20190910121130.GU2063@dhcp22.suse.cz>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172512.10910.74435.stgit@localhost.localdomain>
 <0df2e5d0-af92-04b4-aa7d-891387874039@redhat.com>
 <0ca58fea280b51b83e7b42e2087128789bc9448d.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ca58fea280b51b83e7b42e2087128789bc9448d.camel@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_051134_601896_70B6F2AA 
X-CRM114-Status: GOOD (  12.99  )
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
 mst@redhat.com, catalin.marinas@arm.com,
 Alexander Duyck <alexander.duyck@gmail.com>, lcapitulino@redhat.com,
 linux-mm@kvack.org, will@kernel.org, aarcange@redhat.com,
 virtio-dev@lists.oasis-open.org, David Hildenbrand <david@redhat.com>,
 willy@infradead.org, wei.w.wang@intel.com, ying.huang@intel.com,
 riel@surriel.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 konrad.wilk@oracle.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 pbonzini@redhat.com, akpm@linux-foundation.org, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 09-09-19 08:11:36, Alexander Duyck wrote:
> On Mon, 2019-09-09 at 10:14 +0200, David Hildenbrand wrote:
> > On 07.09.19 19:25, Alexander Duyck wrote:
> > > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > > 
> > > Change the logic used to generate randomness in the suffle path so that we
> > > can avoid cache line bouncing. The previous logic was sharing the offset
> > > and entropy word between all CPUs. As such this can result in cache line
> > > bouncing and will ultimately hurt performance when enabled.
> > 
> > So, usually we perform such changes if there is real evidence. Do you
> > have any such performance numbers to back your claims?
> 
> I'll have to go rerun the test to get the exact numbers. The reason this
> came up is that my original test was spanning NUMA nodes and that made
> this more expensive as a result since the memory was both not local to the
> CPU and was being updated by multiple sockets.

What was the pattern of page freeing in your testing? I am wondering
because order 0 pages should be prevailing and those usually go via pcp
lists so they do not get shuffled unless the batch is full IIRC.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
