Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC26B677D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 17:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64genxM9NG+NemsnXjXn6iKq6BB29wTBAs+3LWQF89U=; b=pdaRy+EvOcSUNe
	bWTY2Z5I1HQysez2cvDSsqxpEM9dmGMipnwSYU4Lzd5dZ71TYwZ4aHF5T+0TqubCEZflIRWONNphZ
	Sm3k4OuKK4NW0kv+SIfUp1VjA/abTsAKBkPrWUZJKflyMXwfyqzHG9ExPhmihueIP8MMK9/0kex48
	7AkBrZgUcpXYlca8D/SvQLA73FmeBtdRlLtj2e0cKkZheoWSghpW4s60j52VKDSzz2DmkCK/tWM8k
	sfC2jWhJqnFNs688BxPqlcm0d4XKl8MAqLR/5GSZ860UO+mpwjKun82eQ5gIqx6RErPlkiXaB2zxS
	vS+bKIbcPU6kz9LwnAJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcEf-0002Vf-8k; Wed, 18 Sep 2019 15:51:17 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAcES-0002VB-Q1
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:51:06 +0000
Received: by mail-pl1-x642.google.com with SMTP id f19so154021plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 08:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=jTTWKpsvlDAAGPBEiAK3KNt1r6uKkJveEDVY0RCCMk8=;
 b=DNze13ZqH9jWL1S269TGdPGoDbwatxps0RjOVStSzrkveCBcc5wDJiADRZISQeMum2
 j2pcdEW7ldqhqBlPeQQHGam2bcOVcFM4AqM7lyLby2iK5yHUr5cbxdsCSUYx16MB0wVB
 H8BlefBaDZuC+3U6EefprdmbHebqVCOYNAT6HneMAqhlA/KsIylyrS+ht21twDTnrAmF
 6FXwK4s1elerP7UJQjTZ95F1enoq95yQR1ulYypA7p3BtOmAe7hIJbmEc7zSx+1c/y3p
 GfdNvGtShvpfLkx7qQNrBIaZCQO9cPpU+xDFY67JGCu0gvgcO/a+vMVErM52/QfxH2WG
 uMgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=jTTWKpsvlDAAGPBEiAK3KNt1r6uKkJveEDVY0RCCMk8=;
 b=Gfe96U+yN5HP2W2t1xCMrOn/K7S59VOxXghhx6eS+S9Pr+mrFTYM9o8QH3caYEpeFN
 tOsKlxNliVr8AbnBOKUd/DZ2QEuYMehCeDZS4RzQar6biZFFRNlAg35ziTmQClDrfZH6
 /9nYpMr/7FQZOoUqReIe2j6Dbv937lZndbwzj7lBtFhzBAm5gQU3Q/AC6yCIEN6YctWz
 u2qojf0JGDcmOAgbzIRkzzHLJD/PVWSdh78JP0+oPhFsFabVkMo7wDc5wM2uBCEyOGfy
 +1gcSc2LTtLCZ0Fld6FcKz9qtsE9HEIc32URGdk1sCA/HM0YNQfHFY++P1V6b2u0NXTq
 4UIg==
X-Gm-Message-State: APjAAAV1J/RD0MafCGNyy2at6jZx3kZ69IIj0wqzUfiAN4qihYQ0mtxM
 AyOHuQPDccp1up4UcW0jdWY=
X-Google-Smtp-Source: APXvYqyIKJEjwnZ+fBfJHBVtZs1ScWtbuqV0j9hLldeHtCy7n5HIQLT2YNa80/DMuOUunnEA2S0png==
X-Received: by 2002:a17:902:7c14:: with SMTP id
 x20mr4834409pll.289.1568821862962; 
 Wed, 18 Sep 2019 08:51:02 -0700 (PDT)
Received: from localhost ([121.137.63.184])
 by smtp.gmail.com with ESMTPSA id 4sm2489770pja.29.2019.09.18.08.51.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 08:51:01 -0700 (PDT)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
X-Google-Original-From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Date: Thu, 19 Sep 2019 00:50:59 +0900
To: Qian Cai <cai@lca.pw>
Subject: Re: printk() + memory offline deadlock (WAS Re: page_alloc.shuffle=1
 + CONFIG_PROVE_LOCKING=y = arm64 hang)
