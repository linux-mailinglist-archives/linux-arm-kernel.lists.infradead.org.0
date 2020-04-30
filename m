Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4300E1C01FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVNDv+e162GeZw9Lv2ccN89+XGihsOIsxzxPdyzsei4=; b=aBz4Ju1HeOP660
	bDqgmtp4cJjveO4EYcQGfDlhb4zsUWNcv57Tv3nSj23zxPxx1H9JVhHM75j0oO4I7OWX7lzUzYPMj
	f95IUZSQJv8b+JFL/yUako8fAzR7CFpYs7bi8LbZS+0hTUP5bZ3m8QWwzL5cRhUc2pliYxssuUlOZ
	z8geIBGRw2IbBvhApiMTPRlUDXegyqmBGDUV/uM82Fraf/QvY+Yeq1fE7iEWqkPGQ8012+m7WBick
	vQ3Wq9g8JZh2N2dkR0Qi1dUPQAbNE8Ebbfts6mxNy2cfBethhoc1/TzU0iaBeuYbHIQvmpAhO/vIh
	I52N+9RioSPaudzVgTsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBsX-0002wZ-48; Thu, 30 Apr 2020 16:17:37 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBrf-0002Qk-ON
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:16:49 +0000
Received: by mail-lj1-x242.google.com with SMTP id y4so7102226ljn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 09:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8h7c5xM9KdrcmFCqTV2onQc6DhtZm7K0Uq18xje81Wc=;
 b=ut+QscvUUbBbBNa/WL+wGEGeS6FwdRtAH9e4SF8KFy4VBSOrFqJ7zF/QgHmMzpquyc
 7CR59WjbtwZirwn2GLq2Wz6GF4iMjx9ppczRswAzNIMwPkj47IDPxOTuo7nq8G2mlScm
 T9FwkRpWpepH2OiJr4yWdMyxWG/LaBUF9uL/fX66XeNyl0OTjgguO4n1Hmv7LvqxZHMA
 Vb6aIV4J7iOtlCX7z0bV+4neuEiA3GZ0D6BLmZEkDyOXcPEONZe0+m/vdScwgOjsqJrl
 LIYQjWZ63bLItDsp59jL9XwLoR9O8yLfuSLPU6F7gLJml0zo9qWzMqOQxtCMg1/sj+K2
 BHNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8h7c5xM9KdrcmFCqTV2onQc6DhtZm7K0Uq18xje81Wc=;
 b=J/VNT9YRf8qy+7goVvx1Au/Zc92JcTEgqyYU8oa8TcqOEsrgcvhLKVxQmDvHpUxgvd
 pMrfly/sRJrxAu+FzNEdNg4+UjoQUnFdkRMr9YBM6WQa51pgXGHESi0tgfWd/NL41ppI
 crQpWOspw/iySP1vCEFwIJ7ewkpDFKEaaNR8bZuHI+t4W5lNo0nibSrZGZmEzF/bVFjv
 kS+vq9lpcACuwNpMAg3y64TnthmG0LBsvi4vTTYXXUXSQdVMdLyemTXIlPuVQg1MpLap
 w6Tlgcc6sTtBdgnjFAlLzhfRHSHJ3TAnkWsQ1souXGO7QXPSDVT1i957ppv1ZsIbPWos
 EcsQ==
X-Gm-Message-State: AGi0Pubq352EbReRbFSY6KaulGuu8P6CZf9fOccVg3HUjv0lf6bEtirQ
 8UuIs8uvT/NdnQZSJslE7Qo=
X-Google-Smtp-Source: APiQypLVsApo9iHgMhuxkN2ZlgYWUMp4fhV4J7W4bsnT2jgzRR8RuWaxI89+qS7fAKHE8DyFsSWe0Q==
X-Received: by 2002:a2e:96cd:: with SMTP id d13mr18383ljj.219.1588263402185;
 Thu, 30 Apr 2020 09:16:42 -0700 (PDT)
Received: from localhost.localdomain ([178.233.178.9])
 by smtp.gmail.com with ESMTPSA id k6sm60638lfm.91.2020.04.30.09.16.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 09:16:41 -0700 (PDT)
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Subject: [RFC PATCH v2 3/3] printk: Preset tty0 as a pseudo-preferred console
Date: Thu, 30 Apr 2020 19:14:37 +0300
Message-Id: <20200430161438.17640-4-alpernebiyasak@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430161438.17640-1-alpernebiyasak@gmail.com>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_091646_914288_1627AEB0 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: linux-arm-kernel@lists.infradead.org,
 Alper Nebi Yasak <alpernebiyasak@gmail.com>,
 Steven Rostedt <rostedt@goodmis.org>, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ACPI SPCR (Serial Port Console Redirection) table from a machine's
firmware can specify a serial console which can be used for earlycon.
However, in at least ARM64 systems the same device is also set up as the
preferred console.  Presumably due to the order of acpi_parse_spcr and
VT's register_device calls, setting the specified console as the
preferred one can prevent registering VT as a console.

