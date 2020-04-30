Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 745AB1C01FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vwu0bYIuFYjS1nF5/tjpdjsRZdDv9BQVCrr8756q0tY=; b=Z8ie9TX95rdDuy
	nrAEX+oGtCgONmuyZsbURw0RLsEWySZJFzxIM6NK4gOQwpUoTmyV4K/1qZ7FJBK/uIRZlgCeaigfk
	4I8igXbSSYndiDEwdTot1+YLht1A+bXbcy+r86Mbn0tnju5DM9MV5h6DGOZF9oPfZFOxRJzSMhhY/
	eqTIkLYPb7UOv5F6r8gaCR+PGJZFJID+hLOxNY/AaMUMTL+9sr8J/fjTEhG741S4uj+Ga7NtCWbs1
	AYCJPHfo3inQS65wI074TXplZVj4FKy/9AuB17CSQRKZa0wrGWzOnYnV9PMO/Puc3E5z17EoS6QtH
	3snIYCQ0SQXQsrhP92nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBsH-0002i1-AF; Thu, 30 Apr 2020 16:17:21 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBrc-0002Lh-Se
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:16:42 +0000
Received: by mail-lf1-x141.google.com with SMTP id l11so1713743lfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 09:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f4TIH8T2iwoy55Ek+4uzhpC1K3VxmoO9RghZLrsLIIU=;
 b=f+ltUI3klX7y7558UAfiJcLaATEoefw+BMqDr8OH8fF8pzj+J2m70msHpKH57IMN/G
 CeFOpjAq9DVo8HCD85cPTH1DNF/I1uGD2I4dSPwfDg9FZVFOF8CPw3PQqKYM4RLjavnU
 SVeUbxBJiXKOKzdIkvmfdLeFLEjE4UjMRoyzzP8nAMdD0St8Ge5acgahuYKIAgNnXqxG
 u1Wyrl/CU7E7J0lgVSfiGGxSNsvA7RncjakrnyQEoaaVu9xIDTem5xeJj/cZcH+cDABx
 VIMA2YSzihLF6GVMffFXG8Tkq+EJfXpesZnUK/avHiN/rXxGlskNz86CVExnyw27nXPX
 Cmgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f4TIH8T2iwoy55Ek+4uzhpC1K3VxmoO9RghZLrsLIIU=;
 b=YNB+tt72dbSu+5kOUY+NAjutZNa0AhrNCtBcoRzqAG7MuChekzNMPzvKG6PZF60KWh
 SA5LcUUKIZKCkl27hYKmxa0tks6qN/Iv47mNlbWOmUESO1zxRbFsJB3mKdHFkvgptCrL
 wdIC5moU8AH5vpOrMk9+C55ckWYXI6NJv9UIo/Y0JuvSRABA6qnFxiD7TDhAs8SwjANz
 Tx4W0rHN0i9x5EilPAbB+vwv752v+4B53O0+jdxhN043+rjnZ+Ewul7QSF4y9KuyG74y
 pHKvPzACwy+Y9y4OIM3COGA0329oRXfo1v3DclRxu8PtOD7jxYxkBW8p2CZcLwMajbWM
 kLAQ==
X-Gm-Message-State: AGi0PuYCi1/s+JYCp2wvGoiaOsmFRCRPSjHY+AxAdJ/luAaPXSgU69TI
 njJ6lZlI3CE8LxEcMkNO7ns=
X-Google-Smtp-Source: APiQypKW0OOMGsBaRso8KpIF88W8pneAiyKgyjSDkdDS+lc6s6+VB6QTd8CG5k93j4XxhkCbFMDS7g==
X-Received: by 2002:ac2:4105:: with SMTP id b5mr2763461lfi.94.1588263397052;
 Thu, 30 Apr 2020 09:16:37 -0700 (PDT)
Received: from localhost.localdomain ([178.233.178.9])
 by smtp.gmail.com with ESMTPSA id k6sm60638lfm.91.2020.04.30.09.16.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 09:16:36 -0700 (PDT)
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Subject: [RFC PATCH v2 2/3] vt: Set as preferred console when a non-dummy
 backend is bound
Date: Thu, 30 Apr 2020 19:14:36 +0300
Message-Id: <20200430161438.17640-3-alpernebiyasak@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430161438.17640-1-alpernebiyasak@gmail.com>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_091640_938282_BC16E221 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alpernebiyasak[at]gmail.com]
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
Cc: Eric Biggers <ebiggers@google.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Nicolas Pitre <nico@fluxnic.net>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Alper Nebi Yasak <alpernebiyasak@gmail.com>,
 Grzegorz Halat <ghalat@redhat.com>, linux-serial@vger.kernel.org,
 Lukas Wunner <lukas@wunner.de>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a machine's device-tree has a "chosen" node with a "stdout-path"
property that specified console is added as the preferred console by
of_console_check via an add_preferred_console call. The property is
quite common in kernel device-tree definitions. As far as I can tell, it
is set to provide a reasonable default value for earlycon, and the
(usually serial) console is set as preferred to avoid output going to
VT's dummy backend instead of a working console.

