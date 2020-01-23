Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A3214721B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 20:50:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:From:To:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6hiRoIOjIM+ja9u/7FIfrM/fRaiURYxMvqY0bjXhwc=; b=Qcet6k8IuGnDnw
	2nv33/FXG9nGKYZQIRZjs4G5CzFsDcIxqfJk8FuOrX5QcJxa+VZ8M0SmIxU9EJI7n32nY2bnuQBjy
	zEkOK7lNBjiLevf5q5tXuaPX8/uv7cdeTLDVFUn1mjuUzSe/Fr1HNLI/vIW1W4EGfmurszAUdRgJ1
	1oaEnrdnmSgLDA6nNsdDOQ242caZ3nwAPuFAlePiVA5A7iAiVuuKAX04X25fbcG7dtG5y4CYl3DIN
	q+cXJKEK/Jc0+bbXBCVf1TwhRPbVpZvcIg0estmKqXah/VET7s4aMil0ffwpOi9i5TUDDiaaTvsxo
	jLURndca1b0aCR1qgiqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuiUV-0000Wd-9W; Thu, 23 Jan 2020 19:50:11 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuiUE-0000W1-Ns
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 19:49:56 +0000
Received: by mail-pg1-x543.google.com with SMTP id b9so1878763pgk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 11:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:to:cc:from:subject:user-agent:date;
 bh=AsiBDxfR3YiAUP6+urybhWiy8mHMpvOtUZtlAgoqD+g=;
 b=PkSLtKYtYi1OcAK+7nw7vWeNOsVnqbyq+qI+VdhZDT2KFdzpC+bHz8WiajuMhK++nz
 Ne4HKz7CL/6hY12kMMKuYVLgTLGYXi95QSDNG8LX662hiyD70AgACtRdmMyb8KhIm8UR
 VUEH28tRg96g6WLiM4Q22CqJXuRA4WX19k1Fk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:to:cc:from:subject
 :user-agent:date;
 bh=AsiBDxfR3YiAUP6+urybhWiy8mHMpvOtUZtlAgoqD+g=;
 b=JZLeQF0itrzvS0JQ/oA/UzLLxcxUbyVsfmT+S6XHmaXuxCa2alD+wX9WflGEJ2V2Zu
 raQsH9MnVEz6/js9GKtOjf5jmqoJJXud6tEDLkm5sCwL6XdFgKD9ev6so2Y+X3JinA6b
 cfLHmP5HXBq4eh6jG83npLpU2GtPtoPJG5g2i6vymOneU8kX8pqWt8I6O/C1RssC5t4n
 GFOODgJkhelinwwWZQ5e0IdKLcbwBmsLrpwAkonNM1bdHpW1JoKuMvv4w6kfNJ2SFRDk
 40VIkwfzp5EmFgEGJG4Bm8ANK4mZOFE7+IH9ovGCuNlCl4Kdapb8vjLXchoUixcszKEO
 HxQg==
X-Gm-Message-State: APjAAAXtp5vrzJgR9blsySrvEJxZOUqJhnH7zE0+CIwUdtV9tPvyLFcc
 kOiOF46R8dVBjVAox/9/Pm8r6A==
X-Google-Smtp-Source: APXvYqwVEQXX+m3S5BGhf04yLN3caID/CuWtHA4zxtFC4LRWdaqmOtdLcHFyM8Ypv9iy28HI/QH1FA==
X-Received: by 2002:aa7:9556:: with SMTP id w22mr6978147pfq.198.1579808992570; 
 Thu, 23 Jan 2020 11:49:52 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id e18sm3856195pjt.21.2020.01.23.11.49.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 11:49:51 -0800 (PST)
Message-ID: <5e29f8df.1c69fb81.fc97b.8df8@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20200123160031.9853-1-saiprakash.ranjan@codeaurora.org>
References: <20200123160031.9853-1-saiprakash.ranjan@codeaurora.org>
To: Anton Vorontsov <anton@enomsg.org>, Colin Cross <ccross@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Kees Cook <keescook@chromium.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Tony Luck <tony.luck@intel.com>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH] pstore: Fix printing of duplicate boot messages to console
User-Agent: alot/0.8.1
Date: Thu, 23 Jan 2020 11:49:50 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_114954_802020_3106778D 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sai Prakash Ranjan (2020-01-23 08:00:31)
> Since commit f92b070f2dc8 ("printk: Do not miss new messages
> when replaying the log"), CON_PRINTBUFFER flag causes the
> duplicate boot messages to be printed on the console when
> PSTORE_CONSOLE and earlycon (boot console) is enabled.
> Pstore console registers to boot console when earlycon is
> enabled during pstore_register_console as a part of ramoops
> initialization in postcore_initcall and the printk core
> checks for CON_PRINTBUFFER flag and replays the log buffer
> to registered console (in this case pstore console which
> just registered to boot console) causing duplicate messages
> to be printed. Remove the CON_PRINTBUFFER flag from pstore
> console since pstore is not concerned with the printing of
> buffer to console but with writing of the buffer to the
> backend.
> 
> Console log with earlycon and pstore console enabled:
> 
> [    0.008342] Console: colour dummy device 80x25
> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x51df805e]
> ...
> [    1.244049] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x51df805e]
> 
> Fixes: f92b070f2dc8 ("printk: Do not miss new messages when replaying the log")
> Reported-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

While I like the idea, it seems that this breaks console-ramoops by
removing all the text that is printed in the kernel log before this
console is registered. I reboot and see that
/sys/fs/pstore/console-ramoops-1 starts like this now:

	localhost ~ # cat /sys/fs/pstore/console-ramoops-0
	[    0.943472] printk: console [pstore-1] enabled

Maybe this console can be "special" and not require anything to be
printed out to visible consoles but still get the entire log contents?
Or we should just not worry about it.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
