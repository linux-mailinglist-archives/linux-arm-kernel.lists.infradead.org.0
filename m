Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0330F27FC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 16:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvjpNP1hdlj12/+zHLxVQrxpoYiGJb2KJ2TEmTPj97Y=; b=oox8N9vF1KnwZZ
	CA7dRui2qqiWKI/U+OT8kNOKERrf2UDpz5xdfLJ7bTm+4WHMv39b74kmbaYvgkzPk9yyxo//Ge3uS
	XSmQlHEjPmZ95IkFUvLhv/xi8P6SePP5XjvTdwdHVKaIqjNitF41AKDtAvurg4K1Qpd+17TZ3TvNM
	Pxwm36K1Qzg1DzprVRVaAa/njTm6L+Q0lViOhxXSymchgPeLp1PmtIVA2W51AqnzSJooVUG0eoEOv
	untJsMUtnpYZn2jz1JudYH9SeihTByp9yXm4Jxyx5L1tqdXjikpCKHeKOb+8cTWdvjyEtxVqeDt6r
	X9J3tRO6Nk6l7I6mO6cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTomK-0005ov-Pg; Thu, 23 May 2019 14:33:08 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTolw-00059m-IG
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 14:32:45 +0000
Received: by mail-ot1-x344.google.com with SMTP id 66so5636152otq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 07:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UmCv77ojMXG+c1Fp7DLXkEEMvKlYSuA0abYrccWopi8=;
 b=BCy6Okmk8ktr4nwvd4MspoIxsNlhMgBNgut3lK3gji1Mo8ZK86sDQuXYRAM0aEzKt1
 l5h9Z162b8ZZvcy3+o2m7mOM8MFYONAclzGI9eGRFt+MvF5Vk7qd2XbUpuRtY3kwxigT
 TItqAHhT39/xzIdVfEVUYP6dbydvV9umwbP2vl+FxdLXFLSb9ACpWUQrIu3LG0CJGus3
 efSiM9X4tBhY2RglIlFRNgfOwB840H3gEzgClahgzgTog6Yv+6has8aNNHrrbEHD2p91
 f4b1gS1SqBJkPyuKpLmeXF29Yw4PJv/H5cHfQKgbABzZI5vn49C4VG2ZQkov7h619lB0
 cONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UmCv77ojMXG+c1Fp7DLXkEEMvKlYSuA0abYrccWopi8=;
 b=Cw8dx8w3mnRQxhUnMSVe9PeY6hGAbw183XL2zSYVtmIcHemI/7g0b/EzozGiGqD/D2
 ra0blAHvHEgquyEGeYDiOMIM7QsQm2JyAak8vQA98CO2mbthO8kpTe9XgkBdiEc4STdA
 mnJRA5PedVgHmTxFX79TzjMa0CplQyvh5LFuUrKeJe2UDa7gvKSOSgJ4jqnDCSeMiEvt
 dJow0AlkyiPuuhuhsbVYDZE/6X5cgLj9YsDrVoymvbqyTcMd7/yjRC52G9oIHOJ7Wocb
 TRBUaskiY8nuGgAYZ4g0qjIggvqyZDIKDuUEe9kRM8bzNQrWcM1yxAqMzUwOOOw2sMUB
 kT+w==
X-Gm-Message-State: APjAAAWASpH3L547oVcteE2EtwAsnY5UXj+xlMmqtcdlioA1oGVzxF+8
 1puKdac9Lq91Iq5uP96BCbAE7nwN8vqcE6/phq6raw==
X-Google-Smtp-Source: APXvYqzFh/C6cDrkSdzIHZQLhSVRwEaU4gGSzclCCpHMgWTGugVQoxN/zVlngGYGKq3CVngNXUCDkIhtZyPn6qxtEko=
X-Received: by 2002:a9d:7f8b:: with SMTP id t11mr72319otp.110.1558621960440;
 Thu, 23 May 2019 07:32:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190522155259.11174-1-christian@brauner.io>
 <20190522165737.GC4915@redhat.com>
 <20190523115118.pmscbd6kaqy37dym@brauner.io>
In-Reply-To: <20190523115118.pmscbd6kaqy37dym@brauner.io>
From: Jann Horn <jannh@google.com>
Date: Thu, 23 May 2019 16:32:14 +0200
Message-ID: <CAG48ez0Uq2GQnQsuPkNrDdJVku_6GPeZ_5F_-5J3iy2CULr0_Q@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] open: add close_range()
To: Christian Brauner <christian@brauner.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_073244_600034_BCE49191 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 kernel list <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Miklos Szeredi <miklos@szeredi.hu>,
 the arch/x86 maintainers <x86@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-xtensa@linux-xtensa.org,
 Todd Kjos <tkjos@android.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-m68k@lists.linux-m68k.org, Al Viro <viro@zeniv.linux.org.uk>,
 Oleg Nesterov <oleg@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 "Dmitry V. Levin" <ldv@altlinux.org>, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-parisc@vger.kernel.org,
 Linux API <linux-api@vger.kernel.org>, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 1:51 PM Christian Brauner <christian@brauner.io> wrote:
[...]
> I kept it dumb and was about to reply that your solution introduces more
> code when it seemed we wanted to keep this very simple for now.
> But then I saw that find_next_opened_fd() already exists as
> find_next_fd(). So it's actually not bad compared to what I sent in v1.
> So - with some small tweaks (need to test it and all now) - how do we
> feel about?:
[...]
> static int __close_next_open_fd(struct files_struct *files, unsigned *curfd, unsigned maxfd)
> {
>         struct file *file = NULL;
>         unsigned fd;
>         struct fdtable *fdt;
>
>         spin_lock(&files->file_lock);
>         fdt = files_fdtable(files);
>         fd = find_next_fd(fdt, *curfd);

find_next_fd() finds free fds, not used ones.

>         if (fd >= fdt->max_fds || fd > maxfd)
>                 goto out_unlock;
>
>         file = fdt->fd[fd];
>         rcu_assign_pointer(fdt->fd[fd], NULL);
>         __put_unused_fd(files, fd);

You can't do __put_unused_fd() if the old pointer in fdt->fd[fd] was
NULL - because that means that the fd has been reserved by another
thread that is about to put a file pointer in there, and if you
release the fd here, that messes up the refcounting (or hits the
BUG_ON() in __fd_install()).

> out_unlock:
>         spin_unlock(&files->file_lock);
>
>         if (!file)
>                 return -EBADF;
>
>         *curfd = fd;
>         filp_close(file, files);
>         return 0;
> }
>
> int __close_range(struct files_struct *files, unsigned fd, unsigned max_fd)
> {
>         if (fd > max_fd)
>                 return -EINVAL;
>
>         while (fd <= max_fd) {

Note that with a pattern like this, you have to be careful about what
happens if someone gives you max_fd==0xffffffff - then this condition
is always true and the loop can not terminate this way.

>                 if (__close_next_fd(files, &fd, maxfd))
>                         break;

(obviously it can still terminate this way)

>                 cond_resched();
>                 fd++;
>         }
>
>         return 0;
> }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
