Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7BA2230D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 12:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAMfU7klB9QgAUAL284xq6nlI6u2zeDUoavRDmSHMl0=; b=dlLq7GpyG1Stpd
	XHZHAlcHqyAeUPVWbUlLwLm+sy5g8U/H/jmzmMO4yXv12iF/BUGBDhJh4bEG7pJcIsNVoAi9ALWQq
	j6LWjZx1I5m09BhTh6v+SsQDRRg/XgvBoN1xVnEBNMocPQo4l5wLMeMJWz1DEDb4Ahh6jIiTLHabh
	F8vTxkxDyHPRi2RSBfIkbPe9PgQzmvd3GtIBgIpVIM2omjcGc1K6hH7D52DL1993yziKL7lqT4O2F
	gnE/pfMDRGBdI6o0Gmfbw8/euSmNAb9bsZYzPMWNBpldH0AnKqFZsD00fIBvabIrrtj37ZZuNG5gT
	IkwaPotSbCDhI7Bf07xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRwDL-0001Rb-I3; Sat, 18 May 2019 10:05:15 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRwDE-00013E-1T
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 10:05:09 +0000
Received: by mail-ed1-x544.google.com with SMTP id l25so14683786eda.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 May 2019 03:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kuxvODYNXQX1UADGYTekrXKJHl9GqTdixhHyMJoLFkg=;
 b=MzXf8JwF72gJj2Pq8n12P+UywZxc2BVXTvpiVUKrEniJVb1LIFP3IbcOliQYISdvq7
 CigvtYVzwi+8s8BzhGA7JzeYEAEgELRKSJUGXkBeKo3jIoY+k+AIz1NIGNQ3IbqWFvd/
 pZcoiBfjP1G87UNeXXgpYPrDlzF+SvvAxTS1B9J01RvJsEbVREubCnWtrpwlE+W8uhC8
 abJb2p1WNSljrqCFAQH7at9A4yXrlhg+5ZrhECybT+pFDJTv4XLPhvmKoEIQriQEdsEE
 2qeWRYeIhjWVjN8Omnws0ZotrB2BKKuxhO4+QGekj7Ec6VajrUKLl5oRB10tcR/KFGxb
 SomA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kuxvODYNXQX1UADGYTekrXKJHl9GqTdixhHyMJoLFkg=;
 b=U/IfcakcqcjNDN6pav0IuaiimWGHosGuNCWuREDQMaOf3VsdMVdGdQ0162rPf29hJQ
 ylbc/7HjyeINmo3bdULs7v/Lx1ZcgpHxwkBgKaCcZhsfYBKAzftIvGi/tQvqZJTca3rO
 aZ1k5EXihlZRElvex1+it53ohM3SKuOaM23jkVh/8Hf/qXk9Pj5VjV4ViK/Qvf8sm4S2
 hWoOMDldv1sfTW7EEqFW8LtCuIT9Im0b5GIPNmx44dWKuNEFb0E5mluHHbcgleZi5hjJ
 deceeAnyLOcOrZ2A4oRdr7TUwGvMvfjzHA6paK51tRI4tnI/mhBmvrYs2Mq99zooGUxr
 8YWQ==
X-Gm-Message-State: APjAAAX8mWU2a6yBT86/KzLA4dP3lSRS0aaTD2n4ZttQTuCNV8EseoA5
 dRY1OD+w6HDuXnVVdNyEdcYKHw==
X-Google-Smtp-Source: APXvYqyJ8cSwup5T+wLOXgE4G1RIJN3Q14FiCUfotn6HCvE35vO+QFm+mQrHo4U4TisKcq8ZEYMBDQ==
X-Received: by 2002:a50:b82d:: with SMTP id j42mr63022736ede.186.1558173905455; 
 Sat, 18 May 2019 03:05:05 -0700 (PDT)
Received: from brauner.io ([46.183.103.8])
 by smtp.gmail.com with ESMTPSA id y30sm3741910edc.83.2019.05.18.03.04.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 18 May 2019 03:05:04 -0700 (PDT)
Date: Sat, 18 May 2019 12:04:46 +0200
From: Christian Brauner <christian@brauner.io>
To: Joel Fernandes <joel@joelfernandes.org>
Subject: Re: [PATCH v1 1/2] pid: add pidfd_open()
Message-ID: <20190518100435.c5bqpcnra53dsr6p@brauner.io>
References: <20190516135944.7205-1-christian@brauner.io>
 <20190516224949.GA15401@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516224949.GA15401@localhost>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_030508_136900_6DD9B10A 
