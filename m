Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE12BBB221
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 12:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQ4G/xmfu0nzwwFwGAgoM0cUZ40Sr/Rz0QKpngd35K4=; b=sdAKCOZ2Cc61Vv
	l2wtj0mrfjq5t3gX2KG1ZWf8uxtWxtv/vExauuincuItRS3rjlg8VhIsuZIQGoVvtpx9bGfyxnhRU
	y1G4kDNsAMe0FWAWOKZ+WxX1rcaNKmsgwJXOPAjG/pV2PyNWChfy45ppYGjqTDwJ+j6++PMy+XUBq
	idCZXHLdv2DpCPtenTC6h/SCz4T709nr8CUXFIvlUH2U9MExNWeOMsSqMjmqvhzI3kXSLiXn+ozli
	mnzlT9eZlAY8BerjJ0UoNNhfcX9CnKWiWRL1gCr57ryCs2J0FoDx9SXOTFWTfpc2feNTUkOvqBPor
	iLM1MALz+PqGL/apMKBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCLT0-0000ZH-7h; Mon, 23 Sep 2019 10:21:14 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCLSs-0000Yv-Lp
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 10:21:08 +0000
Received: by mail-pg1-x543.google.com with SMTP id h17so5229377pgb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 03:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=CXvbstD2m08lCzQh36duEA5ws0bxBPn6LqTdvVcfkS4=;
 b=IDEfImopZM+uhUkTwx6z6NBrJo2aMW0JluC4He2eeVrx3Enr+nqtwDcFdQ90gDWTN7
 f5dKe1J5zyEesLT/TIMB4N9k8Aznfh1hRu0K2ice0sEUQzsNEF7ABYH54cBkC2nMXvCW
 sOEWLqL9bIDP0KhdmDg8oMuztPgg2t0TBvAvacpuoYYybqc7ifYt0XYAu6L+Zyd3z5kW
 AZtM2lEo9LHDl2+lBZtV8y9kTSYWg7XUzBemMsMa829ubhzUNkhxh6GFy4h8boT+hRpI
 Y9IKxnj2RBhQ1dlbaypEXmmru6Jm0bnYfcFZfEa/fq9AXS7EE/PczhtK5F/PBdR0hzAB
 9rOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=CXvbstD2m08lCzQh36duEA5ws0bxBPn6LqTdvVcfkS4=;
 b=HI80PJEtbPfGQwpDWkPFrFr6XlPpUHpeBp9aHhFy32gAv3oPZifJXCMZsDapB++73c
 7EIYNfwZtwdzzQTzUR6PC+Coh4pGswdPW3af4cNfcdIuLod6aWJhRyuLI19eibBH0SAV
 XgjKDQZ8sJCv8vlQaxv5FFuTQJuQm9AslHsuQvUSAk0d5dfcdP4WRydrJQtBRBd4O1jI
 RCKAWHcxsfBf5dof/Bub47aeSrqpD9n+0Ct192BdzqOeWH0HH+S4hMZUtJLDUspLJwAw
 tD7MVg6mhJw9Mo/YzJSr2mrLU1J3dc1fUKv7Hox7mlNB4xGyBxzrsQmzqWzY+ugzFtGK
 U0nA==
X-Gm-Message-State: APjAAAX4q57/nPICdLjNxSEqdCOtPFoAqYGmthJu5ETssARxW33F6fD2
 JWhGncgBDvYnmMNPBfu7i6Y=
X-Google-Smtp-Source: APXvYqwgTjx/Ho05abUBRZtOqhFdPYqvJK1KmpHYQN3e+VYW1sen0LuZHG10cGI6bBC7ftaWS4s/8w==
X-Received: by 2002:a62:8702:: with SMTP id i2mr32616605pfe.187.1569234065362; 
 Mon, 23 Sep 2019 03:21:05 -0700 (PDT)
