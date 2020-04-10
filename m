Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7431B1A4BE4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 00:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uHdYBzTVyhlK5PYojuAejpLGaoe3HnMcnyQzBw305g4=; b=OUmB9W2Eza4KgS
	WsGZr0whDe/zGbE8n6hG0Woa71+0/wh/PRte0zhO6DHCQI+Q+fnQv98dIkLUwSbhDTcKe/gt0xKFd
	5cIdZv01hEkQY4tEuJ5p36b7hUEVqHKEJte7EHVH6q4IsKGngDDFlnEJbnfvBerPlF/bob8TUcZks
	ZBhvC/p1pZPF3TKTECWTAyNXa3X6xECKxjhuwm3R11+Yk4sgOhcr8MhXclrH/or7e8szqF105TIbT
	6hLOT5xyXoQDGddc+RY3tHOkBbCgaxpWvB1hhm7qlEi7Pie8TAuqgHw6DeQKNDyPNWGuEfSNECmm+
	xP4tfXJCwo2xrcJLYSWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN1ym-0008FA-R4; Fri, 10 Apr 2020 22:18:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN1ye-0008Eg-Vp
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 22:18:22 +0000
Received: by mail-pf1-x442.google.com with SMTP id q3so1575944pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 15:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zWmbbFUQQjeDm+gMt8s5CKmqbSjpsn0Bs7Vf6igbDN0=;
 b=e3lTJwDeR+Nav+528OsUsNEAU/mQAvnOqDzBkyDMHmonykZKMLV0VVtUTENE3pD7Q6
 GnFU+SMC26o3A55F4t3Tt68x4vLPjqJkRXN3RzuTpsdN8C5J50qTnKOpIr9VsyCZ+cLV
 i9mbvKSAC+qjGIAx9O/tI70iccionOxKrTrQw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zWmbbFUQQjeDm+gMt8s5CKmqbSjpsn0Bs7Vf6igbDN0=;
 b=Yp5xG4UHolezrAv943OhHttu8qkIz4LJhANeg+gbLmdDoqVaOpsFg9U5QNjNDxtibY
 +WuReyh1OXkk+WHXrko6stko5frsOzIang2g0Wf4VnDGQ1ZsXNaN+gIFCGMSn0S1odie
 ePyzMFE3W3aNw47xFfZVdXHqfTXiuTBN0FpS6X7YRsCsIkos/wjcHD5AhH+wER0teS39
 L+v7YQOr2Fk3mLAd9JoYDHtPTNl2OnMa91N6a9adl173NuWZkpTYnb06WaYCeYTV3hha
 eAxTtlWE7a4YXIaeiZ2T1CBy+aFLDusKPSp0wpndTYOnf6zCyW2D8pYY7kpAdbM44JyA
 k/+g==
X-Gm-Message-State: AGi0PuYNBmzJRr2x5U2GM5FHSQoXnqXIZvRHqlGBIqz8xctbMQKibMB4
 H8QoIwsb/zpVJxg97rDe3zlakg==
X-Google-Smtp-Source: APiQypL5THpk7QNDWCyORXPdUOyrfq0oJPG9LZXBe4qj/CEWRQMdNwTa2WA43xoyV7Mu3AgOv45XPQ==
X-Received: by 2002:a65:5b4f:: with SMTP id y15mr6701497pgr.134.1586557099575; 
 Fri, 10 Apr 2020 15:18:19 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id x2sm2646600pfq.92.2020.04.10.15.18.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 15:18:19 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: jason.wessel@windriver.com, daniel.thompson@linaro.org,
 gregkh@linuxfoundation.org
Subject: [PATCH 0/7] kgdb: Support late serial drivers;
 enable early debug w/ boot consoles
