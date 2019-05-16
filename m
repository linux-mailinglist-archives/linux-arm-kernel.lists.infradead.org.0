Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB72320910
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyBS3DbbmaVp32tLcAbIoDfFElpdMaXyrvn/vvEgv1A=; b=LLG0g7mV0DEi74
	7DvlFCMXuHUN0d4YbeX/CtErZ47iAZNsua7OTR1UnoQT+cyy2IqY1avJmaXiJ0cYIqcPc075W+xpg
	P5HhVoyf5T8rCoi78JYzQFZdQzNq2FIEo2A6B+Wblv2TXJJ7GAYZ4ID8Fb7C/62pNiyUqsSiFNI5H
	XS+7m5jgJT6KJNHFL1HFfdaR41J0Tpe0ajRsK8VyN55J9z30EYu4X+zWLRHgNtIxVJmtV9OaZmWEA
	AtGdrcNOTD4+p64NJRo5kxw5QyCv+ZaorxoBPcrzsTAVETrDsOhc0Q/i0/0p15SJtTKufwFVn7TeQ
	L1U9nQ1XSKC2guEgq+MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRH0b-0000uw-ID; Thu, 16 May 2019 14:05:21 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRH0T-0000u8-VZ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:05:15 +0000
Received: by mail-ed1-x541.google.com with SMTP id p26so5499040edr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 07:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bYyJnADr9ubhW5oaXdh9WlhTHjyzAGu0DQI2eQ+pHaE=;
 b=MhjOHc+12NO1kjqTg26hcfpFarWJK6UO4uKen3mnBZiVvgNz65ljzXS/ZRyK+jjEzc
 /JF15wWLnH7LRgIqtY0MD+nIanFGFyFhIksGgTJWi2bGoTMD18BMjjca67gxxRvxi8+0
 yQTTRxRIh7g2VDxBQ0zKZz1vXg1chuW2SN2qbepgb4FeuGMxhGooqxVI7+7FHAOj9N1M
 FHodeukkhZGpge8teMzG2zc9TJCjzMji+6KCaGF81DZdV6StlcqORhINQ4uQjbmc8vco
 TjK91z8PkXrFbRk1vdkCD5WKK6krFwmTdVA0wTPdFmhQ9BFoHPYiofHEVgNBJZi0CYJz
 Lvrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bYyJnADr9ubhW5oaXdh9WlhTHjyzAGu0DQI2eQ+pHaE=;
 b=NhBQZCB2KvhCFcdQdv0RvMFz+UyWWDn1+WbieL8m/hqDw3RpQOZKyKoPvKHM8dabsi
 sUXW8YyL1qHQBZdQwHPw1B53E47/mTXbPf0jq2jqEPxzZ+biHVuj3XefUEix0She3XDc
 9H+H3cUiy+5sFefVeSlNWTjpF8eN3DbBbB0cbJzHE/z3IwOyplYpNlloohL0IWQCmk/X
 XpmnMoI+lBYPne/InQTBckguxDVeaaxoisYLU/3KSMFeZhggjKWeLyoiGiEjjXyW1A5y
 0fECUtpZEL1HNAa57g2hUSjkaDOk8/5fbdTfXXUSDjcT7PSbJ7RkW3dQWDexFOMwmZ8Z
 igOg==
X-Gm-Message-State: APjAAAXYewWQjGULInuEZ39LChvq6Up4e7I1dqu9jMFdWI/461GDHgaa
 Vd97EXK4vQErmNpSEaDTlpqjbw==
X-Google-Smtp-Source: APXvYqy/zkegU6awCybVYKMai3zZjnS7ZHStCqrWAP9elvrkEbm/ZCiD/6p0jcTly9aqPNEwI1KvNw==
X-Received: by 2002:a17:906:65d2:: with SMTP id
 z18mr20105763ejn.68.1558015510995; 
 Thu, 16 May 2019 07:05:10 -0700 (PDT)
