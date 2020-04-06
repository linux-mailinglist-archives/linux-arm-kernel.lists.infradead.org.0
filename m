Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE92419F3AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 12:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2OVJhCtFchNQzscjze/7cAP5jsCgStvzyzmQQYE22c4=; b=cpYB1F+NzbcFhv
	jdH7U6AamW/LEy1rXkPo9SaiGmbfxgv+4JiA+q2k35mV2BHsBZw5r6wbpEpvQ2tYcK1Ub7wDZLyGX
	Pr6+pGBs/2tvBXfJDQEfOS09lWVjcyP+p289yigGz8RbCgb1P8Igp0u0IlW098x3B+SK6A74N6smB
	1V+9U5URcUrEElAHpO6LBA7EjMvb45KFgDmvWtbgwETDCy85G0JEqvhDxmJMFAT1PagDRB9wLZYJz
	HsQK7MeeKrIsaFtEQ0vZyUFaUpQXFhdQ+5pTwC1yO9I1Ln+P3zOzvW18qCE/lvAsFHJ8GDJssMBWL
	BMf/sp7/p+vKcjPBXUfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLP9b-0006Y9-OU; Mon, 06 Apr 2020 10:38:55 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLP9U-0006XT-0a
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 10:38:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586169523;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6tdAdwkVBY/LtuCo6wG3fjhesOaDTW7Mcx+HU4s5qq0=;
 b=I61jdB9/nuGaiDWgLWSRZYn4l9vTu4uRrt+B11QfryXYnGgkkcDFDAmajp7YdZPS3MriMF
 ULd0rverJp7UEFXwDOYp1ELGTR7uqSpInGw2T1y39ZhRWe7ET8+ij529N4uKGjigIgZ22W
 rubeyhjWxhuymfkGBG5ggetDLwdXfwg=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-91-dNGafXmZNAiad2RA8TCazw-1; Mon, 06 Apr 2020 06:38:31 -0400
X-MC-Unique: dNGafXmZNAiad2RA8TCazw-1
Received: by mail-wr1-f70.google.com with SMTP id y1so8154912wrp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 03:38:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NDa4SBpb2tLOyPiAiGqIggFyT0WnPnDw5K63bkO6ZcI=;
 b=RBoERsZ3zi1HNQ/CqbBHDchdXHECPdVJJheY9BjQj/WQkR0Dbfvr0DiK7ofd8qDrP/
 +IFuR8yQtVZxSR4Rb4VsWwGRX1DgsfTKnox1CUB41cO/o1hI+mc5cNLMKYQdX8N7BXZ8
 sv/TlVIjM4FNUfZf/xFuS3H22DRX4lmYmVoaOLjkoiI+Mj1FMQkTdkYeeVGlUxHKHkSA
 w61U0hTi8xPrqhsykMekgJjJldWpFEbS//V5oG7gEzD7648R6pWPJ2NRdeI5v8CkkzG4
 g0AQH4gTCiSyPvuzOgZtOxEyrJrOo9eGtXZZ85sSm6Umx4ZhPjLTKe59xgvgNQlVKM/y
 /gNw==
X-Gm-Message-State: AGi0PuarTdjt8282PVtv/4+TgWVcNrRoO4xoV04qAf5F8A+3vLxjvy+R
 xK4USbev/eftlSSPZjxP18iTBbMcGNebVzZ9R6lMgQsB4ZQEN3CmI/0TqbGP0kiU7Ml6t7XyzFu
 kQR104iTKKeRAygjBTlUADIqN/6iQijqJadE=
X-Received: by 2002:adf:ed86:: with SMTP id c6mr22503162wro.286.1586169510426; 
 Mon, 06 Apr 2020 03:38:30 -0700 (PDT)
X-Google-Smtp-Source: APiQypJvFgbW5dVRwaqxESF9zdOghXxAEVeHxWVCcjsq7OJQtaoYdIGuqkUsktJM/UxKzl2+fWlq/Q==
X-Received: by 2002:adf:ed86:: with SMTP id c6mr22503152wro.286.1586169510187; 
 Mon, 06 Apr 2020 03:38:30 -0700 (PDT)
Received: from redhat.com (bzq-79-176-51-222.red.bezeqint.net. [79.176.51.222])
 by smtp.gmail.com with ESMTPSA id a2sm25820621wrp.13.2020.04.06.03.38.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 03:38:29 -0700 (PDT)
Date: Mon, 6 Apr 2020 06:38:26 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [linux-next:master 12804/13809] include/linux/compiler.h:350:38:
 error: call to '__compiletime_assert_1533' declared with attribute
 error:
 BUILD_BUG_ON failed: __alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE
