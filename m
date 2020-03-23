Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A945218F325
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 11:50:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvVFzZ2Y5UJn7L8Y/NeuEw0Jru3s/Mjo0L+mbKfG7rk=; b=IzmRVqDR+rhTNz
	ECJ7BcJwZSl6qJw8ewFJRNhGqzHRs4x2C51oFppf+IBt7Lcmio5S0+LOahQbB1ND+svp3FQzgz+Dh
	L/sb4kpiBlLQQKV1F9uExDyLd6A1yZ8UDzOYLc+HykQ72REgPMFPlK1OFDI3WbJJyV8hA/TC+JhU6
	t/NsAT+xhhR3vy4AG13kWFZQs5nhRq9hh4uSEdJ86b5LfpGxA8wa/ll7YkVov/b6EcwAQK/S5dlUI
	H2dBrqe9zJkgnybHockaU4oXJN6T5hYNZJPQPwuKSgok1E4BisEb0Wxyye5yIpxfqX1r4vbZn+Qvy
	kZ7fbmFoqyOmc3JXAT4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKez-0000aa-AH; Mon, 23 Mar 2020 10:50:21 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKeo-0000Z0-Je
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 10:50:12 +0000
Received: by mail-lf1-x141.google.com with SMTP id j188so5968805lfj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 03:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=siKVSOSU2AuaxCnLGzXMnO9hKgx66VndyuGaKMeNzAk=;
 b=G6nGo2oOHsvAJv17GKLVj/we/ZtSZ5nznKfQGFsZUvB0VOn3+E48g1tAniEG6MbQJZ
 rrvKvQOjOvESLanVYURjrhMorX//raN51ngN7gFqvLotu/J3Bpfm3tWa1GLzg9eUdTwr
 3vyjfUUPciutYkb1atk8VnFy6OP2Kn+bEkh+dDu6hLeFTR4M1G60Sh5YEp0svmCNjikN
 GZht+smbCmDEgUh2xS22ASBe1nev4M1nKPx9THcQYg1YCsc/fjWgZVlbCmkdc5k9W5bq
 BYA+XbwtiTxIzHn25uyyIQnUUDdZwF9QbB3JqIaCCZOj8AmOxsWHHCy9kCLRBJtBGKf8
 LAIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=siKVSOSU2AuaxCnLGzXMnO9hKgx66VndyuGaKMeNzAk=;
 b=TaVE2ABRPbDC6QSR67+XGOm1pqxhD33UMhgMTDeqXNTrp2mSNl4z5xhOxUXRRkzEhg
 t3UhADlwMmm2VfkDfQHu/8t3Suav9KralV7b8A0gDD86GORWWr9A5KFagetNtkUnuutG
 7EeW8JN3fIEpcF8APsX9Kq4qto7GJ0b1WkFDCRWmzMuKz8uRcBCDYz8M4vxKU7FgndDJ
 DIC2ptTXNAP/3lYcIupJ2lcOGf8iwx850U2mqYplfRT5XfFvXLqR/D4AEaa6aH6mmH+0
 91YgawG9xhSWHNGMxyyNXW7ptHywTDxSDPDEGQpqpPSgjsGJ+FFviegEcLElH3V9gyfL
 9rgA==
X-Gm-Message-State: ANhLgQ2rf1Vxm6XZTiJ/BAj7A8WezQvL+UO76w0kJneUNeDOinY/fxQl
 mSIzehxUQHtlRA/EpJDmAYY35h9uJSY=
X-Google-Smtp-Source: ADFU+vuqCztGnSgEvaBbLfIgKv+NmYx+f8L26fTeb1SeELM4AjCd4cDOrJ1+xvWKNWCkk/mTRWYUDw==
X-Received: by 2002:a19:4f0c:: with SMTP id d12mr4078302lfb.117.1584960608526; 
 Mon, 23 Mar 2020 03:50:08 -0700 (PDT)
Received: from [192.168.0.74] ([178.233.178.9])
 by smtp.gmail.com with ESMTPSA id t136sm4144179lff.48.2020.03.23.03.50.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Mar 2020 03:50:07 -0700 (PDT)
Subject: [RFC PATCH 2/3] vt: Set as preferred console when a non-dummy
 backend, is bound
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
References: <44156595-0eee-58da-4376-fd25b634d21b@gmail.com>
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Message-ID: <611f42ec-194c-a121-bba1-5f0ac8e2109b@gmail.com>
Date: Mon, 23 Mar 2020 13:50:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <44156595-0eee-58da-4376-fd25b634d21b@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_035010_662564_92ECAB18 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

	$ sudo dmesg | grep -i "console\|printk"
	[    0.000000] printk: bootconsole [uart0] enabled
	[    0.010232] Console: colour dummy device 80x25
	[    0.015107] printk: console [tty0] enabled
	[    0.019601] printk: bootconsole [uart0] disabled
	[    7.145478] printk: console [ttyS2] enabled
	[    9.316094] Console: switching to colour frame buffer device 300x100

	$ cat /proc/consoles
	ttyS2                -W- (EC p a)    4:66
	tty0                 -WU (E     )    4:7

And on the same machine, with this patch:

	$ sudo dmesg | grep -i "console\|printk"
	[    0.000000] printk: bootconsole [uart0] enabled
	[    0.010257] Console: colour dummy device 80x25
	[    0.015132] printk: console [tty0] enabled
	[    0.019626] printk: bootconsole [uart0] disabled
	[    4.741120] printk: console [ttyS2] enabled
	[    6.779994] Console: switching to colour frame buffer device 300x100
	[    6.836117] printk: switching to console [tty0]

	$ cat /proc/consoles
	tty0                 -WU (EC    )    4:7
	ttyS2                -W- (E  p a)    4:66

Signed-off-by: Alper Nebi Yasak <alpernebiyasak@gmail.com>
---
 drivers/tty/vt/vt.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/tty/vt/vt.c b/drivers/tty/vt/vt.c
index bbc26d73209..0fc462ae8b2 100644
--- a/drivers/tty/vt/vt.c
+++ b/drivers/tty/vt/vt.c
@@ -3566,6 +3566,13 @@ static int do_bind_con_driver(const struct consw *csw, int first, int last,
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
2.26.0.rc2



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
