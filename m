Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FFE20AAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogoRiIBqpS7xp4S7qa87v9l9fxLyKah+nRJX3cJ8KDQ=; b=giEUMsyoUgPp8a
	6IMKFaYl/CTp31IalP7L6dO1PcOtUEOHpDQ+dyU2jS/Kbzas897lyZCjI8MmiE5JLUlfLo9RFs/ng
	4xieI3t8IcGh9XuqJ/W3MbPyQl6YzAEnLsQlUTeLBGcgVrMFLCMaoMa479NVoe/N+SCBWmfc5uzNM
	7JdNKF7MK7DKoYRWCqNsO0ravRa7qsYAdCkKuWF2SjPuBFU65VzewuEjPLTajRVwY1+35VCnUG/Ya
	CusVvPQWz1Cmyla134uDM5lmg71NHDGJEFqGIU9hNaF5Mv30xgC+iGNPEApCsg5wQ2nMYOmt45QZt
	ROiyeMCNwZNDzQsZVmKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHxn-0003DC-7Q; Thu, 16 May 2019 15:06:31 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHxf-0003CO-86
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:06:24 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4A40137EEB;
 Thu, 16 May 2019 15:06:20 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.43.17.159])
 by smtp.corp.redhat.com (Postfix) with SMTP id 213925D9CD;
 Thu, 16 May 2019 15:06:13 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Thu, 16 May 2019 17:06:19 +0200 (CEST)
Date: Thu, 16 May 2019 17:06:12 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: [PATCH v1 1/2] pid: add pidfd_open()
Message-ID: <20190516150611.GC22564@redhat.com>
References: <20190516135944.7205-1-christian@brauner.io>
 <20190516142659.GB22564@redhat.com>
 <20190516145607.j43xyj26k6l5vmbd@yavin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516145607.j43xyj26k6l5vmbd@yavin>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 16 May 2019 15:06:21 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_080623_308585_342EA777 
X-CRM114-Status: GOOD (  13.43  )
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
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Christian Brauner <christian@brauner.io>, serge@hallyn.com,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 luto@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/17, Aleksa Sarai wrote:
>
> On 2019-05-16, Oleg Nesterov <oleg@redhat.com> wrote:
> > On 05/16, Christian Brauner wrote:
> > >
> > > With the introduction of pidfds through CLONE_PIDFD it is possible to
> > > created pidfds at process creation time.
> >
> > Now I am wondering why do we need CLONE_PIDFD, you can just do
> >
> > 	pid = fork();
> > 	pidfd_open(pid);
>
> While the race window would be exceptionally short, there is the
> possibility that the child will die

Yes,

> and their pid will be recycled
> before you do pidfd_open().

No.

Unless the caller's sub-thread does wait() before pidfd_open(), of course.
Or unless you do signal(SIGCHILD, SIG_IGN).

Oleg.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