Message-ID: <20190918155059.GA158834@tigerII.localdomain>
References: <1566509603.5576.10.camel@lca.pw>
 <1567717680.5576.104.camel@lca.pw>
 <1568128954.5576.129.camel@lca.pw>
 <20190911011008.GA4420@jagdpanzerIV>
 <1568289941.5576.140.camel@lca.pw>
 <20190916104239.124fc2e5@gandalf.local.home>
 <1568817579.5576.172.camel@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568817579.5576.172.camel@lca.pw>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_085104_874784_F70DE59F 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Petr Mladek <pmladek@suse.com>, Theodore Ts'o <tytso@mit.edu>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Waiman Long <longman@redhat.com>, Dan Williams <dan.j.williams@intel.com>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On (09/18/19 10:39), Qian Cai wrote:
> > Perhaps for a quick fix (and a comment that says this needs to be fixed
> > properly). I think the changes to printk() that was discussed at
> > Plumbers may also solve this properly.
> =

> I assume that the new printk() stuff will also fix this deadlock between
> printk() and memory offline.

Mother chicken...

Do you actually see a deadlock? I'd rather expect a lockdep splat, but
anyway...

> [=A0=A0317.337595] WARNING: possible circular locking dependency detected
> [=A0=A0317.337596] 5.3.0-next-20190917+ #9 Not tainted
> [=A0=A0317.337597] ------------------------------------------------------
> [=A0=A0317.337597] test.sh/8738 is trying to acquire lock:
> [=A0=A0317.337598] ffffffffb33a4978 ((console_sem).lock){-.-.}, at:> down=
_trylock+0x16/0x50
> =

> [=A0=A0317.337602] but task is already holding lock:
> [=A0=A0317.337602] ffff88883fff4318 (&(&zone->lock)->rlock){-.-.}, at:> s=
tart_isolate_page_range+0x1f7/0x570
> =

> [=A0=A0317.337606] which lock already depends on the new lock.
>
> [=A0=A0317.337608] the existing dependency chain (in reverse order) is:
> =

> [=A0=A0317.337609] -> #3 (&(&zone->lock)->rlock){-.-.}:
> [=A0=A0317.337612]=A0=A0=A0=A0=A0=A0=A0=A0__lock_acquire+0x5b3/0xb40
> [=A0=A0317.337613]=A0=A0=A0=A0=A0=A0=A0=A0lock_acquire+0x126/0x280
> [=A0=A0317.337613]=A0=A0=A0=A0=A0=A0=A0=A0_raw_spin_lock+0x2f/0x40
> [=A0=A0317.337614]=A0=A0=A0=A0=A0=A0=A0=A0rmqueue_bulk.constprop.21+0xb6/=
0x1160
> [=A0=A0317.337615]=A0=A0=A0=A0=A0=A0=A0=A0get_page_from_freelist+0x898/0x=
22c0
> [=A0=A0317.337616]=A0=A0=A0=A0=A0=A0=A0=A0__alloc_pages_nodemask+0x2f3/0x=
1cd0
> [=A0=A0317.337617]=A0=A0=A0=A0=A0=A0=A0=A0alloc_page_interleave+0x18/0x130
> [=A0=A0317.337618]=A0=A0=A0=A0=A0=A0=A0=A0alloc_pages_current+0xf6/0x110
> [=A0=A0317.337619]=A0=A0=A0=A0=A0=A0=A0=A0allocate_slab+0x4c6/0x19c0
> [=A0=A0317.337620]=A0=A0=A0=A0=A0=A0=A0=A0new_slab+0x46/0x70
> [=A0=A0317.337621]=A0=A0=A0=A0=A0=A0=A0=A0___slab_alloc+0x58b/0x960
> [=A0=A0317.337621]=A0=A0=A0=A0=A0=A0=A0=A0__slab_alloc+0x43/0x70
> [=A0=A0317.337622]=A0=A0=A0=A0=A0=A0=A0=A0kmem_cache_alloc+0x354/0x460
> [=A0=A0317.337623]=A0=A0=A0=A0=A0=A0=A0=A0fill_pool+0x272/0x4b0
> [=A0=A0317.337624]=A0=A0=A0=A0=A0=A0=A0=A0__debug_object_init+0x86/0x790
> [=A0=A0317.337624]=A0=A0=A0=A0=A0=A0=A0=A0debug_object_init+0x16/0x20
> [=A0=A0317.337625]=A0=A0=A0=A0=A0=A0=A0=A0hrtimer_init+0x27/0x1e0
> [=A0=A0317.337626]=A0=A0=A0=A0=A0=A0=A0=A0init_dl_task_timer+0x20/0x40
> [=A0=A0317.337627]=A0=A0=A0=A0=A0=A0=A0=A0__sched_fork+0x10b/0x1f0
> [=A0=A0317.337627]=A0=A0=A0=A0=A0=A0=A0=A0init_idle+0xac/0x520
> [=A0=A0317.337628]=A0=A0=A0=A0=A0=A0=A0=A0idle_thread_get+0x7c/0xc0
> [=A0=A0317.337629]=A0=A0=A0=A0=A0=A0=A0=A0bringup_cpu+0x1a/0x1e0
> [=A0=A0317.337630]=A0=A0=A0=A0=A0=A0=A0=A0cpuhp_invoke_callback+0x197/0x1=
120
> [=A0=A0317.337630]=A0=A0=A0=A0=A0=A0=A0=A0_cpu_up+0x171/0x280
> [=A0=A0317.337631]=A0=A0=A0=A0=A0=A0=A0=A0do_cpu_up+0xb1/0x120
> [=A0=A0317.337632]=A0=A0=A0=A0=A0=A0=A0=A0cpu_up+0x13/0x20
> [=A0=A0317.337632]=A0=A0=A0=A0=A0=A0=A0=A0smp_init+0xa4/0x12d
> [=A0=A0317.337633]=A0=A0=A0=A0=A0=A0=A0=A0kernel_init_freeable+0x37e/0x76e
> [=A0=A0317.337634]=A0=A0=A0=A0=A0=A0=A0=A0kernel_init+0x11/0x12f
> [=A0=A0317.337635]=A0=A0=A0=A0=A0=A0=A0=A0ret_from_fork+0x3a/0x50