This might look appropriate for machines which do not have or need
working graphics and whose users most likely have access to a serial
port. However, the use of SPCR tables may not be limited these. For
example, ARM64 QEMU virtual machines include a SPCR table regardless of
the existence of a graphics output or even the nonexistence of a serial
console. Or server hardware which has a SPCR table can be repurposed
into a workstation with the addition of a graphics card. As a result,
boot messages and early userspace prompts can go to an unexpected
console.

This patch presets tty0 as a pseudo-preferred console at compile-time to
ensure that CONFIG_VT_CONSOLE always results in the VT console getting
registered. With this, VT can get registered, these other consoles are
preferred when VT is a dummy, but we can also bump up VTs preference
when working graphics are available.

Without this patch, an ARM64 QEMU virtual machine has roughly the
following order of console events and consoles:

	# Without earlycon:
	$ sudo dmesg | grep -i "console\|printk\|tty[0-9a-z]" | grep -v systemd
	[    0.000000] ACPI: SPCR: console: pl011,mmio,0x9000000,9600
	[    0.000250] Console: colour dummy device 80x25
	[    0.140955] ARMH0011:00: ttyAMA0 at MMIO 0x9000000 (irq = 4, base_baud = 0) is a SBSA
	[    0.317189] printk: console [ttyAMA0] enabled
	[    3.540272] Console: switching to colour frame buffer device 150x42

	$ cat /proc/consoles
	ttyAMA0              -W- (EC p a)  204:64

	# With earlycon:
	$ sudo dmesg | grep -i "console\|printk\|tty[0-9a-z]" | grep -v systemd
	[    0.000000] ACPI: SPCR: console: pl011,mmio,0x9000000,9600
	[    0.000000] printk: bootconsole [pl11] enabled
	[    0.002064] Console: colour dummy device 80x25
	[    0.324415] ARMH0011:00: ttyAMA0 at MMIO 0x9000000 (irq = 4, base_baud = 0) is a SBSA
	[    0.327047] printk: console [ttyAMA0] enabled
	[    0.329139] printk: bootconsole [pl11] disabled
	[    3.704937] Console: switching to colour frame buffer device 150x42

	$ cat /proc/consoles
	ttyAMA0              -W- (EC   a)  204:64

In addition, boot messages aren't printed to the framebuffer (as tty0 is
not registered). With this patch, boot messages are visible on the
framebuffer and the information above becomes:

	# Without earlycon:
	$ sudo dmesg | grep -i "console\|printk\|tty[0-9a-z]" | grep -v systemd
	[    0.000000] ACPI: SPCR: console: pl011,mmio,0x9000000,9600
	[    0.000058] Console: colour dummy device 80x25
	[    0.000266] printk: console [tty0] enabled
	[    0.144615] ARMH0011:00: ttyAMA0 at MMIO 0x9000000 (irq = 4, base_baud = 0) is a SBSA
	[    0.299031] printk: console [ttyAMA0] enabled
	[    3.320333] Console: switching to colour frame buffer device 150x42
	[    3.329386] printk: switching to console [tty0]

	$ cat /proc/consoles
	tty0                 -WU (EC p  )    4:7
	ttyAMA0              -W- (E  p a)  204:64

	# With earlycon:
	$ sudo dmesg | grep -i "console\|printk\|tty[0-9a-z]" | grep -v systemd
	[    0.000000] ACPI: SPCR: console: pl011,mmio,0x9000000,9600
	[    0.000000] printk: bootconsole [pl11] enabled
	[    0.002326] Console: colour dummy device 80x25
	[    0.003545] printk: console [tty0] enabled
	[    0.236824] ARMH0011:00: ttyAMA0 at MMIO 0x9000000 (irq = 4, base_baud = 0) is a SBSA
	[    0.239243] printk: console [ttyAMA0] enabled
	[    0.241324] printk: bootconsole [pl11] disabled
	[    3.715086] Console: switching to colour frame buffer device 150x42
	[    3.742923] printk: switching to console [tty0]

	$ cat /proc/consoles
	tty0                 -WU (EC p  )    4:7
	ttyAMA0              -W- (E    a)  204:64

Signed-off-by: Alper Nebi Yasak <alpernebiyasak@gmail.com>

---

Changes in v2:
- Fix #elif to #else (Reported-by: kbuild test robot <lkp@intel.com>)
- Refresh dmesg outputs with/without earlycon for next-20200430

 kernel/printk/printk.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index efda422203e4..aa9f9f16860f 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -277,7 +277,19 @@ static struct console *exclusive_console;
 
 #define MAX_CMDLINECONSOLES 8
 
+/*
+ * The preferred_console and has_preferred_console variables are
+ * intentionally not modified to reflect this so that the first
+ * registered console is still used as the preferred console.
+ */
+#ifdef CONFIG_VT_CONSOLE
+static struct console_cmdline console_cmdline[MAX_CMDLINECONSOLES] = {
+	[0].name = "tty",
+	[0].index = 0,
+};
+#else
 static struct console_cmdline console_cmdline[MAX_CMDLINECONSOLES];
+#endif
 
 static int preferred_console = -1;
 static bool has_preferred_console;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
