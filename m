Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC8D19ECB2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 18:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHLcSyG5Vx/7iOpMOsm+Dc+Rr8FspzMUprMxKMMPpAA=; b=Vzqb+3InVqsQmI
	rhnbSDfeLCnH792tz9ZrvLTQFskQPjo89mfWuOqjESOPwZbvycy1HFqGJ8bXlgcgz8n8ifw59+zpm
	iLfDQ8Cqq177r73RA2saDxESKOJZFt/3w5oYqh/P6dxAjyfqcwyYgXkJXMZeMLA4f8gAFSUCEBsRT
	/FwpVFn6t7A9bf1j6f/+/ODg0YzSEJcLkTDewe6bkq2LnL2hh71uNEYmvsh26zg6PaqQS7+joAPPK
	OUGILwjBc2b893NX4nFKQ1lNpmquduEvB+BjD9V8TkRgOpYKNICe9ASnfSXnAnSrmp4d+Pgy0F50k
	LtbPJZe3uLLh4PCtFDZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL8Nf-0002py-L7; Sun, 05 Apr 2020 16:44:19 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL8NY-0002p6-CK
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 16:44:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586105049;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eTNWg9J6ya8tMNPjRYDDbm69O9tPeFhd2fWDmizJ5dM=;
 b=ZJ1WtaPjOASAmUBe7ffcWEgcc/DE/zqsB+laSz00eSc5TeVXwpYZHfkw01AGJU0HmRypUe
 yHTU3HmSHvQZkogtcWBiBKW+TidGL6MSdreGFo2O6//3ImdpSHvXKlJvTTCoNBzL6A6Gyu
 iG22ciBQOpmwyxBn7ghGyu90ddwm0iA=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-1KYk0_kmP9SLp3dA6n9Riw-1; Sun, 05 Apr 2020 12:43:57 -0400
X-MC-Unique: 1KYk0_kmP9SLp3dA6n9Riw-1
Received: by mail-wr1-f72.google.com with SMTP id c8so6661334wru.20
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 09:43:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GRVAKwNAvATKh3g4bjRR5O852nsHlNrTPvFtTnwXqj0=;
 b=LPWtmxQt2Mb6+YaeSOezuQuk0hHpD3sSDwEb5SFUN5Zg++96vAQ3lzb0lyLhAcl0DQ
 OlAey6Rn3YRtO6ibqszZAUv6B2S9ArTu8t059KGVeiulol/JUUzkjjYUBZyUqEzCzIr4
 U8TLsGZPZwGhX6dXVv8JEyxYhAT/vHEpiF/z+nb3WK4vX2hxaBJUoO9cLLAG/0rOD+FC
 H1wrpI9N4KTms3m/ZidmY4XjHtnXBOQZXaAkNsLZUHqx5HTt254WxHQGeW7+lQYkdFRU
 2fVPNz2mVwcLTN7OMbl7hkFmzfojO33HqndlvrTIMOet7OkDsHoT4czsiqXKyBV4b5Si
 NG2A==
X-Gm-Message-State: AGi0PuYFfAJWOYGfkMZNnfFBpdun7cEJilMMbeu7vMG6prTiRzQ8iwI9
 iVwC+IdzOL04O01U3NC50I6QULI4FdQToV6fgUHc090pjdEo5Jr07XgHy/CbHCStTRMC0/oW74u
 Oj/DUwMGvdr9pRPzwmvwQ9no9t5GaUUj8X+8=
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr18156343wml.120.1586105036473; 
 Sun, 05 Apr 2020 09:43:56 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ6eELwp/Qi6wJqHYuowB31xdH4yHYQSijDR2FcKl8jlogHbrvYP9AK1+BV5xdNOw7Fd2tqpQ==
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr18156330wml.120.1586105036236; 
 Sun, 05 Apr 2020 09:43:56 -0700 (PDT)
Received: from redhat.com (bzq-79-176-51-222.red.bezeqint.net. [79.176.51.222])
 by smtp.gmail.com with ESMTPSA id b187sm22561491wmc.14.2020.04.05.09.43.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 09:43:55 -0700 (PDT)
Date: Sun, 5 Apr 2020 12:43:53 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [linux-next:master 12804/13809] include/linux/compiler.h:350:38:
 error: call to '__compiletime_assert_1533' declared with attribute
 error:
 BUILD_BUG_ON failed: __alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE
Message-ID: <20200405123905-mutt-send-email-mst@kernel.org>
References: <202004050718.B9NaFC2U%lkp@intel.com>
 <20200405045709-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200405045709-mutt-send-email-mst@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_094412_509822_13797B91 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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
Cc: kbuild-all@lists.01.org, Jason Wang <jasowang@redhat.com>,
 daniel.santos@pobox.com, Russell King <rmk+kernel@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!
