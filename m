Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C590919F3D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 12:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5ShAuASZ55BcF5s2MS5FzQO5TpuTGdg3DouRGGErkk=; b=g4rAcb9UVBn3dJ
	zBZlKfVtOPic4MXXFLz9OYMO3327r0y8RzLmklVIOp3cHcV1i/fn9s1hGE7T76PdYXYev8iay050Q
	25tDmlbPYA+uT98Q4cX4WPLSaMfSz+VqiaYdRVMwJdv8UIfhaCtT+8ZBsiQdRLI1ghS3sxtDGGxNA
	sGd0PBYAS67NA5Y1NgwR52wiUtuOVycB+kZGti0niToODXOTC58FSaOzO8S/rmpZhz7nHQ2Zc1fbW
	CIbP1Spqgfj0rVQ8ymP4TbLgCIygYkKTdCprIq1vqsu2i3FeSX3Kifukg9ZjoV20KXiMgsr0Bs1e+
	Q3hNF4LK/VuGS9+VBC4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLPKb-0006kI-7I; Mon, 06 Apr 2020 10:50:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLPKS-0005vh-7l
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 10:50:10 +0000
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
 [209.85.166.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD63320781
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 Apr 2020 10:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586170207;
 bh=rctahJzuh5tLqqFGJdKaaSjh+D5yszpsiCbItgxEEu4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NgS9JIAooPzD+r3P/UoVM65g98b6DBXSbU1rmBbd2iVKH5SCSXk99eTRfEfn7Ao7z
 pKPjWz7bVRrI5CuPvjEQztsE3tzCs0vA7NT3sqq/n9OrtTAv9zNB4p+Bn6ul/rHh2i
 lytFUweUA7yR2qRyZfI5K/mgOPrhCtd8jtPMBXAU=
Received: by mail-io1-f46.google.com with SMTP id h6so5387704iok.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 03:50:07 -0700 (PDT)
X-Gm-Message-State: AGi0PuaOvzNWzGHHgGKlo61gb9cvb1tMCbpvZ32cY2kul5lo8FH3TCLI
 WHLapxf3IG/6Tm1haQVoBS0BSuRqEOqkhTUSj7M=
X-Google-Smtp-Source: APiQypKQ0DXf6OTbbEDbWvqDr0O4fp71DBiORc2yfkqvaCwlF2Xt2D/XYKazOJuUaxas7TbROf8g1npwDi8PWxXWoTQ=
X-Received: by 2002:a05:6638:a22:: with SMTP id
 2mr20500991jao.74.1586170207091; 
 Mon, 06 Apr 2020 03:50:07 -0700 (PDT)
MIME-Version: 1.0
References: <202004050718.B9NaFC2U%lkp@intel.com>
 <20200405045709-mutt-send-email-mst@kernel.org>
 <20200405123905-mutt-send-email-mst@kernel.org>
 <CAMj1kXGUru9K-z4JB6tBrgu9S4_5grPpkkSfe3ZfwB-SrGrPvg@mail.gmail.com>
 <20200406061817-mutt-send-email-mst@kernel.org>
In-Reply-To: <20200406061817-mutt-send-email-mst@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 6 Apr 2020 12:49:55 +0200
X-Gmail-Original-Message-ID: <CAMj1kXF5Tf0J9R0vhPgQJCnh0MM=OBJPK_AQCy-NSEBhpYbedg@mail.gmail.com>
Message-ID: <CAMj1kXF5Tf0J9R0vhPgQJCnh0MM=OBJPK_AQCy-NSEBhpYbedg@mail.gmail.com>
Subject: Re: [linux-next:master 12804/13809] include/linux/compiler.h:350:38:
 error: call to '__compiletime_assert_1533' declared with attribute
 error:
 BUILD_BUG_ON failed: __alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE
To: "Michael S. Tsirkin" <mst@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_035008_336007_B8B183F5 
X-CRM114-Status: GOOD (  26.13  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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

On Mon, 6 Apr 2020 at 12:38, Michael S. Tsirkin <mst@redhat.com> wrote:
>
> On Mon, Apr 06, 2020 at 12:00:36PM +0200, Ard Biesheuvel wrote:
> > (adding some ARM GCC folks)
> >
> >
> > On Sun, 5 Apr 2020 at 18:44, Michael S. Tsirkin <mst@redhat.com> wrote:
> > >
> > > Hello!
> > > I would appreciate ARM maintainers take on the following
> > > (sorry if I forgot someone, pls feel free to add people to CC):
> > >
> > >
> > > On Sun, Apr 05, 2020 at 05:01:01AM -0400, Michael S. Tsirkin wrote:
> > > > On Sun, Apr 05, 2020 at 07:57:24AM +0800, kbuild test robot wrote:
> > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > > > head:   dff79597431045a775f2e5d4d9de31bfa0d32a34
> > > > > commit: 20c384f1ea1a0bc7320bc445c72dd02d2970d594 [12804/13809] vhost: refine vhost and vringh kconfig
> > > > > config: arm-randconfig-a001-20200405 (attached as .config)
> > > > > compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
> > > > > reproduce:
> > > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > >         chmod +x ~/bin/make.cross
> > > > >         git checkout 20c384f1ea1a0bc7320bc445c72dd02d2970d594
> > > > >         # save the attached .config to linux build tree
> > > > >         GCC_VERSION=9.3.0 make.cross ARCH=arm
> > > > >
> > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > > >
> > > > > All error/warnings (new ones prefixed by >>):
> > > > >
> > > > >    In file included from include/linux/kernel.h:11,
> > > > >                     from include/linux/list.h:9,
> > > > >                     from include/linux/preempt.h:11,
> > > > >                     from include/linux/spinlock.h:51,
> > > > >                     from include/linux/seqlock.h:36,
> > > > >                     from include/linux/time.h:6,
> > > > >                     from include/linux/stat.h:19,
> > > > >                     from include/linux/fcntl.h:5,
> > > > >                     from include/linux/eventfd.h:12,
> > > > >                     from drivers/vhost/vhost.c:13:
> > > > >    In function 'vhost_vring_set_addr',
> > > > >        inlined from 'vhost_vring_set_num_addr' at drivers/vhost/vhost.c:1581:7,
> > > > >        inlined from 'vhost_vring_ioctl' at drivers/vhost/vhost.c:1614:10:
> > > > > >> include/linux/compiler.h:350:38: error: call to '__compiletime_assert_1533' declared with attribute error: BUILD_BUG_ON failed: __alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE
> > > > >      350 |  _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
> > > > >          |                                      ^
> > > > >    include/linux/compiler.h:331:4: note: in definition of macro '__compiletime_assert'
> > > > >      331 |    prefix ## suffix();    \
> > > > >          |    ^~~~~~
> > > > >    include/linux/compiler.h:350:2: note: in expansion of macro '_compiletime_assert'
> > > > >      350 |  _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
> > > > >          |  ^~~~~~~~~~~~~~~~~~~
> > > > >    include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
> > > > >       39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
> > > > >          |                                     ^~~~~~~~~~~~~~~~~~
> > > > >    include/linux/build_bug.h:50:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
> > > > >       50 |  BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
> > > > >          |  ^~~~~~~~~~~~~~~~
> > > > > >> drivers/vhost/vhost.c:1533:2: note: in expansion of macro 'BUILD_BUG_ON'
> > > > >     1533 |  BUILD_BUG_ON(__alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE);
> > > > >          |  ^~~~~~~~~~~~
> > > >
> > > > This compiler seems to be broken. We have:
> > > > #define VRING_AVAIL_ALIGN_SIZE 2
> > > > and
> > > >
> > > >         struct vring_avail __user *avail;
> > > >
> > > > and
> > > > struct vring_avail {
> > > >         __virtio16 flags;
> > > >         __virtio16 idx;
> > > >         __virtio16 ring[];
> > > > };
> > > >
> > > > A compiler that decides to require alignment of > 2 bytes on
> > > > a struct of packed u16's is likely broken in a bunch of other
> > > > ways that just happen not to trigger a BUILD_BUG.
> > > >
> > > >
> > > > The commit referenced just enables build on more platforms ...
> > >
> > > OK after some research, it seems that the issue triggers with
> > > latest gcc too.
> > > To trigger it, supply -mabi=apcs-gnu on command line.
> > >
> > > Dropping  -mabi=apcs-gnu fixes the build.
> > >
> > > I am still researching this flag.
> > >
> >
> > Is there a difference between __alignof__ *vq->avail and
> > __alignof__(struct vring_avail) ?
>
> Yes, the same.
> I found this:
> https://stackoverflow.com/questions/43786747/struct-layout-in-apcs-gnu-abi
>
> Not sure how to interpret it ...

Ah right, I missed that apcs-gnu is the ancient OABI that is been
deprecated for a long time.

Given that virtio support on such ancient systems is not needed in the
first place, let's just add something along the lines of

depends on !ARM || AEABI

to the virtio Kconfig declaration, and add a comment that it has to do
with struct member alignment.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
