Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264CA20994
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxAL1ThzETIKjS82kbtI9whgX93WlbhgLZPOQS1bAzQ=; b=IJDxgupevHSoxn
	nhXRpDpl0V8jApm4qoFkKxCv+wePrSj/ihxvqWc7eAC3eXkAN4Yzf8W+azH3f5QFmOKHPOpLJ+MY+
	o0UV/OEwIbYR881oocTWU3qQ21Wpls+SVJJ9qDxG7b7xZxdddzCxOSvHqVHD5c10hQzxLSCKDQ2rh
	5SkxuQTfn66Lau3XfRZBJfvekyPkhMpgIL/hU5u2U5hctvtRzF/aGEfWZT+aOFrdj7ZHGZD6+9yPZ
	dP6evOYNnbuYyIOjlztCyUApi3AbPqBy/gSA++bjGgnp7IC+1H7e5Gaq3j+3som3+oXDBU3h1DWji
	Y5o2APAx5RSEKLDEiF7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHLu-0000Ey-3i; Thu, 16 May 2019 14:27:22 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHLn-0000EW-9X
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:27:16 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7E7E388E5D;
 Thu, 16 May 2019 14:27:11 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.43.17.159])
 by smtp.corp.redhat.com (Postfix) with SMTP id 144FC341E2;
 Thu, 16 May 2019 14:27:01 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Thu, 16 May 2019 16:27:10 +0200 (CEST)
Date: Thu, 16 May 2019 16:27:00 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Christian Brauner <christian@brauner.io>
Subject: Re: [PATCH v1 1/2] pid: add pidfd_open()
Message-ID: <20190516142659.GB22564@redhat.com>
References: <20190516135944.7205-1-christian@brauner.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516135944.7205-1-christian@brauner.io>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 16 May 2019 14:27:14 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_072715_354272_2AF98BF3 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 05/16, Christian Brauner wrote:
>
> With the introduction of pidfds through CLONE_PIDFD it is possible to
> created pidfds at process creation time.

Now I am wondering why do we need CLONE_PIDFD, you can just do

	pid = fork();
	pidfd_open(pid);

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
> +	if (!tsk)
> +		ret = -ESRCH;
> +	rcu_read_unlock();
> +
> +	fd = ret ?: pidfd_create(p);
> +	put_pid(p);
> +	return fd;
> +}

Looks correct, feel free to add Reviewed-by: Oleg Nesterov <oleg@redhat.com>

But why do we need task_struct *tsk?

	rcu_read_lock();
	if (!pid_task(PIDTYPE_TGID))
		ret = -ESRCH;
	rcu_read_unlock();

and in fact we do not even need rcu_read_lock(), we could do

	// shut up rcu_dereference_check()
	rcu_lock_acquire(&rcu_lock_map);
	if (!pid_task(PIDTYPE_TGID))
		ret = -ESRCH;
	rcu_lock_release(&rcu_lock_map);

Well... I won't insist, but the comment about the race with exec looks a bit
confusing to me. It is true, but we do not care at all, we are not going to
use the task_struct returned by pid_task().

Oleg.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