Received: from localhost ([110.70.15.104])
 by smtp.gmail.com with ESMTPSA id q71sm11380351pjb.26.2019.09.23.03.21.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 03:21:04 -0700 (PDT)
Date: Mon, 23 Sep 2019 19:21:00 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: printk() + memory offline deadlock (WAS Re: page_alloc.shuffle=1
 + CONFIG_PROVE_LOCKING=y = arm64 hang)
Message-ID: <20190923102100.GA1171@jagdpanzerIV>
References: <1566509603.5576.10.camel@lca.pw>
 <1567717680.5576.104.camel@lca.pw>
 <1568128954.5576.129.camel@lca.pw>
 <20190911011008.GA4420@jagdpanzerIV>
 <1568289941.5576.140.camel@lca.pw>
 <20190916104239.124fc2e5@gandalf.local.home>
 <1568817579.5576.172.camel@lca.pw>
 <20190918155059.GA158834@tigerII.localdomain>
 <1568823006.5576.178.camel@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568823006.5576.178.camel@lca.pw>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_032106_743365_67874A39 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Waiman Long <longman@redhat.com>, Dan Williams <dan.j.williams@intel.com>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On (09/18/19 12:10), Qian Cai wrote:
[..]
> > So you have debug objects enabled. Right? This thing does not behave
> > when it comes to printing. debug_objects are slightly problematic.
> =

> Yes, but there is an also a similar splat without the debug_objects. It l=
ooks
> like anything try to allocate memory in that path will trigger it anyway.

Appears to be different, yet somehow very familiar.

> [=A0=A0297.425908] WARNING: possible circular locking dependency detected
> [=A0=A0297.425908] 5.3.0-next-20190917 #8 Not tainted
> [=A0=A0297.425909] ------------------------------------------------------
> [=A0=A0297.425910] test.sh/8653 is trying to acquire lock:
> [=A0=A0297.425911] ffffffff865a4460 (console_owner){-.-.}, at:
> console_unlock+0x207/0x750
> =

> [=A0=A0297.425914] but task is already holding lock:
> [=A0=A0297.425915] ffff88883fff3c58 (&(&zone->lock)->rlock){-.-.}, at:
> __offline_isolated_pages+0x179/0x3e0
> =

> [=A0=A0297.425919] which lock already depends on the new lock.
> =

> =

> [=A0=A0297.425920] the existing dependency chain (in reverse order) is:
> =