However, a chosen stdout-path property is included even in device-trees
of systems that are designed to be used with a built-in display, e.g.
several ARM Chromebooks. In these cases where CONFIG_VT_CONSOLE is
enabled and no console argument is given on the kernel commandline, tty0
is still registered (presumably based on the order of of_console_check
and vt's register_console calls) but ends up not being the preferred
console.

As a result, it is possible for early userspace prompts (encryption
passphrase requests, emergency shells) to end up in a console that the
user doesn't expect or even have access to.

This patch tries to set tty0 as the /dev/console whenever a non-dummy
backend tries to register as its default, unless the preferred console
was set from the kernel commandline arguments.

On a Samsung Chromebook Plus (Google Kevin, rk3399-gru-kevin.dts), boot
messages are still visible on the framebuffer without this patch, but it
isn't the preferred console due to the device-tree having a stdout-path
property (from rk3399-gru.dtsi):

	# Without earlycon:
	$ sudo dmesg | grep -i "console\|printk\|tty[0-9a-z]" | grep -v systemd
	[    0.001447] Console: colour dummy device 80x25
	[    0.001820] printk: console [tty0] enabled
	[    3.012303] ff1a0000.serial: ttyS2 at MMIO 0xff1a0000 (irq = 39, base_baud = 1500000) is a 16550A
	[    4.326549] printk: console [ttyS2] enabled
	[    5.521780] dw-apb-uart ff1a0000.serial: forbid DMA for kernel console
	[    6.359706] Console: switching to colour frame buffer device 300x100

	$ cat /proc/consoles
	ttyS2                -W- (EC p a)    4:66
	tty0                 -WU (E  p  )    4:7

	# With earlycon:
	$ sudo dmesg | grep -i "console\|printk\|tty[0-9a-z]" | grep -v systemd
	[    0.000000] printk: bootconsole [uart0] enabled
	[    0.010257] Console: colour dummy device 80x25
	[    0.015131] printk: console [tty0] enabled
	[    0.019625] printk: bootconsole [uart0] disabled
	[    3.034305] ff1a0000.serial: ttyS2 at MMIO 0xff1a0000 (irq = 39, base_baud = 1500000) is a 16550A
	[    4.367601] printk: console [ttyS2] enabled
	[    5.576519] dw-apb-uart ff1a0000.serial: forbid DMA for kernel console
	[    6.435612] Console: switching to colour frame buffer device 300x100

	$ cat /proc/consoles
	ttyS2                -W- (EC p a)    4:66
	tty0                 -WU (E     )    4:7

And on the same machine, with this patch:

	# Without earlycon:
	$ sudo dmesg | grep -i "console\|printk\|tty[0-9a-z]" | grep -v systemd
	[    0.001451] Console: colour dummy device 80x25
	[    0.001821] printk: console [tty0] enabled
	[    3.013821] ff1a0000.serial: ttyS2 at MMIO 0xff1a0000 (irq = 39, base_baud = 1500000) is a 16550A
	[    4.328053] printk: console [ttyS2] enabled
	[    5.509658] dw-apb-uart ff1a0000.serial: forbid DMA for kernel console
	[    6.309330] Console: switching to colour frame buffer device 300x100
	[    6.378862] printk: switching to console [tty0]

	$ cat /proc/consoles
	tty0                 -WU (EC p  )    4:7
	ttyS2                -W- (E  p a)    4:66

	# With earlycon:
	$ sudo dmesg | grep -i "console\|printk\|tty[0-9a-z]" | grep -v systemd
	[    0.000000] printk: bootconsole [uart0] enabled
	[    0.010259] Console: colour dummy device 80x25
	[    0.015135] printk: console [tty0] enabled
	[    0.019628] printk: bootconsole [uart0] disabled
	[    3.037677] ff1a0000.serial: ttyS2 at MMIO 0xff1a0000 (irq = 39, base_baud = 1500000) is a 16550A
	[    4.370985] printk: console [ttyS2] enabled
	[    5.549226] dw-apb-uart ff1a0000.serial: forbid DMA for kernel console
	[    6.364818] Console: switching to colour frame buffer device 300x100
	[    6.417589] printk: switching to console [tty0]

	$ cat /proc/consoles
	tty0                 -WU (EC    )    4:7
	ttyS2                -W- (E  p a)    4:66

Signed-off-by: Alper Nebi Yasak <alpernebiyasak@gmail.com>

---

Changes in v2:
- Refresh dmesg outputs with/without earlycon for next-20200430

 drivers/tty/vt/vt.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/tty/vt/vt.c b/drivers/tty/vt/vt.c
index e5ffed795e4c..218171dca711 100644
--- a/drivers/tty/vt/vt.c
+++ b/drivers/tty/vt/vt.c
@@ -3588,6 +3588,13 @@ static int do_bind_con_driver(const struct consw *csw, int first, int last,
 		pr_cont("to %s\n", desc);
 	}
 
+#ifdef CONFIG_VT_CONSOLE
+	if (!console_set_on_cmdline && deflt && conswitchp != &dummy_con) {
+		add_preferred_console("tty", 0, NULL);
+		update_console_to_preferred();
+	}
+#endif
+
 	retval = 0;
 err:
 	module_put(owner);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
