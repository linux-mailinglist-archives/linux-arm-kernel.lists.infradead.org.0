Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB6E73683
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 20:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mFOicrGFb5SSpiFBQ6ye3EVnGuo818VGdw0JqcLdxU=; b=bXFAT299Mwhb1W
	yR9reZwGdoG245ng7Kitb3RbKVpPfCnbfoCIGvlufP5D4ostzOJaWlT1YnfogndOBd5KorjAas6dJ
	1yzReQUrlZ/9VOI3BW5NaOQU6qigg/0ILm416lfE6zJpyfs5eVrW8US54pSlq77nKmNn/bdWrXjAF
	be8AkoWu6ZLTgvWXbmQO4wapKNOqMm3Sp4Tl1SaJG0+AJ7/eQV3tPG7ETOSCPjOUCJ9n0DZMYnmhL
	BKWXCXYvp+nK4ElKj3v6yTFaXSaEKHIWRXM+TvOotvDk+Fyf3EycXDcmq24YC2lCxpcDQEY+pu2nU
	j0SlaSYBRgFw/nFEAKQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqLxN-0004ZE-Uz; Wed, 24 Jul 2019 18:25:42 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqLxA-0004Xw-Cq
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 18:25:30 +0000
Received: by mail-qt1-f194.google.com with SMTP id x22so41537180qtp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 11:25:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/8SpAXACt/H0ZjS+gW4ox0Hhxo1Ofk7o0k1709Jn7z0=;
 b=kBMdt7mhl6Ee0RybYGHb4nNiEH4KO3l/Y278/GL7PUUW83W5DV8eh18xHLXiNDrhGu
 o7IfKsU5lcW/OdhDIJZmy2rGhT/Vgt9Cb92r/FnHh/O7rmvSyTl07Nx1iwFkjGuYMCRo
 P+yrp+3qxsuUle2BfH3eKKiaDlrL9p4/rV8GYa5B2xxo/7J4xTw1U1iPjVR9RvjT/PKN
 9OBSKoHpHkfpINo4nr2Yb6h94nueDOVRFhUMtvCv9PX8nnekVhV1uw6aXklfxXgLVTom
 RDTdthuc6V9XyVZ2Wkt9boGl2/b2l7I8nwCuvg4RHZukkqOGrhkmTCzFdncsYKJ97lF3
 nduw==
X-Gm-Message-State: APjAAAWzqJPy96JwBjJh46jqMrKjzy+V4nQCKIahNF+PjVm8POSZkPwX
 JB9mQiV/GfqoEouEwkFCqHUzFg==
X-Google-Smtp-Source: APXvYqxChd/0aII9lYKOFDT2kMgtEOZZfG9pHDvB+TKQrkk+gyvE7N4AF8TKeYtvP4hnErvwYvbJPQ==
X-Received: by 2002:ac8:74cb:: with SMTP id j11mr54557383qtr.67.1563992725087; 
 Wed, 24 Jul 2019 11:25:25 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 z19sm22080696qkg.28.2019.07.24.11.25.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 11:25:24 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:25:15 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190724142417-mutt-send-email-mst@kernel.org>
References: <20190723010156-mutt-send-email-mst@kernel.org>
 <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
 <20190723032800-mutt-send-email-mst@kernel.org>
 <e2e01a05-63d8-4388-2bcd-b2be3c865486@redhat.com>
 <20190723062221-mutt-send-email-mst@kernel.org>
 <9baa4214-67fd-7ad2-cbad-aadf90bbfc20@redhat.com>
 <20190723110219-mutt-send-email-mst@kernel.org>
 <e0c91b89-d1e8-9831-00fe-23fe92d79fa2@redhat.com>
 <20190724040238-mutt-send-email-mst@kernel.org>
 <20190724165317.GD28493@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724165317.GD28493@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_112528_438819_EEE3D953 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mhocko@suse.com, peterz@infradead.org, Jason Wang <jasowang@redhat.com>,
 ldv@altlinux.org, james.bottomley@hansenpartnership.com, linux-mm@kvack.org,
 namit@vmware.com, mingo@kernel.org, elena.reshetova@intel.com,
 keescook@chromium.org, aarcange@redhat.com, davem@davemloft.net,
 hch@infradead.org, christian@brauner.io,
 syzbot <syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, akpm@linux-foundation.org,
 guro@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 01:53:17PM -0300, Jason Gunthorpe wrote:
> On Wed, Jul 24, 2019 at 04:05:17AM -0400, Michael S. Tsirkin wrote:
> > On Wed, Jul 24, 2019 at 10:17:14AM +0800, Jason Wang wrote:
> > > So even PTE is read speculatively before reading invalidate_count (only in
> > > the case of invalidate_count is zero). The spinlock has guaranteed that we
> > > won't read any stale PTEs.
> > 
> > I'm sorry I just do not get the argument.
> > If you want to order two reads you need an smp_rmb
> > or stronger between them executed on the same CPU.
> 
> No, that is only for unlocked algorithms.
> 
> In this case the spinlock provides all the 'or stronger' ordering
> required.
> 
> For invalidate_count going 0->1 the spin_lock ensures that any
> following PTE update during invalidation does not order before the
> spin_lock()
> 
> While holding the lock and observing 1 in invalidate_count the PTE
> values might be changing, but are ignored. C's rules about sequencing
> make this safe.
> 
> For invalidate_count going 1->0 the spin_unlock ensures that any
> preceeding PTE update during invalidation does not order after the
> spin_unlock
> 
> While holding the lock and observing 0 in invalidating_count the PTE
> values cannot be changing.
> 
> Jason

Oh right. So prefetch holds the spinlock the whole time.
Sorry about the noise.

-- 
MST

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
