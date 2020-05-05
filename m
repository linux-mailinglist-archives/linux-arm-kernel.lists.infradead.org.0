Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6B21C5526
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 14:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErWVdk78EhbyMVXzvOqGXes3dCMlzAMiJmz1H12DDZg=; b=dWjrVzvtv+sIcZ
	U+IQuHdUFzMiTgD7pJxt1ipnk/rB2Iwa/gYs+2vMciXukq1DGNgr8mnJbWCmzkan2H8N9RSiujYI8
	mZPBIMrgTCuKd8f3L244t+ggNlBYyoqLPSyaqWXdvPgG/vYq1O5xiB4NswhQPfri9XOjEQss6cABB
	aCVIZp6XMV0a8JycKntmvg7xiomlE42x10miEmMQ4TN6o0KrSlYknISav1fvQvdLQbOKkGd1MPEJg
	vItUeKWwZxKiWtGh6hduLd9B4eQGDt04fNgP7Yu0+R7dJITsmRLKn9sBOtiguvCSV8H7BxkcjxkZX
	HuNe0uHr5uwjWQNDzZbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVwR1-000537-12; Tue, 05 May 2020 12:12:27 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVwQt-000523-P5
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 12:12:21 +0000
Received: by mail-lj1-x242.google.com with SMTP id h4so1326748ljg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 05:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HMlQVlmeGXEReM1yut17rciX4AB+fLsrubK71t43Crw=;
 b=by3szt0lWsRCqGRiMrxe/DgyNqYcEB22A1vW7AGwPkpIAuTE8oTuowy/tHPlyU+7Hr
 zYnWeZRfy5tq+4ogzarERxS6xYJVm19GSgbX8tCVHhxBJ+SXzTKDp6UOEj+g8ZYD6maI
 5zC94pX1b6XXgSs+iK/KYtRP0lrbaJNqa+b17nx/Jh2t8Bj2w4nwY0gznMIe3O85N/5L
 ZWkvbqczD9hQBD0yFVF+8CZnAG0B3c4Ufu9iJA61VnJGsVPAdILBJOy7VoA9Bza4pCOC
 k8EAwrX3zVhivffKg6X3aIVE2IrZjmKTacUz1hFTq5dnfV/aj9L1vZXyRf0GMC//S2I2
 VqYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HMlQVlmeGXEReM1yut17rciX4AB+fLsrubK71t43Crw=;
 b=st8FrczNzLjInG27xlA7dnKSXS88SztJFEGGv0rs6QyJdqO5q675lyBDiOwz1+1xK/
 RuNT666hm4NkffP1/awDMb6C9f3PKEG6XbNYc7ov1QRqqxPybZMNxjzoUd+nZiiOFuAh
 hjR3TYfbj5tKe3+pBHPP/PfPyWE/jYGQUx7ArCP8G5sT/e4G04Jd1+3mMLUdhRnrPVWL
 1j6HXgq7CZpUBrDDRQD8vzBYoqj7MmM34Eg624i4hIyiAkKeBx9QKivk/eWLbr7TfeTS
 tXEowmN9DW3VRu8r98h2e6Pswjp+Bx5DWn74kaYtQJ+elbYIIWV1FwkcA9HcY7wZZlAq
 qXOQ==
X-Gm-Message-State: AGi0PuYQQseV6GN1H4HNpkuhnmFxplnqebOrED7DZt+PtLTbiE3p05em
 L+qSZwoU7MWoxsH46/nI0oMRKeGmoeRfYv2A8QrDsg==
X-Google-Smtp-Source: APiQypLhmclSpArV92q+mWNGffd3SX7sCUvNNXrXo90M3AxZAquw+B5r6LXmh3LnQqWsMYsSt2nT6Jp1IGBXxoz1qPY=
X-Received: by 2002:a2e:b249:: with SMTP id n9mr1688630ljm.221.1588680737938; 
 Tue, 05 May 2020 05:12:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200429214954.44866-1-jannh@google.com>
 <20200429214954.44866-5-jannh@google.com>
 <20200505110358.GC17400@lst.de>
