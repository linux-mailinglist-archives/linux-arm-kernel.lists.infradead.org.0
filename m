Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EB01C53DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLy7MJpfLtA1LxaYnNg2wb+voyTjVa+RfAzy4rDpiSo=; b=B0f64s3+dhMTLD
	OPhVJnZRUlQ5thWnD6HLdTCKzRI2t5lSwWen8WWtCh1pO/C303SeUmDdBTAFp+WIXaeIDF3ztEiVh
	mvcoNzfds76GxyCH+osiHEcrLaq3c89iIuippeypzR+xRvnn6F7rQp3unnSwSPleCakXAhQgpTTGi
	yjf0tgn1+TkMW/Bu3nU5RLslQgr3C+19Eyz1m7mx/UbMYt5EVl/pQ1sFt/rwPoMeuSh1XSSwNSxB7
	p5c2RdfsECOyMk6S9wCKYobzfLsPXpQXnQ4pVYRG7ISlhvgkJoGPj7+SudYjmAo82JJJFC3BpHl3m
	zyNr+PIhj/hlL7u2Isrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvMx-0005jw-8B; Tue, 05 May 2020 11:04:11 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvMo-0005jA-MJ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:04:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 11E5F68C4E; Tue,  5 May 2020 13:03:59 +0200 (CEST)
Date: Tue, 5 May 2020 13:03:58 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH v2 4/5] binfmt_elf, binfmt_elf_fdpic: Use a VMA list
 snapshot
Message-ID: <20200505110358.GC17400@lst.de>
References: <20200429214954.44866-1-jannh@google.com>
 <20200429214954.44866-5-jannh@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429214954.44866-5-jannh@google.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_040403_026621_18E92AB5 
