Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AA91AF4C0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 22:21:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ccz0Kpdjl+2gr7yQly1oSt7LdRMrVjmIf7cnaEavv28=; b=XmkFq6+HfsuHKW
	6JXOSsZKv48yVpMZKWChHeb6qpXfFjqHBdJl7vLW4JculgtpUb7Q+kUdakLoi/TwmkKlzNMAgB9hE
	djyhY7KNdAH8LHcMt+8yUNez/AEkt+ynsjfECa8YnsAkkf8O4QC/WbzqTsqNXvvj7Rf1+fdi2QuD8
	H4LKHtAUlyV9vJF3ejLEQBgCxHtWjFJgduXdVbXLVRtsVX1TLuG84HlvKzbmbnt5Eyp2JYlY9+avd
	ikxBe0RZk77PJVT+waoNBXpXDPJX7+NBykNWkvlAiwFU1WN1uiXOd27xt2KNDSvjxbKBKy0PD1Exm
	oEHRKAcZ7PHLV7L3MZ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPtyG-0005Cf-Mp; Sat, 18 Apr 2020 20:21:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPtwX-0001Y9-QD
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 20:20:04 +0000
Received: by mail-wr1-x442.google.com with SMTP id f13so7132598wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 13:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+30pBdntWlJcgkbolNjxFd/p/YpKCMUbtsGUF0cke54=;
 b=CpqLi0TdivFtBdUYdlu0IK8kq03+7R/ZENpjm1PxBJ1oGUqdzIOIhyS2Nj/X0utCfc
 B9p4j4Bjv5hZQE223ADJSzI59HTZY11SjvI0dZYnlsJhRrXkOOnZTavGsOlQ42ztSVjd
 3LzEeCTHznGhIeo4WEPCNICxozCgHV2ha13BrAZrDyo5NWJXUZVIIfW/PL/3TDPT3NoI
 kGdavhK1plQAUPwRv2CaCKve3TSC5HoGM0e2ZIaozI5J7cMdVFhuimrY2wdMRkikD0Or
 aaW3MDikWIs6/9JOkt2Vrml99ykHIKRaseOpn8sc2Q6MPE9OApzYwVmKBL6B9o8ooxOU
 egLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+30pBdntWlJcgkbolNjxFd/p/YpKCMUbtsGUF0cke54=;
 b=VTmvbi43QBbIcz2FfQYz4At2ELUYORjvpZOZtNL/mjjRkbfEVQCIFNxU4uF03O/u5Q
 TwIwbVCB0bq7sjBK0WfTN+KQ9J3Od7fY/o0fY/rG60nQq91iGTBEyQmLrGvdtlj40dxi
 tFjlbuN9xE/1ONTK1govWirmx/7b5IpFcBnwNBEvXtd3sjVXJoJwctynoytelut9Yura
 8TXe8tM97P8bE9Gf2YAdcl+/WHNnc1wrAZgTLon5/QBi2IV6wQDZVCHs4YZ7fQ3txEH+
 NIwD0N9ayEN8Wi0aR8FXeWC0egDcKgqOfOMeI38YnJasBCiSwBt6bV1erF/CLO4w6lNs
 4MpQ==
X-Gm-Message-State: AGi0PubjwcaoF8q1gS+d1Hi5hZnMYcQHfZnFs5YMKaKtOG5gypRaBuyl
 iE6WMTJm9NvXx/M470AvHhWujg==
X-Google-Smtp-Source: APiQypLcXaHBnW9H0cOYu3yQzZUFMfmWLaUmw0+I88uE591C25vfvZ8CZwoW82VotrQ1EUmOsFrsIA==
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr11297074wrn.390.1587241200532; 
 Sat, 18 Apr 2020 13:20:00 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id
 m1sm31735255wro.64.2020.04.18.13.19.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 13:19:59 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv3 07/50] arm: Wire up dump_backtrace_{entry,stm}
Date: Sat, 18 Apr 2020 21:19:01 +0100
Message-Id: <20200418201944.482088-8-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_132002_027073_95B5ABBB 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Petr Mladek <pmladek@suse.com>, Dmitry Safonov <dima@arista.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 clang-built-linux@googlegroups.com, Jiri Slaby <jslaby@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, the log-level of show_stack() depends on a platform
realization. It creates situations where the headers are printed with
lower log level or higher than the stacktrace (depending on
a platform or user).

Furthermore, it forces the logic decision from user to an architecture
side. In result, some users as sysrq/kdb/etc are doing tricks with
temporary rising console_loglevel while printing their messages.
And in result it not only may print unwanted messages from other CPUs,
but also omit printing at all in the unlucky case where the printk()
was deferred.

Introducing log-level parameter and KERN_UNSUPPRESSED [1] seems
an easier approach than introducing more printk buffers.
Also, it will consolidate printings with headers.

Now that c_backtrace() always emits correct loglvl, use it for printing.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm/kernel/traps.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index 0f09ace18e6c..e1be6c85327c 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -68,13 +68,15 @@ void dump_backtrace_entry(unsigned long where, unsigned long from,
 	unsigned long end = frame + 4 + sizeof(struct pt_regs);
 
 #ifdef CONFIG_KALLSYMS
-	printk("[<%08lx>] (%ps) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
+	printk("%s[<%08lx>] (%ps) from [<%08lx>] (%pS)\n",
+		loglvl, where, (void *)where, from, (void *)from);
 #else
-	printk("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
+	printk("%sFunction entered at [<%08lx>] from [<%08lx>]\n",
+		loglvl, where, from);
 #endif
 
 	if (in_entry_text(from) && end <= ALIGN(frame, THREAD_SIZE))
-		dump_mem("", "Exception stack", frame + 4, end);
+		dump_mem(loglvl, "Exception stack", frame + 4, end);
 }
 
 void dump_backtrace_stm(u32 *stack, u32 instruction, const char *loglvl)
@@ -89,12 +91,12 @@ void dump_backtrace_stm(u32 *stack, u32 instruction, const char *loglvl)
 			if (++x == 6) {
 				x = 0;
 				p = str;
-				printk("%s\n", str);
+				printk("%s%s\n", loglvl, str);
 			}
 		}
 	}
 	if (p != str)
-		printk("%s\n", str);
+		printk("%s%s\n", loglvl, str);
 }
 
 #ifndef CONFIG_ARM_UNWIND
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
