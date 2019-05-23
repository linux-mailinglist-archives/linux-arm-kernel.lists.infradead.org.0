Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A43727FE6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 16:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQm/6PC+cbl+o/QK6iS/1ZLuzNRyhl7ApetcNCqOssU=; b=bJ/YjfuuNKu4Lu
	qugdl7Owgbh6RyTGvS4nSoPSDe/cTP+0YOT0EKiR078O24NK6Fo1QwIV9Y5Fafv3UMmv4YauVgkHo
	99Ya8ElaN8wDlvIMMKrxxeR6/A0WevNO9QtWvUUVxPU0V29tHJnk+DEbi9Ok3cdmvl3rfGFqDAfEk
	IPEosl+Cp5zfB6oT7rBL3AQKDt8gnYDyz87j0l32hB+0aK0nRIQGpqKCW6KUm9GfZsvq8vuVEliuR
	awq/tpsY1Uvoh89tFxW/sPoTdicR4bsLEx+R3TOh3Q4UyE9G2oIaJWBIrMjORHRBevZU49FWIJJSh
	n4A4h17RMnkAeRLJYArw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hToqp-0007zX-Tq; Thu, 23 May 2019 14:37:47 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToqh-0007yg-7Q
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 14:37:40 +0000
Received: by mail-it1-x144.google.com with SMTP id i63so8854377ita.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 07:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DahHECUK2AF1J12XBLs2bKF9FH9rjTuzkU7KMfzCZKg=;
 b=YbCZESmbvCwAQCtgJ5vNBW4fzZ0rmez/RQRMkvQ2gBf8m2vQZ7pZbh6Bnf/yhxyKVI
 53LigfqSgxhhyV3cJwQAxeBYmchcYj4+L6sb6hM6ANhJ3YzqD5nVaV8VUWyXmRfwM0Js
 s0qbXNd2fPwKrwA6FMsqrbW+O3oe4jc4dfMVogKbtgea8qKxT3IcnEz6YQoGlNR0pY3m
 WBeNhDCmn5OB53HQT4TWeQ+Gay0cWaoJ8RQtor16rRwite01Brwb3BNAlCJ/+wg1v28J
 HJ9HsyrSvI8gu0Uy/czVhZ9L/NkkHH+hj2hN0LXZm7YA7qWQlzwpnrEcctNdcL7rOP5V
 pe4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DahHECUK2AF1J12XBLs2bKF9FH9rjTuzkU7KMfzCZKg=;
 b=tm0iHkxTUYo66MZJGtyJhKnhqXXx0ycTkQj6XPm9jnDSlrsxw8g9hk+rGheFR3hjtl
 d3zXtds/9GNIBsZ6OSa2cl0Eya4enpoiZrZKcEq145O6bSkScIXOjbguP0J6wod5q3st
 7WAA6Mi7rOiBVLim7SUeTElemAO/Z7Qrs/Lv2ZrFD8IDWSnZX1sne6HSp6xk+4rKvOYz
 HBc8ccfKJx1z16kARz1QhN++HgE7Pkxy5bpcP3CUbSoC7gdgxxF/kYS25sIcoNnG7+r0
 aaH7UNF4eG9XBZ3Hn0CXLxAyhkHJsNVBbXK90xHkjoHZOJLJxC6b4gQmGEs62z+6eIef
 hQgg==
X-Gm-Message-State: APjAAAW8X7XJpVc4LJg1htDdeT7VTKnletW0x0ADG1tnJjjl4rhL1Qmg
 A4q0m5N3xUtzMscBxgz8WzgO8g==
X-Google-Smtp-Source: APXvYqxCsu1nKhbS62harFEpfvgZRg7+s7a4b8LII1alkH5yuzE7xzETotobVwglIakCJJls3jgHwg==
X-Received: by 2002:a02:9381:: with SMTP id z1mr24471487jah.130.1558622256966; 
 Thu, 23 May 2019 07:37:36 -0700 (PDT)
Received: from brauner.io ([172.56.12.187])
 by smtp.gmail.com with ESMTPSA id l186sm4603784itb.5.2019.05.23.07.37.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 23 May 2019 07:37:36 -0700 (PDT)
Date: Thu, 23 May 2019 16:37:26 +0200
From: Christian Brauner <christian@brauner.io>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH v1 1/2] open: add close_range()
Message-ID: <20190523143725.y67czx4jxsy6yqrj@brauner.io>
References: <20190522155259.11174-1-christian@brauner.io>
 <20190522165737.GC4915@redhat.com>
 <20190523115118.pmscbd6kaqy37dym@brauner.io>
 <CAG48ez0Uq2GQnQsuPkNrDdJVku_6GPeZ_5F_-5J3iy2CULr0_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG48ez0Uq2GQnQsuPkNrDdJVku_6GPeZ_5F_-5J3iy2CULr0_Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_073739_359333_5BBD5518 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, May 23, 2019 at 04:32:14PM +0200, Jann Horn wrote:
> On Thu, May 23, 2019 at 1:51 PM Christian Brauner <christian@brauner.io> wrote:
> [...]
> > I kept it dumb and was about to reply that your solution introduces more
> > code when it seemed we wanted to keep this very simple for now.
> > But then I saw that find_next_opened_fd() already exists as
> > find_next_fd(). So it's actually not bad compared to what I sent in v1.
> > So - with some small tweaks (need to test it and all now) - how do we
> > feel about?:
> [...]
> > static int __close_next_open_fd(struct files_struct *files, unsigned *curfd, unsigned maxfd)
> > {
> >         struct file *file = NULL;
> >         unsigned fd;
> >         struct fdtable *fdt;
> >
> >         spin_lock(&files->file_lock);
> >         fdt = files_fdtable(files);
> >         fd = find_next_fd(fdt, *curfd);
> 
> find_next_fd() finds free fds, not used ones.
> 
> >         if (fd >= fdt->max_fds || fd > maxfd)
> >                 goto out_unlock;
> >
> >         file = fdt->fd[fd];
> >         rcu_assign_pointer(fdt->fd[fd], NULL);
> >         __put_unused_fd(files, fd);
> 
> You can't do __put_unused_fd() if the old pointer in fdt->fd[fd] was
> NULL - because that means that the fd has been reserved by another
> thread that is about to put a file pointer in there, and if you
> release the fd here, that messes up the refcounting (or hits the
> BUG_ON() in __fd_install()).
> 
> > out_unlock:
> >         spin_unlock(&files->file_lock);
> >
> >         if (!file)
> >                 return -EBADF;
> >
> >         *curfd = fd;
> >         filp_close(file, files);
> >         return 0;
> > }
> >
> > int __close_range(struct files_struct *files, unsigned fd, unsigned max_fd)
> > {
> >         if (fd > max_fd)
> >                 return -EINVAL;
> >
> >         while (fd <= max_fd) {
> 
> Note that with a pattern like this, you have to be careful about what
> happens if someone gives you max_fd==0xffffffff - then this condition
> is always true and the loop can not terminate this way.
> 
> >                 if (__close_next_fd(files, &fd, maxfd))
> >                         break;
> 
> (obviously it can still terminate this way)

Yup, this was only a quick draft.
I think the dumb simple thing that I did before was the best way to do
it for now.
I first thought that the find_next_open_fd() function already exists but
when I went to write a POC for testing realized it doesn't anyway.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
