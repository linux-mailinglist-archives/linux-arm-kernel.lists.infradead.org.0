Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9373A18F328
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 11:51:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CT7k3mQa5GDOeX+Cec7YNw6cPk7yGXWgFaGN2qbYw2g=; b=UiPXapsNW+HNXx
	mIXiRQ0d9KlIBrPNTa4RJBM3y7vL1/Gqb+2lBVEI8xoBs6+islYxpYgRW6Hz+hv7EunTry51P6yfe
	9KmGlUsOTTXSWGbBDsmshvNT5CnNKi71Nr2X9O6lf9YedAzMWfojiJ4Ri2juwQY/qzvoqLc+qCQyQ
	C03t/7XyWN1QFt0FqlJV9lNaLxaoiXaumvPaepfQ5Uuxyd5o0/onPSEoaaePFZXDYAetSPg6EfWJS
	BykmHfEuvRALg7R+o57iH8Ee0fBZAEYUa5p6mZQ7vrQ64SgCB/a7T0E7s/MD5jzC8K9BU08hFwHC3
	QwcQ18eMvHAdZJGtss8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKfn-0000qD-GP; Mon, 23 Mar 2020 10:51:11 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKfa-0000pB-VU
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 10:51:03 +0000
Received: by mail-lj1-x241.google.com with SMTP id w4so13941454lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 03:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=h9tNy9xYbDdOC07CHf7H4ZkCbKHWeUnDdMW9CfCVCkY=;
 b=bdVyJBL359733WGvtU7Gof3j1/tutWr7jojcWw8wXUmNPOuLG7Hr563TWG8poB1U5U
 xUVWVNWAz8/ChLwTngd8zi2Cfb9DT1RmMpNDrqfdF6H5cXf35C+3gOGZpsoMGME2J3Mp
 JhUavNjXK2+gC4dHuct1aCXROrYOZEmKTFMPbSbRRfhPY/erbp78N+kosI7kczs0+Qml
 f56C0Icn43kk4UuuvObeRpH0ScxZsCHIfXWWycdaKJ1jNTfl8L24YBeXH9Vi2a3ZIV96
 N/xbr5/YMVNbX4HF5inRVM+Y0mkGUdcThY7SG9mi2CVHP/tjw3uDD9J9Buv8gnisr/pV
 kATQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h9tNy9xYbDdOC07CHf7H4ZkCbKHWeUnDdMW9CfCVCkY=;
 b=kMuELdyVJ6PXPvM5OMx7/CcCi6+473c5fumpjTDBrrGWWxeIiQfgplDBwiDA64bbxt
 yPgCTFM9a3zOBlJH80UsRuLIOpU/YEGYSYvY+V3firKpRT2gIm5eZFmrDt8eOR4+LOmR
 c0mx4LMqpwtSk1l+snpZjz2OBIDH8L7pWO24s1VDZzIPnbuN2zCGQpTAuOalz80Lbh3m
 xt40ObbasutqV79dFNj+X728LszhEvbnq8T+J44pldRpe8MvcevsLbR/CbRPNyWtk+8r
 lVbZABaloIFHnbjiXJ0QbxbR3+fOzIrd3JGpTQImYEIRnFf2WbL9EUi6R0c+AWeOt76y
 mvgg==
X-Gm-Message-State: ANhLgQ0mo/Ipm55B7dOakRJ1U0J6whwDCpwmZrFD0cHWyTcD6Zg8rwv7
 vDfyxMJvsnYq1XztC2EnEncDB6NVVrs=
X-Google-Smtp-Source: ADFU+vsKiSgepWD3zBk0d7FCKh222LKCe+KoUW/BqEQdIfjFcQps3p3ZMq9+T5sKfUjBP3ucTMZcwg==
X-Received: by 2002:a2e:b896:: with SMTP id r22mr9541559ljp.43.1584960655907; 
 Mon, 23 Mar 2020 03:50:55 -0700 (PDT)
Received: from [192.168.0.74] ([178.233.178.9])
 by smtp.gmail.com with ESMTPSA id h25sm8240959ljg.31.2020.03.23.03.50.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Mar 2020 03:50:55 -0700 (PDT)
Subject: [RFC PATCH 3/3] printk: Preset tty0 as a pseudo-preferred console
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
References: <44156595-0eee-58da-4376-fd25b634d21b@gmail.com>
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Message-ID: <2d6ab3dc-3571-2d27-b763-84c21e38ae2e@gmail.com>
Date: Mon, 23 Mar 2020 13:50:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <44156595-0eee-58da-4376-fd25b634d21b@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_035059_014554_73AA694C 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alpernebiyasak[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>
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

	$ sudo dmesg | grep -i "console\|printk"
	[    0.000000] ACPI: SPCR: console: pl011,mmio,0x9000000,9600
	[    0.000000] printk: bootconsole [pl11] enabled
	[    0.004890] Console: colour dummy device 80x25
	[    0.412252] printk: console [ttyAMA0] enabled
	[    0.416173] printk: bootconsole [pl11] disabled
	[    3.940510] Console: switching to colour frame buffer device 128x48

	$ cat /proc/consoles
	ttyAMA0              -W- (EC   a)  204:64

In addition, boot messages aren't printed to the framebuffer (as tty0 is
not registered). With this patch, boot messages are visible on the
framebuffer and the information above becomes:

	$ sudo dmesg | grep -i "console\|printk"
	[    0.000000] ACPI: SPCR: console: pl011,mmio,0x9000000,9600
	[    0.000000] printk: bootconsole [pl11] enabled
	[    0.002768] Console: colour dummy device 80x25
	[    0.004371] printk: console [tty0] enabled
	[    0.380166] printk: console [ttyAMA0] enabled
	[    0.387337] printk: bootconsole [pl11] disabled
	[    4.695030] Console: switching to colour frame buffer device 128x48
	[    4.709759] printk: switching to console [tty0]

	$ cat /proc/consoles
	tty0                 -WU (EC p  )    4:7
	ttyAMA0              -W- (E    a)  204:64

Signed-off-by: Alper Nebi Yasak <alpernebiyasak@gmail.com>
---
 kernel/printk/printk.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index 6b16c973587..4b05779ab69 100644
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
+#elif
 static struct console_cmdline console_cmdline[MAX_CMDLINECONSOLES];
+#endif
 
 static int preferred_console = -1;
 static bool has_preferred_console;
-- 
2.26.0.rc2



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
