Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD446CBC70
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iulWhIIYtevkvzMJxbDG1N3HfpCI/tHAOmV04vNPktY=; b=nSPmlibaMefPMx
	tVbDsRpILCVZNskYDEF1mW17TQIkSNEnyPU/6b/mVdmqLWV+/goXIk6+p5mGdBSfw6XQNxNKajSMZ
	4suRvTamvEe+vT9LkGXpPRZVDevdFDzHNe1nKIYNWGUtzz5V7DipDe6Bdgnrg2SeI4O0Pmbpl4pIA
	ZlVsWKRJl96nGP2nRYFIWgXFndMGjmi0wVS6nqnTbHGoizQ2Tbo4Mfl8EdahcqG5ybzcvhYvZrAwX
	otxd/sBIz1GOGRSF3ZWqEe9NgsFQjtCcDHvWfZoFBvX6hLmS+t/5FKmTyYEQ4EbqXUk5y4q6IbG5n
	X7yY7MW7OsHNEIAeEXUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGO70-0008UO-R3; Fri, 04 Oct 2019 13:59:14 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGO6r-0008RN-TV
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:59:07 +0000
Received: by mail-io1-xd41.google.com with SMTP id c25so13647051iot.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 06:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tEWV9BhBdurpPqvh7FtS6h4jnWtzbMLEuK0kv71xj8c=;
 b=aJiWydjKnntivyzs2i2J3vj6LJmpwv4UabJT55mvn74jjjR/yXPzbUnTg+M1rbIM7m
 Ut//ecuCcDZiLZSr141Qhu22YtpFN/0/THkYoffjgnUxUKsQ6a2H0HKnWiddV1wlO/Ga
 eavLiC9O5RfnvzaBH367+z8FYp5XWsG1xi20xXCJaMYeDTylPW9vGJnQhYNcXjwtASjX
 jCXTK0gyKIoQpkN0j57KIMdSWJjGTr1yW67an3hYju7XMl+EGY/ADHcI/orgHGs8Llp7
 cDwIzSMGhHbYRHSU2p/n1FP2dYKFX5FaLgTa5QmHY7s8cgDlqMigbnII4hV8c3sfgSkR
 CbEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tEWV9BhBdurpPqvh7FtS6h4jnWtzbMLEuK0kv71xj8c=;
 b=qzaMyIbu60+xlk0FafzREEHyHlhWr9wGI07cb/af0hZGk7BnuUGKMfJbWY6qVObLwZ
 8D58b5ZashnsTMLa/7tF69Vzje0lxjTU7SqClEbV1bvkjmoh52uEtwpCHDFTB39LyLx0
 XG3quqGcKPBr/CVILtyEei9236XiM4Bm+PHPurYyFxqW4E0gbSb5MvRn6VLR6ZwwPFN8
 B16dGD0+mTxKcD8DgdRP4jGgivPG2jZOZX/gLIC85r45eiWa7MGseKUJmphpG0nKr3bH
 yahQK5vG4mjNNUuOpAryogK23zcz1SbAbX49n/Iy4DsmASogrF44NEFmUZpoIvvh2np7
 sKuw==
X-Gm-Message-State: APjAAAWRW6SxY+FyC1sZ3VSb2o28tZGCfs369UDj8Ms5XNJ8Ko40wDYp
 uTg3tOADCf3aglLiFgOaUKLROHTvAed+aJauaaA=
X-Google-Smtp-Source: APXvYqzxOYvd5zFEclXdsUmbY63Ktx5ijrpM0Rt5lg+zvqDaDW540phh1l5LkoN7zsDs7OSoPpDYsQMvJzKy8gQbioY=
X-Received: by 2002:a92:3314:: with SMTP id a20mr15204996ilf.276.1570197544161; 
 Fri, 04 Oct 2019 06:59:04 -0700 (PDT)
MIME-Version: 1.0
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
 <bc05540f2aa46cff5d6239faab83446401ba7b5f.camel@pengutronix.de>