> [=A0=A0297.425922] -> #3 (&(&zone->lock)->rlock){-.-.}:
> [=A0=A0297.425925]=A0=A0=A0=A0=A0=A0=A0=A0__lock_acquire+0x5b3/0xb40
> [=A0=A0297.425925]=A0=A0=A0=A0=A0=A0=A0=A0lock_acquire+0x126/0x280
> [=A0=A0297.425926]=A0=A0=A0=A0=A0=A0=A0=A0_raw_spin_lock+0x2f/0x40
> [=A0=A0297.425927]=A0=A0=A0=A0=A0=A0=A0=A0rmqueue_bulk.constprop.21+0xb6/=
0x1160
> [=A0=A0297.425928]=A0=A0=A0=A0=A0=A0=A0=A0get_page_from_freelist+0x898/0x=
22c0
> [=A0=A0297.425928]=A0=A0=A0=A0=A0=A0=A0=A0__alloc_pages_nodemask+0x2f3/0x=
1cd0
> [=A0=A0297.425929]=A0=A0=A0=A0=A0=A0=A0=A0alloc_pages_current+0x9c/0x110
> [=A0=A0297.425930]=A0=A0=A0=A0=A0=A0=A0=A0allocate_slab+0x4c6/0x19c0
> [=A0=A0297.425931]=A0=A0=A0=A0=A0=A0=A0=A0new_slab+0x46/0x70
> [=A0=A0297.425931]=A0=A0=A0=A0=A0=A0=A0=A0___slab_alloc+0x58b/0x960
> [=A0=A0297.425932]=A0=A0=A0=A0=A0=A0=A0=A0__slab_alloc+0x43/0x70
> [=A0=A0297.425933]=A0=A0=A0=A0=A0=A0=A0=A0__kmalloc+0x3ad/0x4b0
> [=A0=A0297.425933]=A0=A0=A0=A0=A0=A0=A0=A0__tty_buffer_request_room+0x100=
/0x250
> [=A0=A0297.425934]=A0=A0=A0=A0=A0=A0=A0=A0tty_insert_flip_string_fixed_fl=
ag+0x67/0x110
> [=A0=A0297.425935]=A0=A0=A0=A0=A0=A0=A0=A0pty_write+0xa2/0xf0
> [=A0=A0297.425936]=A0=A0=A0=A0=A0=A0=A0=A0n_tty_write+0x36b/0x7b0
> [=A0=A0297.425936]=A0=A0=A0=A0=A0=A0=A0=A0tty_write+0x284/0x4c0
> [=A0=A0297.425937]=A0=A0=A0=A0=A0=A0=A0=A0__vfs_write+0x50/0xa0
> [=A0=A0297.425938]=A0=A0=A0=A0=A0=A0=A0=A0vfs_write+0x105/0x290
> [=A0=A0297.425939]=A0=A0=A0=A0=A0=A0=A0=A0redirected_tty_write+0x6a/0xc0
> [=A0=A0297.425939]=A0=A0=A0=A0=A0=A0=A0=A0do_iter_write+0x248/0x2a0
> [=A0=A0297.425940]=A0=A0=A0=A0=A0=A0=A0=A0vfs_writev+0x106/0x1e0
> [=A0=A0297.425941]=A0=A0=A0=A0=A0=A0=A0=A0do_writev+0xd4/0x180
> [=A0=A0297.425941]=A0=A0=A0=A0=A0=A0=A0=A0__x64_sys_writev+0x45/0x50
> [=A0=A0297.425942]=A0=A0=A0=A0=A0=A0=A0=A0do_syscall_64+0xcc/0x76c
> [=A0=A0297.425943]=A0=A0=A0=A0=A0=A0=A0=A0entry_SYSCALL_64_after_hwframe+=
0x49/0xbe
> =

