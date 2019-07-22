Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043306FEB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 13:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVspj08pIekeBRY2XQHTx2wrl0yAflm2qPoHAhWZLCE=; b=RsglBx1tEEOPlY
	mW3zXQ6NY7RANvY3tAvObYUYwf5akM7v0P3dvbjNlY7HkFIIK2yF9IGAQ7X8R7z+64791o4/MBjkX
	AZVghC33jMyeEH3hCRLOwM9ziO+201auV8fZxs30T1/9A8SZ/U/SACWVm0jo5rtyjS2IRqMrClFbj
	f//jlv4+LqQBJSpbx/7DJoVoYUO3rlSbkcCVU9qshvnHxABZyUoWPY7g/E49Y17/kCJ6Wi1vTJchG
	FnEaq19Y5joVdF15RKH7a2k9xQShUxfImRrNp5jz36lU/HJc+LADUoF1M82JQSiffkrRuDI9bVAj5
	xogM7ltQrDrXVAf+pyfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpWSP-0000P9-Sc; Mon, 22 Jul 2019 11:26:17 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpWSH-0000Mk-Oy
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 11:26:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6863CAF0D;
 Mon, 22 Jul 2019 11:25:44 +0000 (UTC)
Date: Mon, 22 Jul 2019 13:25:43 +0200
From: Petr Mladek <pmladek@suse.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH 1/3] printk: Allow architecture-specific timestamping
 function
Message-ID: <20190722112543.5quvqgerpyvfgbxq@pathway.suse.cz>
References: <20190722103330.255312-1-marc.zyngier@arm.com>
 <20190722103330.255312-2-marc.zyngier@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722103330.255312-2-marc.zyngier@arm.com>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_042609_952976_075478ED 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 John Stultz <john.stultz@linaro.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 2019-07-22 11:33:28, Marc Zyngier wrote:
> printk currently relies on local_clock to time-stamp the kernel
> messages. In order to allow the timestamping (and only that)
> to be overridden by architecture-specific code, let's declare
> a new timestamp_clock() function, which gets used by the printk
> code. Architectures willing to make use of this facility will
> have to define CONFIG_ARCH_HAS_TIMESTAMP_CLOCK.
>
> The default is of course to return local_clock(), so that the
> existing behaviour stays unchanged.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  include/linux/sched/clock.h | 13 +++++++++++++
>  kernel/printk/printk.c      |  4 ++--
>  2 files changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/sched/clock.h b/include/linux/sched/clock.h
> index 867d588314e0..3cf4b2a8ce18 100644
> --- a/include/linux/sched/clock.h
> +++ b/include/linux/sched/clock.h
> @@ -98,4 +98,17 @@ static inline void enable_sched_clock_irqtime(void) {}
>  static inline void disable_sched_clock_irqtime(void) {}
>  #endif
>  
> +#ifdef CONFIG_ARCH_HAS_TIMESTAMP_CLOCK
> +/* Special need architectures can provide their timestamping function */

The commit message and the above comment should be more specific
about what are the special needs.

It must be clear how and why the clock differs from the other
clocks, especially from lock_clock().

Also the first mail says that timestamp_clock() might be
unstable. Is this true only during the early boot or all
the time?

The timestamp helps to order the events. An unstable clock
might be better than nothing during the boot. But it would
look strange to use it all the time, especially when it was
unrelated to any other clock used by the system.

Best Regards,
Petr

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
