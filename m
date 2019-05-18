Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313B7222C7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 11:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZR8oCMOJBDvdQXAqSSlPg7XpVgXqFa/76Ab0O4AkKPA=; b=WnRzQdUiLsO4bB
	c+UuBrPnbHKuJ1Y40kki8LAumcW6u73hQCvq+rCHCx56MLqSqJnBJgKqzdCm73tXSQ9ELCkDPUFkN
	wWH/LOv1lu/E9Xokl7hhaKh4x0UCqs5NXhZgtgud8/VkC1r64+cZDrooEVMQ7xhy9Rjwb2o3ADN8s
	UCFAh82PpaPUlX+apRf83ezRGYXrN1LzOup0Mxm8FdAeSFqp7x6MOEaNgLfgNLmphbPGHOcHK3v0E
	Ylficz6PnTiVnqhsnQp5fpDvOuIRAnk8wnWM5UDx+3++Bh8prQXWHenUM3r+5G9m8GyjUGFbZjCPA
	BJhHTV74lzxnzH7T8a2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRvww-0002CB-JS; Sat, 18 May 2019 09:48:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRvwn-0002Ar-E6
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 09:48:12 +0000
Received: by mail-pf1-x444.google.com with SMTP id t87so4887726pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 May 2019 02:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3iehYO9/3dGuR87aVQtHa+k708l2fZGn5LAWJUJw+bI=;
 b=jbJ+akl1Oebe/G2zixKM7D3g8/7+hvJdUcG9NJHMi65TbSXZ/qBbCGH1hwdCWFXEia
 v5u721IWYUqsCoQEJBSjN5yxaOqNgOIUlFkv4bfOYzMj0px06ZqOaLQiVXwSfSdOtkCb
 eut+PHPZD1xgK0wVWmv7MP53RNVrElPU0eYIU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3iehYO9/3dGuR87aVQtHa+k708l2fZGn5LAWJUJw+bI=;
 b=Twb62UgCf0NkFWN5m5TikCarP7Pl5i/6CosLVOBaOShkXgqOiu6WNHWcRMgJ8Xukv+
 zcpPyIgZ+ooXWWGDCQtj3sgfex4eEwRRHkjxg394UXkb/F+iXnumxKfLsp00ztH9b/OG
 AZj082BuLlkSMbx3ygd3YL0AysrjJKJNFyedRQsUBdRXdwkJQJ6FWkPIUpQfhRQOTQff
 SF0ApoJlyn8q6gaWbIA1eyuWbqyhb7kF++EzlJ0FhKvpSjnJyEE1sT0VsGL0zCCwACYg
 GHMRNe6U3IXTRtsWVLKGt2+e6427a+e+qEkwuHQib0pU9xuX7jw7Mpo8EAmiJPgZuH34
 w+Bg==
X-Gm-Message-State: APjAAAXc9PqqCGZEXQdOQrK+Bil+6KlSCKmG586MQNrsGoF0vxYFgeiK
 PeIC59JZizzYYaGB+YiFl9+i0Q==
X-Google-Smtp-Source: APXvYqxxxsUFV7eN5OTaebnkzWDt0kd+NHIjUI5fT4y6JUXpDdAsQ8fqEFtPRx00MMYQQHacYxzw8Q==
X-Received: by 2002:a63:f813:: with SMTP id n19mr60994204pgh.273.1558172886290; 
 Sat, 18 May 2019 02:48:06 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id q4sm14705283pgb.39.2019.05.18.02.48.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 May 2019 02:48:05 -0700 (PDT)
Date: Sat, 18 May 2019 05:48:03 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Christian Brauner <christian@brauner.io>
Subject: Re: [PATCH v1 1/2] pid: add pidfd_open()
Message-ID: <20190516224949.GA15401@localhost>
References: <20190516135944.7205-1-christian@brauner.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516135944.7205-1-christian@brauner.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_024809_499120_E46B9457 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, oleg@redhat.com,
 dhowells@redhat.com, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-api@vger.kernel.org,
 elena.reshetova@intel.com, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, dancol@google.com,
 Geert Uytterhoeven <geert@linux-m68k.org>, serge@hallyn.com,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 luto@kernel.org, linux-mips@vger.kernel.orgg, tglx@linutronix.de,
 surenb@google.com, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, cyphar@cyphar.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christian,

For next revision, could you also CC surenb@google.com as well? He is also
working on the low memory killer. And also suggest CC to
kernel-team@android.com. And mentioned some comments below, thanks.

On Thu, May 16, 2019 at 03:59:42PM +0200, Christian Brauner wrote:
[snip]  
> diff --git a/kernel/pid.c b/kernel/pid.c
> index 20881598bdfa..4afca3d6dcb8 100644
> --- a/kernel/pid.c
> +++ b/kernel/pid.c
> @@ -38,6 +38,7 @@
>  #include <linux/syscalls.h>
>  #include <linux/proc_ns.h>
>  #include <linux/proc_fs.h>
> +#include <linux/sched/signal.h>
>  #include <linux/sched/task.h>
>  #include <linux/idr.h>
>  
> @@ -451,6 +452,55 @@ struct pid *find_ge_pid(int nr, struct pid_namespace *ns)
>  	return idr_get_next(&ns->idr, &nr);
>  }
>  
> +/**
> + * pidfd_open() - Open new pid file descriptor.
> + *
> + * @pid:   pid for which to retrieve a pidfd
> + * @flags: flags to pass
> + *
> + * This creates a new pid file descriptor with the O_CLOEXEC flag set for
> + * the process identified by @pid. Currently, the process identified by
> + * @pid must be a thread-group leader. This restriction currently exists
> + * for all aspects of pidfds including pidfd creation (CLONE_PIDFD cannot
> + * be used with CLONE_THREAD) and pidfd polling (only supports thread group
> + * leaders).
> + *
> + * Return: On success, a cloexec pidfd is returned.
> + *         On error, a negative errno number will be returned.
> + */
> +SYSCALL_DEFINE2(pidfd_open, pid_t, pid, unsigned int, flags)
> +{
> +	int fd, ret;
> +	struct pid *p;
> +	struct task_struct *tsk;
> +
> +	if (flags)
> +		return -EINVAL;
> +
> +	if (pid <= 0)
> +		return -EINVAL;
> +
> +	p = find_get_pid(pid);
> +	if (!p)
> +		return -ESRCH;
> +
> +	ret = 0;
> +	rcu_read_lock();
> +	/*
> +	 * If this returns non-NULL the pid was used as a thread-group
> +	 * leader. Note, we race with exec here: If it changes the
> +	 * thread-group leader we might return the old leader.
> +	 */
> +	tsk = pid_task(p, PIDTYPE_TGID);

Just trying to understand the comment here. The issue is that we might either
return the new leader, or the old leader depending on the overlap with
concurrent de_thread right? In either case, we don't care though.

I suggest to remove the "Note..." part of the comment since it doesn't seem the
race is relevant here unless we are doing something else with tsk in the
function, but if you want to keep it that's also fine. Comment text should
probably should be 'return the new leader' though.

> +	if (!tsk)
> +		ret = -ESRCH;

Perhaps -EINVAL?  AFAICS, this can only happen if a CLONE_THREAD pid was
passed as argument to pidfd_open which is invalid. But let me know what you
had in mind..

thanks,

 - Joel

> +	rcu_read_unlock();
> +
> +	fd = ret ?: pidfd_create(p);
> +	put_pid(p);
> +	return fd;
> +}
> +
>  void __init pid_idr_init(void)
>  {
>  	/* Verify no one has done anything silly: */
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
