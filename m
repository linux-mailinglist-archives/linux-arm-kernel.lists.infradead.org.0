Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8071F6B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 16:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3k3X8LTDYz9cbfiEk3nUCxsZph0ZKzH5peTC8FL3PKI=; b=AFIIXjHG2X2L9S
	H0L+/Ox0t91/kX/v7sAlDz1xqWOMS6zHpc63LXCnGsj3NFDcGemBXm+JIpecr82e5WygCazO7B45D
	4GngQ4dj15O845V7vYZW6zuQVqnd+jIEk1iU3wUKiEjDKj+pIFBplCfncVoPR++ngpXrdXPGgQ1EL
	NG8xveqVwYTzBB8KscH0GhyUn3vUWL6wFyr0HHAptg8DqkYeF+dirkhWsmY7Ox7vfgjO9qURMDqc8
	7hG5c0E0yIcPXlVWhtV6iOHqL21zpg4OSlsxjeGur5xP0rsz/9lpILG6CwF4Mo2T3IBb8Czo/ZM9L
	7b518AAWsukQacJzf62g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQv4K-00044l-Oi; Wed, 15 May 2019 14:39:44 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQv48-00042Z-Vw
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 14:39:38 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0BF1451471;
 Wed, 15 May 2019 14:39:11 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.43.17.159])
 by smtp.corp.redhat.com (Postfix) with SMTP id 7F2A15D706;
 Wed, 15 May 2019 14:39:01 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Wed, 15 May 2019 16:39:08 +0200 (CEST)
Date: Wed, 15 May 2019 16:38:58 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Christian Brauner <christian@brauner.io>
Subject: Re: [PATCH 1/2] pid: add pidfd_open()
Message-ID: <20190515143857.GB18892@redhat.com>
References: <20190515100400.3450-1-christian@brauner.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515100400.3450-1-christian@brauner.io>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 15 May 2019 14:39:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_073933_043741_C7874458 
X-CRM114-Status: GOOD (  11.48  )
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
 linux-mips@vger.kernel.org, dhowells@redhat.com,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-api@vger.kernel.org, elena.reshetova@intel.com,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
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

On 05/15, Christian Brauner wrote:
>
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
> +	rcu_read_lock();
> +	tsk = pid_task(p, PIDTYPE_PID);

You do not need find_get_pid() before rcu_lock and put_pid() at the end.
You can just do find_vpid() under rcu_read_lock().

> +	if (!tsk)
> +		ret = -ESRCH;
> +	else if (unlikely(!thread_group_leader(tsk)))
> +		ret = -EINVAL;

it seems that you can do a single check

	tsk = pid_task(p, PIDTYPE_TGID);
	if (!tsk)
		ret = -ESRCH;

this even looks more correct if we race with exec changing the leader.

Oleg.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