X-CRM114-Status: GOOD (  26.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Geert Uytterhoeven <geert@linux-m68k.org>, kernel-team@android.com,
 serge@hallyn.com, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 arnd@arndb.de, jannh@google.com, linux-m68k@lists.linux-m68k.org,
 viro@zeniv.linux.org.uk, luto@kernel.org, linux-mips@vger.kernel.orgg,
 tglx@linutronix.de, surenb@google.com, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, cyphar@cyphar.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 18, 2019 at 05:48:03AM -0400, Joel Fernandes wrote:
> Hi Christian,
> 
> For next revision, could you also CC surenb@google.com as well? He is also
> working on the low memory killer. And also suggest CC to
> kernel-team@android.com. And mentioned some comments below, thanks.

Yip, totally. Just added them both to my Cc list. :)
(I saw you added Suren manually. I added the Android kernel team now too.)

> 
> On Thu, May 16, 2019 at 03:59:42PM +0200, Christian Brauner wrote:
> [snip]  
> > diff --git a/kernel/pid.c b/kernel/pid.c
> > index 20881598bdfa..4afca3d6dcb8 100644
> > --- a/kernel/pid.c
> > +++ b/kernel/pid.c
> > @@ -38,6 +38,7 @@
> >  #include <linux/syscalls.h>
> >  #include <linux/proc_ns.h>
> >  #include <linux/proc_fs.h>
> > +#include <linux/sched/signal.h>
> >  #include <linux/sched/task.h>
> >  #include <linux/idr.h>
> >  
> > @@ -451,6 +452,55 @@ struct pid *find_ge_pid(int nr, struct pid_namespace *ns)
> >  	return idr_get_next(&ns->idr, &nr);
> >  }
> >  
> > +/**
> > + * pidfd_open() - Open new pid file descriptor.
> > + *
> > + * @pid:   pid for which to retrieve a pidfd
> > + * @flags: flags to pass
> > + *
> > + * This creates a new pid file descriptor with the O_CLOEXEC flag set for
> > + * the process identified by @pid. Currently, the process identified by
> > + * @pid must be a thread-group leader. This restriction currently exists
> > + * for all aspects of pidfds including pidfd creation (CLONE_PIDFD cannot
> > + * be used with CLONE_THREAD) and pidfd polling (only supports thread group
> > + * leaders).
> > + *
> > + * Return: On success, a cloexec pidfd is returned.
> > + *         On error, a negative errno number will be returned.
> > + */
> > +SYSCALL_DEFINE2(pidfd_open, pid_t, pid, unsigned int, flags)
> > +{
> > +	int fd, ret;
> > +	struct pid *p;
> > +	struct task_struct *tsk;
> > +
> > +	if (flags)
> > +		return -EINVAL;
> > +
> > +	if (pid <= 0)
> > +		return -EINVAL;
> > +
> > +	p = find_get_pid(pid);
> > +	if (!p)
> > +		return -ESRCH;
> > +
> > +	ret = 0;
> > +	rcu_read_lock();
> > +	/*
> > +	 * If this returns non-NULL the pid was used as a thread-group
> > +	 * leader. Note, we race with exec here: If it changes the
> > +	 * thread-group leader we might return the old leader.
> > +	 */
> > +	tsk = pid_task(p, PIDTYPE_TGID);
> 
> Just trying to understand the comment here. The issue is that we might either
> return the new leader, or the old leader depending on the overlap with
> concurrent de_thread right? In either case, we don't care though.
> 
> I suggest to remove the "Note..." part of the comment since it doesn't seem the
> race is relevant here unless we are doing something else with tsk in the
> function, but if you want to keep it that's also fine. Comment text should
> probably should be 'return the new leader' though.

Nah, I actually removed the comment already independently (cf. see [1]).

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git/commit/?h=pidfd_open&id=dcfc98c2d957bf3ac14b06414cb2cf4c673fc297
> 
> > +	if (!tsk)
> > +		ret = -ESRCH;
> 
> Perhaps -EINVAL?  AFAICS, this can only happen if a CLONE_THREAD pid was
> passed as argument to pidfd_open which is invalid. But let me know what you
> had in mind..

Hm, from the kernel's perspective ESRCH is correct but I guess EINVAL is
nicer for userspace. So I don't have objections to using EINVAL. My
first version did too I think.

Thanks!
Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