So you have debug objects enabled. Right? This thing does not behave
when it comes to printing. debug_objects are slightly problematic.

This thing does

	rq->lock --> zone->lock

It takes rq->lock and then calls into __sched_fork()->hrtimer_init()->debug=
_objects()->MM

This doesn't look very right - a dive into MM under rq->lock.

Peter, Thomas am I wrong?

> [=A0=A0317.337635] -> #2 (&rq->lock){-.-.}:
> [=A0=A0317.337638]=A0=A0=A0=A0=A0=A0=A0=A0__lock_acquire+0x5b3/0xb40
> [=A0=A0317.337639]=A0=A0=A0=A0=A0=A0=A0=A0lock_acquire+0x126/0x280
> [=A0=A0317.337639]=A0=A0=A0=A0=A0=A0=A0=A0_raw_spin_lock+0x2f/0x40
> [=A0=A0317.337640]=A0=A0=A0=A0=A0=A0=A0=A0task_fork_fair+0x43/0x200
> [=A0=A0317.337641]=A0=A0=A0=A0=A0=A0=A0=A0sched_fork+0x29b/0x420
> [=A0=A0317.337642]=A0=A0=A0=A0=A0=A0=A0=A0copy_process+0xf3c/0x2fd0
> [=A0=A0317.337642]=A0=A0=A0=A0=A0=A0=A0=A0_do_fork+0xef/0x950
> [=A0=A0317.337643]=A0=A0=A0=A0=A0=A0=A0=A0kernel_thread+0xa8/0xe0
> [=A0=A0317.337644]=A0=A0=A0=A0=A0=A0=A0=A0rest_init+0x28/0x311
> [=A0=A0317.337645]=A0=A0=A0=A0=A0=A0=A0=A0arch_call_rest_init+0xe/0x1b
> [=A0=A0317.337645]=A0=A0=A0=A0=A0=A0=A0=A0start_kernel+0x6eb/0x724
> [=A0=A0317.337646]=A0=A0=A0=A0=A0=A0=A0=A0x86_64_start_reservations+0x24/=
0x26
> [=A0=A0317.337647]=A0=A0=A0=A0=A0=A0=A0=A0x86_64_start_kernel+0xf4/0xfb
> [=A0=A0317.337648]=A0=A0=A0=A0=A0=A0=A0=A0secondary_startup_64+0xb6/0xc0