Date: Fri, 10 Apr 2020 15:17:19 -0700
Message-Id: <20200410221726.36442-1-dianders@chromium.org>
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_151821_082829_110DAF87 
X-CRM114-Status: GOOD (  22.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, catalin.marinas@arm.com,
 bjorn.andersson@linaro.org, Nadav Amit <namit@vmware.com>, hpa@zytor.com,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, will@kernel.org,
 Matt Mullins <mmullins@fb.com>, corbet@lwn.net, frowand.list@gmail.com,
 x86@kernel.org, jinho lim <jordan.lim@samsung.com>, agross@kernel.org,
 Pawan Gupta <pawan.kumar.gupta@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, Dave Martin <Dave.Martin@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-arm-msm@vger.kernel.org,
 jslaby@suse.com, Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de,
 Josh Poimboeuf <jpoimboe@redhat.com>, tglx@linutronix.de, mingo@redhat.com,
 Allison Randal <allison@lohutok.net>, Juergen Gross <jgross@suse.com>,
 Oliver Neukum <oneukum@suse.com>, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This whole pile of patches was motivated by me trying to get kgdb to
work properly on a platform where my serial driver ended up being hit
by the -EPROBE_DEFER virus (it wasn't practicing social distancing
from other drivers).  Specifically my serial driver's parent device
depended on a resource that wasn't available when its probe was first
called.  It returned -EPROBE_DEFER which meant that when "kgdboc"
tried to run its setup the serial driver wasn't there.  Unfortunately
"kgdboc" never tried again, so that meant that kgdb was disabled until
I manually enalbed it via sysfs.

While I could try to figure out how to get around the -EPROBE_DEFER
somehow, the above problems could happen to anyone and -EPROBE_DEFER
is generally considered something you just have to live with.  In any
case the current "kgdboc" setup is a bit of a race waiting to happen.
I _think_ I saw during early testing that even adding a msleep() in
the typical serial driver's probe() is enough to trigger similar
issues.

I decided that for the above race the best attitude to get kgdb to
register at boot was probably "if you can't beat 'em, join 'em".
Thus, "kgdboc" now jumps on the -EPROBE_DEFER bandwagon (now that my
driver uses it it's no longer a virus).  It does so a little awkwardly
because "kgdboc" hasn't normally had a "struct device" associated with
it, but it's really not _that_ ugly to make a platform device and
seems less ugly than alternatives.

Unfortunately now on my system the debugger is one of the last things
to register at boot.  That's OK for debugging problems that show up
significantly after boot, but isn't so hot for all the boot problems
that I end up debugging.  This motivated me to try to get something
working a little earlier.

My first attempt was to try to get the existing "ekgdboc" to work
earlier.  I tried that for a bit until I realized that it needed to
work at the tty layer and I couldn't find any serial drivers that
managed to register themselves to the tty layer super early at boot.
The only documented use of "ekgdboc" is "ekgdboc=kbd" and that's a bit
of a special snowflake.  Trying to get my serial driver and all its
dependencies to probe normally and register the tty driver super early
at boot seemed like a bad way to go.  In fact, all the complexity
needed to do something like this is why the system already has a
special concept of a "boot console" that lives only long enough to
transition to the normal console.

Leveraging the boot console seemed like a good way to go and that's
what this series does.  I found that consoles could have a read()
function, though I couldn't find anyone who implemented it.  I
implemented it for two serial drivers for the devices I had easy
access to, making the assumption that for boot consoles that we could
assume read() and write() were polling-compatible (seems sane I
think).

Now anyone who makes a small change to their serial driver can easily
enable early kgdb debugging!

The devices I had for testing were:
- arm32: rk3288-veyron-jerry
- arm64: rk3399-gru-kevin
- arm64: qcom-sc7180-trogdor (not mainline yet)

These are the devices I tested this series on.  I tried to test
various combinations of enabling/disabling various options and I
hopefully caught the corner cases, but I'd appreciate any extra
testing people can do.  Notably I didn't test on x86, but (I think) I
didn't touch much there so I shouldn't have broken anything.

When testing I found a few problems with actually dropping into the
debugger super early on arm and arm64 devices.  Patches in this series
should help with this.  For arm I just avoid dropping into the
debugger until a little later and for arm64 I actually enable
debugging super early.

I realize that bits of this series might feel a little hacky, though
I've tried to do things in the cleanest way I could without overly
interferring with the rest of the kernel.  If you hate the way I
solved a problem I would love it if you could provide guidance on how
you think I could solve the problem better.

This series (and my comments / documentation / commit messages) are
now long enough that my eyes glaze over when I try to read it all over
to double-check.  I've nontheless tried to double-check it, but I'm
pretty sure I did something stupid.  Thank you ahead of time for
pointing it out to me so I can fix it in v2.  If somehow I managed to
not do anything stupid (really?) then thank you for double-checking me
anyway.


Douglas Anderson (7):
  kgdboc: Use a platform device to handle tty drivers showing up late
  kgdb: Delay "kgdbwait" to dbg_late_init() by default
  arm64: Add call_break_hook() to early_brk64() for early kgdb
  kgdboc: Add earlycon_kgdboc to support early kgdb using boot consoles
  Documentation: kgdboc: Document new earlycon_kgdboc parameter
  serial: qcom_geni_serial: Support earlycon_kgdboc
  serial: 8250_early: Support earlycon_kgdboc

 .../admin-guide/kernel-parameters.txt         |  20 ++
 Documentation/dev-tools/kgdb.rst              |  14 +
 arch/arm64/include/asm/debug-monitors.h       |   2 +
 arch/arm64/kernel/debug-monitors.c            |   2 +-
 arch/arm64/kernel/kgdb.c                      |   5 +
 arch/arm64/kernel/traps.c                     |   3 +
 arch/x86/kernel/kgdb.c                        |   5 +
 drivers/tty/serial/8250/8250_early.c          |  23 ++
 drivers/tty/serial/kgdboc.c                   | 266 ++++++++++++++++--
 drivers/tty/serial/qcom_geni_serial.c         |  32 +++
 include/linux/kgdb.h                          |  25 +-
 kernel/debug/debug_core.c                     |  44 ++-
 12 files changed, 401 insertions(+), 40 deletions(-)

-- 
2.26.0.110.g2183baf09c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