In-Reply-To: <bc05540f2aa46cff5d6239faab83446401ba7b5f.camel@pengutronix.de>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 4 Oct 2019 08:58:52 -0500
Message-ID: <CAHCN7xKgoMBxzwC03obFsoXS18yYHcikNaKFU40J=hYo_yUVDw@mail.gmail.com>
Subject: Re: [PATCH v2 00/21] Refine memblock API
To: Lucas Stach <l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_065905_958089_D32FEA87 
X-CRM114-Status: GOOD (  31.75  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 The etnaviv authors <etnaviv@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Fabio Estevam <festevam@gmail.com>, Christoph Hellwig <hch@lst.de>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 8:23 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Am Freitag, den 04.10.2019, 10:27 +0100 schrieb Russell King - ARM
> Linux admin:
> > On Thu, Oct 03, 2019 at 02:30:10PM +0300, Mike Rapoport wrote:
> > > On Thu, Oct 03, 2019 at 09:49:14AM +0100, Russell King - ARM Linux
> > > admin wrote:
> > > > On Thu, Oct 03, 2019 at 08:34:52AM +0300, Mike Rapoport wrote:
> > > > > (trimmed the CC)
> > > > >
> > > > > On Wed, Oct 02, 2019 at 06:14:11AM -0500, Adam Ford wrote:
> > > > > > On Wed, Oct 2, 2019 at 2:36 AM Mike Rapoport <
> > > > > > rppt@linux.ibm.com> wrote:
> > > > > >
> > > > > > Before the patch:
> > > > > >
> > > > > > # cat /sys/kernel/debug/memblock/memory
> > > > > >    0: 0x10000000..0x8fffffff
> > > > > > # cat /sys/kernel/debug/memblock/reserved
> > > > > >    0: 0x10004000..0x10007fff
> > > > > >   34: 0x2fffff88..0x3fffffff
> > > > > >
> > > > > >
> > > > > > After the patch:
> > > > > > # cat /sys/kernel/debug/memblock/memory
> > > > > >    0: 0x10000000..0x8fffffff
> > > > > > # cat /sys/kernel/debug/memblock/reserved
> > > > > >    0: 0x10004000..0x10007fff
> > > > > >   36: 0x80000000..0x8fffffff
> > > > >
> > > > > I'm still not convinced that the memblock refactoring didn't
> > > > > uncovered an
> > > > > issue in etnaviv driver.
> > > > >
> > > > > Why moving the CMA area from 0x80000000 to 0x30000000 makes it
> > > > > fail?
> > > >
> > > > I think you have that the wrong way round.
> > >
> > > I'm relying on Adam's reports of working and non-working versions.
> > > According to that etnaviv works when CMA area is at 0x80000000 and
> > > does not
> > > work when it is at 0x30000000.
> > >
> > > He also sent logs a few days ago [1], they also confirm that.
> > >
> > > [1]
> > > https://lore.kernel.org/linux-mm/CAHCN7xJEvS2Si=M+BYtz+kY0M4NxmqDjiX9Nwq6_3GGBh3yg=w@mail.gmail.com/
> >
> > Sorry, yes, you're right.  Still, I've reported this same regression
> > a while back, and it's never gone away.
> >
> > > > > BTW, the code that complained about "command buffer outside
> > > > > valid memory
> > > > > window" has been removed by the commit 17e4660ae3d7
> > > > > ("drm/etnaviv:
> > > > > implement per-process address spaces on MMUv2").
> > > > >
> > > > > Could be that recent changes to MMU management of etnaviv
> > > > > resolve the
> > > > > issue?
> > > >
> > > > The iMX6 does not have MMUv2 hardware, it has MMUv1.  With MMUv1
> > > > hardware requires command buffers within the first 2GiB of
> > > > physical
> > > > RAM.
> > >
> > > I've mentioned that patch because it removed the check for cmdbuf
> > > address
> > > for MMUv1:
> > >
> > > @@ -785,15 +768,7 @@ int etnaviv_gpu_init(struct etnaviv_gpu *gpu)
> > >                                   PAGE_SIZE);
> > >         if (ret) {
> > >                 dev_err(gpu->dev, "could not create command
> > > buffer\n");
> > > -               goto unmap_suballoc;
> > > -       }
> > > -
> > > -       if (!(gpu->identity.minor_features1 &
> > > chipMinorFeatures1_MMU_VERSION) &&
> > > -           etnaviv_cmdbuf_get_va(&gpu->buffer, &gpu-
> > > >cmdbuf_mapping) > 0x80000000) {
> > > -               ret = -EINVAL;
> > > -               dev_err(gpu->dev,
> > > -                       "command buffer outside valid memory
> > > window\n");
> > > -               goto free_buffer;
> > > +               goto fail;
> > >         }
> > >
> > >         /* Setup event management */
> > >
> > >
> > > I really don't know how etnaviv works, so I hoped that people who
> > > understand it would help.
> >
> > From what I can see, removing that check is a completely insane thing
> > to do, and I note that these changes are _not_ described in the
> > commit
> > message.  The problem was known about _before_ (June 22) the patch
> > was
> > created (July 5).
> >
> > Lucas, please can you explain why removing the above check, which is
> > well known to correctly trigger on various platforms to prevent
> > incorrect GPU behaviour, is safe?
>
> It isn't. It's a pretty big oversight in this commit to remove this
> check. It can't be done at the same spot in the code anymore, as we
> don't have a mapping context at this time anymore, but it should have
> moved into etnaviv_iommu_context_init(). I'll send a patch to fix this
> up.

If you CC me, I will test it and report my findings.

adam

>
> Regards,
> Lucas
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
