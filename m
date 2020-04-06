Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EDC19F4B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 13:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUtZa3InK/MSDGTg7ZYhY1VBj0FX/Emy2neqMabtdnU=; b=kSDJF1H3Ja+ecE
	GOHh22YShTB79zTsREfkZYMmHzn34W1VR1oSSqS7uNQjBvRjJi0LvWHxRjsDBZOQ47FucT5jZv0b4
	lH00Q+2OZxnuM/1SQ3lfnxtDZ1PCiIs8jYd/Vx/DW2PMpvTKu9WBprMkvOrVqh/xFtf603jy2bdQ5
	LqrbYwI8z9UKeJohRt7ckpOglP7dfJotHmSW37yVWvfEGmrNuXuxUeFoCibM8jR2ZtR7fe0vVDw7B
	kGjj5He7FX949UK1MHSXmdNleTQflVTegu6uDuJTD3Utno23wOoDhvmo0Qfp8FGtzi41GeMO4CpMn
	qoqTHXHuXDjvqU+UgxnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQ3Q-000307-4y; Mon, 06 Apr 2020 11:36:36 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQ3G-0002y6-Bk
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 11:36:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586172982;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ysSj8lp9gUfOfM0PID/c5OKA0Z0Cvm+3jdODBYvdtwQ=;
 b=QLo1Pfgp9wj6uda4NI18oxUvTZX2KqfUMs48UhdWv+9afOMLp0PIqagPxBu4V4wCgxoTs0
 /8OZB1+SRfKa0ePid5e8UgDZR0kftq5cqsO0Dd0Hh/e1PS8okQ8WVw8R0R+J83fIYLag+t
 7INRaXxCDCDnQZcWeCnOHsWwHVpS3+g=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-118-JcFXb7SMNsqUeA_LzYEU5A-1; Mon, 06 Apr 2020 07:36:18 -0400
X-MC-Unique: JcFXb7SMNsqUeA_LzYEU5A-1
Received: by mail-wr1-f72.google.com with SMTP id e10so8224932wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 04:36:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zGCKrVKEnD6hfJ+kJMZgBo+JqaIaLJ/86hRjV2KHNgY=;
 b=dvBG8J2EL9lMCBNYS0wqP1HC/lZSkTfybomCRG9uzZ6hO5JH9slWgExV/95jHm5AlL
 31DIHKjGjBZycW4R+Wc6KrO9ArAnP43lv0P9nAWcmKmtY3dAzeP49ro7UlqssXyWUoT9
 5knAEPQIoujvrA26YeaSwO0Ta1gW2FM7tV+YxMr8gyk8UG1H1BDm8sLU1xF2Rqz7hqtb
 DEzemHR3fvQfPZhPHnFWzwG/PZ8rK1vXPes4LRLaXDiQk6U9t3VQGTNAs4KkkhVRFU2D
 uvQ64YHly7ptdJ/xDwj8+Nqz2tz94KKbXi3GVfLN7ybEnMmXN+ngu8n1U6ZC2LB+CWB2
 9Ucw==
X-Gm-Message-State: AGi0PuZKfUU1gca2pt7Px66Mv3uYZBbYgT/0KPuPp2xJypz0tJdHJCbm
 wrseJN8v0Gg4rN5lfX32fGwTldAJo8YCjf4o7D2ajRYEZa9C1o8FUEb87aQ/2YDOg3stWySl5Xv
 CAseL9aAu3AEamNLHch1CjvGppKf57Kghgl4=
X-Received: by 2002:a5d:42c1:: with SMTP id t1mr10985105wrr.215.1586172977577; 
 Mon, 06 Apr 2020 04:36:17 -0700 (PDT)
X-Google-Smtp-Source: APiQypKRPsa/OTQH8x7YY46Z+2Ffji7g1WjvH0s1FoBqJDCo7KCoIXRI+bs0vlf/YFKNEvrlKTr17g==
X-Received: by 2002:a5d:42c1:: with SMTP id t1mr10985072wrr.215.1586172977276; 
 Mon, 06 Apr 2020 04:36:17 -0700 (PDT)
Received: from redhat.com (bzq-79-176-51-222.red.bezeqint.net. [79.176.51.222])
 by smtp.gmail.com with ESMTPSA id b66sm4035145wmh.12.2020.04.06.04.36.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 04:36:16 -0700 (PDT)
Date: Mon, 6 Apr 2020 07:36:13 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [linux-next:master 12804/13809] include/linux/compiler.h:350:38:
 error: call to '__compiletime_assert_1533' declared with attribute
 error:
 BUILD_BUG_ON failed: __alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE
Message-ID: <20200406073427-mutt-send-email-mst@kernel.org>
References: <202004050718.B9NaFC2U%lkp@intel.com>
 <20200405045709-mutt-send-email-mst@kernel.org>
 <20200405123905-mutt-send-email-mst@kernel.org>
 <CAMj1kXGUru9K-z4JB6tBrgu9S4_5grPpkkSfe3ZfwB-SrGrPvg@mail.gmail.com>
 <20200406061817-mutt-send-email-mst@kernel.org>
 <CAMj1kXF5Tf0J9R0vhPgQJCnh0MM=OBJPK_AQCy-NSEBhpYbedg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMj1kXF5Tf0J9R0vhPgQJCnh0MM=OBJPK_AQCy-NSEBhpYbedg@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_043626_474673_0E5DE0A7 
