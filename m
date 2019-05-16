Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FAB20906
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shbWKdRyW2S4rnnJostGzgnPAFxvkHxjpbRr3RIMqyA=; b=tCh7XFvNgzNyHG
	qxmQ3lUUpmrVZW9JQxyKNbV1SY0g9KyhA+JVsU7zzc3fpWEXkDzeVroG+D5+qSUVa2kSgkUUFNSIy
	6OikrIiV2nPwfxJJyO+2ZaGTNRA2xsX8yL7XsGssG9+RoY6ONu6ML9lm42hTgNizBpZlpQ2kbMFj4
	HcjujZOnxBbGYs3sg6zV/sX2j8RPY7EHx45BKP38SZDm00PJ6Yc8Jm2pVq1YBdwjpKVTB8WKrjUe0
	W+nElENxYm12BCNHngBOZnofTgbb3b8lSSxScV6xUuJb9SP4P1OSQYH5rOqs0MFFd6xg7XoWDMlAF
	iM19FTKJOfc9voNvxpWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGzN-0007sE-FK; Thu, 16 May 2019 14:04:05 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGzF-0007r6-E3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:03:58 +0000
Received: by mail-ot1-x341.google.com with SMTP id c3so3535662otr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 07:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ucVxbOUWrZZfDk/EU6PatKkf44/FaoRbkOnctoq4RZ0=;
 b=gfpj8t048K9YVTN68kQxa+FHJsU/2ANQn9m7IrGbqPQ/o0kHghHsG/uJc4zd0VpsFW
 tt+lyUarxKBI29oVO1Q7sF6b60g/Y4zexIgF4+6YB95Zr7oBm41HjsNb+60bflVmIM/a
 UKZ8eN6pNZNVROnG/kopqrr9ADEgcqic3lsaeqN3/9cIUca8DzVHJlNdufwkTOFf0fvt
 WuJWnXkH3Px0YXQ3FCfU3bP9mLp8nfVLzMr3JYliO8GXvlga8zbDUkxdoqZiZYSZv54T
 LbJwnBwECMCyoIPfR+yi8OKgHUx1TaxeYr/Z3Fe86n//upCOfxiL1JyMYYPQMvqWFEUj
 axYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ucVxbOUWrZZfDk/EU6PatKkf44/FaoRbkOnctoq4RZ0=;
 b=D9wimpa8ap8Dm+pooOclqAx2dBeSEbnfPpJwNvbeIbvDH9n7xAoGqT5Sc8xv48IIQA
 ekcjxtFEsuhf3JrKc+5K3wuge3WunrXD34IS6WWu/LAReimrlODa9f7e+Ga4fCAuC/vA
 xyHlqNRjVdfT8O6TKPrvNzs7WDvqXrM7oEQI6GFSps8DxR3qtctlhviADq0ah7LD/lV+
 DrLT0K5RypMpdykWMokPJVZT89JAkmgUAGFu+ToheXB0XmVIJIKjzZnqNDJF9ZLvRbQN
 P8vSPZ2JZ4wAo6EW/Ve5UaTrV18kR8qK8CGVzf+V0bdZjlA+AhU3z8chuK2SpdyYUVbZ
 oQzQ==
X-Gm-Message-State: APjAAAXzi+m68hG2owR+eReE3SxhHywi2LQdfftgdcKwlkEq0DQG9drB
 d/ExcubZ4RoPw4atjIVNmOU70hD0AeIzX+eE6hi3UQ==
X-Google-Smtp-Source: APXvYqyBb5F3egziJpog88dFflIwgg+mGPtRq5YXqoN1sjx7sxZUEswiE+BHUSh78yMMJxAxYlD3ql7CsUOCTyJayJE=
X-Received: by 2002:a9d:6954:: with SMTP id p20mr9094093oto.337.1558015433692; 
 Thu, 16 May 2019 07:03:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190515100400.3450-1-christian@brauner.io>
 <CAKOZuesPF+ftwqsNDMBy1LpwJgWTNuQm9-E=C90sSTBYEEsDww@mail.gmail.com>
 <20190516130813.i66ujfzftbgpqhnh@brauner.io>
In-Reply-To: <20190516130813.i66ujfzftbgpqhnh@brauner.io>
From: Jann Horn <jannh@google.com>
Date: Thu, 16 May 2019 16:03:27 +0200
Message-ID: <CAG48ez05OtBi_yX+071TrrfK3zKOn9h1kFyPr5rttiqQAZ0sEA@mail.gmail.com>
Subject: Re: [PATCH 1/2] pid: add pidfd_open()
To: Christian Brauner <christian@brauner.io>,
 Daniel Colascione <dancol@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_070357_481079_E84A2352 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Linux API <linux-api@vger.kernel.org>,
 Elena Reshetova <elena.reshetova@intel.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-m68k@lists.linux-m68k.org, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, Aleksa Sarai <cyphar@cyphar.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-mips@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>,
 "Eric W. Biederman" <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 3:08 PM Christian Brauner <christian@brauner.io> wrote:
> On Wed, May 15, 2019 at 10:45:06AM -0700, Daniel Colascione wrote:
> > On Wed, May 15, 2019 at 3:04 AM Christian Brauner <christian@brauner.io> wrote:
> > >
> > > This adds the pidfd_open() syscall. It allows a caller to retrieve pollable
> > > pidfds for a process which did not get created via CLONE_PIDFD, i.e. for a
> > > process that is created via traditional fork()/clone() calls that is only
> > > referenced by a PID:
[...]
> > > +/**
> > > + * pidfd_open() - Open new pid file descriptor.
> > > + *
> > > + * @pid:   pid for which to retrieve a pidfd
> > > + * @flags: flags to pass
> > > + *
> > > + * This creates a new pid file descriptor with the O_CLOEXEC flag set for
> > > + * the process identified by @pid. Currently, the process identified by
> > > + * @pid must be a thread-group leader. This restriction currently exists
> > > + * for all aspects of pidfds including pidfd creation (CLONE_PIDFD cannot
> > > + * be used with CLONE_THREAD) and pidfd polling (only supports thread group
> > > + * leaders).
> > > + *
> > > + * Return: On success, a cloexec pidfd is returned.
> > > + *         On error, a negative errno number will be returned.
> > > + */
> > > +SYSCALL_DEFINE2(pidfd_open, pid_t, pid, unsigned int, flags)
> > > +{
[...]
> > > +       if (pid <= 0)
> > > +               return -EINVAL;
> >
> > WDYT of defining pid == 0 to mean "open myself"?
>
> I'm torn. It be a nice shortcut of course but pid being 0 is usually an
> indicator for child processes. So unless the getpid() before
> pidfd_open() is an issue I'd say let's leave it as is. If you really
> want the shortcut might -1 be better?

Joining the bikeshed painting club: Please don't allow either 0 or -1
as shortcut for "self". James Forshaw found an Android security bug a
while back (https://bugs.chromium.org/p/project-zero/issues/detail?id=727)
that passed a PID to getpidcon(), except that the PID was 0
(placeholder for oneway binder transactions), and then the service
thought it was talking to itself. You could pick some other number and
provide a #define for that, but I think pidfd_open(getpid(), ...)
makes more sense.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