pi_lock --> rq->lock

> [=A0=A0317.337649] -> #1 (&p->pi_lock){-.-.}:
> [=A0=A0317.337651]=A0=A0=A0=A0=A0=A0=A0=A0__lock_acquire+0x5b3/0xb40
> [=A0=A0317.337652]=A0=A0=A0=A0=A0=A0=A0=A0lock_acquire+0x126/0x280
> [=A0=A0317.337653]=A0=A0=A0=A0=A0=A0=A0=A0_raw_spin_lock_irqsave+0x3a/0x50
> [=A0=A0317.337653]=A0=A0=A0=A0=A0=A0=A0=A0try_to_wake_up+0xb4/0x1030
> [=A0=A0317.337654]=A0=A0=A0=A0=A0=A0=A0=A0wake_up_process+0x15/0x20
> [=A0=A0317.337655]=A0=A0=A0=A0=A0=A0=A0=A0__up+0xaa/0xc0
> [=A0=A0317.337655]=A0=A0=A0=A0=A0=A0=A0=A0up+0x55/0x60
> [=A0=A0317.337656]=A0=A0=A0=A0=A0=A0=A0=A0__up_console_sem+0x37/0x60
> [=A0=A0317.337657]=A0=A0=A0=A0=A0=A0=A0=A0console_unlock+0x3a0/0x750
> [=A0=A0317.337658]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_emit+0x10d/0x340
> [=A0=A0317.337658]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_default+0x1f/0x30
> [=A0=A0317.337659]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_func+0x44/0xd4
> [=A0=A0317.337660]=A0=A0=A0=A0=A0=A0=A0=A0printk+0x9f/0xc5
> [=A0=A0317.337660]=A0=A0=A0=A0=A0=A0=A0=A0crng_reseed+0x3cc/0x440
> [=A0=A0317.337661]=A0=A0=A0=A0=A0=A0=A0=A0credit_entropy_bits+0x3e8/0x4f0
> [=A0=A0317.337662]=A0=A0=A0=A0=A0=A0=A0=A0random_ioctl+0x1eb/0x250
> [=A0=A0317.337663]=A0=A0=A0=A0=A0=A0=A0=A0do_vfs_ioctl+0x13e/0xa70
> [=A0=A0317.337663]=A0=A0=A0=A0=A0=A0=A0=A0ksys_ioctl+0x41/0x80
> [=A0=A0317.337664]=A0=A0=A0=A0=A0=A0=A0=A0__x64_sys_ioctl+0x43/0x4c
> [=A0=A0317.337665]=A0=A0=A0=A0=A0=A0=A0=A0do_syscall_64+0xcc/0x76c
> [=A0=A0317.337666]=A0=A0=A0=A0=A0=A0=A0=A0entry_SYSCALL_64_after_hwframe+=
0x49/0xbe

console_sem->lock --> pi_lock

This also covers console_sem->lock --> rq->lock, and maintains
pi_lock --> rq->lock

So we have

	console_sem->lock --> pi_lock --> rq->lock