X-CRM114-Status: GOOD (  26.16  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: richard.earnshaw@arm.com, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>, christophe.lyon@st.com,
 Jason Wang <jasowang@redhat.com>, richard.henderson@linaro.org,
 daniel.santos@pobox.com, Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 12:49:55PM +0200, Ard Biesheuvel wrote:
> On Mon, 6 Apr 2020 at 12:38, Michael S. Tsirkin <mst@redhat.com> wrote:
> >
> > On Mon, Apr 06, 2020 at 12:00:36PM +0200, Ard Biesheuvel wrote:
> > > (adding some ARM GCC folks)
> > >
> > >
> > > On Sun, 5 Apr 2020 at 18:44, Michael S. Tsirkin <mst@redhat.com> wrote:
> > > >
> > > > Hello!
> > > > I would appreciate ARM maintainers take on the following
> > > > (sorry if I forgot someone, pls feel free to add people to CC):
> > > >
> > > >
> > > > On Sun, Apr 05, 2020 at 05:01:01AM -0400, Michael S. Tsirkin wrote:
> > > > > On Sun, Apr 05, 2020 at 07:57:24AM +0800, kbuild test robot wrote:
> > > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > > > > head:   dff79597431045a775f2e5d4d9de31bfa0d32a34
> > > > > > commit: 20c384f1ea1a0bc7320bc445c72dd02d2970d594 [12804/13809] vhost: refine vhost and vringh kconfig
> > > > > > config: arm-randconfig-a001-20200405 (attached as .config)
> > > > > > compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
> > > > > > reproduce:
> > > > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > > >         chmod +x ~/bin/make.cross
> > > > > >         git checkout 20c384f1ea1a0bc7320bc445c72dd02d2970d594
> > > > > >         # save the attached .config to linux build tree
> > > > > >         GCC_VERSION=9.3.0 make.cross ARCH=arm
> > > > > >
> > > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > > > >
> > > > > > All error/warnings (new ones prefixed by >>):
> > > > > >
> > > > > >    In file included from include/linux/kernel.h:11,
> > > > > >                     from include/linux/list.h:9,
> > > > > >                     from include/linux/preempt.h:11,
> > > > > >                     from include/linux/spinlock.h:51,
> > > > > >                     from include/linux/seqlock.h:36,
> > > > > >                     from include/linux/time.h:6,
> > > > > >                     from include/linux/stat.h:19,
> > > > > >                     from include/linux/fcntl.h:5,
> > > > > >                     from include/linux/eventfd.h:12,
> > > > > >                     from drivers/vhost/vhost.c:13:
> > > > > >    In function 'vhost_vring_set_addr',
> > > > > >        inlined from 'vhost_vring_set_num_addr' at drivers/vhost/vhost.c:1581:7,
> > > > > >        inlined from 'vhost_vring_ioctl' at drivers/vhost/vhost.c:1614:10:
> > > > > > >> include/linux/compiler.h:350:38: error: call to '__compiletime_assert_1533' declared with attribute error: BUILD_BUG_ON failed: __alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE
> > > > > >      350 |  _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
> > > > > >          |                                      ^
> > > > > >    include/linux/compiler.h:331:4: note: in definition of macro '__compiletime_assert'
> > > > > >      331 |    prefix ## suffix();    \
> > > > > >          |    ^~~~~~
> > > > > >    include/linux/compiler.h:350:2: note: in expansion of macro '_compiletime_assert'
> > > > > >      350 |  _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
> > > > > >          |  ^~~~~~~~~~~~~~~~~~~
> > > > > >    include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
> > > > > >       39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
> > > > > >          |                                     ^~~~~~~~~~~~~~~~~~
> > > > > >    include/linux/build_bug.h:50:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
> > > > > >       50 |  BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
> > > > > >          |  ^~~~~~~~~~~~~~~~
> > > > > > >> drivers/vhost/vhost.c:1533:2: note: in expansion of macro 'BUILD_BUG_ON'
> > > > > >     1533 |  BUILD_BUG_ON(__alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE);
> > > > > >          |  ^~~~~~~~~~~~
> > > > >
> > > > > This compiler seems to be broken. We have:
> > > > > #define VRING_AVAIL_ALIGN_SIZE 2
> > > > > and
> > > > >
> > > > >         struct vring_avail __user *avail;
> > > > >
> > > > > and
> > > > > struct vring_avail {
> > > > >         __virtio16 flags;
> > > > >         __virtio16 idx;
> > > > >         __virtio16 ring[];
> > > > > };
> > > > >
> > > > > A compiler that decides to require alignment of > 2 bytes on
> > > > > a struct of packed u16's is likely broken in a bunch of other
> > > > > ways that just happen not to trigger a BUILD_BUG.
> > > > >
> > > > >
> > > > > The commit referenced just enables build on more platforms ...
> > > >
> > > > OK after some research, it seems that the issue triggers with
> > > > latest gcc too.
> > > > To trigger it, supply -mabi=apcs-gnu on command line.
> > > >
> > > > Dropping  -mabi=apcs-gnu fixes the build.
> > > >
> > > > I am still researching this flag.
> > > >
> > >
> > > Is there a difference between __alignof__ *vq->avail and
> > > __alignof__(struct vring_avail) ?
> >
> > Yes, the same.
> > I found this:
> > https://stackoverflow.com/questions/43786747/struct-layout-in-apcs-gnu-abi
> >
> > Not sure how to interpret it ...
> 
> Ah right, I missed that apcs-gnu is the ancient OABI that is been
> deprecated for a long time.
> 
> Given that virtio support on such ancient systems is not needed in the
> first place, let's just add something along the lines of
> 
> depends on !ARM || AEABI
> 
> to the virtio Kconfig declaration, and add a comment that it has to do
> with struct member alignment.

The annoying thing is that the component which has this
alignment requirement is actually vhost which is selected,
so we can not add dependencies to it.

-- 
MST


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
