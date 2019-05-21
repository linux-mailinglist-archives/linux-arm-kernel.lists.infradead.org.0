Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AB5255A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Content-ID:MIME-Version
	:Subject:To:References:In-Reply-To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6+TGU5PLpVsJZmuc5TnlCwt1o8tohfyJMGHqOOkcxg=; b=GbLS01ogUbFu32
	fie/ZSfbK8avpyASqPnfkI4Knqg95M4i3v3YquDS0OrDdSnEG+cB/kaMrz1Fo2NToTvvPZOTbkLbW
	f9D3kJKVZ1sGcei8MDcu/vlod3TYWOVWJP3/oulMDaJaJNPFA8/lHknqzIsfUGLJEsMYHwfeXK1Tv
	GE+vqo9HnQDV2t63eSnpYb4CbKZ9rvQ3ODIAHJad59h6rd5AYifOxyHdBCN19bL2F21e177kvDrrG
	gRAeCv42lfSqsigzsiuoBIBrtYdz4fNHKaFendPN1TrounJs2xjx9se0PRJ6GX3rHDw5wGoYHgVNF
	JIHXyVTaSrGk5WM8ytEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7fN-0007jd-Uf; Tue, 21 May 2019 16:31:05 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7fG-0007j2-UW
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:31:00 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 36C037FDEE;
 Tue, 21 May 2019 16:30:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-120-170.rdu2.redhat.com
 [10.10.120.170])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7B1B95E7AF;
 Tue, 21 May 2019 16:30:28 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20190521150006.GJ17978@ZenIV.linux.org.uk>
References: <20190521150006.GJ17978@ZenIV.linux.org.uk>
 <20190521113448.20654-1-christian@brauner.io>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH 1/2] open: add close_range()
MIME-Version: 1.0
Content-ID: <28113.1558456227.1@warthog.procyon.org.uk>
Date: Tue, 21 May 2019 17:30:27 +0100
Message-ID: <28114.1558456227@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 21 May 2019 16:30:57 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_093059_001614_0215C9F8 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 sparclinux@vger.kernel.org, shuah@kernel.org, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, miklos@szeredi.hu, x86@kernel.org,
 torvalds@linux-foundation.org, Christian Brauner <christian@brauner.io>,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org, tkjos@android.com,
 arnd@arndb.de, jannh@google.com, linux-m68k@lists.linux-m68k.org,
 tglx@linutronix.de, ldv@altlinux.org, linux-arm-kernel@lists.infradead.org,
 fweimer@redhat.com, linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Al Viro <viro@zeniv.linux.org.uk> wrote:

> Umm...  That's going to be very painful if you dup2() something to MAX_INT and
> then run that; roughly 2G iterations of bouncing ->file_lock up and down,
> without anything that would yield CPU in process.
> 
> If anything, I would suggest something like
> 
> 	fd = *start_fd;
> 	grab the lock
>         fdt = files_fdtable(files);
> more:
> 	look for the next eviction candidate in ->open_fds, starting at fd
> 	if there's none up to max_fd
> 		drop the lock
> 		return NULL
> 	*start_fd = fd + 1;
> 	if the fscker is really opened and not just reserved
> 		rcu_assign_pointer(fdt->fd[fd], NULL);
> 		__put_unused_fd(files, fd);
> 		drop the lock
> 		return the file we'd got
> 	if (unlikely(need_resched()))
> 		drop lock
> 		cond_resched();
> 		grab lock
> 		fdt = files_fdtable(files);
> 	goto more;
> 
> with the main loop being basically
> 	while ((file = pick_next(files, &start_fd, max_fd)) != NULL)
> 		filp_close(file, files);

If we can live with close_from(int first) rather than close_range(), then this
can perhaps be done a lot more efficiently by:

	new = alloc_fdtable(first);
	spin_lock(&files->file_lock);
	old = files_fdtable(files);
	copy_fds(new, old, 0, first - 1);
	rcu_assign_pointer(files->fdt, new);
	spin_unlock(&files->file_lock);
	clear_fds(old, 0, first - 1);
	close_fdt_from(old, first);
	kfree_rcu(old);

David

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
