Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF642AEF22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 18:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJPdlunc9L3NRy3S/Zeha9+9VyyKCAhYOSft6SXFYa0=; b=VOBey8eB6QyS9U
	I4lZ0dn9jeNI2+ezuO1QanC+vbrH/3fbZstarteue+xpPs2nM85zju2HlT3+GBqWD5n22E7yYIRR8
	NnKGLyVwIOdVaH4TMpbgFB2HrfD5NRyXH2qNMxu9AVh75PBms+XHqRoICnuyCjaryZuqEDTHFgQh9
	020FtL54wca1EQuouwi0ElnqmrffCObbzNa8bxWUPtl4YKuleeslkVU5OC3aSE67ZkZcHek6Sk36L
	/FFr4/Pz63jDoEzOZk+4DJZTHpme3tu2q6rM0vujWEnEqM57n0K9xG9QrJt7vldKmrkzPHn7I4php
	xpYoBO6nmSXvIKh6bXJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7iee-0003z5-V4; Tue, 10 Sep 2019 16:06:09 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ieR-0003xI-S0
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 16:05:57 +0000
Received: by mail-io1-xd44.google.com with SMTP id b136so38791995iof.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 09:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VOHRoq+5f0zDDmoxjc5LrcCUbX6pSA5aom1GvfEBdqM=;
 b=Fo10nVgCGjb967s2Gvy7rNbxLGvFQyPQai3LMMHk9zZedD+veZSBvOOmwQSJubz6ZP
 tuAujd3bbR/kbJcDxXxLq07MStOXSHX/1qIcFO49nAb5M62AjF0b3yFVjA+XNCCqoEEB
 WliSdoQPWIq+66wv7Qo/0/p4xMBLyrD1BdExRd2/35+zdhIjOeD0flz03I1Oe76aoV9A
 h+0xDFdQGW2HNoXAad189kM9G4aREr7hFK4BN7X8BoO7QW2AnAzdEzWlRlvTAn+IAgFx
 h/DxKukXVR4eBj0Ryq0xnwI+x6E+5VbdcoJjA04pKpMjf4S2U4shxqFiG3xCBT0kEmIU
 vdQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VOHRoq+5f0zDDmoxjc5LrcCUbX6pSA5aom1GvfEBdqM=;
 b=MgNGW/FbfZ0fbAeVJ4QmMIAi5cTax0Tv4NlvxhJF9/OTRizP9Eb7tkdg1nyVA11o21
 G+4D9l39U0PmecbC3Lbs/4yg9eMk18NdifpDv660kKLU7qpucZF0M/ot0+pTwPza8kDf
 M8vDU4PU+9EEBAVnEZf1ycL+Y/jwMDv5RyA9pMJw0G/xcTUShmNmwMt9VWk++8GocU4/
 UlOMCZJ7M5G25aS0VKUFaVel1Wo8B3zWQdOopcJn1H8Zf5EW06GNJHvHKVN6QgAGmqVq
 ZyoAa7T3rkbdjZF4A/vEfu/qOrpVuWFpdlbVJ/6XBvXJYJ4rW9FvnMWwCPlL3354P84W
 I8WQ==
X-Gm-Message-State: APjAAAUxUknPSLjElBucnyzQ02DNWo8s21CZ0iiM/1jmxFifafOHnP/7
 gjoq9tqOwPw17j/e2hY5rvWe/xY2GZL0ar/Y4jA=
X-Google-Smtp-Source: APXvYqwuv/pHVCWexKpkprqv1+Ti4casdnv0H37FsG/aFQFyd9UW76zxHfgdVDSoAnHjOav423k8D+xgBCR6S09zUQ4=
X-Received: by 2002:a6b:ac85:: with SMTP id v127mr4562969ioe.97.1568131554878; 
 Tue, 10 Sep 2019 09:05:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
