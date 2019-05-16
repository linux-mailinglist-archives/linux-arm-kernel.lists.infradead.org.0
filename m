Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A71720A6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1XOgmNXTkvPHoFgmQCmmKYlovKBqFaz5bTHt3sL69u8=; b=aQRyYrcMRw57u1
	/TOwoEZArwktc99e15c9QAr3+KIrC0wcuwHdtnudGitoaZFOkLFGlq9j2kZftyV0D2lDSbENVvZvn
	0if2Gey0CpHsuDI6vh0eZQHBCCeiulCKGEZrJT9kffXl6DA541keSsfHMYMCKCPqW1I8p9LO8OWl8
	uqfIsdkv2pb3efLs16aTWmDyxEV2wzhVaELL3g4YIqUmjnsXyvBVUR+iYEovnMmBEcEZMJUzPRw9P
	TtDsTBkLMz3mgqX84EL76u25CIKK71U7iPnar4H4ZG2LpudVT4c4rnquuDNeksXIYKFL6wOrxFXYE
	T+AAG8sE1HDhnUoI28Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHp4-0007D4-3Y; Thu, 16 May 2019 14:57:30 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHow-0007C3-7F
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:57:23 +0000
Received: by mail-ed1-x541.google.com with SMTP id b8so5645664edm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 07:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zu/DFoA8gurZzDl4gRPBRIxRpOpQplODrEJWOL6D0bE=;
 b=N/UXULef7deCmqVDFFuhdRP+EE/HVwi/f8Xw9poIWaOZnQrgvAqVWfNExWGd8BOsJf
 33o1T0+h2MUW+EUGMeLcQHkrt56q01RBA4HuUCpP1HhL+qbKYrx8/hsh8yLGkBvmD49R
 8+PbTDBAKauvYkDZWTDJ6HTdkLHobcXK0IWVXwUdxsfwEzukIgCacfL1mkKlnh4BufAE
 cmndL7Y+bK4GfjQMr6DNIgpxClV5ziCpFELiCjoMMwn4lPnJkr6DjWQm5xrMWvDy9MoN
 9Tz8wKlpHlaRJ+TCJu0UoV0aK7s1NnsOhDY4lT/AMXF5dPM+Twab8dYUty/tvzJmCNb5
 QTZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zu/DFoA8gurZzDl4gRPBRIxRpOpQplODrEJWOL6D0bE=;
 b=A/b1SvC3ZPpy0PFrQ1GbgIXhgl5BKUd+2RAnP6ECfx+fcCjScfc1VrQDBq3I3y6oOt
 EwoVLAiYNbF/Z1ay+0k1KuW3lwZ+M/NSaLPSBJLE0WZ7IcEWg1U1Zjor0HgwDDQtrdLD
 FONi59ZMyIZswVazCoecDcen00dwBz4r3btcb3wnuKbCRz9GWuyEO+Q+mc5Lfy+9zwpd
 OnYc6tLQ/X8W/8XpbP3cqqfrui19VfW7i2JIQGPBsdihJ7qsdrxwXTgr7jXCUIaPwDDt
 4YUuIbOpgFz9vRtWsb+PqevsZAD73GDOy8uNisUhgVjlls2ludNsF9/+vumukiZRyibd
 bB5Q==
X-Gm-Message-State: APjAAAU5I8rxUWEC/pPYxxYTLbetD3HTslA+7W54WlPXImqP+QznhomT
 aXczweH0jOgm2gkICx2GEEgCfA==
X-Google-Smtp-Source: APXvYqwezzg+v8pMXQltznYwK70iO/BCmxK3JFRnM2IhYSWFpsND0L8cwVVVFYHGIM+owfjxdC4+8Q==
X-Received: by 2002:aa7:c483:: with SMTP id m3mr21927311edq.161.1558018640584; 
 Thu, 16 May 2019 07:57:20 -0700 (PDT)
Received: from brauner.io ([193.96.224.243])
 by smtp.gmail.com with ESMTPSA id u11sm1122263ejr.48.2019.05.16.07.57.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 16 May 2019 07:57:20 -0700 (PDT)
Date: Thu, 16 May 2019 16:57:17 +0200
From: Christian Brauner <christian@brauner.io>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v1 1/2] pid: add pidfd_open()
Message-ID: <20190516145716.ool2pzdqbfclnnqi@brauner.io>
References: <20190516135944.7205-1-christian@brauner.io>
 <20190516142659.GB22564@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516142659.GB22564@redhat.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_075722_265266_FE7FA9B4 
X-CRM114-Status: GOOD (  18.42  )
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
 linux-mips@vger.kernel.org, dhowells@redhat.com, joel@joelfernandes.org,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-api@vger.kernel.org, elena.reshetova@intel.com,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org, dancol@google.com,
 Geert Uytterhoeven <geert@linux-m68k.org>, serge@hallyn.com,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 luto@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, cyphar@cyphar.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 04:27:00PM +0200, Oleg Nesterov wrote:
> On 05/16, Christian Brauner wrote:
> >
> > With the introduction of pidfds through CLONE_PIDFD it is possible to
> > created pidfds at process creation time.
> 
> Now I am wondering why do we need CLONE_PIDFD, you can just do
> 
> 	pid = fork();
> 	pidfd_open(pid);

CLONE_PIDFD eliminates the race at the source and let's us avoid two
syscalls for the sake of one. That'll obviously matter even more when we
enable CLONE_THREAD | CLONE_PIDFD.
pidfd_open() is really just a necessity for anyone who does non-parent
process management aka LMK or service managers.
I also would like to reserve the ability at some point (e.g. with cloneX
or sm) to be able to specify specific additional flags at process
creation time that modify pidfd behavior.

> 
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
> > +	if (!tsk)
> > +		ret = -ESRCH;
> > +	rcu_read_unlock();
> > +
> > +	fd = ret ?: pidfd_create(p);
> > +	put_pid(p);
> > +	return fd;
> > +}
> 
> Looks correct, feel free to add Reviewed-by: Oleg Nesterov <oleg@redhat.com>
> 
> But why do we need task_struct *tsk?
> 
> 	rcu_read_lock();
> 	if (!pid_task(PIDTYPE_TGID))
> 		ret = -ESRCH;
> 	rcu_read_unlock();

Sure, that's simpler. I'll rework and add your Reviewed-by.

> 
> and in fact we do not even need rcu_read_lock(), we could do
> 
> 	// shut up rcu_dereference_check()
> 	rcu_lock_acquire(&rcu_lock_map);
> 	if (!pid_task(PIDTYPE_TGID))
> 		ret = -ESRCH;
> 	rcu_lock_release(&rcu_lock_map);
> 
> Well... I won't insist, but the comment about the race with exec looks a bit
> confusing to me. It is true, but we do not care at all, we are not going to
> use the task_struct returned by pid_task().

Yeah, I can remove it.

Thanks!
Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
