Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34593AF3D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 03:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sRvteHFankIQrTdSVOXnaj1crz7QztAmFwLHjPUNqrM=; b=IWeRhoBG/+czY7
	RcyQhjMdSA6BpPhUn3UHKK+DkkkrBrNm3h27TFBkoJPm/5ZSsMK8ci4PHGam9ZCn+qaE2JNsKXcFM
	f1U43rzMoowjPPD+yJmVwltoANZfyIvcqndPdF2YNYsGMnSH3Gkh6NHsIcyzpBxgM6UvN/EQ1ykoE
	sVUrLlCM/uHweYpP7jw9t9d042DNbO39C3StUKYH3K26kguusHMI5PiIhbzoZDrDDNBtthjgc6Afi
	bm+8j4mDoICu3bUWaaD3TdIQOkcWmLi1RoRlebIZ82TGpdSdg6x2Ecv8vrfXsjeScB7c3vdWb4aUa
	rdQhDbmpJJlY/uQtjumA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7r9Q-0000Tb-2S; Wed, 11 Sep 2019 01:10:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7r9E-0000TC-I7
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 01:10:18 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so12587167pfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 18:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ESLG1t6IreprN3RkgGIaM4Lu+h+CB2JumPRW4tm4Exo=;
 b=BSOQ/u91jh54LUC0H1dXoOioyZkLhI20WMwYU2psrg8kKoICo0yeyNZyUQt6rzjder
 DipA0Pg2A0n9OMtpze6Iuf2EXLxwwPAxzBHc6MK2ubUgpdJ8N2T/KL6OQS7oGo0nKEy4
 BJObBC13qHFF0k4ppmrhI4ddOoH7EWEqUCJsAjbBIIsqwTYUKmt8FUX81k3+BvdidUei
 TLudA2g58dKcRnmHgId+CbRermXt7kE9UXEbVSXAI5wsxuyM9gZKCholmo3aTNzv54U2
 zGJlb9gnd8LflECwAmHPd+MytLqNZWxjoRHGlUjYKhD4twp2tedKM5Rsytg7d/qFeiu3
 sGYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ESLG1t6IreprN3RkgGIaM4Lu+h+CB2JumPRW4tm4Exo=;
 b=eSlwgNSjTDGKALf8sN0TnaEbcjwmdQLGMQuQ6GgSQiENeWShByAutOO0BrqFgMZVWj
 fIP8KmGD4ZLGKpGUsbalhb71lIo6uXRU6RylhYNgB49DmDQ147llSoFI/hBTMMtovEqe
 ZfGSfDLe+bmuuSQR4f5JNyTkPBhzcr4VQIcuEP70VA8LnYDhe1MELPVmS+pole76tOOE
 HMBlIImsH7O5udVF4y2C8xjLDws5DlSDive/LMOZQKdSZX7GAo9YxkzCD0l8RU2vtdl/
 ddcmh3fY4Y0acY3EI1eujTI87Iz2bRGXBQIoetjdln1SuhqwxTleCK8513TyrLDhUHK8
 Kc4Q==
X-Gm-Message-State: APjAAAVnoUJy1qwv7vyxJk690qw4UztwFpyGXvyvQTz5T6k43+SbxBd0
 nsWv/ksNvZ10XWfH5YU7/jk=
X-Google-Smtp-Source: APXvYqzMlNjnumil4089/9G8uPqoaC1MxhFNFaUHMsfqpe5cc4iNVywNJfCAkgwHYwb8enPKrEh0Gg==
X-Received: by 2002:a62:5ac1:: with SMTP id o184mr38187912pfb.67.1568164214174; 
 Tue, 10 Sep 2019 18:10:14 -0700 (PDT)
Received: from localhost ([110.70.15.70])
 by smtp.gmail.com with ESMTPSA id u16sm18945653pgm.83.2019.09.10.18.10.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 18:10:13 -0700 (PDT)
