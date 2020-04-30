Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2DD1C02FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJ5JoEm0G1UJ7/0eqfHhvrWo4/yHL+IbvMKSjbrUkXc=; b=lc9ywkprnMm6zq
	+3neN3PrtCidKY8hTKDz9yp1tmCmHBQJQ+w0SmoXkIhy+7RpDl8EStA5BoLXysyheYxUnu47OFhYP
	hH7UZXEWuICK9Gm+HWg4WpNnbcIDOYdTPBLmEWBe6s8SjIkHgW6vpkArXKSH3U1B15WTeFHaNEaQJ
	+yQJ6skaZ32+k1VN1XDADnw9+xSecGpuLmIzqV+5gA008Pebgt2u6RMCzz1oS5Ui+uBm8GORkfdlc
	KL5Y/Jtuq0CNXIpwM6hBb53wlUdwqcOqW7OCpKpEwJUlIvNiXrZZQUbNLxGlUkqRhW7ASHyQaR586
	TE11IGHN4pCKHgZ2wNIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCKh-00033q-65; Thu, 30 Apr 2020 16:46:43 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCKV-00032N-B4
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:46:32 +0000
IronPort-SDR: jCrQD3B/xefLQGSI5yXDZZbiLqTQxrPeZUeDR+JBAgureEQQfP1QBsO3RuoYGCRAl2qoB17GsC
 y9k9q2LViDRA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 09:46:30 -0700
IronPort-SDR: o/9FP73hLdrecg6plLPSE4BE260RONmdIVJjsa1Po+2BWeMaxxs+vdPEJruOsCeuYxZUbCf/5S
 4/zhGE4GywRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="368202826"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga001.fm.intel.com with ESMTP; 30 Apr 2020 09:46:27 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jUCKT-003xBR-KK; Thu, 30 Apr 2020 19:46:29 +0300
Date: Thu, 30 Apr 2020 19:46:29 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Subject: Re: [RFC PATCH v2 1/3] printk: Add function to set console to
 preferred console's driver
Message-ID: <20200430164629.GW185537@smile.fi.intel.com>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
 <20200430161438.17640-2-alpernebiyasak@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430161438.17640-2-alpernebiyasak@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_094631_400604_1F979750 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Petr Mladek <pmladek@suse.com>, Feng Tang <feng.tang@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 07:14:35PM +0300, Alper Nebi Yasak wrote:
> Currently, add_preferred_console sets a preferred console, but doesn't
> actually change /dev/console to match it. That part is handled within
> register_device, where a newly registered console driver will be set as
> /dev/console if it matches the preferred console.
> 
> However, if the relevant driver is already registered, the only way to
> set it as /dev/console is by un-registering and re-registering it. An
> example is the xenfb_make_preferred_console() function:
> 
> 	console_lock();
> 	for_each_console(c) {
> 		if (!strcmp(c->name, "tty") && c->index == 0)
> 			break;
> 	}
> 	console_unlock();
> 	if (c) {
> 		unregister_console(c);
> 		c->flags |= CON_CONSDEV;
> 		c->flags &= ~CON_PRINTBUFFER; /* don't print again */
> 		register_console(c);
> 	}
> 
> The code above was introduced in commit 9e124fe16ff2 ("xen: Enable
> console tty by default in domU if it's not a dummy"). In short, it's aim
> is to set VT as the preferred console only after a working framebuffer
> is registered and thus VT is not the dummy device.
> 
> This patch introduces an update_console_to_preferred function that
> handles the necessary /dev/console change. With this change, the example
> above can be replaced with:
> 
> 	console_lock();
> 	add_preferred_console("tty", 0, NULL);
> 	update_console_to_preferred();
> 	console_unlock();
> 
> More importantly, these two calls can be moved to vt.c in order to bump
> its priority when a non-dummy backend for it is introduced, solving that
> problem in general.

Even w/o looking into the code I believe it breaks more platforms than fixes
anything. It was not first time one tries to do something about preferred
consoles and it appeared to break working configurations.

I would wait for PRINTK maintainers to tell, but to me it sounds like papering
over the real issue which you don't understand (yet).

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
