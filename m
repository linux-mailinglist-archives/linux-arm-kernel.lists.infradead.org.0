Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A4EAFFB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 17:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wn2B1i4+UgEVQHL54JBIY0/Pzc1ohheNTUmj2jbz3GU=; b=m9HfYFiquKU2z6
	9iTlU3FFynkFu/NiGYiYPv6D4fdBx8kmm7GRvviGNQnY1iVWLGn66vwVmsgnkswSoHtN1RU8q+5nw
	at3Dkuw3U7+L37Lomfl/XLREfEfk6bPypgK7VtZo4FXB8pVdIPfVPM0Af6hzXKp1kphItrMrBXXVu
	3+yxsE2zd9r6VIsi0trrabToXdknI9TZTxoM/MxDi0XQpnQRMaIFfP0xIqG25B+kTap8Ci0FEp6OI
	qivxZOam+TNuHwOa5B0YW1ffafJgHTvv9lb2xjFUIgwzDJ+VkDYlxTi2M/84+ZI5TdOCaD6OIxO/9
	2mCRe+4P7nkZ5GtHCTZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i84IG-0007zf-HI; Wed, 11 Sep 2019 15:12:28 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i84I4-0007yh-UK
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 15:12:18 +0000
Received: by mail-io1-xd43.google.com with SMTP id k5so21346410iol.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 08:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hO/NYETIaCmxDsOv4YSewpLm6NfP264tWt7Tht5PRVc=;
 b=lephetGiRU0WJPYILZnpGeGY8fb67wSei8lpY0AzUmFYLYYZLCPr2QCdLVrZ3t9KqF
 VYRvj37vfpGu+yiAbV118YM/11MJeQt43ZHMr3XUooHwIgnEZAXkXmpwJZe97JfITjzm
 gMkhtrmUNbgtvpotn3Ps3YURVWTZw7d5jQoeB8ZqiFHPBQqOwktFsJKGPVQ2MvFqy7XC
 5wf7Cu3g32jyh6iKTGq2us71dxbfV5t0Qws2k9A6k0wStA2mODqcmOUdxF/R5Li9wADS
 PvwkDiEhtOuMIXiFo6eXN/M7r0UwnDWyHgSEi7TkB+U4O5S/iRH2R5EaQb7C+0VOL4OT
 CYnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hO/NYETIaCmxDsOv4YSewpLm6NfP264tWt7Tht5PRVc=;
 b=SUyGqEzAV2eRzoELCU3GdsmtbmRdHYhDs5adQHHQOHix9yFu8DiBNKlHNfDDHQjJ05
 POuVJAhvQ/r0z6diweI0JaF5kaR8LkPMBYcKPc4LvdPgZZhKLJ7m4ojxK/WX36PwNBq5
 HQ6G5yyXnRKwQUBTcfiNmQiJakuA4i1IMQPTXmPA2Rz1pU0BHjMaC09TRKBH67UGkarh
 /MhF5Sz8odO0B5vWJ4WDPFFkbIKoci69GQkSZKV9qlUtnh+oxWS8Exg+QymKKrw27Jxh
 Aj3FJSDbyCG5JRzl8L7enpvUQnUQcqGUSXG6CbW6+BKs4xGnpYIpbqjLsTO/nMadkreA
 9T9g==
X-Gm-Message-State: APjAAAXD2naNwIJEmOYfLIJAJoJ52eWcUGAI7U7Yj/e80t77VZ3qPRVV
 Jw8+Mx0nRxad4S8fp/JpYoU2eCY7pnUu6Kh6PTY=
X-Google-Smtp-Source: APXvYqywFmqrX2zinHSJDKlW9JocoMGeJEpO0ksqi5JSiUqBmD89WL+vrXm3nKABzAcwsgWbhHFEtI94/Tj9EgUXE88=
X-Received: by 2002:a5d:8b47:: with SMTP id c7mr28072146iot.42.1568214734894; 
 Wed, 11 Sep 2019 08:12:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
 <20190910175213.GD4023@dhcp22.suse.cz>
 <1d7de9f9f4074f67c567dbb4cc1497503d739e30.camel@linux.intel.com>
 <20190911113619.GP4023@dhcp22.suse.cz>
In-Reply-To: <20190911113619.GP4023@dhcp22.suse.cz>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 11 Sep 2019 08:12:03 -0700
Message-ID: <CAKgT0UfOp1c+ov=3pBD72EkSB9Vm7mG5G6zJj4=j=UH7zCgg2Q@mail.gmail.com>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
To: Michal Hocko <mhocko@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_081216_980493_053D7886 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Sep 11, 2019 at 4:36 AM Michal Hocko <mhocko@kernel.org> wrote:
>
> On Tue 10-09-19 14:23:40, Alexander Duyck wrote:
> [...]
> > We don't put any limitations on the allocator other then that it needs to
> > clean up the metadata on allocation, and that it cannot allocate a page
> > that is in the process of being reported since we pulled it from the
> > free_list. If the page is a "Reported" page then it decrements the
> > reported_pages count for the free_area and makes sure the page doesn't
> > exist in the "Boundary" array pointer value, if it does it moves the
> > "Boundary" since it is pulling the page.
>
> This is still a non-trivial limitation on the page allocation from an
> external code IMHO. I cannot give any explicit reason why an ordering on
> the free list might matter (well except for page shuffling which uses it
> to make physical memory pattern allocation more random) but the
> architecture seems hacky and dubious to be honest. It shoulds like the
> whole interface has been developed around a very particular and single
> purpose optimization.

How is this any different then the code that moves a page that will
likely be merged to the tail though?

In our case the "Reported" page is likely going to be much more
expensive to allocate and use then a standard page because it will be
faulted back in. In such a case wouldn't it make sense for us to want
to keep the pages that don't require faults ahead of those pages in
the free_list so that they are more likely to be allocated? All we are
doing with the boundary list is preventing still resident pages from
being deferred behind pages that would require a page fault to get
access to.

> I remember that there was an attempt to report free memory that provided
> a callback mechanism [1], which was much less intrusive to the internals
> of the allocator yet it should provide a similar functionality. Did you
> see that approach? How does this compares to it? Or am I completely off
> when comparing them?
>
> [1] mostly likely not the latest version of the patchset
> http://lkml.kernel.org/r/1502940416-42944-5-git-send-email-wei.w.wang@intel.com

There have been a few comparisons between this patch set and the ones
from Wei Wang. In regards to the one you are pointing to the main
difference is that I am not permanently locking memory. Basically what
happens is that the iterator will take the lock, pull a few pages,
release the lock while reporting them, and then take the lock to
return those pages, grab some more, and repeat.

I was actually influenced somewhat by the suggestions that patchset
received, specifically I believe it resembles something like what was
suggested by Linus in response to v35 of that patch set:
https://lore.kernel.org/linux-mm/CA+55aFzqj8wxXnHAdUTiOomipgFONVbqKMjL_tfk7e5ar1FziQ@mail.gmail.com/

Basically where the feature Wei Wang was working on differs from this
patch set is that I need this to run continually, his only needed to
run periodically as he was just trying to identify free pages at a
fixed point in time. My goal is to identify pages that have been freed
since the last time I reported them. To do that I need a flag in the
page to identify those pages, and an iterator in the form of a
boundary pointer so that I can incrementally walk through the list
without losing track of freed pages.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
