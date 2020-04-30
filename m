Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7B91C01EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eqqRGqgZT6RJ9dxeaVAlDCYp1Ezvc7WYYtUCsqZ0D6A=; b=X4SwYPhlxmbPBI
	e1igqn97LszTY6YIcitqniepp8hegpk8zryXjcZ7NzZlLxenPJWhhclKrlLKVaQ1PESX+9Klgycgg
	lbmj6feolHer+jKLbtTcHd/TxyaP4XZEESJ1GaXan2rP3JHaE5jEirx7kwCZ5GXpBxahVlS0rVFPc
	PvqDmvS1hHSomXlHTr8LNQv0sp5ueqP61xUzfqCkIjT3lQOrIWtCaBxuOC1Jim1fhSVCsLOGWQULz
	yPBaB3nhi7I1Av8SFlAk5U82iCqK3nOlrjJ07gKwstnpX4GzhgFPHFzghHkYocpCYsDLa8C25rBRj
	z912zp47A/JaDNjUX7CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBrY-00029v-BB; Thu, 30 Apr 2020 16:16:36 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBrN-00027z-Cn
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:16:26 +0000
Received: by mail-lf1-x143.google.com with SMTP id l11so1713071lfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 09:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vHCcWfIEICV286PlzrlDhon26egExA0EzSmCUey5zx8=;
 b=ay5tSMlwbsTytMC7115ZGRlTIa6ajZl389PdP5rwRFjVdI2WdoqyVsj71qOrQeG4+3
 UKYJyxd/cA0ur6rCIOqf1Ews+8L98JgIF6F+ljKM85bXDLpHp+CnOLJjuE3bBFLuyRnY
 o/O3wePvR7bcNfq9OBC9q5xozmSaVSjKIlBgWdN5mX7JueVbkl63GNBkBR1NGUwfwGMM
 g4ub0uMZ3dn7BqOxtEc7rOu5zDyTR2VThEy7nizswgYtakMsJQ4tP2QAPHFiUMLbw9aA
 wTlUdDTBuWbEL4G2S75g8ppTLzaeLz5Uf3/9Nh/6mK2rkLJt7KevDilZvGEh3nYSuwNd
 Mh4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vHCcWfIEICV286PlzrlDhon26egExA0EzSmCUey5zx8=;
 b=qYHkT7le3Hl9SqCVu2GLwjbWedpmHOrvniyk/Y6zP32jUnqp1sCed9y6HyCK7IJYIw
 kHq1iE8LxKgfq+cIC7di0uxXtBFeZEkgzFhFdm05/XAwrE+L5sDuqPBRkiXxNrifwDoC
 Z7BsltGTOfVYOUsRHzQf9N848PSRJitqgCxtXxdj1eu7BEX3IxDPhp+/YbNaxT83nZgV
 mxi6QatZCo8N8RQ3gclScb0SCM17yoJxWzIJFag6JyFjJJ6DyFMeJac+/VC0LUOiieqK
 zrMIrbzp88VaDSgg5c2Yf8+nz2nxZrEp8SkS9BVqckn6ZhsdWBjn8BFuwu+ZzUygsCMU
 5FOQ==
X-Gm-Message-State: AGi0Pub/Ux2UgN5FJsVpH35HYP5MhMcWlSGFXHN6k9u5u+hhC2V0zgvQ
 ZI4TvS4j5m/icnfPm2TKuW8=
X-Google-Smtp-Source: APiQypI8ZN0KyOTXyMoykSTjnNSFhzlj/ggy7e3jSEAEM/HOQ9fxPmeQ5Yrj2uqnv4+yAUnZjlL2sg==
X-Received: by 2002:ac2:489b:: with SMTP id x27mr2746373lfc.60.1588263383459; 
 Thu, 30 Apr 2020 09:16:23 -0700 (PDT)
Received: from localhost.localdomain ([178.233.178.9])
 by smtp.gmail.com with ESMTPSA id k6sm60638lfm.91.2020.04.30.09.16.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 09:16:22 -0700 (PDT)
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Subject: [RFC PATCH v2 0/3] Prefer working VT console over SPCR and
 device-tree chosen stdout-path
Date: Thu, 30 Apr 2020 19:14:34 +0300
Message-Id: <20200430161438.17640-1-alpernebiyasak@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_091625_441095_E64D8AFE 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Sam Ravnborg <sam@ravnborg.org>,
 Eric Biggers <ebiggers@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Nicolas Pitre <nico@fluxnic.net>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Alper Nebi Yasak <alpernebiyasak@gmail.com>,
 Grzegorz Halat <ghalat@redhat.com>, linux-serial@vger.kernel.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Lukas Wunner <lukas@wunner.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Feng Tang <feng.tang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I recently experienced some trouble with setting up an encrypted-root
system, my Chromebook Plus (rk3399-gru-kevin, ARM64) would appear to
hang where it should have asked for an encryption passphrase; and I
eventually figured out that the kernel preferred the serial port
(inaccessible to me) over the built-in working display/keyboard and was
probably asking there.

Running plymouth in the initramfs solves that specific problem, but
both the documentation and tty-related kconfig descriptions imply that
/dev/console should be tty0 if graphics are working, CONFIG_VT_CONSOLE
is enabled and no explicit console argument is given in the kernel
commandline.

However, I'm seeing different behaviour on systems with SPCR (as in QEMU
aarch64 virtual machines) and/or a device-tree chosen stdout-path node
(as in most arm/arm64 devices). On these machines, depending on the
console argument, the contents of the /proc/consoles file are:

                    |     "console=tty0"    |    (no console arg)   |
  ------------------+-----------------------+-----------------------+
  QEMU VM           | tty0     -WU (EC p  ) | ttyAMA0  -W- (EC   a) |
  (w/ SPCR)         | ttyAMA0  -W- (E    a) |                       |
  ------------------+-----------------------+-----------------------+
  Chromebook Plus   | tty0     -WU (EC p  ) | ttyS2    -W- (EC p a) |
  (w/ stdout-path)  |                       | tty0     -WU (E     ) |
  ------------------+-----------------------+-----------------------+
  Chromebook Plus   | tty0     -WU (EC p  ) | tty0     -WU (EC p  ) |
  (w/o either)      |                       |                       |
  ------------------+-----------------------+-----------------------+

This patchset tries to ensure that VT is preferred in those conditions
even in the presence of firmware-mandated serial consoles. These should
cleanly apply onto next-20200430.

More discussion due to or about the console confusion on ARM64:
- My Debian bug report about the initramfs prompts [0]
- Fedora test issue arising from ARM64 QEMU machines having SPCR [1]
- Debian-installer discussion on what to do with multiple consoles [2]

[0] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=952452
[1] https://bugzilla.redhat.com/show_bug.cgi?id=1661288
[2] https://lists.debian.org/debian-boot/2019/01/msg00184.html

Changes in v2:
- Fix #elif to #else (Reported-by: kbuild test robot <lkp@intel.com>)
- Refresh dmesg outputs with/without earlycon for next-20200430
- Use the correct format when referencing a commit

Alper Nebi Yasak (3):
  printk: Add function to set console to preferred console's driver
  vt: Set as preferred console when a non-dummy backend is bound
  printk: Preset tty0 as a pseudo-preferred console

 drivers/tty/vt/vt.c     |  7 +++++
 include/linux/console.h |  1 +
 kernel/printk/printk.c  | 68 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 76 insertions(+)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