X-CRM114-Status: GOOD (  28.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Oleg Nesterov <oleg@redhat.com>,
 linux-mm@kvack.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Mark Salter <msalter@redhat.com>, linux-fsdevel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 11:49:53PM +0200, Jann Horn wrote:
> In both binfmt_elf and binfmt_elf_fdpic, use a new helper
> dump_vma_snapshot() to take a snapshot of the VMA list (including the gate
> VMA, if we have one) while protected by the mmap_sem, and then use that
> snapshot instead of walking the VMA list without locking.
> 
> An alternative approach would be to keep the mmap_sem held across the
> entire core dumping operation; however, keeping the mmap_sem locked while
> we may be blocked for an unbounded amount of time (e.g. because we're
> dumping to a FUSE filesystem or so) isn't really optimal; the mmap_sem
> blocks things like the ->release handler of userfaultfd, and we don't
> really want critical system daemons to grind to a halt just because someone
> "gifted" them SCM_RIGHTS to an eternally-locked userfaultfd, or something
> like that.
> 
> Since both the normal ELF code and the FDPIC ELF code need this
> functionality (and if any other binfmt wants to add coredump support in the
> future, they'd probably need it, too), implement this with a common helper
> in fs/coredump.c.
> 
> A downside of this approach is that we now need a bigger amount of kernel
> memory per userspace VMA in the normal ELF case, and that we need O(n)
> kernel memory in the FDPIC ELF case at all; but 40 bytes per VMA shouldn't
> be terribly bad.
> 
> Signed-off-by: Jann Horn <jannh@google.com>
> ---
>  fs/binfmt_elf.c          | 152 +++++++++++++--------------------------
>  fs/binfmt_elf_fdpic.c    |  86 ++++++++++------------
>  fs/coredump.c            |  68 ++++++++++++++++++
>  include/linux/coredump.h |  10 +++
>  4 files changed, 168 insertions(+), 148 deletions(-)
> 
> diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
> index fb36469848323..dffe9dc8497ca 100644
> --- a/fs/binfmt_elf.c
> +++ b/fs/binfmt_elf.c
> @@ -1292,8 +1292,12 @@ static bool always_dump_vma(struct vm_area_struct *vma)
>  	return false;
>  }
>  
> +#define DUMP_SIZE_MAYBE_ELFHDR_PLACEHOLDER 1
> +
>  /*
>   * Decide what to dump of a segment, part, all or none.
> + * The result must be fixed up via vma_dump_size_fixup() once we're in a context
> + * that's allowed to sleep arbitrarily long.
>   */
>  static unsigned long vma_dump_size(struct vm_area_struct *vma,
>  				   unsigned long mm_flags)
> @@ -1348,30 +1352,15 @@ static unsigned long vma_dump_size(struct vm_area_struct *vma,
>  
>  	/*
>  	 * If this looks like the beginning of a DSO or executable mapping,
> -	 * check for an ELF header.  If we find one, dump the first page to
> -	 * aid in determining what was mapped here.
> +	 * we'll check for an ELF header. If we find one, we'll dump the first
> +	 * page to aid in determining what was mapped here.
> +	 * However, we shouldn't sleep on userspace reads while holding the
> +	 * mmap_sem, so we just return a placeholder for now that will be fixed
> +	 * up later in vma_dump_size_fixup().
>  	 */
>  	if (FILTER(ELF_HEADERS) &&
> -	    vma->vm_pgoff == 0 && (vma->vm_flags & VM_READ)) {
> -		u32 __user *header = (u32 __user *) vma->vm_start;
> -		u32 word;
> -		/*
> -		 * Doing it this way gets the constant folded by GCC.
> -		 */
> -		union {
> -			u32 cmp;
> -			char elfmag[SELFMAG];
> -		} magic;
> -		BUILD_BUG_ON(SELFMAG != sizeof word);
> -		magic.elfmag[EI_MAG0] = ELFMAG0;
> -		magic.elfmag[EI_MAG1] = ELFMAG1;
> -		magic.elfmag[EI_MAG2] = ELFMAG2;
> -		magic.elfmag[EI_MAG3] = ELFMAG3;
> -		if (unlikely(get_user(word, header)))
> -			word = 0;
> -		if (word == magic.cmp)
> -			return PAGE_SIZE;
> -	}
> +	    vma->vm_pgoff == 0 && (vma->vm_flags & VM_READ))
> +		return DUMP_SIZE_MAYBE_ELFHDR_PLACEHOLDER;
>  
>  #undef	FILTER
>  
> @@ -1381,6 +1370,22 @@ static unsigned long vma_dump_size(struct vm_area_struct *vma,
>  	return vma->vm_end - vma->vm_start;
>  }
>  
> +/* Fix up the result from vma_dump_size(), now that we're allowed to sleep. */
> +static void vma_dump_size_fixup(struct core_vma_metadata *meta)
> +{
> +	char elfmag[SELFMAG];
> +
> +	if (meta->dump_size != DUMP_SIZE_MAYBE_ELFHDR_PLACEHOLDER)
> +		return;
> +
> +	if (copy_from_user(elfmag, (void __user *)meta->start, SELFMAG)) {
> +		meta->dump_size = 0;
> +		return;
> +	}
> +	meta->dump_size =
> +		(memcmp(elfmag, ELFMAG, SELFMAG) == 0) ? PAGE_SIZE : 0;
> +}

While this code looks entirely correct, it took me way too long to
follow.  I'd take te DUMP_SIZE_MAYBE_ELFHDR_PLACEHOLDER into the caller,
and then have a simple function like this:

static void vma_dump_size_fixup(struct core_vma_metadata *meta)
{
	char elfmag[SELFMAG];

	if (copy_from_user(elfmag, (void __user *)meta->start, SELFMAG) ||
	    memcmp(elfmag, ELFMAG, sizeof(elfmag)) != 0)
		meta->dump_size = 0;
	else
		meta->dump_size = PAGE_SIZE;
}

Also a few comments explaining why we do this fixup would help readers
of the code.

> -		if (vma->vm_flags & VM_WRITE)
> -			phdr.p_flags |= PF_W;
> -		if (vma->vm_flags & VM_EXEC)
> -			phdr.p_flags |= PF_X;
> +		phdr.p_flags = meta->flags & VM_READ ? PF_R : 0;
> +		phdr.p_flags |= meta->flags & VM_WRITE ? PF_W : 0;
> +		phdr.p_flags |= meta->flags & VM_EXEC ? PF_X : 0;

Sorry for another nitpick, but I find the spelled out version with the
if a lot easier to read.

> +int dump_vma_snapshot(struct coredump_params *cprm, int *vma_count,
> +	struct core_vma_metadata **vma_meta,
> +	unsigned long (*dump_size_cb)(struct vm_area_struct *, unsigned long))

Plase don't use single tabs for indentating parameter continuations
(we actually have two styles - either two tabs or aligned after the
opening brace, pick your poison :))

> +	*vma_meta = kvmalloc_array(*vma_count, sizeof(**vma_meta), GFP_KERNEL);
> +	if (!*vma_meta) {
> +		up_read(&mm->mmap_sem);
> +		return -ENOMEM;
> +	}
> +
> +	for (i = 0, vma = first_vma(current, gate_vma); vma != NULL;
> +			vma = next_vma(vma, gate_vma)) {
> +		(*vma_meta)[i++] = (struct core_vma_metadata) {
> +			.start = vma->vm_start,
> +			.end = vma->vm_end,
> +			.flags = vma->vm_flags,
> +			.dump_size = dump_size_cb(vma, cprm->mm_flags)
> +		};

This looks a little weird.  Why not kcalloc + just initialize the four
fields we actually fill out here?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