> [=A0=A0317.337667] -> #0 ((console_sem).lock){-.-.}:
> [=A0=A0317.337669]=A0=A0=A0=A0=A0=A0=A0=A0check_prev_add+0x107/0xea0
> [=A0=A0317.337670]=A0=A0=A0=A0=A0=A0=A0=A0validate_chain+0x8fc/0x1200
> [=A0=A0317.337671]=A0=A0=A0=A0=A0=A0=A0=A0__lock_acquire+0x5b3/0xb40
> [=A0=A0317.337671]=A0=A0=A0=A0=A0=A0=A0=A0lock_acquire+0x126/0x280
> [=A0=A0317.337672]=A0=A0=A0=A0=A0=A0=A0=A0_raw_spin_lock_irqsave+0x3a/0x50
> [=A0=A0317.337673]=A0=A0=A0=A0=A0=A0=A0=A0down_trylock+0x16/0x50
> [=A0=A0317.337674]=A0=A0=A0=A0=A0=A0=A0=A0__down_trylock_console_sem+0x2b=
/0xa0
> [=A0=A0317.337675]=A0=A0=A0=A0=A0=A0=A0=A0console_trylock+0x16/0x60
> [=A0=A0317.337676]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_emit+0x100/0x340
> [=A0=A0317.337677]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_default+0x1f/0x30
> [=A0=A0317.337678]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_func+0x44/0xd4
> [=A0=A0317.337678]=A0=A0=A0=A0=A0=A0=A0=A0printk+0x9f/0xc5
> [=A0=A0317.337679]=A0=A0=A0=A0=A0=A0=A0=A0__dump_page.cold.2+0x73/0x210
> [=A0=A0317.337680]=A0=A0=A0=A0=A0=A0=A0=A0dump_page+0x12/0x50
> [=A0=A0317.337680]=A0=A0=A0=A0=A0=A0=A0=A0has_unmovable_pages+0x3e9/0x4b0
> [=A0=A0317.337681]=A0=A0=A0=A0=A0=A0=A0=A0start_isolate_page_range+0x3b4/=
0x570
> [=A0=A0317.337682]=A0=A0=A0=A0=A0=A0=A0=A0__offline_pages+0x1ad/0xa10
> [=A0=A0317.337683]=A0=A0=A0=A0=A0=A0=A0=A0offline_pages+0x11/0x20
> [=A0=A0317.337683]=A0=A0=A0=A0=A0=A0=A0=A0memory_subsys_offline+0x7e/0xc0
> [=A0=A0317.337684]=A0=A0=A0=A0=A0=A0=A0=A0device_offline+0xd5/0x110
> [=A0=A0317.337685]=A0=A0=A0=A0=A0=A0=A0=A0state_store+0xc6/0xe0
> [=A0=A0317.337686]=A0=A0=A0=A0=A0=A0=A0=A0dev_attr_store+0x3f/0x60
> [=A0=A0317.337686]=A0=A0=A0=A0=A0=A0=A0=A0sysfs_kf_write+0x89/0xb0
> [=A0=A0317.337687]=A0=A0=A0=A0=A0=A0=A0=A0kernfs_fop_write+0x188/0x240
> [=A0=A0317.337688]=A0=A0=A0=A0=A0=A0=A0=A0__vfs_write+0x50/0xa0
> [=A0=A0317.337688]=A0=A0=A0=A0=A0=A0=A0=A0vfs_write+0x105/0x290
> [=A0=A0317.337689]=A0=A0=A0=A0=A0=A0=A0=A0ksys_write+0xc6/0x160
> [=A0=A0317.337690]=A0=A0=A0=A0=A0=A0=A0=A0__x64_sys_write+0x43/0x50
> [=A0=A0317.337691]=A0=A0=A0=A0=A0=A0=A0=A0do_syscall_64+0xcc/0x76c
> [=A0=A0317.337691]=A0=A0=A0=A0=A0=A0=A0=A0entry_SYSCALL_64_after_hwframe+=
0x49/0xbe

zone->lock --> console_sem->lock

So then we have

	zone->lock --> console_sem->lock --> pi_lock --> rq->lock

  vs. the reverse chain

	rq->lock --> console_sem->lock

If I get this right.

> [=A0=A0317.337693] other info that might help us debug this:
> =

> [=A0=A0317.337694] Chain exists of:
> [=A0=A0317.337694]=A0=A0=A0(console_sem).lock --> &rq->lock --> &(&zone->=
lock)->rlock
> =

> [=A0=A0317.337699]=A0=A0Possible unsafe locking scenario:
> =

> [=A0=A0317.337700]=A0=A0=A0=A0=A0=A0=A0=A0CPU0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0CPU1
> [=A0=A0317.337701]=A0=A0=A0=A0=A0=A0=A0=A0----=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0----
> [=A0=A0317.337701]=A0=A0=A0lock(&(&zone->lock)->rlock);
> [=A0=A0317.337703]=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0lock(&rq->lock);
> [=A0=A0317.337705]=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0lock(&(&zone->lock)->rlock);
> [=A0=A0317.337706]=A0=A0=A0lock((console_sem).lock);
>
> [=A0=A0317.337708]=A0=A0*** DEADLOCK ***
> =