I would appreciate ARM maintainers take on the following
(sorry if I forgot someone, pls feel free to add people to CC):


On Sun, Apr 05, 2020 at 05:01:01AM -0400, Michael S. Tsirkin wrote:
> On Sun, Apr 05, 2020 at 07:57:24AM +0800, kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   dff79597431045a775f2e5d4d9de31bfa0d32a34
> > commit: 20c384f1ea1a0bc7320bc445c72dd02d2970d594 [12804/13809] vhost: refine vhost and vringh kconfig
> > config: arm-randconfig-a001-20200405 (attached as .config)
> > compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 20c384f1ea1a0bc7320bc445c72dd02d2970d594
> >         # save the attached .config to linux build tree
> >         GCC_VERSION=9.3.0 make.cross ARCH=arm 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All error/warnings (new ones prefixed by >>):
> > 
> >    In file included from include/linux/kernel.h:11,
> >                     from include/linux/list.h:9,
> >                     from include/linux/preempt.h:11,
> >                     from include/linux/spinlock.h:51,
> >                     from include/linux/seqlock.h:36,
> >                     from include/linux/time.h:6,
> >                     from include/linux/stat.h:19,
> >                     from include/linux/fcntl.h:5,
> >                     from include/linux/eventfd.h:12,
> >                     from drivers/vhost/vhost.c:13:
> >    In function 'vhost_vring_set_addr',
> >        inlined from 'vhost_vring_set_num_addr' at drivers/vhost/vhost.c:1581:7,
> >        inlined from 'vhost_vring_ioctl' at drivers/vhost/vhost.c:1614:10:
> > >> include/linux/compiler.h:350:38: error: call to '__compiletime_assert_1533' declared with attribute error: BUILD_BUG_ON failed: __alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE
> >      350 |  _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
> >          |                                      ^
> >    include/linux/compiler.h:331:4: note: in definition of macro '__compiletime_assert'
> >      331 |    prefix ## suffix();    \
> >          |    ^~~~~~
> >    include/linux/compiler.h:350:2: note: in expansion of macro '_compiletime_assert'
> >      350 |  _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
> >          |  ^~~~~~~~~~~~~~~~~~~
> >    include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
> >       39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
> >          |                                     ^~~~~~~~~~~~~~~~~~
> >    include/linux/build_bug.h:50:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
> >       50 |  BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
> >          |  ^~~~~~~~~~~~~~~~
> > >> drivers/vhost/vhost.c:1533:2: note: in expansion of macro 'BUILD_BUG_ON'
> >     1533 |  BUILD_BUG_ON(__alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE);
> >          |  ^~~~~~~~~~~~
> 
> This compiler seems to be broken. We have:
> #define VRING_AVAIL_ALIGN_SIZE 2
> and
> 
>         struct vring_avail __user *avail;
> 
> and
> struct vring_avail {
>         __virtio16 flags;
>         __virtio16 idx;
>         __virtio16 ring[];
> };      
> 
> A compiler that decides to require alignment of > 2 bytes on
> a struct of packed u16's is likely broken in a bunch of other
> ways that just happen not to trigger a BUILD_BUG.
> 
> 
> The commit referenced just enables build on more platforms ...

OK after some research, it seems that the issue triggers with
latest gcc too.
To trigger it, supply -mabi=apcs-gnu on command line.

Dropping  -mabi=apcs-gnu fixes the build.

I am still researching this flag.




> > vim +/__compiletime_assert_1533 +350 include/linux/compiler.h
> > 
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  336  
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  337  #define _compiletime_assert(condition, msg, prefix, suffix) \
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  338  	__compiletime_assert(condition, msg, prefix, suffix)
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  339  
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  340  /**
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  341   * compiletime_assert - break build and emit msg if condition is false
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  342   * @condition: a compile-time constant condition to check
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  343   * @msg:       a message to emit if condition is false
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  344   *
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  345   * In tradition of POSIX assert, this macro will break the build if the
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  346   * supplied condition is *false*, emitting the supplied error message if the
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  347   * compiler has support to do so.
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  348   */
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  349  #define compiletime_assert(condition, msg) \
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21 @350  	_compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
> > 9a8ab1c39970a4 Daniel Santos 2013-02-21  351  
> > 
> > :::::: The code at line 350 was first introduced by commit
> > :::::: 9a8ab1c39970a4938a72d94e6fd13be88a797590 bug.h, compiler.h: introduce compiletime_assert & BUILD_BUG_ON_MSG
> > 
> > :::::: TO: Daniel Santos <daniel.santos@pobox.com>
> > :::::: CC: Linus Torvalds <torvalds@linux-foundation.org>
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
