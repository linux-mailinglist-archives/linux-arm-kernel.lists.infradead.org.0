Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCDDCBB9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MkIFM6DDHViSU5RAiRK7hUabqGbf6n3Fyh5XhmXWuOs=; b=qVV8AJ+1k/I1EF
	jJbs23sMtcTOZGwfXAHC4TT7X4lQSuv9oGzkPua/dKDfqtAQiycNSEsYySUnwJFJDYHdG8/lLiPkI
	SW2InJnzmo1mtL+HleHYTge5GMxrNazqYUWF6dw1qp6V5L2TzUPE4XM97zSw2B6jr2X4eT27fvtHv
	Plcd0xG1YSKsWkXqv4kEa/vfMPXHhwnMh2as10bcXXsW3Et98Rpy2/ZiTq3eIvcW+EJn8aGDzkbRI
	aRVSLzkx4jlfBjIMQqRgJLP/0CvDI+kqHEN28JsNmYBqgH7vxEPj/pNQ5oG3NdEBNuC4mBoXNt45V
	YqH/GTVt6vsWQoiCmNAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNYa-0001sq-4o; Fri, 04 Oct 2019 13:23:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNYR-0001sQ-NU
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:23:33 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1iGNWS-0001sz-5V; Fri, 04 Oct 2019 15:21:28 +0200
Message-ID: <bc05540f2aa46cff5d6239faab83446401ba7b5f.camel@pengutronix.de>
Subject: Re: [PATCH v2 00/21] Refine memblock API
From: Lucas Stach <l.stach@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Mike Rapoport
 <rppt@linux.ibm.com>
Date: Fri, 04 Oct 2019 15:21:03 +0200
In-Reply-To: <20191004092727.GX25745@shell.armlinux.org.uk>
References: <20190926160433.GD32311@linux.ibm.com>
 <CAHCN7xL1sFXDhKUpj04d3eDZNgLA1yGAOqwEeCxedy1Qm-JOfQ@mail.gmail.com>
 <20190928073331.GA5269@linux.ibm.com>
 <CAHCN7xJEvS2Si=M+BYtz+kY0M4NxmqDjiX9Nwq6_3GGBh3yg=w@mail.gmail.com>
 <CAHCN7xKLhWw4P9-sZKXQcfSfh2r3J_+rLxuxACW0UVgimCzyVw@mail.gmail.com>
 <20191002073605.GA30433@linux.ibm.com>
 <CAHCN7xL1MkJh44N3W_1+08DHmX__SqnfH6dqUzYzr2Wpg0kQyQ@mail.gmail.com>
 <20191003053451.GA23397@linux.ibm.com>
 <20191003084914.GV25745@shell.armlinux.org.uk>
 <20191003113010.GC23397@linux.ibm.com>
 <20191004092727.GX25745@shell.armlinux.org.uk>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_062331_764413_DE728796 
