Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE5A19F4ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 13:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+KPkhXfBIGPig0mXPu0XLusnPrWvf9XE8M/f6Y/E/4=; b=eW3CgT1GYW9kyq
	7nBXjCgt1CWYMbqp8u6w4QYl99E3mhbQENaI0RayNUIZVGa2pd92VLUqqDOG8vIsD8driD6RltPUw
	w87K1J/WGsAF58zxdVv5KWhwFU1eznYF3AJkCb6+ImR6YXwUSGvjN/I78e+/ySkt7fdT019XTG5JU
	COqBd3H3857tQWJOVyXwJY5n71IRSeTWEd0Oz37F44pcf7oM6rShDAZ22kmAQUArRZ2936zjvFGFh
	yQacunePKh0XP85e7Qv5sGWKPj4pkJe7XIrXTCnMqvcNMcZ7xicJB9dfFOnTq/kD0B+ZujkqsfCnq
	kTZrTJpibLAvBnMKMXyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQAY-0006Sn-0u; Mon, 06 Apr 2020 11:43:58 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQAQ-0006S9-WD
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 11:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586173429;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Qo/BWZo0xcRaBSBzaUP8Vqagp8U26tvMd75p3FTzKfQ=;
 b=QW5UljDIlWtscySU2qZJ8ndWuvGPgln7mBz9MNaS8QeanrvWsBO43J80+cABy6hf6nqalz
 68TU6Io+6/fI07xs0PwINJ5dVovQtwAu5Yy8isJNBqgpqDp6ZuAZXXLY9BpT8pZ0HXFMfy
 MMo0MrrxVuLrotQT9RhbDSBflKl/Cow=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-260-859KS2IxPmueUADX4KEtKQ-1; Mon, 06 Apr 2020 07:43:47 -0400
X-MC-Unique: 859KS2IxPmueUADX4KEtKQ-1
Received: by mail-wr1-f69.google.com with SMTP id t13so3831463wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 04:43:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Zfe7iekk99MoAXhAEDCc3tmdVGaM1AONFwcfO9cULbM=;
 b=ukeP6wAb7mgQBL2j6glfMNvjgcrxmbjDqFqKCkOCEhIeRK5zlfVNJSKchwScfs/UKW
 QTKLn/chNIaQVv8ASwp9bSm0wfN56AfcXCiPXZczuve8rqOQZYyq4DZWR6pSeycQMgDr
 iAGnOcn+tqVFFJHVkyE7q37aFEKfP3g8LxFYMuRZDfReip3o0dHBRcIgFpX4cNiN3bHs
 K2VGyvEhtW6okxVVI+Vzb+PkKi/z+UPkSixbRrU3QKTFR5kvTNSwq6s3WBoiQwMNCMqc
 TEzMNUic9mCRs089JMLgibTh8HENRCpXr+ifXK69RCLL0mWd+4QnDO3prxxGoO47HSnJ
 Ox5w==
X-Gm-Message-State: AGi0Pub/VNi4wNtoQesAS/BuFfzSDIQoRN4DAhqIiZQho/4jcG+3XKj1
 2YTTp4c0+QHAITbJqS+rMIIHjg0AtdyoBUpYSrkC0TCfPYGHg0qL2zTs1ywGk5wWTfzGlsD21T8
 USFbOGT9adSVwgw92GzFmVJUNg5RhTnNu0Lg=
X-Received: by 2002:a5d:4284:: with SMTP id k4mr23100350wrq.310.1586173426458; 
 Mon, 06 Apr 2020 04:43:46 -0700 (PDT)
X-Google-Smtp-Source: APiQypL0LQAZ1hT66wlGLmPI4loY8/vkHU2fOctz+drvOuLpjS06DEveBdmHB2fqapmIO6B114iqCw==
X-Received: by 2002:a5d:4284:: with SMTP id k4mr23100328wrq.310.1586173426235; 
 Mon, 06 Apr 2020 04:43:46 -0700 (PDT)
Received: from redhat.com (bzq-79-176-51-222.red.bezeqint.net. [79.176.51.222])
 by smtp.gmail.com with ESMTPSA id a2sm26065112wrp.13.2020.04.06.04.43.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 04:43:45 -0700 (PDT)
Date: Mon, 6 Apr 2020 07:43:42 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Richard Earnshaw <Richard.Earnshaw@arm.com>
Subject: Re: [linux-next:master 12804/13809] include/linux/compiler.h:350:38:
 error: call to '__compiletime_assert_1533' declared with attribute
 error:
 BUILD_BUG_ON failed: __alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE
