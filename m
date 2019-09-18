Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9772B6A35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 20:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrIX3bJPV5eZzEXEQcDjsoGmGZn1ZWJJvbvYJu4gA5E=; b=IN1HoBWvJZe5Iq
	lD72WaYDuE+okgSktKnQXeO20Nty9BcG+g03wyjAuqYXgylUR5VzL9NpFu0whdzgQKchK1Q37mSXX
	BRP5L3kTinW5/Tos9jbi8lnbIh2XCoTsQF2j12cZ4ry2NSeOW9L2YPXtcG5RxwpIyqU8Qt6BICqOg
	fnF94rKDQ8me/1fwxIhZ7U+15MkC7gxbwSaB0P+6aDy+CtbTPDzyz5vXd6N4Mmp2hK9VbYQxcsK7k
	3kM/Q8RbYunkC4qx82nGGeDQ4RGvY2kCG1K25Q1TSus+gUktTh9bksKfcwITlXwY+xIC8b8ur/01L
	prhepzkghC/AsU6k0s0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAeKU-0005N3-30; Wed, 18 Sep 2019 18:05:26 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAeKG-0005MU-1L
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 18:05:13 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 11:05:11 -0700
X-IronPort-AV: E=Sophos;i="5.64,521,1559545200"; d="scan'208";a="338407459"
Received: from ahduyck-desk1.jf.intel.com ([10.7.198.76])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 11:05:10 -0700
Message-ID: <38429bdb416bdb33f3c7f740f903380af3129a36.camel@linux.intel.com>
Subject: Re: [PATCH v10 5/6] virtio-balloon: Pull page poisoning config out
 of free page hinting
From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
To: "Michael S. Tsirkin" <mst@redhat.com>, Alexander Duyck
 <alexander.duyck@gmail.com>
Date: Wed, 18 Sep 2019 11:05:10 -0700
In-Reply-To: <20190918135833-mutt-send-email-mst@kernel.org>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190918175305.23474.34783.stgit@localhost.localdomain>
 <20190918135833-mutt-send-email-mst@kernel.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_110512_104746_79C7A768 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
 david@redhat.com, mhocko@kernel.org, linux-mm@kvack.org, aarcange@redhat.com,
 virtio-dev@lists.oasis-open.org, konrad.wilk@oracle.com, willy@infradead.org,
 wei.w.wang@intel.com, vbabka@suse.cz, riel@surriel.com,
 dan.j.williams@intel.com, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 dave.hansen@intel.com, linux-kernel@vger.kernel.org, pbonzini@redhat.com,
 akpm@linux-foundation.org, mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-09-18 at 13:58 -0400, Michael S. Tsirkin wrote:
> On Wed, Sep 18, 2019 at 10:53:05AM -0700, Alexander Duyck wrote:
> > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > 
> > Currently the page poisoning setting wasn't being enabled unless free page
> > hinting was enabled. However we will need the page poisoning tracking logic
> > as well for unused page reporting. As such pull it out and make it a
> > separate bit of config in the probe function.
> > 
> > In addition we can actually wrap the code in a check for NO_SANITY. If we
> > don't care what is actually in the page we can just default to 0 and leave
> > it there.
> > 
> > Reviewed-by: David Hildenbrand <david@redhat.com>
> > Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> I think this one can go in directly. Do you want me to merge it now?

That sounds good to me.

Do you know if you can also pull in QEMU 1/3 into QEMU as well since the
feature wasn't pulled into QEMU originally?
https://lore.kernel.org/lkml/20190918175342.23606.12400.stgit@localhost.localdomain/

Thanks.

- Alex



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