> [=A0=A0317.337710] 8 locks held by test.sh/8738:
> [=A0=A0317.337710]=A0=A0#0: ffff8883940b5408 (sb_writers#4){.+.+}, at: vf=
s_write+0x25f/0x290
> [=A0=A0317.337713]=A0=A0#1: ffff889fce310280 (&of->mutex){+.+.}, at: kern=
fs_fop_write+0x128/0x240
> [=A0=A0317.337716]=A0=A0#2: ffff889feb6d4830 (kn->count#115){.+.+}, at: k=
ernfs_fop_write+0x138/0x240
> [=A0=A0317.337720]=A0=A0#3: ffffffffb3762d40 (device_hotplug_lock){+.+.},=
 at: lock_device_hotplug_sysfs+0x16/0x50
> [=A0=A0317.337723]=A0=A0#4: ffff88981f0dc990 (&dev->mutex){....}, at: dev=
ice_offline+0x70/0x110
> [=A0=A0317.337726]=A0=A0#5: ffffffffb3315250 (cpu_hotplug_lock.rw_sem){++=
++}, at: __offline_pages+0xbf/0xa10
> [=A0=A0317.337729]=A0=A0#6: ffffffffb35408b0 (mem_hotplug_lock.rw_sem){++=
++}, at:  percpu_down_write+0x87/0x2f0
> [=A0=A0317.337732]=A0=A0#7: ffff88883fff4318 (&(&zone->lock)->rlock){-.-.=
}, at: start_isolate_page_range+0x1f7/0x570
> [=A0=A0317.337736] stack backtrace:
> [=A0=A0317.337737] CPU: 58 PID: 8738 Comm: test.sh Not tainted 5.3.0-next=
-20190917+ #9
> [=A0=A0317.337738] Hardware name: HPE ProLiant DL560 Gen10/ProLiant DL560=
 Gen10, BIOS U34 05/21/2019