Message-ID: <20200406073637-mutt-send-email-mst@kernel.org>
References: <202004050718.B9NaFC2U%lkp@intel.com>
 <20200405045709-mutt-send-email-mst@kernel.org>
 <20200405123905-mutt-send-email-mst@kernel.org>
 <CAMj1kXGUru9K-z4JB6tBrgu9S4_5grPpkkSfe3ZfwB-SrGrPvg@mail.gmail.com>
 <20200406061817-mutt-send-email-mst@kernel.org>
 <CAMj1kXF5Tf0J9R0vhPgQJCnh0MM=OBJPK_AQCy-NSEBhpYbedg@mail.gmail.com>
 <c29c95aa-aeec-2333-5927-58ec764769db@arm.com>
MIME-Version: 1.0
In-Reply-To: <c29c95aa-aeec-2333-5927-58ec764769db@arm.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_044351_110324_8B879F34 
X-CRM114-Status: GOOD (  30.49  )
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
Cc: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 kbuild test robot <lkp@intel.com>,
 "christophe.lyon@st.com" <christophe.lyon@st.com>,
 Jason Wang <jasowang@redhat.com>,
 "richard.henderson@linaro.org" <richard.henderson@linaro.org>,
 "daniel.santos@pobox.com" <daniel.santos@pobox.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 11:56:24AM +0100, Richard Earnshaw wrote:
> On 06/04/2020 11:49, Ard Biesheuvel wrote:
> > On Mon, 6 Apr 2020 at 12:38, Michael S. Tsirkin <mst@redhat.com> wrote:
> >>
> >> On Mon, Apr 06, 2020 at 12:00:36PM +0200, Ard Biesheuvel wrote:
> >> > (adding some ARM GCC folks)
> >> >
> >> >
> >> > On Sun, 5 Apr 2020 at 18:44, Michael S. Tsirkin <mst@redhat.com> wro=
te:
> >> > >
> >> > > Hello!
> >> > > I would appreciate ARM maintainers take on the following
> >> > > (sorry if I forgot someone, pls feel free to add people to CC):
> >> > >
> >> > >
> >> > > On Sun, Apr 05, 2020 at 05:01:01AM -0400, Michael S. Tsirkin wrote:
> >> > > > On Sun, Apr 05, 2020 at 07:57:24AM +0800, kbuild test robot wrot=
e:
> >> > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/l=
inux-next.git master
> >> > > > > head:   dff79597431045a775f2e5d4d9de31bfa0d32a34
> >> > > > > commit: 20c384f1ea1a0bc7320bc445c72dd02d2970d594 [12804/13809]=
 vhost: refine vhost and vringh kconfig
> >> > > > > config: arm-randconfig-a001-20200405 (attached as .config)
> >> > > > > compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
> >> > > > > reproduce:
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0 wget https://raw.githubusercontent.com=
/intel/lkp-tests/master/sbin/make.cross
> > -O ~/bin/make.cross
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0 chmod +x ~/bin/make.cross
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0 git checkout 20c384f1ea1a0bc7320bc445c=
72dd02d2970d594
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0 # save the attached .config to linux b=
uild tree
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0 GCC_VERSION=3D9.3.0 make.cross ARCH=3D=
arm
> >> > > > >
> >> > > > > If you fix the issue, kindly add following tag as appropriate
> >> > > > > Reported-by: kbuild test robot <lkp@intel.com>
> >> > > > >
> >> > > > > All error/warnings (new ones prefixed by >>):
> >> > > > >
> >> > > > >=A0=A0=A0 In file included from include/linux/kernel.h:11,
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fr=
om include/linux/list.h:9,
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fr=
om include/linux/preempt.h:11,
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fr=
om include/linux/spinlock.h:51,
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fr=
om include/linux/seqlock.h:36,
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fr=
om include/linux/time.h:6,
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fr=
om include/linux/stat.h:19,
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fr=
om include/linux/fcntl.h:5,
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fr=
om include/linux/eventfd.h:12,
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fr=
om drivers/vhost/vhost.c:13:
> >> > > > >=A0=A0=A0 In function 'vhost_vring_set_addr',
> >> > > > >=A0=A0=A0=A0=A0=A0=A0 inlined from 'vhost_vring_set_num_addr' a=
t drivers/vhost/vhost.c:1581:7,
> >> > > > >=A0=A0=A0=A0=A0=A0=A0 inlined from 'vhost_vring_ioctl' at drive=
rs/vhost/vhost.c:1614:10:
> >> > > > > >> include/linux/compiler.h:350:38: error: call to '__compilet=
ime_assert_1533' declared with attribute error: BUILD_BUG_ON failed: __alig=
nof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE
> >> > > > >=A0=A0=A0=A0=A0 350 |=A0 _compiletime_assert(condition, msg, __=
compiletime_assert_, __LINE__)
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 ^
> >> > > > >=A0=A0=A0 include/linux/compiler.h:331:4: note: in definition o=
f macro '__compiletime_assert'
> >> > > > >=A0=A0=A0=A0=A0 331 |=A0=A0=A0 prefix ## suffix();    \
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0=A0 ^~~~~~
> >> > > > >=A0=A0=A0 include/linux/compiler.h:350:2: note: in expansion of=
 macro '_compiletime_assert'
