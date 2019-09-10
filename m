Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B693CAED6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUe12Ocs0WGlqtvcZZLYcEq4sgmiDjKBXvXpEEorCik=; b=b+KcMt3+wvlvn3
	fkRLTYWmAW/dMirCxT99uBZELY7oBEG6+L/sTIbRyZZcQTNbcd1Fr9zgIE17FOLY9O3fYVlOzVfnJ
	6WCSKOXczoCdC/48e8wgcv72hPI/+O2Uwr9fGibnS3ay9dCmXg0qlynZMuxjsaaj87qa7mijyB1oG
	mVtgDFwRCBaP/9ZXvfP6DTgy/EGTqUHd5hWyB5YbpA7wA6gupsJmhfOINTPA8urYL+fHj++5YKk6Z
	qBa5WHPNeKMU+YQuSjPGXM+ne3zi7bVuooY3tZD9i1N5ql8HJ/nae4foF28Xs/U+N28OK5PbXeHjJ
	SYOCUyaXkz4PxykQU8kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hMm-00043J-UU; Tue, 10 Sep 2019 14:43:37 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hMB-0003XI-0e
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:43:00 +0000
Received: by mail-io1-xd43.google.com with SMTP id f4so37353729ion.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 07:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qwfqdrsthj6wGMKbVfq9KS+2D4+bl2wd+HAoXgrqGpM=;
 b=mdlhWpzQsILASMQ7+1ikwT0fUSiwI9Yno2A8k95yLHD6P9eV0S05kOW5Jv6prsMvSt
 iBXlVLmgNneBJJPewyY1Iz+eUwtz//m6IWYeMweTFXG1suDqKgsSJ2xCT/kZ1HcGuX4Y
 n5DFuajmtetj/LpA2LEgEC9oiE4MlkG9fH5vD+eWjaUxrS6bT4PmDA2aOayknXG3RXII
 9e0AvcNoE4ZxbCtIxiI/lT91HGh0dhQFb9BVLzxS7z4Bakuzjqvda8OJvgMc4cNBYsKq
 JywENk314egMFnOMmeOVAlHQzPFr5FrWB11JMPxvnyAvp/9VaOr3lB+4BYVwvWI0USRT
 DKkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qwfqdrsthj6wGMKbVfq9KS+2D4+bl2wd+HAoXgrqGpM=;
 b=SvcqMWnSMMP0EwxPbd9EHPcxeSxXKit0wbLvTit7zcQ/EBvxWnOyDwAN6XHZOJzBD7
 LV/S7GQLtB31rF9O+Q5waapVm6oz7sVtuYWzUB2CQuOCHMyrpBDBpbkxllKXwiv2rAKf
 iWTBSjUzX9Zy3wqt44gLQAC+3TYRNfQLIifZF2H65MaeIXe0kTHa/f9BK1QngsK2eI/B
 t6iRjcYq1Q/4AxpgnqanoUgq7OhpZYoeNHTADIWMdfFU/+aiTavPK40mlFNj7ZuT9aYC
 f5g3ZkWNY1TWl0c5284KA8Z6miLtjpxO9hAp+N6DbBU9eBIxKhC0YlHkFBVZGM/R+u/g
 7YIA==
X-Gm-Message-State: APjAAAWvJIyZD8Wt0N3IoIikuveUlob8eLdOt2nCaXxWbcTVnJTjfvgM
 +ve9u9umobN1W4PvVudzllSXevNMbeNhkuD+Bdc=
X-Google-Smtp-Source: APXvYqw25PAt3681VzSp2aKtn4HION8cnSVVgIaDxDN4t5As0qF4aUf02XL+Yw/GC74k1NJX1qc/ljlh1hZcV/Ap7TM=
X-Received: by 2002:a02:9f16:: with SMTP id z22mr31770205jal.83.1568126574433; 
 Tue, 10 Sep 2019 07:42:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
In-Reply-To: <20190910124209.GY2063@dhcp22.suse.cz>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 10 Sep 2019 07:42:43 -0700
Message-ID: <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
To: Michal Hocko <mhocko@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_074259_146573_23BBFE3A 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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

On Tue, Sep 10, 2019 at 5:42 AM Michal Hocko <mhocko@kernel.org> wrote:
>
> I wanted to review "mm: Introduce Reported pages" just realize that I
> have no clue on what is going on so returned to the cover and it didn't
> really help much. I am completely unfamiliar with virtio so please bear
> with me.
>
> On Sat 07-09-19 10:25:03, Alexander Duyck wrote:
> [...]
> > This series provides an asynchronous means of reporting to a hypervisor
> > that a guest page is no longer in use and can have the data associated
> > with it dropped. To do this I have implemented functionality that allows
> > for what I am referring to as unused page reporting
> >
> > The functionality for this is fairly simple. When enabled it will allocate
> > statistics to track the number of reported pages in a given free area.
> > When the number of free pages exceeds this value plus a high water value,
> > currently 32, it will begin performing page reporting which consists of
> > pulling pages off of free list and placing them into a scatter list. The
> > scatterlist is then given to the page reporting device and it will perform
> > the required action to make the pages "reported", in the case of
> > virtio-balloon this results in the pages being madvised as MADV_DONTNEED
> > and as such they are forced out of the guest. After this they are placed
> > back on the free list,
>
> And here I am reallly lost because "forced out of the guest" makes me
> feel that those pages are no longer usable by the guest. So how come you
> can add them back to the free list. I suspect understanding this part
> will allow me to understand why we have to mark those pages and prevent
> merging.

Basically as the paragraph above mentions "forced out of the guest"
really is just the hypervisor calling MADV_DONTNEED on the page in
question. So the behavior is the same as any userspace application
that calls MADV_DONTNEED where the contents are no longer accessible
from userspace and attempting to access them will result in a fault
and the page being populated with a zero fill on-demand page, or a
copy of the file contents if the memory is file backed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
