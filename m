Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1426E9360
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 00:15:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oq577JaUdunAz4bB2mMnXS1pIcBIsKSwN+DlHyHV45s=; b=B80hT2HJL6+6C4
	ge5glzB3DqD/EAB7KnGoyKHXQv2XGqfEljjcY4rnVrNuMC/xZYEDOnqepC6mPQAVxCYh60YHoTZZj
	7JfqQ9zWz7DDBywls6H9M7O2aV9vtVx4k1YXW3g+e6Pux/iq10LplSmVKoH4O3HZCeZDrhYHhHqQe
	fiBFDHexIeoeRrG1lWtqtmH9FdZnaSRjjqAdRA8wXf30sOPWs3bn/XLE5JLH19sEgA6ka8D2taOs+
	+YM8XLkU8II48RuBnX7alAB4vR/gVE4FVtp2sWwjOZxz+UZZcHAjaRuu1Hhy2LzaXYYSZdgClkO4y
	+qPEg7vMD3QUmgP7TskQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPahn-0005CF-67; Tue, 29 Oct 2019 23:15:15 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPahP-0005BI-QQ
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 23:14:53 +0000
Received: by mail-pf1-x442.google.com with SMTP id q26so155772pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 16:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=blzKPfJsj08pn8y5CKKrfP3hzSkBAdUw7LAfyBqzSls=;
 b=ENdVO8YLWgaO+k/gq4qWHzk5ECjs5ybbr69zT5SuWHzz2t+a4mAPh9cwF3xzv85IzY
 MS48iBFf0R1dACZ/J1siW9A0m74xC8iUHVH+HFB7srSkrtkeZsjrOuHveDkWpSmYf12d
 dGfjwnr0sQRdMAGcODKBnbJuPTu6oaOF/ZAB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=blzKPfJsj08pn8y5CKKrfP3hzSkBAdUw7LAfyBqzSls=;
 b=JpImjsaqdLRDlgwu2Vqot6LzLRJrcicxbcJh8Ea5y+dkaPqyi8sikYvy4GOvpD+LMk
 ji0rOKsjollREK7hSOjGuij5Uv3jHhWzlP2OgJlK+YX8YnSbA5/sFTWBdIqymus+ASjp
 gL6F/gK5nlySmUAndtuI1hb0uPfqu0comCx8nbuH2WWvUWM+mnvO0+9z+xJwQZQsJ0l8
 WrAZNo7TP4j2xwfRB9ZiQo/m0NPslHx5L2QQYPNQxTfljUjbgLyx1SXL1VV0ZVDB52O9
 1AnXSyArtebgJzmgQWiKPR7cS/WcksmHHVWOpNWy6e0Ywj8T46cOLQ5wlzh63hGsjr11
 ktow==
X-Gm-Message-State: APjAAAWuHRJ+v476AoKqhR9AIWgwge1qFiDWpt2dfQjqatuZcjYilfmo
 YHZOkoQQGFdBv6hypssgSm1wkA==
X-Google-Smtp-Source: APXvYqxzImCT2wVzVZ0ShVzA2oLapvp6+6gUD5kwpxcRQurPpUyzNLhB+pQKeENZgsKIcDDRJqflGQ==
X-Received: by 2002:a62:7dd2:: with SMTP id
 y201mr21539580pfc.164.1572390889377; 
 Tue, 29 Oct 2019 16:14:49 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k32sm174951pje.10.2019.10.29.16.14.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 16:14:48 -0700 (PDT)
Date: Tue, 29 Oct 2019 16:14:47 -0700
From: Kees Cook <keescook@chromium.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v3 02/12] ELF: Add ELF program property parsing support
Message-ID: <201910291611.69822D5E04@keescook>
References: <1571419545-20401-1-git-send-email-Dave.Martin@arm.com>
 <1571419545-20401-3-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571419545-20401-3-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_161451_886994_113C5648 