Received: from brauner.io ([193.96.224.243])
 by smtp.gmail.com with ESMTPSA id b53sm1120044edd.89.2019.05.16.07.05.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 16 May 2019 07:05:10 -0700 (PDT)
Date: Thu, 16 May 2019 16:05:08 +0200
From: Christian Brauner <christian@brauner.io>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH 1/2] pid: add pidfd_open()
Message-ID: <20190516140507.75crjbaulasw6mj6@brauner.io>
References: <20190515100400.3450-1-christian@brauner.io>
 <CAKOZuesPF+ftwqsNDMBy1LpwJgWTNuQm9-E=C90sSTBYEEsDww@mail.gmail.com>
 <20190516130813.i66ujfzftbgpqhnh@brauner.io>
 <CAG48ez05OtBi_yX+071TrrfK3zKOn9h1kFyPr5rttiqQAZ0sEA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG48ez05OtBi_yX+071TrrfK3zKOn9h1kFyPr5rttiqQAZ0sEA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_070514_021161_F2AB5700 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-s390 <linux-s390@vger.kernel.org>, Daniel Colascione <dancol@google.com>,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 Aleksa Sarai <cyphar@cyphar.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-mips@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>,
 "Eric W. Biederman" <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 04:03:27PM +0200, Jann Horn wrote:
> On Thu, May 16, 2019 at 3:08 PM Christian Brauner <christian@brauner.io> wrote:
> > On Wed, May 15, 2019 at 10:45:06AM -0700, Daniel Colascione wrote:
> > > On Wed, May 15, 2019 at 3:04 AM Christian Brauner <christian@brauner.io> wrote:
> > > >
> > > > This adds the pidfd_open() syscall. It allows a caller to retrieve pollable
> > > > pidfds for a process which did not get created via CLONE_PIDFD, i.e. for a
> > > > process that is created via traditional fork()/clone() calls that is only
> > > > referenced by a PID:
> [...]
> > > > +/**
> > > > + * pidfd_open() - Open new pid file descriptor.
> > > > + *
> > > > + * @pid:   pid for which to retrieve a pidfd
> > > > + * @flags: flags to pass
> > > > + *
> > > > + * This creates a new pid file descriptor with the O_CLOEXEC flag set for
> > > > + * the process identified by @pid. Currently, the process identified by
> > > > + * @pid must be a thread-group leader. This restriction currently exists
> > > > + * for all aspects of pidfds including pidfd creation (CLONE_PIDFD cannot
> > > > + * be used with CLONE_THREAD) and pidfd polling (only supports thread group
> > > > + * leaders).
> > > > + *
> > > > + * Return: On success, a cloexec pidfd is returned.
> > > > + *         On error, a negative errno number will be returned.
> > > > + */
> > > > +SYSCALL_DEFINE2(pidfd_open, pid_t, pid, unsigned int, flags)
> > > > +{
> [...]
> > > > +       if (pid <= 0)
> > > > +               return -EINVAL;
> > >
> > > WDYT of defining pid == 0 to mean "open myself"?
> >
> > I'm torn. It be a nice shortcut of course but pid being 0 is usually an
> > indicator for child processes. So unless the getpid() before
> > pidfd_open() is an issue I'd say let's leave it as is. If you really
> > want the shortcut might -1 be better?
> 
> Joining the bikeshed painting club: Please don't allow either 0 or -1
> as shortcut for "self". James Forshaw found an Android security bug a
> while back (https://bugs.chromium.org/p/project-zero/issues/detail?id=727)
> that passed a PID to getpidcon(), except that the PID was 0
> (placeholder for oneway binder transactions), and then the service
> thought it was talking to itself. You could pick some other number and
> provide a #define for that, but I think pidfd_open(getpid(), ...)
> makes more sense.

Yes, I agree. I left it as is for v1, i.e. no shortcut; getpid() should
do.

Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
