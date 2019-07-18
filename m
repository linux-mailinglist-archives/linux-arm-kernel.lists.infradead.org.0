Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F406D044
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 16:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3p9W4psTSKD2VubFAo577wPBp1qtIlkfHzdFEYaoug=; b=K2p+NJFWPMgwNf
	/fozw0d4B649U1MzdSYmnnLmZsW/xbs4ZokfOUZEfIC+eLGwrVXC3gg5E0UIt+2yqGu/Xm7ESUF3I
	dY6po8KdQgDveDsWO8tjcBh0/DTvd6QIgiYXhdm3zVm2LCQCcNqq3TGAD7Z8zi81EiyaylQve58JC
	x2905fSxa/pCP9RKydKzHCM3WF+iZs7mEKUSl6QjQpNn/S/pzlQBSFEF1c2az7PPwChZp9MbC4zGB
	2TZkkAYgFmZLA7WFkrQmNxM/bCIcrClJDAnOfzVcrkNtjxc7XbmwyKSVZr5ejfafXp1r1BNOoa1K/
	ZihyVsHWy8PFxBgfKNkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho7i5-0003Vn-4n; Thu, 18 Jul 2019 14:48:41 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho7hi-0003Ur-8V
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 14:48:20 +0000
Received: by mail-lj1-x243.google.com with SMTP id x25so27667823ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 07:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qOzcTnaZtrCxVZ+wrCV9j1v3ZSJaRvDDDE3Ip4m8PX4=;
 b=BvozhdyNjQm5IKs1TT9YoWn3Ui6wySHrveALu6p1t7AtDp7QFxBLfHh88f5ww+lLJn
 uwy3k971xxqR/HSbz4pAOIhSLMVdxGZ//qhiRBmEGbP5iSimOi3DrF8NmakZGMPtS2dX
 7klk9Axk//12MJN1Z1lHBXwZgwDxdfLj6taYs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qOzcTnaZtrCxVZ+wrCV9j1v3ZSJaRvDDDE3Ip4m8PX4=;
 b=Em6GTDv7joPmdwx12MIq9jWJNgQjs3OBzNrMeBK7HM2RZkh/G3xr4WEoxCqqrEvINg
 NeHKC/RNeSDDNcigTbHLFFp6PhuvYPN/0BFcpd4mxbx4QhFuhxRaHDGIWRLPR42KrL4+
 YBJf1vn+ca82Fxi40+VmSQAl3sKHsIt9XXqNSaNZTJ44/wcjq8HYjJiHklUjziTnuiqh
 r6VOWTNeHWTd+KzMi+fdfH59TFKYm36CWQXOA9qkfsa2m/9prPNhuv4uqO09Hnk4eVKh
 iM8E1gSEhrHKr+AmAQUp5CMOf4HQwgm/Bq08WtxSw6bx0DLfOx5IglUeE0p+9EqbHf3Y
 DN+w==
X-Gm-Message-State: APjAAAUh1yCIWenIS0k/pT453BMiqe+V7E6LyPSnIi9PpzPOIO4F5O83
 UNlxDMFlRLzz190FfW2m9JU=
X-Google-Smtp-Source: APXvYqxmTPpUAHG/iv/MbFly8EXHSdBuBHGZ2qYmzwo/cj6avvxhzmR7eZRDDVHxMRGQ2XfudRkVGQ==
X-Received: by 2002:a05:651c:d1:: with SMTP id
 17mr24822389ljr.174.1563461295757; 
 Thu, 18 Jul 2019 07:48:15 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id t4sm5672901ljh.9.2019.07.18.07.48.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 07:48:15 -0700 (PDT)
Subject: Re: [PATCH v9 08/10] open: openat2(2) syscall
To: Aleksa Sarai <cyphar@cyphar.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Jeff Layton <jlayton@kernel.org>, "J. Bruce Fields" <bfields@fieldses.org>,
 Arnd Bergmann <arnd@arndb.de>, David Howells <dhowells@redhat.com>,
 Shuah Khan <shuah@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-9-cyphar@cyphar.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <845e4364-685f-343b-46fb-c418766dce3e@rasmusvillemoes.dk>
