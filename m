Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D6B1C0BC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 03:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GcHXE3h+0FDaADhMfLifrEMw5m6XU9IlDSoariPV65k=; b=SzSq6S7iUIf8dZ
	FzxzyQVa1CT8b7kUtTKAdLqfme10JupfIi7fB/1wSwBxJ2X6p7AVeM1RE9KCVsBV34urrY79hO5s6
	gVoMKHIISgRhvz6Tznlsp+NMY78zNPlNC6XLTUi3NuyhDAE+01+wkucd2fj5HctKSiap0Z7hWXmES
	buD0+hJPNRRufRX089HpvrhG0GFsGyqmG1d4UD2IaLtHs4GyTZt63Cw0RW79Md4CF5JiG9ONtASdQ
	YBVXKXryhGM9DKn1RDOFUF2OJ/hlAubJvs+12ivxVI+2wmt72tl543jqvC/j52x3vaRP1DoQuXiCm
	WwWZlrjecCVwuHLDFK/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUKjv-0000qu-2K; Fri, 01 May 2020 01:45:19 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUKja-0000qC-6Z
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 01:44:59 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t40so1800132pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 18:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BJDB9lPyIL7yqfOmHsy2HCj6CJV5Y/ygJ4a/Yt4ueRw=;
 b=Tcshg76Y97lKweEKu4Gzgm583bqlkziZ4JStrZoKgao6MtHeAoodWQhMVO/lXjIY2G
 FvsHOLLcC0UIstahZaZG+KZ1bEgNSTltcuxq5krvhF6cOgx9Rh62+aJTs5Ho+2hC1v/i
 V/0Q+bgjzZQqIT5kvZzSa/8UWZi1+rWuqj3VP1iNWOL43pzieMbHk4n/WkLOh3uiq6sn
 VA4Y6GIn4cKd1U2WqH8DlczT3VzTPWI2DaO+ZuGk93UcqyB3SQ/rCq9jOTYNSXV1GJk2
 I/N01tnibHm6+a7oRtKOCa1vkElQ/Nxn5qwvm7yJQmzRGlMHW3zA8RMgLEfDq0HeWpOh
 v2UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BJDB9lPyIL7yqfOmHsy2HCj6CJV5Y/ygJ4a/Yt4ueRw=;
 b=rAcZElMfaZvNlJG7oIzlpnB6Tu/kwa3vA9W2SYlfWw06LHnCjOKIEU85h17mmwJGnV
 chWiDQSiEtADWHURyMtmo08YWE+IQ953w7Tb376zRvCXbxGDZft+WirwHB/DQZUOR1OE
 LjIFyp7K/yFq5DKf3ozAfFPddHJsKZV/VTIM4GD43v83gkbGbAGOEmA2EiMfiKUhByCW
 wUY7S/S7YuQqrSAZ+BxcC3sArBA59k2yImmFIeTEoV0I4wVmLOKPtUn3Dm3JUYpV06Bw
 2SArudu5Yipksyp9wUjywjbeQwgDcfvHKTmn+b5+DO5JRTIhTExmddIBc2eCxjKpnTBJ
 bAQQ==
X-Gm-Message-State: AGi0PuZKKgQ+rsad9uki7oCwYNRVaejIlzGJrytJiuR3q6biWfO9bXvB
 a4J1FeIoQF2jHNOq4WP8IBo=
X-Google-Smtp-Source: APiQypLCLfp3rK10yUdbPAE4Edv32G102rWA36hKIIpdEzEYeJyZFhsbGJpCwWMJe+hOipaDHzEbbg==
X-Received: by 2002:a17:90a:2606:: with SMTP id
 l6mr1770330pje.188.1588297497099; 
 Thu, 30 Apr 2020 18:44:57 -0700 (PDT)
Received: from localhost (146.85.30.125.dy.iij4u.or.jp. [125.30.85.146])
 by smtp.gmail.com with ESMTPSA id d18sm850855pfq.177.2020.04.30.18.44.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 18:44:56 -0700 (PDT)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
X-Google-Original-From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Date: Fri, 1 May 2020 10:44:54 +0900
To: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Subject: Re: [RFC PATCH v2 1/3] printk: Add function to set console to
 preferred console's driver
Message-ID: <20200501014454.GB288759@jagdpanzerIV.localdomain>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
 <20200430161438.17640-2-alpernebiyasak@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430161438.17640-2-alpernebiyasak@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_184458_260662_9650C35B 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Petr Mladek <pmladek@suse.com>, Feng Tang <feng.tang@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On (20/04/30 19:14), Alper Nebi Yasak wrote:
> Currently, add_preferred_console sets a preferred console, but doesn't
> actually change /dev/console to match it. That part is handled within
> register_device, where a newly registered console driver will be set as
> /dev/console if it matches the preferred console.
> 
> However, if the relevant driver is already registered, the only way to
> set it as /dev/console is by un-registering and re-registering it.

Hmm. Preferred console selection is very fragile, there are too many
setups and workarounds that even minor tweaks introduce regressions
oftentimes.

We have, by the way, a pending patchset which changes the same
are - preferred console selection.

git://git.kernel.org/pub/scm/linux/kernel/git/pmladek/printk.git for-5.7-preferred-console

[..]
> An example is the xenfb_make_preferred_console() function:
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

I didn't know about this code.

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

Let me take a look over the weekend.

	-ss

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