> [=A0=A0297.425944] -> #2 (&(&port->lock)->rlock){-.-.}:
> [=A0=A0297.425946]=A0=A0=A0=A0=A0=A0=A0=A0__lock_acquire+0x5b3/0xb40
> [=A0=A0297.425947]=A0=A0=A0=A0=A0=A0=A0=A0lock_acquire+0x126/0x280
> [=A0=A0297.425948]=A0=A0=A0=A0=A0=A0=A0=A0_raw_spin_lock_irqsave+0x3a/0x50
> [=A0=A0297.425949]=A0=A0=A0=A0=A0=A0=A0=A0tty_port_tty_get+0x20/0x60
> [=A0=A0297.425949]=A0=A0=A0=A0=A0=A0=A0=A0tty_port_default_wakeup+0xf/0x30
> [=A0=A0297.425950]=A0=A0=A0=A0=A0=A0=A0=A0tty_port_tty_wakeup+0x39/0x40
> [=A0=A0297.425951]=A0=A0=A0=A0=A0=A0=A0=A0uart_write_wakeup+0x2a/0x40
> [=A0=A0297.425952]=A0=A0=A0=A0=A0=A0=A0=A0serial8250_tx_chars+0x22e/0x440
> [=A0=A0297.425952]=A0=A0=A0=A0=A0=A0=A0=A0serial8250_handle_irq.part.8+0x=
14a/0x170
> [=A0=A0297.425953]=A0=A0=A0=A0=A0=A0=A0=A0serial8250_default_handle_irq+0=
x5c/0x90
> [=A0=A0297.425954]=A0=A0=A0=A0=A0=A0=A0=A0serial8250_interrupt+0xa6/0x130
> [=A0=A0297.425955]=A0=A0=A0=A0=A0=A0=A0=A0__handle_irq_event_percpu+0x78/=
0x4f0
> [=A0=A0297.425955]=A0=A0=A0=A0=A0=A0=A0=A0handle_irq_event_percpu+0x70/0x=
100
> [=A0=A0297.425956]=A0=A0=A0=A0=A0=A0=A0=A0handle_irq_event+0x5a/0x8b
> [=A0=A0297.425957]=A0=A0=A0=A0=A0=A0=A0=A0handle_edge_irq+0x117/0x370
> [=A0=A0297.425958]=A0=A0=A0=A0=A0=A0=A0=A0do_IRQ+0x9e/0x1e0
> [=A0=A0297.425958]=A0=A0=A0=A0=A0=A0=A0=A0ret_from_intr+0x0/0x2a
> [=A0=A0297.425959]=A0=A0=A0=A0=A0=A0=A0=A0cpuidle_enter_state+0x156/0x8e0
> [=A0=A0297.425960]=A0=A0=A0=A0=A0=A0=A0=A0cpuidle_enter+0x41/0x70
> [=A0=A0297.425960]=A0=A0=A0=A0=A0=A0=A0=A0call_cpuidle+0x5e/0x90
> [=A0=A0297.425961]=A0=A0=A0=A0=A0=A0=A0=A0do_idle+0x333/0x370
> [=A0=A0297.425962]=A0=A0=A0=A0=A0=A0=A0=A0cpu_startup_entry+0x1d/0x1f
> [=A0=A0297.425962]=A0=A0=A0=A0=A0=A0=A0=A0start_secondary+0x290/0x330
> [=A0=A0297.425963]=A0=A0=A0=A0=A0=A0=A0=A0secondary_startup_64+0xb6/0xc0
> =

> [=A0=A0297.425964] -> #1 (&port_lock_key){-.-.}:
> [=A0=A0297.425967]=A0=A0=A0=A0=A0=A0=A0=A0__lock_acquire+0x5b3/0xb40
> [=A0=A0297.425967]=A0=A0=A0=A0=A0=A0=A0=A0lock_acquire+0x126/0x280
> [=A0=A0297.425968]=A0=A0=A0=A0=A0=A0=A0=A0_raw_spin_lock_irqsave+0x3a/0x50
> [=A0=A0297.425969]=A0=A0=A0=A0=A0=A0=A0=A0serial8250_console_write+0x3e4/=
0x450
> [=A0=A0297.425970]=A0=A0=A0=A0=A0=A0=A0=A0univ8250_console_write+0x4b/0x60
> [=A0=A0297.425970]=A0=A0=A0=A0=A0=A0=A0=A0console_unlock+0x501/0x750
> [=A0=A0297.425971]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_emit+0x10d/0x340
> [=A0=A0297.425972]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_default+0x1f/0x30
> [=A0=A0297.425972]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_func+0x44/0xd4
> [=A0=A0297.425973]=A0=A0=A0=A0=A0=A0=A0=A0printk+0x9f/0xc5
> [=A0=A0297.425974]=A0=A0=A0=A0=A0=A0=A0=A0register_console+0x39c/0x520
> [=A0=A0297.425975]=A0=A0=A0=A0=A0=A0=A0=A0univ8250_console_init+0x23/0x2d
> [=A0=A0297.425975]=A0=A0=A0=A0=A0=A0=A0=A0console_init+0x338/0x4cd
> [=A0=A0297.425976]=A0=A0=A0=A0=A0=A0=A0=A0start_kernel+0x534/0x724
> [=A0=A0297.425977]=A0=A0=A0=A0=A0=A0=A0=A0x86_64_start_reservations+0x24/=
0x26
> [=A0=A0297.425977]=A0=A0=A0=A0=A0=A0=A0=A0x86_64_start_kernel+0xf4/0xfb
> [=A0=A0297.425978]=A0=A0=A0=A0=A0=A0=A0=A0secondary_startup_64+0xb6/0xc0
> =