Message-ID: <20200406061817-mutt-send-email-mst@kernel.org>
References: <202004050718.B9NaFC2U%lkp@intel.com>
 <20200405045709-mutt-send-email-mst@kernel.org>
 <20200405123905-mutt-send-email-mst@kernel.org>
 <CAMj1kXGUru9K-z4JB6tBrgu9S4_5grPpkkSfe3ZfwB-SrGrPvg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMj1kXGUru9K-z4JB6tBrgu9S4_5grPpkkSfe3ZfwB-SrGrPvg@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_033848_148207_B885EC5B 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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

On Mon, Apr 06, 2020 at 12:00:36PM +0200, Ard Biesheuvel wrote:
> (adding some ARM GCC folks)
> 
> 
> On Sun, 5 Apr 2020 at 18:44, Michael S. Tsirkin <mst@redhat.com> wrote:
> >
> > Hello!
> > I would appreciate ARM maintainers take on the following
> > (sorry if I forgot someone, pls feel free to add people to CC):
> >
> >
> > On Sun, Apr 05, 2020 at 05:01:01AM -0400, Michael S. Tsirkin wrote:
> > > On Sun, Apr 05, 2020 at 07:57:24AM +0800, kbuild test robot wrote:
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > > head:   dff79597431045a775f2e5d4d9de31bfa0d32a34
> > > > commit: 20c384f1ea1a0bc7320bc445c72dd02d2970d594 [12804/13809] vhost: refine vhost and vringh kconfig
> > > > config: arm-randconfig-a001-20200405 (attached as .config)
> > > > compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
> > > > reproduce:
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         git checkout 20c384f1ea1a0bc7320bc445c72dd02d2970d594
> > > >         # save the attached .config to linux build tree
> > > >         GCC_VERSION=9.3.0 make.cross ARCH=arm
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > >
> > > > All error/warnings (new ones prefixed by >>):
> > > >
> > > >    In file included from include/linux/kernel.h:11,
> > > >                     from include/linux/list.h:9,
> > > >                     from include/linux/preempt.h:11,
> > > >                     from include/linux/spinlock.h:51,
> > > >                     from include/linux/seqlock.h:36,
> > > >                     from include/linux/time.h:6,
> > > >                     from include/linux/stat.h:19,
> > > >                     from include/linux/fcntl.h:5,
> > > >                     from include/linux/eventfd.h:12,
> > > >                     from drivers/vhost/vhost.c:13:
> > > >    In function 'vhost_vring_set_addr',
> > > >        inlined from 'vhost_vring_set_num_addr' at drivers/vhost/vhost.c:1581:7,
> > > >        inlined from 'vhost_vring_ioctl' at drivers/vhost/vhost.c:1614:10:
> > > > >> include/linux/compiler.h:350:38: error: call to '__compiletime_assert_1533' declared with attribute error: BUILD_BUG_ON failed: __alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE
> > > >      350 |  _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
> > > >          |                                      ^
> > > >    include/linux/compiler.h:331:4: note: in definition of macro '__compiletime_assert'
> > > >      331 |    prefix ## suffix();    \
> > > >          |    ^~~~~~
> > > >    include/linux/compiler.h:350:2: note: in expansion of macro '_compiletime_assert'
> > > >      350 |  _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
> > > >          |  ^~~~~~~~~~~~~~~~~~~
> > > >    include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
> > > >       39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
> > > >          |                                     ^~~~~~~~~~~~~~~~~~
> > > >    include/linux/build_bug.h:50:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
> > > >       50 |  BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
> > > >          |  ^~~~~~~~~~~~~~~~
> > > > >> drivers/vhost/vhost.c:1533:2: note: in expansion of macro 'BUILD_BUG_ON'
> > > >     1533 |  BUILD_BUG_ON(__alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE);
> > > >          |  ^~~~~~~~~~~~
> > >
> > > This compiler seems to be broken. We have:
> > > #define VRING_AVAIL_ALIGN_SIZE 2
> > > and
> > >
> > >         struct vring_avail __user *avail;
> > >
> > > and
> > > struct vring_avail {
> > >         __virtio16 flags;
> > >         __virtio16 idx;
> > >         __virtio16 ring[];
> > > };
> > >
> > > A compiler that decides to require alignment of > 2 bytes on
> > > a struct of packed u16's is likely broken in a bunch of other
> > > ways that just happen not to trigger a BUILD_BUG.
> > >
> > >
> > > The commit referenced just enables build on more platforms ...
> >
> > OK after some research, it seems that the issue triggers with
> > latest gcc too.
> > To trigger it, supply -mabi=apcs-gnu on command line.
> >
> > Dropping  -mabi=apcs-gnu fixes the build.
> >
> > I am still researching this flag.
> >
> 
> Is there a difference between __alignof__ *vq->avail and
> __alignof__(struct vring_avail) ?

Yes, the same.
I found this:
https://stackoverflow.com/questions/43786747/struct-layout-in-apcs-gnu-abi

Not sure how to interpret it ...
-- 
MST


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