> >> > > > >=A0=A0=A0=A0=A0 350 |=A0 _compiletime_assert(condition, msg, __=
compiletime_assert_, __LINE__)
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 ^~~~~~~~~~~~~~~~~~~
> >> > > > >=A0=A0=A0 include/linux/build_bug.h:39:37: note: in expansion o=
f macro 'compiletime_assert'
> >> > > > >=A0=A0=A0=A0=A0=A0 39 | #define BUILD_BUG_ON_MSG(cond, msg) com=
piletime_assert(!(cond), msg)
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 ^~~~~~~~~~~~~~~~~~
> >> > > > >=A0=A0=A0 include/linux/build_bug.h:50:2: note: in expansion of=
 macro 'BUILD_BUG_ON_MSG'
> >> > > > >=A0=A0=A0=A0=A0=A0 50 |=A0 BUILD_BUG_ON_MSG(condition, "BUILD_B=
UG_ON failed: " #condition)
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 ^~~~~~~~~~~~~~~~
> >> > > > > >> drivers/vhost/vhost.c:1533:2: note: in expansion of macro '=
BUILD_BUG_ON'
> >> > > > >=A0=A0=A0=A0 1533 |=A0 BUILD_BUG_ON(__alignof__ *vq->avail > VR=
ING_AVAIL_ALIGN_SIZE);
> >> > > > >=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 ^~~~~~~~~~~~
> >> > > >
> >> > > > This compiler seems to be broken. We have:
> >> > > > #define VRING_AVAIL_ALIGN_SIZE 2
> >> > > > and
> >> > > >
> >> > > >=A0=A0=A0=A0=A0=A0=A0=A0 struct vring_avail __user *avail;
> >> > > >
> >> > > > and
> >> > > > struct vring_avail {
> >> > > >=A0=A0=A0=A0=A0=A0=A0=A0 __virtio16 flags;
> >> > > >=A0=A0=A0=A0=A0=A0=A0=A0 __virtio16 idx;
> >> > > >=A0=A0=A0=A0=A0=A0=A0=A0 __virtio16 ring[];
> >> > > > };
> >> > > >
> >> > > > A compiler that decides to require alignment of > 2 bytes on
> >> > > > a struct of packed u16's is likely broken in a bunch of other
> >> > > > ways that just happen not to trigger a BUILD_BUG.
> >> > > >
> >> > > >
> >> > > > The commit referenced just enables build on more platforms ...
> >> > >
> >> > > OK after some research, it seems that the issue triggers with
> >> > > latest gcc too.
> >> > > To trigger it, supply -mabi=3Dapcs-gnu on command line.
> >> > >
> >> > > Dropping  -mabi=3Dapcs-gnu fixes the build.
> >> > >
> >> > > I am still researching this flag.
> >> > >
> >> >
> >> > Is there a difference between __alignof__ *vq->avail and
> >> > __alignof__(struct vring_avail) ?
> >>
> >> Yes, the same.
> >> I found this:
> >> https://stackoverflow.com/questions/43786747/struct-layout-in-apcs-gnu=
-abi
> >>
> >> Not sure how to interpret it ...
> >
> > Ah right, I missed that apcs-gnu is the ancient OABI that is been
> > deprecated for a long time.
> >
> > Given that virtio support on such ancient systems is not needed in the
> > first place, let's just add something along the lines of
> >
> > depends on !ARM || AEABI
> >
> > to the virtio Kconfig declaration, and add a comment that it has to do
> > with struct member alignment.
> =

> apcs-gnu is deprecated.  The plan is to remove it entirely in the not
> too distant future now that all platforms that previously used it have
> migrated to the aapcs.

Problem is that the default ARM build still uses that. That includes
the kbuild infrastructure.



> R.
> IMPORTANT NOTICE: The contents of this email and any attachments are conf=
idential and may also be privileged. If you are not the intended recipient,=
 please notify the sender immediately and do not disclose the contents to a=
ny other person, use it for any purpose, or store or copy the information i=
n any medium. Thank you.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
