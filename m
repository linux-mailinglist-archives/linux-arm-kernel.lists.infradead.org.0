Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F491C02F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+FD0ZUJ92JJGoy6+QAGR7kgIqxr+bb8/s8A8tBQt0o=; b=qDfRJLeU15DEZI
	J6REIhOAXiHOXWUQJO+38g37FsR6W+rQkNYTfXznwCDCZmtOCcyu3DC0voLTDixpedWvSJVi+kZWn
	puURKyexR15Mwkmy+Nq+L4SEVgreEjyJu15pHZP3/cnKwdydE9GSlMMjsO5f81wJyee17IMiSOa2r
	N7DUPhGUASThjXvlZPq6Qxn4QTUoQkUwV5NXzhUPPOZ/c1//iyjErbaxMnBvbnJs+xE/9Z0Y7RXME
	NjVj7T1S/QTVCCCbaY1LIeB8fpCunp8kIZKH3/yWNGHAGOce7y9plL0OuGtBYB19178d+ah+WEhxi
	S95WxECRmNhw/uLq3Ywg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCJO-00082E-Ur; Thu, 30 Apr 2020 16:45:22 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCIM-0007Fz-6L
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:44:20 +0000
IronPort-SDR: bVweDV1YlPo78pvPCMQw2j573xreDwU0fxogke7P7DLLFZr+xBIiK0VKZVVvcTwY3MBzQOvAYD
 ta1VDIrAOaRg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 09:44:16 -0700
IronPort-SDR: 9DyQWhpBuuB0EPtN+8MsdJdwmHdFmXWAlbcmymPWP7YQRJK7krA0SwkhvajSwkCXTgSY4jIRDT
 stT9S+135+ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="276576064"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga002.jf.intel.com with ESMTP; 30 Apr 2020 09:44:12 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jUCIH-003x9f-Sx; Thu, 30 Apr 2020 19:44:13 +0300
Date: Thu, 30 Apr 2020 19:44:13 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Subject: Re: [RFC PATCH v2 0/3] Prefer working VT console over SPCR and
 device-tree chosen stdout-path
Message-ID: <20200430164413.GV185537@smile.fi.intel.com>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430161438.17640-1-alpernebiyasak@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_094418_257372_DFD61C1F 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
 Eric Biggers <ebiggers@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nico@fluxnic.net>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, Grzegorz Halat <ghalat@redhat.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Lukas Wunner <lukas@wunner.de>, Andrew Morton <akpm@linux-foundation.org>,
 Sam Ravnborg <sam@ravnborg.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 07:14:34PM +0300, Alper Nebi Yasak wrote:

First of all I see only cover letter and one out of 3 patches.

> I recently experienced some trouble with setting up an encrypted-root
> system, my Chromebook Plus (rk3399-gru-kevin, ARM64) would appear to
> hang where it should have asked for an encryption passphrase; and I
> eventually figured out that the kernel preferred the serial port
> (inaccessible to me) over the built-in working display/keyboard and was
> probably asking there.

"probably". Please, confirm that first.
Also, without command line it's hard to say what you have asked kernel to do.

> Running plymouth in the initramfs solves that specific problem, but
> both the documentation and tty-related kconfig descriptions imply that
> /dev/console should be tty0 if graphics are working, CONFIG_VT_CONSOLE
> is enabled and no explicit console argument is given in the kernel
> commandline.

What is plymouth?

> However, I'm seeing different behaviour on systems with SPCR (as in QEMU
> aarch64 virtual machines) and/or a device-tree chosen stdout-path node
> (as in most arm/arm64 devices). On these machines, depending on the
> console argument, the contents of the /proc/consoles file are:
> 
>                     |     "console=tty0"    |    (no console arg)   |
>   ------------------+-----------------------+-----------------------+
>   QEMU VM           | tty0     -WU (EC p  ) | ttyAMA0  -W- (EC   a) |
>   (w/ SPCR)         | ttyAMA0  -W- (E    a) |                       |
>   ------------------+-----------------------+-----------------------+
>   Chromebook Plus   | tty0     -WU (EC p  ) | ttyS2    -W- (EC p a) |
>   (w/ stdout-path)  |                       | tty0     -WU (E     ) |
>   ------------------+-----------------------+-----------------------+
>   Chromebook Plus   | tty0     -WU (EC p  ) | tty0     -WU (EC p  ) |
>   (w/o either)      |                       |                       |
>   ------------------+-----------------------+-----------------------+

either == SPCR or stdout-path?

> This patchset tries to ensure that VT is preferred in those conditions
> even in the presence of firmware-mandated serial consoles.

This sounds completely wrong. serial should be preferred over vt due to very
debugging on early stages and SPCR is exactly for that.

> These should
> cleanly apply onto next-20200430.
> 
> More discussion due to or about the console confusion on ARM64:
> - My Debian bug report about the initramfs prompts [0]
> - Fedora test issue arising from ARM64 QEMU machines having SPCR [1]
> - Debian-installer discussion on what to do with multiple consoles [2]

Maybe you should figure out the real root cause?

> [0] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=952452
> [1] https://bugzilla.redhat.com/show_bug.cgi?id=1661288
> [2] https://lists.debian.org/debian-boot/2019/01/msg00184.html

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