> [=A0=A0297.425979] -> #0 (console_owner){-.-.}:
> [=A0=A0297.425982]=A0=A0=A0=A0=A0=A0=A0=A0check_prev_add+0x107/0xea0
> [=A0=A0297.425982]=A0=A0=A0=A0=A0=A0=A0=A0validate_chain+0x8fc/0x1200
> [=A0=A0297.425983]=A0=A0=A0=A0=A0=A0=A0=A0__lock_acquire+0x5b3/0xb40
> [=A0=A0297.425984]=A0=A0=A0=A0=A0=A0=A0=A0lock_acquire+0x126/0x280
> [=A0=A0297.425984]=A0=A0=A0=A0=A0=A0=A0=A0console_unlock+0x269/0x750
> [=A0=A0297.425985]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_emit+0x10d/0x340
> [=A0=A0297.425986]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_default+0x1f/0x30
> [=A0=A0297.425987]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_func+0x44/0xd4
> [=A0=A0297.425987]=A0=A0=A0=A0=A0=A0=A0=A0printk+0x9f/0xc5
> [=A0=A0297.425988]=A0=A0=A0=A0=A0=A0=A0=A0__offline_isolated_pages.cold.5=
2+0x2f/0x30a
> [=A0=A0297.425989]=A0=A0=A0=A0=A0=A0=A0=A0offline_isolated_pages_cb+0x17/=
0x30
> [=A0=A0297.425990]=A0=A0=A0=A0=A0=A0=A0=A0walk_system_ram_range+0xda/0x160
> [=A0=A0297.425990]=A0=A0=A0=A0=A0=A0=A0=A0__offline_pages+0x79c/0xa10
> [=A0=A0297.425991]=A0=A0=A0=A0=A0=A0=A0=A0offline_pages+0x11/0x20
> [=A0=A0297.425992]=A0=A0=A0=A0=A0=A0=A0=A0memory_subsys_offline+0x7e/0xc0
> [=A0=A0297.425992]=A0=A0=A0=A0=A0=A0=A0=A0device_offline+0xd5/0x110
> [=A0=A0297.425993]=A0=A0=A0=A0=A0=A0=A0=A0state_store+0xc6/0xe0
> [=A0=A0297.425994]=A0=A0=A0=A0=A0=A0=A0=A0dev_attr_store+0x3f/0x60
> [=A0=A0297.425995]=A0=A0=A0=A0=A0=A0=A0=A0sysfs_kf_write+0x89/0xb0
> [=A0=A0297.425995]=A0=A0=A0=A0=A0=A0=A0=A0kernfs_fop_write+0x188/0x240
> [=A0=A0297.425996]=A0=A0=A0=A0=A0=A0=A0=A0__vfs_write+0x50/0xa0
> [=A0=A0297.425997]=A0=A0=A0=A0=A0=A0=A0=A0vfs_write+0x105/0x290
> [=A0=A0297.425997]=A0=A0=A0=A0=A0=A0=A0=A0ksys_write+0xc6/0x160
> [=A0=A0297.425998]=A0=A0=A0=A0=A0=A0=A0=A0__x64_sys_write+0x43/0x50
> [=A0=A0297.425999]=A0=A0=A0=A0=A0=A0=A0=A0do_syscall_64+0xcc/0x76c
> [=A0=A0297.426000]=A0=A0=A0=A0=A0=A0=A0=A0entry_SYSCALL_64_after_hwframe+=
0x49/0xbe

I suppose you run with CONFIG_DEBUG_VM...

So we have

port->lock -> MM -> zone->lock
	// from pty_write()->__tty_buffer_request_room()->kmalloc()

vs

zone->lock -> printk() -> port->lock
	// from __offline_pages()->__offline_isolated_pages()->printk()


A number of debugging options make the kernel less stable.
Sad but true.

	-ss

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