In-Reply-To: <20200505110358.GC17400@lst.de>
From: Jann Horn <jannh@google.com>
Date: Tue, 5 May 2020 14:11:51 +0200
Message-ID: <CAG48ez0QFYGXfp3x2T2_8sxsidJs5oQA3muaeJ61=EMEwdRnYQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] binfmt_elf,
 binfmt_elf_fdpic: Use a VMA list snapshot
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_051219_816735_85F49998 
X-CRM114-Status: GOOD (  34.86  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Linux-MM <linux-mm@kvack.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Mark Salter <msalter@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 1:04 PM Christoph Hellwig <hch@lst.de> wrote:
> On Wed, Apr 29, 2020 at 11:49:53PM +0200, Jann Horn wrote:
> > In both binfmt_elf and binfmt_elf_fdpic, use a new helper
> > dump_vma_snapshot() to take a snapshot of the VMA list (including the gate
> > VMA, if we have one) while protected by the mmap_sem, and then use that
> > snapshot instead of walking the VMA list without locking.
[...]
> > diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
> > index fb36469848323..dffe9dc8497ca 100644
> > --- a/fs/binfmt_elf.c
> > +++ b/fs/binfmt_elf.c
> > @@ -1292,8 +1292,12 @@ static bool always_dump_vma(struct vm_area_struct *vma)
> >       return false;
> >  }
> >
> > +#define DUMP_SIZE_MAYBE_ELFHDR_PLACEHOLDER 1
> > +
> >  /*
> >   * Decide what to dump of a segment, part, all or none.
> > + * The result must be fixed up via vma_dump_size_fixup() once we're in a context
> > + * that's allowed to sleep arbitrarily long.
> >   */
> >  static unsigned long vma_dump_size(struct vm_area_struct *vma,
> >                                  unsigned long mm_flags)
> > @@ -1348,30 +1352,15 @@ static unsigned long vma_dump_size(struct vm_area_struct *vma,
> >
> >       /*
> >        * If this looks like the beginning of a DSO or executable mapping,
> > -      * check for an ELF header.  If we find one, dump the first page to
> > -      * aid in determining what was mapped here.
> > +      * we'll check for an ELF header. If we find one, we'll dump the first
> > +      * page to aid in determining what was mapped here.
> > +      * However, we shouldn't sleep on userspace reads while holding the
> > +      * mmap_sem, so we just return a placeholder for now that will be fixed
> > +      * up later in vma_dump_size_fixup().
> >        */
> >       if (FILTER(ELF_HEADERS) &&
> > -         vma->vm_pgoff == 0 && (vma->vm_flags & VM_READ)) {
> > -             u32 __user *header = (u32 __user *) vma->vm_start;
> > -             u32 word;
> > -             /*
> > -              * Doing it this way gets the constant folded by GCC.
> > -              */
> > -             union {
> > -                     u32 cmp;
> > -                     char elfmag[SELFMAG];
> > -             } magic;
> > -             BUILD_BUG_ON(SELFMAG != sizeof word);
> > -             magic.elfmag[EI_MAG0] = ELFMAG0;
> > -             magic.elfmag[EI_MAG1] = ELFMAG1;
> > -             magic.elfmag[EI_MAG2] = ELFMAG2;
> > -             magic.elfmag[EI_MAG3] = ELFMAG3;
> > -             if (unlikely(get_user(word, header)))
> > -                     word = 0;
> > -             if (word == magic.cmp)
> > -                     return PAGE_SIZE;
> > -     }
> > +         vma->vm_pgoff == 0 && (vma->vm_flags & VM_READ))
> > +             return DUMP_SIZE_MAYBE_ELFHDR_PLACEHOLDER;
> >
> >  #undef       FILTER
> >
> > @@ -1381,6 +1370,22 @@ static unsigned long vma_dump_size(struct vm_area_struct *vma,
> >       return vma->vm_end - vma->vm_start;
> >  }
> >
> > +/* Fix up the result from vma_dump_size(), now that we're allowed to sleep. */
> > +static void vma_dump_size_fixup(struct core_vma_metadata *meta)
> > +{
> > +     char elfmag[SELFMAG];
> > +
> > +     if (meta->dump_size != DUMP_SIZE_MAYBE_ELFHDR_PLACEHOLDER)
> > +             return;
> > +
> > +     if (copy_from_user(elfmag, (void __user *)meta->start, SELFMAG)) {
> > +             meta->dump_size = 0;
> > +             return;
> > +     }
> > +     meta->dump_size =
> > +             (memcmp(elfmag, ELFMAG, SELFMAG) == 0) ? PAGE_SIZE : 0;
> > +}
>
> While this code looks entirely correct, it took me way too long to
> follow.  I'd take te DUMP_SIZE_MAYBE_ELFHDR_PLACEHOLDER into the caller,
> and then have a simple function like this:
>
> static void vma_dump_size_fixup(struct core_vma_metadata *meta)
> {
>         char elfmag[SELFMAG];
>
>         if (copy_from_user(elfmag, (void __user *)meta->start, SELFMAG) ||
>             memcmp(elfmag, ELFMAG, sizeof(elfmag)) != 0)
>                 meta->dump_size = 0;
>         else
>                 meta->dump_size = PAGE_SIZE;
> }