> [=A0=A0317.337739] Call Trace:
> [=A0=A0317.337739]=A0=A0dump_stack+0x86/0xca
> [=A0=A0317.337740]=A0=A0print_circular_bug.cold.31+0x243/0x26e
> [=A0=A0317.337741]=A0=A0check_noncircular+0x29e/0x2e0
> [=A0=A0317.337742]=A0=A0? debug_lockdep_rcu_enabled+0x4b/0x60
> [=A0=A0317.337742]=A0=A0? print_circular_bug+0x120/0x120
> [=A0=A0317.337743]=A0=A0? is_ftrace_trampoline+0x9/0x20
> [=A0=A0317.337744]=A0=A0? kernel_text_address+0x59/0xc0
> [=A0=A0317.337744]=A0=A0? __kernel_text_address+0x12/0x40
> [=A0=A0317.337745]=A0=A0check_prev_add+0x107/0xea0
> [=A0=A0317.337746]=A0=A0validate_chain+0x8fc/0x1200
> [=A0=A0317.337746]=A0=A0? check_prev_add+0xea0/0xea0
> [=A0=A0317.337747]=A0=A0? format_decode+0xd6/0x600
> [=A0=A0317.337748]=A0=A0? file_dentry_name+0xe0/0xe0
> [=A0=A0317.337749]=A0=A0__lock_acquire+0x5b3/0xb40
> [=A0=A0317.337749]=A0=A0lock_acquire+0x126/0x280
> [=A0=A0317.337750]=A0=A0? down_trylock+0x16/0x50
> [=A0=A0317.337751]=A0=A0? vprintk_emit+0x100/0x340
> [=A0=A0317.337752]=A0=A0_raw_spin_lock_irqsave+0x3a/0x50
> [=A0=A0317.337753]=A0=A0? down_trylock+0x16/0x50
> [=A0=A0317.337753]=A0=A0down_trylock+0x16/0x50
> [=A0=A0317.337754]=A0=A0? vprintk_emit+0x100/0x340
> [=A0=A0317.337755]=A0=A0__down_trylock_console_sem+0x2b/0xa0
> [=A0=A0317.337756]=A0=A0console_trylock+0x16/0x60
> [=A0=A0317.337756]=A0=A0vprintk_emit+0x100/0x340
> [=A0=A0317.337757]=A0=A0vprintk_default+0x1f/0x30
> [=A0=A0317.337758]=A0=A0vprintk_func+0x44/0xd4
> [=A0=A0317.337758]=A0=A0printk+0x9f/0xc5
> [=A0=A0317.337759]=A0=A0? kmsg_dump_rewind_nolock+0x64/0x64
> [=A0=A0317.337760]=A0=A0? __dump_page+0x1d7/0x430
> [=A0=A0317.337760]=A0=A0__dump_page.cold.2+0x73/0x210
> [=A0=A0317.337761]=A0=A0dump_page+0x12/0x50
> [=A0=A0317.337762]=A0=A0has_unmovable_pages+0x3e9/0x4b0
> [=A0=A0317.337763]=A0=A0start_isolate_page_range+0x3b4/0x570
> [=A0=A0317.337763]=A0=A0? unset_migratetype_isolate+0x280/0x280
> [=A0=A0317.337764]=A0=A0? rcu_read_lock_bh_held+0xc0/0xc0
> [=A0=A0317.337765]=A0=A0__offline_pages+0x1ad/0xa10
> [=A0=A0317.337765]=A0=A0? lock_acquire+0x126/0x280
> [=A0=A0317.337766]=A0=A0? __add_memory+0xc0/0xc0
> [=A0=A0317.337767]=A0=A0? __kasan_check_write+0x14/0x20
> [=A0=A0317.337767]=A0=A0? __mutex_lock+0x344/0xcd0
> [=A0=A0317.337768]=A0=A0? _raw_spin_unlock_irqrestore+0x49/0x50
> [=A0=A0317.337769]=A0=A0? device_offline+0x70/0x110
> [=A0=A0317.337770]=A0=A0? klist_next+0x1c1/0x1e0
> [=A0=A0317.337770]=A0=A0? __mutex_add_waiter+0xc0/0xc0
> [=A0=A0317.337771]=A0=A0? klist_next+0x10b/0x1e0
> [=A0=A0317.337772]=A0=A0? klist_iter_exit+0x16/0x40
> [=A0=A0317.337772]=A0=A0? device_for_each_child+0xd0/0x110
> [=A0=A0317.337773]=A0=A0offline_pages+0x11/0x20
> [=A0=A0317.337774]=A0=A0memory_subsys_offline+0x7e/0xc0
> [=A0=A0317.337774]=A0=A0device_offline+0xd5/0x110
> [=A0=A0317.337775]=A0=A0? auto_online_blocks_show+0x70/0x70
> [=A0=A0317.337776]=A0=A0state_store+0xc6/0xe0
> [=A0=A0317.337776]=A0=A0dev_attr_store+0x3f/0x60
> [=A0=A0317.337777]=A0=A0? device_match_name+0x40/0x40
> [=A0=A0317.337778]=A0=A0sysfs_kf_write+0x89/0xb0
> [=A0=A0317.337778]=A0=A0? sysfs_file_ops+0xa0/0xa0
> [=A0=A0317.337779]=A0=A0kernfs_fop_write+0x188/0x240
> [=A0=A0317.337780]=A0=A0__vfs_write+0x50/0xa0
> [=A0=A0317.337780]=A0=A0vfs_write+0x105/0x290
> [=A0=A0317.337781]=A0=A0ksys_write+0xc6/0x160
> [=A0=A0317.337782]=A0=A0? __x64_sys_read+0x50/0x50
> [=A0=A0317.337782]=A0=A0? do_syscall_64+0x79/0x76c
> [=A0=A0317.337783]=A0=A0? do_syscall_64+0x79/0x76c
> [=A0=A0317.337784]=A0=A0__x64_sys_write+0x43/0x50
> [=A0=A0317.337784]=A0=A0do_syscall_64+0xcc/0x76c
> [=A0=A0317.337785]=A0=A0? trace_hardirqs_on_thunk+0x1a/0x20
> [=A0=A0317.337786]=A0=A0? syscall_return_slowpath+0x210/0x210
> [=A0=A0317.337787]=A0=A0? entry_SYSCALL_64_after_hwframe+0x3e/0xbe
> [=A0=A0317.337787]=A0=A0? trace_hardirqs_off_caller+0x3a/0x150
> [=A0=A0317.337788]=A0=A0? trace_hardirqs_off_thunk+0x1a/0x20
> [=A0=A0317.337789]=A0=A0entry_SYSCALL_64_after_hwframe+0x49/0xbe

Lovely.

	-ss

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