Date: Thu, 18 Jul 2019 16:48:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190706145737.5299-9-cyphar@cyphar.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_074819_258351_3AA8D24B 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, Andy Lutomirski <luto@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 Chanho Min <chanho.min@lge.com>, linux-kernel@vger.kernel.org,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/07/2019 16.57, Aleksa Sarai wrote:
> 
> --- a/fs/open.c
> +++ b/fs/open.c
> @@ -928,24 +928,32 @@ struct file *open_with_fake_path(const struct path *path, int flags,
>  }
>  EXPORT_SYMBOL(open_with_fake_path);
>  
> -static inline int build_open_flags(int flags, umode_t mode, struct open_flags *op)
> +static inline int build_open_flags(struct open_how how, struct open_flags *op)
>  {

How does passing such a huge struct by value affect code generation?
Does gcc actually inline the function (and does it even inline the old
one given that it's already non-trivial and has more than one caller).

>  	int lookup_flags = 0;
> -	int acc_mode = ACC_MODE(flags);
> +	int opath_mask = 0;
> +	int acc_mode = ACC_MODE(how.flags);
> +
> +	if (how.resolve & ~VALID_RESOLVE_FLAGS)
> +		return -EINVAL;
> +	if (!(how.flags & (O_PATH | O_CREAT | __O_TMPFILE)) && how.mode != 0)
> +		return -EINVAL;
> +	if (memchr_inv(how.reserved, 0, sizeof(how.reserved)))
> +		return -EINVAL;

How about passing how by const reference, and copy the few fields you
need to local variables. That would at least simplify this patch by
eliminating a lot of the

> -	flags &= VALID_OPEN_FLAGS;
> +	how.flags &= VALID_OPEN_FLAGS;
>  
> -	if (flags & (O_CREAT | __O_TMPFILE))
> -		op->mode = (mode & S_IALLUGO) | S_IFREG;
> +	if (how.flags & (O_CREAT | __O_TMPFILE))
> +		op->mode = (how.mode & S_IALLUGO) | S_IFREG;

churn.

>  
> diff --git a/include/linux/fcntl.h b/include/linux/fcntl.h
> index 2868ae6c8fc1..e59917292213 100644
> --- a/include/linux/fcntl.h
> +++ b/include/linux/fcntl.h
> @@ -4,13 +4,26 @@
>  
>  #include <uapi/linux/fcntl.h>
>  
> -/* list of all valid flags for the open/openat flags argument: */
> +/* Should open_how.mode be set for older syscalls wrappers? */
> +#define OPENHOW_MODE(flags, mode) \
> +	(((flags) | (O_CREAT | __O_TMPFILE)) ? (mode) : 0)
> +

Typo: (((flags) & (O_CREAT | __O_TMPFILE)) ? (mode) : 0)

> +/**
> + * Arguments for how openat2(2) should open the target path. If @extra is zero,
> + * then openat2(2) is identical to openat(2).
> + *
> + * @flags: O_* flags (unknown flags ignored).
> + * @mode: O_CREAT file mode (ignored otherwise).

should probably say "O_CREAT/O_TMPFILE file mode".

> + * @upgrade_mask: restrict how the O_PATH may be re-opened (ignored otherwise).
> + * @resolve: RESOLVE_* flags (-EINVAL on unknown flags).
> + * @reserved: reserved for future extensions, must be zeroed.
> + */
> +struct open_how {
> +	__u32 flags;
> +	union {
> +		__u16 mode;
> +		__u16 upgrade_mask;
> +	};
> +	__u16 resolve;

So mode and upgrade_mask are naturally u16 aka mode_t. And yes, they
probably never need to be used together, so the union works. That then
makes the next member 2-byte aligned, so using a u16 for the resolve
flags brings us to an 8-byte boundary, and 11 unused flag bits should be
enough for a while. But it seems a bit artificial to cram all this
together and then add 56 bytes of reserved space.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