X-CRM114-Status: GOOD (  27.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Adam Ford <aford173@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 The etnaviv authors <etnaviv@lists.freedesktop.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Fabio Estevam <festevam@gmail.com>,
 Christoph Hellwig <hch@lst.de>, arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, den 04.10.2019, 10:27 +0100 schrieb Russell King - ARM
Linux admin:
> On Thu, Oct 03, 2019 at 02:30:10PM +0300, Mike Rapoport wrote:
> > On Thu, Oct 03, 2019 at 09:49:14AM +0100, Russell King - ARM Linux
> > admin wrote:
> > > On Thu, Oct 03, 2019 at 08:34:52AM +0300, Mike Rapoport wrote:
> > > > (trimmed the CC)
> > > > 
> > > > On Wed, Oct 02, 2019 at 06:14:11AM -0500, Adam Ford wrote:
> > > > > On Wed, Oct 2, 2019 at 2:36 AM Mike Rapoport <
> > > > > rppt@linux.ibm.com> wrote:
> > > > > 
> > > > > Before the patch:
> > > > > 
> > > > > # cat /sys/kernel/debug/memblock/memory
> > > > >    0: 0x10000000..0x8fffffff
> > > > > # cat /sys/kernel/debug/memblock/reserved
> > > > >    0: 0x10004000..0x10007fff
> > > > >   34: 0x2fffff88..0x3fffffff
> > > > > 
> > > > > 
> > > > > After the patch:
> > > > > # cat /sys/kernel/debug/memblock/memory
> > > > >    0: 0x10000000..0x8fffffff
> > > > > # cat /sys/kernel/debug/memblock/reserved
> > > > >    0: 0x10004000..0x10007fff
> > > > >   36: 0x80000000..0x8fffffff
> > > > 
> > > > I'm still not convinced that the memblock refactoring didn't
> > > > uncovered an
> > > > issue in etnaviv driver.
> > > > 
> > > > Why moving the CMA area from 0x80000000 to 0x30000000 makes it
> > > > fail?
> > > 
> > > I think you have that the wrong way round.
> > 
> > I'm relying on Adam's reports of working and non-working versions.
> > According to that etnaviv works when CMA area is at 0x80000000 and
> > does not
> > work when it is at 0x30000000.
> > 
> > He also sent logs a few days ago [1], they also confirm that.
> > 
> > [1] 
> > https://lore.kernel.org/linux-mm/CAHCN7xJEvS2Si=M+BYtz+kY0M4NxmqDjiX9Nwq6_3GGBh3yg=w@mail.gmail.com/
> 
> Sorry, yes, you're right.  Still, I've reported this same regression
> a while back, and it's never gone away.
> 
> > > > BTW, the code that complained about "command buffer outside
> > > > valid memory
> > > > window" has been removed by the commit 17e4660ae3d7
> > > > ("drm/etnaviv:
> > > > implement per-process address spaces on MMUv2"). 
> > > > 
> > > > Could be that recent changes to MMU management of etnaviv
> > > > resolve the
> > > > issue?
> > > 
> > > The iMX6 does not have MMUv2 hardware, it has MMUv1.  With MMUv1
> > > hardware requires command buffers within the first 2GiB of
> > > physical
> > > RAM.
> > 
> > I've mentioned that patch because it removed the check for cmdbuf
> > address
> > for MMUv1:
> > 
> > @@ -785,15 +768,7 @@ int etnaviv_gpu_init(struct etnaviv_gpu *gpu)
> >                                   PAGE_SIZE);
> >         if (ret) {
> >                 dev_err(gpu->dev, "could not create command
> > buffer\n");
> > -               goto unmap_suballoc;
> > -       }
> > -
> > -       if (!(gpu->identity.minor_features1 &
> > chipMinorFeatures1_MMU_VERSION) &&
> > -           etnaviv_cmdbuf_get_va(&gpu->buffer, &gpu-
> > >cmdbuf_mapping) > 0x80000000) {
> > -               ret = -EINVAL;
> > -               dev_err(gpu->dev,
> > -                       "command buffer outside valid memory
> > window\n");
> > -               goto free_buffer;
> > +               goto fail;
> >         }
> >  
> >         /* Setup event management */
> > 
> > 
> > I really don't know how etnaviv works, so I hoped that people who
> > understand it would help.
> 
> From what I can see, removing that check is a completely insane thing
> to do, and I note that these changes are _not_ described in the
> commit
> message.  The problem was known about _before_ (June 22) the patch
> was
> created (July 5).
> 
> Lucas, please can you explain why removing the above check, which is
> well known to correctly trigger on various platforms to prevent
> incorrect GPU behaviour, is safe?

It isn't. It's a pretty big oversight in this commit to remove this
check. It can't be done at the same spot in the code anymore, as we
don't have a mapping context at this time anymore, but it should have
moved into etnaviv_iommu_context_init(). I'll send a patch to fix this
up.

Regards,
Lucas


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