In-Reply-To: <20190910144713.GF2063@dhcp22.suse.cz>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 10 Sep 2019 09:05:43 -0700
Message-ID: <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
To: Michal Hocko <mhocko@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_090555_938022_8FBBF196 
X-CRM114-Status: GOOD (  29.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yang Zhang <yang.zhang.wz@gmail.com>, Pankaj Gupta <pagupta@redhat.com>,
 kvm list <kvm@vger.kernel.org>, David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, lcapitulino@redhat.com,
 linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>, will@kernel.org,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 "Michael S. Tsirkin" <mst@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 "Wang, Wei W" <wei.w.wang@intel.com>, ying.huang@intel.com,
 Rik van Riel <riel@surriel.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, Nitesh Narayan Lal <nitesh@redhat.com>,
 Dave Hansen <dave.hansen@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Fengguang Wu <fengguang.wu@intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 7:47 AM Michal Hocko <mhocko@kernel.org> wrote:
>
> On Tue 10-09-19 07:42:43, Alexander Duyck wrote:
> > On Tue, Sep 10, 2019 at 5:42 AM Michal Hocko <mhocko@kernel.org> wrote:
> > >
> > > I wanted to review "mm: Introduce Reported pages" just realize that I
> > > have no clue on what is going on so returned to the cover and it didn't
> > > really help much. I am completely unfamiliar with virtio so please bear
> > > with me.
> > >
> > > On Sat 07-09-19 10:25:03, Alexander Duyck wrote:
> > > [...]
> > > > This series provides an asynchronous means of reporting to a hypervisor
> > > > that a guest page is no longer in use and can have the data associated
> > > > with it dropped. To do this I have implemented functionality that allows
> > > > for what I am referring to as unused page reporting
> > > >
> > > > The functionality for this is fairly simple. When enabled it will allocate
> > > > statistics to track the number of reported pages in a given free area.
> > > > When the number of free pages exceeds this value plus a high water value,
> > > > currently 32, it will begin performing page reporting which consists of
> > > > pulling pages off of free list and placing them into a scatter list. The
> > > > scatterlist is then given to the page reporting device and it will perform
> > > > the required action to make the pages "reported", in the case of
> > > > virtio-balloon this results in the pages being madvised as MADV_DONTNEED
> > > > and as such they are forced out of the guest. After this they are placed
> > > > back on the free list,
> > >
> > > And here I am reallly lost because "forced out of the guest" makes me
> > > feel that those pages are no longer usable by the guest. So how come you
> > > can add them back to the free list. I suspect understanding this part
> > > will allow me to understand why we have to mark those pages and prevent
> > > merging.
> >
> > Basically as the paragraph above mentions "forced out of the guest"
> > really is just the hypervisor calling MADV_DONTNEED on the page in
> > question. So the behavior is the same as any userspace application
> > that calls MADV_DONTNEED where the contents are no longer accessible
> > from userspace and attempting to access them will result in a fault
> > and the page being populated with a zero fill on-demand page, or a
> > copy of the file contents if the memory is file backed.
>
> As I've said I have no idea about virt so this doesn't really tell me
> much. Does that mean that if somebody allocates such a page and tries to
> access it then virt will handle a fault and bring it back?

Actually I am probably describing too much as the MADV_DONTNEED is the
hypervisor behavior in response to the virtio-balloon notification. A
more thorough explanation of it can be found by just running "man
madvise", probably best just to leave it at that since I am probably
confusing things by describing hypervisor behavior in a kernel patch
set.

For the most part all the page reporting really does is provide a way
to incrementally identify unused regions of memory in the buddy
allocator. That in turn is used by virtio-balloon in a polling thread
to report to the hypervisor what pages are not in use so that it can
make a decision on what to do with the pages now that it knows they
are unused.

All this is providing is just a report and it is optional if the
hypervisor will act on it or not. If the hypervisor takes some sort of
action on the page, then the expectation is that the hypervisor will
use some sort of mechanism such as a page fault to discover when the
page is used again.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