Date: Wed, 11 Sep 2019 10:10:08 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: page_alloc.shuffle=1 + CONFIG_PROVE_LOCKING=y = arm64 hang
Message-ID: <20190911011008.GA4420@jagdpanzerIV>
References: <1566509603.5576.10.camel@lca.pw>
 <1567717680.5576.104.camel@lca.pw>
 <1568128954.5576.129.camel@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568128954.5576.129.camel@lca.pw>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_181016_629067_5951C689 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Cc-ing Ted, Arnd, Greg

On (09/10/19 11:22), Qian Cai wrote:
> [ 1078.283869][T43784] -> #3 (&(&port->lock)->rlock){-.-.}:
> [ 1078.291350][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__lock_acquire+0x5c8/0xbb0
> [ 1078.296394][T43784]=A0=A0=A0=A0=A0=A0=A0=A0lock_acquire+0x154/0x428
> [ 1078.301266][T43784]=A0=A0=A0=A0=A0=A0=A0=A0_raw_spin_lock_irqsave+0x80=
/0xa0
> [ 1078.306831][T43784]=A0=A0=A0=A0=A0=A0=A0=A0tty_port_tty_get+0x28/0x68
> [ 1078.311873][T43784]=A0=A0=A0=A0=A0=A0=A0=A0tty_port_default_wakeup+0x2=
0/0x40
> [ 1078.317523][T43784]=A0=A0=A0=A0=A0=A0=A0=A0tty_port_tty_wakeup+0x38/0x=
48
> [ 1078.322827][T43784]=A0=A0=A0=A0=A0=A0=A0=A0uart_write_wakeup+0x2c/0x50
> [ 1078.327956][T43784]=A0=A0=A0=A0=A0=A0=A0=A0pl011_tx_chars+0x240/0x260
> [ 1078.332999][T43784]=A0=A0=A0=A0=A0=A0=A0=A0pl011_start_tx+0x24/0xa8
> [ 1078.337868][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__uart_start+0x90/0xa0
> [ 1078.342563][T43784]=A0=A0=A0=A0=A0=A0=A0=A0uart_write+0x15c/0x2c8
> [ 1078.347261][T43784]=A0=A0=A0=A0=A0=A0=A0=A0do_output_char+0x1c8/0x2b0
> [ 1078.352304][T43784]=A0=A0=A0=A0=A0=A0=A0=A0n_tty_write+0x300/0x668
> [ 1078.357087][T43784]=A0=A0=A0=A0=A0=A0=A0=A0tty_write+0x2e8/0x430
> [ 1078.361696][T43784]=A0=A0=A0=A0=A0=A0=A0=A0redirected_tty_write+0xcc/0=
xe8
> [ 1078.367086][T43784]=A0=A0=A0=A0=A0=A0=A0=A0do_iter_write+0x228/0x270
> [ 1078.372041][T43784]=A0=A0=A0=A0=A0=A0=A0=A0vfs_writev+0x10c/0x1c8
> [ 1078.376735][T43784]=A0=A0=A0=A0=A0=A0=A0=A0do_writev+0xdc/0x180
> [ 1078.381257][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__arm64_sys_writev+0x50/0x60
> [ 1078.386476][T43784]=A0=A0=A0=A0=A0=A0=A0=A0el0_svc_handler+0x11c/0x1f0
> [ 1078.391606][T43784]=A0=A0=A0=A0=A0=A0=A0=A0el0_svc+0x8/0xc
> [ 1078.395691][T43784]=A0

uart_port->lock  ->  tty_port->lock

This thing along is already a bit suspicious. We re-enter tty
here: tty -> uart -> serial -> tty

And we re-enter tty under uart_port->lock.

> [ 1078.395691][T43784] -> #2 (&port_lock_key){-.-.}:
> [ 1078.402561][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__lock_acquire+0x5c8/0xbb0
> [ 1078.407604][T43784]=A0=A0=A0=A0=A0=A0=A0=A0lock_acquire+0x154/0x428
> [ 1078.412474][T43784]=A0=A0=A0=A0=A0=A0=A0=A0_raw_spin_lock+0x68/0x88
> [ 1078.417343][T43784]=A0=A0=A0=A0=A0=A0=A0=A0pl011_console_write+0x2ac/0=
x318
> [ 1078.422820][T43784]=A0=A0=A0=A0=A0=A0=A0=A0console_unlock+0x3c4/0x898
> [ 1078.427863][T43784]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_emit+0x2d4/0x460
> [ 1078.432732][T43784]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_default+0x48/0x58
> [ 1078.437688][T43784]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_func+0x194/0x250
> [ 1078.442557][T43784]=A0=A0=A0=A0=A0=A0=A0=A0printk+0xbc/0xec
> [ 1078.446732][T43784]=A0=A0=A0=A0=A0=A0=A0=A0register_console+0x4a8/0x580
> [ 1078.451947][T43784]=A0=A0=A0=A0=A0=A0=A0=A0uart_add_one_port+0x748/0x8=
78
> [ 1078.457250][T43784]=A0=A0=A0=A0=A0=A0=A0=A0pl011_register_port+0x98/0x=
128
> [ 1078.462639][T43784]=A0=A0=A0=A0=A0=A0=A0=A0sbsa_uart_probe+0x398/0x480
> [ 1078.467772][T43784]=A0=A0=A0=A0=A0=A0=A0=A0platform_drv_probe+0x70/0x1=
08
> [ 1078.473075][T43784]=A0=A0=A0=A0=A0=A0=A0=A0really_probe+0x15c/0x5d8
> [ 1078.477944][T43784]=A0=A0=A0=A0=A0=A0=A0=A0driver_probe_device+0x94/0x=
1d0
> [ 1078.483335][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__device_attach_driver+0x11=
c/0x1a8
> [ 1078.489072][T43784]=A0=A0=A0=A0=A0=A0=A0=A0bus_for_each_drv+0xf8/0x158
> [ 1078.494201][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__device_attach+0x164/0x240
> [ 1078.499331][T43784]=A0=A0=A0=A0=A0=A0=A0=A0device_initial_probe+0x24/0=
x30
> [ 1078.504721][T43784]=A0=A0=A0=A0=A0=A0=A0=A0bus_probe_device+0xf0/0x100
> [ 1078.509850][T43784]=A0=A0=A0=A0=A0=A0=A0=A0device_add+0x63c/0x960
> [ 1078.514546][T43784]=A0=A0=A0=A0=A0=A0=A0=A0platform_device_add+0x1ac/0=
x3b8
> [ 1078.520023][T43784]=A0=A0=A0=A0=A0=A0=A0=A0platform_device_register_fu=
ll+0x1fc/0x290
> [ 1078.526373][T43784]=A0=A0=A0=A0=A0=A0=A0=A0acpi_create_platform_device=
.part.0+0x264/0x3a8
> [ 1078.533152][T43784]=A0=A0=A0=A0=A0=A0=A0=A0acpi_create_platform_device=
+0x68/0x80
> [ 1078.539150][T43784]=A0=A0=A0=A0=A0=A0=A0=A0acpi_default_enumeration+0x=
34/0x78
> [ 1078.544887][T43784]=A0=A0=A0=A0=A0=A0=A0=A0acpi_bus_attach+0x340/0x3b8
> [ 1078.550015][T43784]=A0=A0=A0=A0=A0=A0=A0=A0acpi_bus_attach+0xf8/0x3b8
> [ 1078.555057][T43784]=A0=A0=A0=A0=A0=A0=A0=A0acpi_bus_attach+0xf8/0x3b8
> [ 1078.560099][T43784]=A0=A0=A0=A0=A0=A0=A0=A0acpi_bus_attach+0xf8/0x3b8
> [ 1078.565142][T43784]=A0=A0=A0=A0=A0=A0=A0=A0acpi_bus_scan+0x9c/0x100
> [ 1078.570015][T43784]=A0=A0=A0=A0=A0=A0=A0=A0acpi_scan_init+0x16c/0x320
> [ 1078.575058][T43784]=A0=A0=A0=A0=A0=A0=A0=A0acpi_init+0x330/0x3b8
> [ 1078.579666][T43784]=A0=A0=A0=A0=A0=A0=A0=A0do_one_initcall+0x158/0x7ec
> [ 1078.584797][T43784]=A0=A0=A0=A0=A0=A0=A0=A0kernel_init_freeable+0x9a8/=
0xa70
> [ 1078.590360][T43784]=A0=A0=A0=A0=A0=A0=A0=A0kernel_init+0x18/0x138
> [ 1078.595055][T43784]=A0=A0=A0=A0=A0=A0=A0=A0ret_from_fork+0x10/0x1c
>
> [ 1078.599835][T43784] -> #1 (console_owner){-...}:
> [ 1078.606618][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__lock_acquire+0x5c8/0xbb0
> [ 1078.611661][T43784]=A0=A0=A0=A0=A0=A0=A0=A0lock_acquire+0x154/0x428
> [ 1078.616530][T43784]=A0=A0=A0=A0=A0=A0=A0=A0console_unlock+0x298/0x898
> [ 1078.621573][T43784]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_emit+0x2d4/0x460
> [ 1078.626442][T43784]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_default+0x48/0x58
> [ 1078.631398][T43784]=A0=A0=A0=A0=A0=A0=A0=A0vprintk_func+0x194/0x250
> [ 1078.636267][T43784]=A0=A0=A0=A0=A0=A0=A0=A0printk+0xbc/0xec
> [ 1078.640443][T43784]=A0=A0=A0=A0=A0=A0=A0=A0_warn_unseeded_randomness+0=
xb4/0xd0
> [ 1078.646267][T43784]=A0=A0=A0=A0=A0=A0=A0=A0get_random_u64+0x4c/0x100
> [ 1078.651224][T43784]=A0=A0=A0=A0=A0=A0=A0=A0add_to_free_area_random+0x1=
68/0x1a0
> [ 1078.657047][T43784]=A0=A0=A0=A0=A0=A0=A0=A0free_one_page+0x3dc/0xd08
> [ 1078.662003][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__free_pages_ok+0x490/0xd00
> [ 1078.667132][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__free_pages+0xc4/0x118
> [ 1078.671914][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__free_pages_core+0x2e8/0x4=
28
> [ 1078.677219][T43784]=A0=A0=A0=A0=A0=A0=A0=A0memblock_free_pages+0xa4/0x=
ec
> [ 1078.682522][T43784]=A0=A0=A0=A0=A0=A0=A0=A0memblock_free_all+0x264/0x3=
30
> [ 1078.687825][T43784]=A0=A0=A0=A0=A0=A0=A0=A0mem_init+0x90/0x148
> [ 1078.692259][T43784]=A0=A0=A0=A0=A0=A0=A0=A0start_kernel+0x368/0x684

zone->lock --> uart_port->lock

Some debugging options/warnings/error print outs/etc introduce
deadlock patterns.

This adds zone->lock --> uart_port->lock, which then brings in
uart_port->lock --> tty_port->lock, which in turn brings
tty_port->lock --> zone->lock.

> [ 1078.697126][T43784] -> #0 (&(&zone->lock)->rlock){-.-.}:
> [ 1078.704604][T43784]=A0=A0=A0=A0=A0=A0=A0=A0check_prev_add+0x120/0x1138
> [ 1078.709733][T43784]=A0=A0=A0=A0=A0=A0=A0=A0validate_chain+0x888/0x1270
> [ 1078.714863][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__lock_acquire+0x5c8/0xbb0
> [ 1078.719906][T43784]=A0=A0=A0=A0=A0=A0=A0=A0lock_acquire+0x154/0x428
> [ 1078.724776][T43784]=A0=A0=A0=A0=A0=A0=A0=A0_raw_spin_lock+0x68/0x88
> [ 1078.729645][T43784]=A0=A0=A0=A0=A0=A0=A0=A0rmqueue_bulk.constprop.21+0=
xb0/0x1218
> [ 1078.735643][T43784]=A0=A0=A0=A0=A0=A0=A0=A0get_page_from_freelist+0x89=
8/0x24a0
> [ 1078.741467][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__alloc_pages_nodemask+0x2a=
8/0x1d08
> [ 1078.747291][T43784]=A0=A0=A0=A0=A0=A0=A0=A0alloc_pages_current+0xb4/0x=
150
> [ 1078.752682][T43784]=A0=A0=A0=A0=A0=A0=A0=A0allocate_slab+0xab8/0x2350
> [ 1078.757725][T43784]=A0=A0=A0=A0=A0=A0=A0=A0new_slab+0x98/0xc0
> [ 1078.762073][T43784]=A0=A0=A0=A0=A0=A0=A0=A0___slab_alloc+0x66c/0xa30
> [ 1078.767029][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__slab_alloc+0x68/0xc8
> [ 1078.771725][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__kmalloc+0x3d4/0x658
> [ 1078.776333][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__tty_buffer_request_room+0=
xd4/0x220
> [ 1078.782244][T43784]=A0=A0=A0=A0=A0=A0=A0=A0tty_insert_flip_string_fixe=
d_flag+0x6c/0x128
> [ 1078.788849][T43784]=A0=A0=A0=A0=A0=A0=A0=A0pty_write+0x98/0x100
> [ 1078.793370][T43784]=A0=A0=A0=A0=A0=A0=A0=A0n_tty_write+0x2a0/0x668
> [ 1078.798152][T43784]=A0=A0=A0=A0=A0=A0=A0=A0tty_write+0x2e8/0x430
> [ 1078.802760][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__vfs_write+0x5c/0xb0
> [ 1078.807368][T43784]=A0=A0=A0=A0=A0=A0=A0=A0vfs_write+0xf0/0x230
> [ 1078.811890][T43784]=A0=A0=A0=A0=A0=A0=A0=A0ksys_write+0xd4/0x180
> [ 1078.816498][T43784]=A0=A0=A0=A0=A0=A0=A0=A0__arm64_sys_write+0x4c/0x60
> [ 1078.821627][T43784]=A0=A0=A0=A0=A0=A0=A0=A0el0_svc_handler+0x11c/0x1f0
> [ 1078.826756][T43784]=A0=A0=A0=A0=A0=A0=A0=A0el0_svc+0x8/0xc

tty_port->lock --> zone->lock

> [ 1078.830842][T43784] other info that might help us debug this:
> [ 1078.830842][T43784]=A0
> [ 1078.840918][T43784] Chain exists of:
> [ 1078.840918][T43784]=A0=A0=A0&(&zone->lock)->rlock --> &port_lock_key -=
-> &(&port-> >lock)->rlock
> [ 1078.840918][T43784]=A0
> [ 1078.854731][T43784]=A0=A0Possible unsafe locking scenario:
> [ 1078.854731][T43784]=A0
> [ 1078.862029][T43784]=A0=A0=A0=A0=A0=A0=A0=A0CPU0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0CPU1
> [ 1078.867243][T43784]=A0=A0=A0=A0=A0=A0=A0=A0----=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0----
> [ 1078.872457][T43784]=A0=A0=A0lock(&(&port->lock)->rlock);
> [ 1078.877238][T43784]=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0lock(&port_lock_key);
> [ 1078.883929][T43784]=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0lock(&(&port->lock)->rlock);
> [ 1078.891228][T43784]=A0=A0=A0lock(&(&zone->lock)->rlock);
> [ 1078.896010][T43784]=A0
> [ 1078.896010][T43784]=A0=A0*** DEADLOCK ***
[..]
> [ 1078.980932][T43784]=A0=A0dump_backtrace+0x0/0x228
> [ 1078.985279][T43784]=A0=A0show_stack+0x24/0x30
> [ 1078.989282][T43784]=A0=A0dump_stack+0xe8/0x13c
> [ 1078.993370][T43784]=A0=A0print_circular_bug+0x334/0x3d8
> [ 1078.998240][T43784]=A0=A0check_noncircular+0x268/0x310
> [ 1079.003022][T43784]=A0=A0check_prev_add+0x120/0x1138
> [ 1079.007631][T43784]=A0=A0validate_chain+0x888/0x1270
> [ 1079.012241][T43784]=A0=A0__lock_acquire+0x5c8/0xbb0
> [ 1079.016763][T43784]=A0=A0lock_acquire+0x154/0x428
> [ 1079.021111][T43784]=A0=A0_raw_spin_lock+0x68/0x88
> [ 1079.025460][T43784]=A0=A0rmqueue_bulk.constprop.21+0xb0/0x1218
> [ 1079.030937][T43784]=A0=A0get_page_from_freelist+0x898/0x24a0
> [ 1079.036240][T43784]=A0=A0__alloc_pages_nodemask+0x2a8/0x1d08
> [ 1079.041542][T43784]=A0=A0alloc_pages_current+0xb4/0x150
> [ 1079.046412][T43784]=A0=A0allocate_slab+0xab8/0x2350
> [ 1079.050934][T43784]=A0=A0new_slab+0x98/0xc0
> [ 1079.054761][T43784]=A0=A0___slab_alloc+0x66c/0xa30
> [ 1079.059196][T43784]=A0=A0__slab_alloc+0x68/0xc8
> [ 1079.063371][T43784]=A0=A0__kmalloc+0x3d4/0x658
> [ 1079.067458][T43784]=A0=A0__tty_buffer_request_room+0xd4/0x220
> [ 1079.072847][T43784]=A0=A0tty_insert_flip_string_fixed_flag+0x6c/0x128
> [ 1079.078932][T43784]=A0=A0pty_write+0x98/0x100
> [ 1079.082932][T43784]=A0=A0n_tty_write+0x2a0/0x668
> [ 1079.087193][T43784]=A0=A0tty_write+0x2e8/0x430
> [ 1079.091280][T43784]=A0=A0__vfs_write+0x5c/0xb0
> [ 1079.095367][T43784]=A0=A0vfs_write+0xf0/0x230
> [ 1079.099368][T43784]=A0=A0ksys_write+0xd4/0x180
> [ 1079.103455][T43784]=A0=A0__arm64_sys_write+0x4c/0x60
> [ 1079.108064][T43784]=A0=A0el0_svc_handler+0x11c/0x1f0
> [ 1079.112672][T43784]=A0=A0el0_svc+0x8/0xc

tty_port->lock --> zone->lock

For instance, I don't really like the re-entrant tty, at least not
under uart_port->lock. This, maybe, can be one of the solutions.

Another one, a quick and dirty one, (and so many people will blame
me for this) would be to break zone->{printk}->uart chain...

Something like this

---

 drivers/char/random.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/char/random.c b/drivers/char/random.c
index 9b54cdb301d3..975015857200 100644
--- a/drivers/char/random.c
+++ b/drivers/char/random.c
@@ -1687,8 +1687,9 @@ static void _warn_unseeded_randomness(const char *fun=
c_name, void *caller,
 	print_once =3D true;
 #endif
 	if (__ratelimit(&unseeded_warning))
-		pr_notice("random: %s called from %pS with crng_init=3D%d\n",
-			  func_name, caller, crng_init);
+		printk_deferred(KERN_NOTICE "random: %s called from %pS "
+				"with crng_init=3D%d\n", func_name, caller,
+				crng_init);
 }
 =

 /*
@@ -2462,4 +2463,4 @@ void add_bootloader_randomness(const void *buf, unsig=
ned int size)
 	else
 		add_device_randomness(buf, size);
 }
-EXPORT_SYMBOL_GPL(add_bootloader_randomness);
\ No newline at end of file
+EXPORT_SYMBOL_GPL(add_bootloader_randomness);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