I guess I can make that change, even if I personally think it's less
clear if parts of the fixup logic spill over into the caller instead
of being handled locally here. :P

> Also a few comments explaining why we do this fixup would help readers
> of the code.
>
> > -             if (vma->vm_flags & VM_WRITE)
> > -                     phdr.p_flags |= PF_W;
> > -             if (vma->vm_flags & VM_EXEC)
> > -                     phdr.p_flags |= PF_X;
> > +             phdr.p_flags = meta->flags & VM_READ ? PF_R : 0;
> > +             phdr.p_flags |= meta->flags & VM_WRITE ? PF_W : 0;
> > +             phdr.p_flags |= meta->flags & VM_EXEC ? PF_X : 0;
>
> Sorry for another nitpick, but I find the spelled out version with the
> if a lot easier to read.

Huh... I find it easier to scan if it is three lines with the same
pattern, but I'm not too attached to it.

In that case, I guess I should change it like this? The old code had a
ternary for VM_READ and branches for the other two, which didn't seem
very pretty to me.

phdr.p_flags = 0;
if (meta->flags & VM_READ)
        phdr.p_flags |= PF_R;
if (meta->flags & VM_WRITE)
        phdr.p_flags |= PF_W;
if (meta->flags & VM_EXEC)
        phdr.p_flags |= PF_X;

> > +int dump_vma_snapshot(struct coredump_params *cprm, int *vma_count,
> > +     struct core_vma_metadata **vma_meta,
> > +     unsigned long (*dump_size_cb)(struct vm_area_struct *, unsigned long))
>
> Plase don't use single tabs for indentating parameter continuations
> (we actually have two styles - either two tabs or aligned after the
> opening brace, pick your poison :))

I did that because if I use either one of those styles, I'll have to
either move the callback type into a typedef or add line breaks in the
parameters of the callback type. I guess I can write it like this...

int dump_vma_snapshot(struct coredump_params *cprm, int *vma_count,
                      struct core_vma_metadata **vma_meta,
                      unsigned long (*dump_size_cb)(struct vm_area_struct *,
                                                    unsigned long));

but if you also dislike that, let me know and I'll add a typedef instead. :P

> > +     *vma_meta = kvmalloc_array(*vma_count, sizeof(**vma_meta), GFP_KERNEL);
> > +     if (!*vma_meta) {
> > +             up_read(&mm->mmap_sem);
> > +             return -ENOMEM;
> > +     }
> > +
> > +     for (i = 0, vma = first_vma(current, gate_vma); vma != NULL;
> > +                     vma = next_vma(vma, gate_vma)) {
> > +             (*vma_meta)[i++] = (struct core_vma_metadata) {
> > +                     .start = vma->vm_start,
> > +                     .end = vma->vm_end,
> > +                     .flags = vma->vm_flags,
> > +                     .dump_size = dump_size_cb(vma, cprm->mm_flags)
> > +             };
>
> This looks a little weird.  Why not kcalloc + just initialize the four
> fields we actually fill out here?

Yeah, I can just change the syntax here to normal member writes if you
want. I just thought C99-style initialization looked nicer, but I
guess that's unusual in the kernel...

(And I just noticed that that "filesize" member of that struct
core_vma_metadata I'm defining is entirely unused... I'll have to
remove that in the next iteration.)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
