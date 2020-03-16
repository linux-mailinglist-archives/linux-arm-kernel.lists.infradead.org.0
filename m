Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DDE186D6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 15:41:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSCkLvwruYdi+xEmPBkQQspswYh5/hweBEaRJQuS3EQ=; b=PaIKIg2Th7opey
	aM196t4cHMNGWoqCLVuFcCwejQso7ieipqzUxU/DP79oqGkNsX95dpY+OwQcSGCnisne56Jcb6uKr
	ZJuSDyma+oZiqOakBHtFIMr6aTmjwaE0m7VFECFvjNSOB+hFgLFV2iwj80fA+WcATqr09EzQ17O0+
	mahD7uQv9cIXgAAQGmJVDg1r2mt9/Lj/og5jlwZshMGsK0Yvvt0LKDBl5TAVVfACgY0tkIg9cEhex
	PYEPed/pNovzJHA2RW3jFpyQ9qJg2jiNww2dxz3YhHhY0AfaE9uJF6rACvlkGd2xuxhP3cvHv1Hub
	J/4MWjwRzUX19WP8HZgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqvg-0002mA-K9; Mon, 16 Mar 2020 14:41:20 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqud-0001ff-HK
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 14:40:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id t16so1078772plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 07:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x/gCbAp+H9Fc7JriqMdSSF6E8ktWavqK5+A0swN3ZDc=;
 b=UffnQYQrX4Gsz0le1JAUkNrEskhQYyMx9aVo6pv/sYzRbgsZ9Ie846Y+l+3ziU4DdR
 3CjCVS5kj+n3OdYgO4/HMMJIpRVeB/J8l1u+khYQcffFkGJy+FMZwW2yEjCJN/L84LiA
 MHrkzGrtCj9mIrHJAhMGwtJnD1aZyQb1Bi6etSTY258uU/ugk25xkkG/W29Dq+iTh6Dl
 VkFSfrGBRRzkn4HEBoD5ktZJd0jABrCLp0yAD7j0Ig19xr+bvMve/rE6NL+0AxPQmxOc
 PBKBcOfuC3RhsqLSe5kwzjpZQnGXTfzxONLW634aqtTK/ZGy2gcwaaEYFOcQz/zw4MVL
 6LOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x/gCbAp+H9Fc7JriqMdSSF6E8ktWavqK5+A0swN3ZDc=;
 b=mH+rNHmp0pw4wqEM409GqrFG8Xqjfo9NE8CCxc+EGuryniHT3X2ioYeZf/gyobBP4y
 Sh4jGWjmGWUOO+Mlez+p+vyo6tdmud7MzfHJsht6+ahTl4ecXJQTbwcOO6QwCeNQoUEb
 R8gSyBndSsHn/lRrELvPTt+my50vWbf4mv9pokYFuOdTODy1uNqXNWpx4UgiAO+MbOBb
 piRXdZIp8T4BiNaovCEfbZgJRXB+DA1A9p+Fy7h54DhKnLhBufRDvZKFPsNSMOOmTg2P
 W5KT4sUKUoxdsqtwyBR4wEd4G/Jrk7k5ncoyY2X+MK80l15GrnQXzkGZdIY2wBcsaeqH
 pQcA==
X-Gm-Message-State: ANhLgQ0e9H16cwcm/c5lb6iwfdhz0dnORe+yAZArgDlc5UWZ/8DP7pEK
 ezSyta4hFe3oZdSKZfN3yxwNbw==
X-Google-Smtp-Source: ADFU+vuP+9D4s7GPz8or+QCMJaQtRjQgHTDwkRUFWwBShfCJpkUaUxI2cOrbtLoyolvwdTEEMYe9tA==
X-Received: by 2002:a17:90a:36c7:: with SMTP id
 t65mr25183358pjb.182.1584369614252; 
 Mon, 16 Mar 2020 07:40:14 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.40.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 07:40:13 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2 07/50] arm: Wire up dump_backtrace_{entry,stm}
Date: Mon, 16 Mar 2020 14:38:33 +0000
Message-Id: <20200316143916.195608-8-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_074015_685880_F6B749D9 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