X-CRM114-Status: GOOD (  29.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Andrew Jones <drjones@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 06:25:35PM +0100, Dave Martin wrote:
> ELF program properties will be needed for detecting whether to
> enable optional architecture or ABI features for a new ELF process.
> 
> For now, there are no generic properties that we care about, so do
> nothing unless CONFIG_ARCH_USE_GNU_PROPERTY=y.
> 
> Otherwise, the presence of properties using the PT_PROGRAM_PROPERTY
> phdrs entry (if any), and notify each property to the arch code.
> 
> For now, the added code is not used.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  fs/binfmt_elf.c          | 127 +++++++++++++++++++++++++++++++++++++++++++++++
>  fs/compat_binfmt_elf.c   |   4 ++
>  include/linux/elf.h      |  19 +++++++
>  include/uapi/linux/elf.h |   4 ++
>  4 files changed, 154 insertions(+)
> 
> diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
> index c5642bc..ae345f6 100644
> --- a/fs/binfmt_elf.c
> +++ b/fs/binfmt_elf.c
> @@ -39,12 +39,18 @@
>  #include <linux/sched/coredump.h>
>  #include <linux/sched/task_stack.h>
>  #include <linux/sched/cputime.h>
> +#include <linux/sizes.h>
> +#include <linux/types.h>
>  #include <linux/cred.h>
>  #include <linux/dax.h>
>  #include <linux/uaccess.h>
>  #include <asm/param.h>
>  #include <asm/page.h>
>  
> +#ifndef ELF_COMPAT
> +#define ELF_COMPAT 0
> +#endif

Why is "compat" interesting for the arch_ callback? Shouldn't just the
unsigned long size be needed?

> +
>  #ifndef user_long_t
>  #define user_long_t long
>  #endif
> @@ -670,6 +676,111 @@ static unsigned long load_elf_interp(struct elfhdr *interp_elf_ex,
>   * libraries.  There is no binary dependent code anywhere else.
>   */
>  
> +static int parse_elf_property(const char *data, size_t *off, size_t datasz,
> +			      struct arch_elf_state *arch,
> +			      bool have_prev_type, u32 *prev_type)
> +{
> +	size_t o, step;
> +	const struct gnu_property *pr;
> +	int ret;
> +
> +	if (*off == datasz)
> +		return -ENOENT;
> +
> +	if (WARN_ON(*off > datasz || *off % ELF_GNU_PROPERTY_ALIGN))

I think here and all other places using WARN_ON() in the execve() path
should be using WARN_ON_ONCE() to avoid allowing a user to potentially
flood the system logs with insane binary exec attempts.

-Kees

> +		return -EIO;
> +	o = *off;
> +	datasz -= *off;
> +
> +	if (datasz < sizeof(*pr))
> +		return -EIO;
> +	pr = (const struct gnu_property *)(data + o);
> +	o += sizeof(*pr);
> +	datasz -= sizeof(*pr);
> +
> +	if (pr->pr_datasz > datasz)
> +		return -EIO;
> +
> +	WARN_ON(o % ELF_GNU_PROPERTY_ALIGN);
> +	step = round_up(pr->pr_datasz, ELF_GNU_PROPERTY_ALIGN);
> +	if (step > datasz)
> +		return -EIO;
> +
> +	/* Properties are supposed to be unique and sorted on pr_type: */
> +	if (have_prev_type && pr->pr_type <= *prev_type)
> +		return -EIO;
> +	*prev_type = pr->pr_type;
> +
> +	ret = arch_parse_elf_property(pr->pr_type, data + o,
> +				      pr->pr_datasz, ELF_COMPAT, arch);
> +	if (ret)
> +		return ret;
> +
> +	*off = o + step;
> +	return 0;
> +}
> +
> +#define NOTE_DATA_SZ SZ_1K
> +#define GNU_PROPERTY_TYPE_0_NAME "GNU"
> +#define NOTE_NAME_SZ (sizeof(GNU_PROPERTY_TYPE_0_NAME))
> +
> +static int parse_elf_properties(struct file *f, const struct elf_phdr *phdr,
> +				struct arch_elf_state *arch)
> +{
> +	union {
> +		struct elf_note nhdr;
> +		char data[NOTE_DATA_SZ];
> +	} note;
> +	loff_t pos;
> +	ssize_t n;
> +	size_t off, datasz;
> +	int ret;
> +	bool have_prev_type;
> +	u32 prev_type;
> +
> +	if (!IS_ENABLED(CONFIG_ARCH_USE_GNU_PROPERTY) || !phdr)
> +		return 0;
> +
> +	/* load_elf_binary() shouldn't call us unless this is true... */
> +	if (WARN_ON(phdr->p_type != PT_GNU_PROPERTY))
> +		return -EIO;
> +
> +	/* If the properties are crazy large, that's too bad (for now): */
> +	if (phdr->p_filesz > sizeof(note))
> +		return -ENOEXEC;
> +
> +	pos = phdr->p_offset;
> +	n = kernel_read(f, &note, phdr->p_filesz, &pos);
> +
> +	BUILD_BUG_ON(sizeof(note) < sizeof(note.nhdr) + NOTE_NAME_SZ);
> +	if (n < 0 || n < sizeof(note.nhdr) + NOTE_NAME_SZ)
> +		return -EIO;
> +
> +	if (note.nhdr.n_type != NT_GNU_PROPERTY_TYPE_0 ||
> +	    note.nhdr.n_namesz != NOTE_NAME_SZ ||
> +	    strncmp(note.data + sizeof(note.nhdr),
> +		    GNU_PROPERTY_TYPE_0_NAME, n - sizeof(note.nhdr)))
> +		return -EIO;
> +
> +	off = round_up(sizeof(note.nhdr) + NOTE_NAME_SZ,
> +		       ELF_GNU_PROPERTY_ALIGN);
> +	if (off > n)
> +		return -EIO;
> +
> +	if (note.nhdr.n_descsz > n - off)
> +		return -EIO;
> +	datasz = off + note.nhdr.n_descsz;
> +
> +	have_prev_type = false;
> +	do {
> +		ret = parse_elf_property(note.data, &off, datasz, arch,
> +					 have_prev_type, &prev_type);
> +		have_prev_type = true;
> +	} while (!ret);
> +
> +	return ret == -ENOENT ? 0 : ret;
> +}
> +
>  static int load_elf_binary(struct linux_binprm *bprm)
>  {
>  	struct file *interpreter = NULL; /* to shut gcc up */
> @@ -677,6 +788,7 @@ static int load_elf_binary(struct linux_binprm *bprm)
>  	int load_addr_set = 0;
>  	unsigned long error;
>  	struct elf_phdr *elf_ppnt, *elf_phdata, *interp_elf_phdata = NULL;
> +	struct elf_phdr *elf_property_phdata = NULL;
>  	unsigned long elf_bss, elf_brk;
>  	int bss_prot = 0;
>  	int retval, i;
> @@ -724,6 +836,11 @@ static int load_elf_binary(struct linux_binprm *bprm)
>  		char *elf_interpreter;
>  		loff_t pos;
>  
> +		if (elf_ppnt->p_type == PT_GNU_PROPERTY) {
> +			elf_property_phdata = elf_ppnt;
> +			continue;
> +		}
> +
>  		if (elf_ppnt->p_type != PT_INTERP)
>  			continue;
>  
> @@ -819,9 +936,14 @@ static int load_elf_binary(struct linux_binprm *bprm)
>  			goto out_free_dentry;
>  
>  		/* Pass PT_LOPROC..PT_HIPROC headers to arch code */
> +		elf_property_phdata = NULL;
>  		elf_ppnt = interp_elf_phdata;
>  		for (i = 0; i < loc->interp_elf_ex.e_phnum; i++, elf_ppnt++)
>  			switch (elf_ppnt->p_type) {
> +			case PT_GNU_PROPERTY:
> +				elf_property_phdata = elf_ppnt;
> +				break;
> +
>  			case PT_LOPROC ... PT_HIPROC:
>  				retval = arch_elf_pt_proc(&loc->interp_elf_ex,
>  							  elf_ppnt, interpreter,
> @@ -832,6 +954,11 @@ static int load_elf_binary(struct linux_binprm *bprm)
>  			}
>  	}
>  
> +	retval = parse_elf_properties(interpreter ?: bprm->file,
> +				      elf_property_phdata, &arch_state);
> +	if (retval)
> +		goto out_free_dentry;
> +
>  	/*
>  	 * Allow arch code to reject the ELF at this point, whilst it's
>  	 * still possible to return an error to the code that invoked
> diff --git a/fs/compat_binfmt_elf.c b/fs/compat_binfmt_elf.c
> index b7f9ffa..67896e0 100644
> --- a/fs/compat_binfmt_elf.c
> +++ b/fs/compat_binfmt_elf.c
> @@ -17,6 +17,8 @@
>  #include <linux/elfcore-compat.h>
>  #include <linux/time.h>
>  
> +#define ELF_COMPAT	1
> +
>  /*
>   * Rename the basic ELF layout types to refer to the 32-bit class of files.
>   */
> @@ -28,11 +30,13 @@
>  #undef	elf_shdr
>  #undef	elf_note
>  #undef	elf_addr_t
> +#undef	ELF_GNU_PROPERTY_ALIGN
>  #define elfhdr		elf32_hdr
>  #define elf_phdr	elf32_phdr
>  #define elf_shdr	elf32_shdr
>  #define elf_note	elf32_note
>  #define elf_addr_t	Elf32_Addr
> +#define ELF_GNU_PROPERTY_ALIGN	ELF32_GNU_PROPERTY_ALIGN
>  
>  /*
>   * Some data types as stored in coredump.
> diff --git a/include/linux/elf.h b/include/linux/elf.h
> index 459cddc..7bdc6da 100644
> --- a/include/linux/elf.h
> +++ b/include/linux/elf.h
> @@ -22,6 +22,9 @@
>  	SET_PERSONALITY(ex)
>  #endif
>  
> +#define ELF32_GNU_PROPERTY_ALIGN	4
> +#define ELF64_GNU_PROPERTY_ALIGN	8
> +
>  #if ELF_CLASS == ELFCLASS32
>  
>  extern Elf32_Dyn _DYNAMIC [];
> @@ -32,6 +35,7 @@ extern Elf32_Dyn _DYNAMIC [];
>  #define elf_addr_t	Elf32_Off
>  #define Elf_Half	Elf32_Half
>  #define Elf_Word	Elf32_Word
> +#define ELF_GNU_PROPERTY_ALIGN	ELF32_GNU_PROPERTY_ALIGN
>  
>  #else
>  
> @@ -43,6 +47,7 @@ extern Elf64_Dyn _DYNAMIC [];
>  #define elf_addr_t	Elf64_Off
>  #define Elf_Half	Elf64_Half
>  #define Elf_Word	Elf64_Word
> +#define ELF_GNU_PROPERTY_ALIGN	ELF64_GNU_PROPERTY_ALIGN
>  
>  #endif
>  
> @@ -64,4 +69,18 @@ struct gnu_property {
>  	u32 pr_datasz;
>  };
>  
> +struct arch_elf_state;
> +
> +#ifndef CONFIG_ARCH_USE_GNU_PROPERTY
> +static inline int arch_parse_elf_property(u32 type, const void *data,
> +					  size_t datasz, bool compat,
> +					  struct arch_elf_state *arch)
> +{
> +	return 0;
> +}
> +#else
> +extern int arch_parse_elf_property(u32 type, const void *data, size_t datasz,
> +				   bool compat, struct arch_elf_state *arch);
> +#endif
> +
>  #endif /* _LINUX_ELF_H */
> diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
> index c377314..20900f4 100644
> --- a/include/uapi/linux/elf.h
> +++ b/include/uapi/linux/elf.h
> @@ -368,6 +368,7 @@ typedef struct elf64_shdr {
>   * Notes used in ET_CORE. Architectures export some of the arch register sets
>   * using the corresponding note types via the PTRACE_GETREGSET and
>   * PTRACE_SETREGSET requests.
> + * The note name for all these is "LINUX".
>   */
>  #define NT_PRSTATUS	1
>  #define NT_PRFPREG	2
> @@ -430,6 +431,9 @@ typedef struct elf64_shdr {
>  #define NT_MIPS_FP_MODE	0x801		/* MIPS floating-point mode */
>  #define NT_MIPS_MSA	0x802		/* MIPS SIMD registers */
>  
> +/* Note types with note name "GNU" */
> +#define NT_GNU_PROPERTY_TYPE_0	5
> +
>  /* Note header in a PT_NOTE section */
>  typedef struct elf32_note {
>    Elf32_Word	n_namesz;	/* Name size */
> -- 
> 2.1.4
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
