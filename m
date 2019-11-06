Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BECC3F0C7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 04:07:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntPKASJ1URPeO2DKJQiOLuJa/MlX/LynTO6NVHt++Wg=; b=IXKmOoXTKWJ4l6
	Esky1RIVoJ8Qb/VXNraG2G3dLTQayDf5f9bI+u5jj5dFHJGqznbOV2DPSdLhs36URfenY4ZVWARNP
	nHcfjq7zhtqG13vxAXAGTLDtVHZ/RcLWDPCE4kHMdQIHIFQpTsvizXCKhwR9+WRVLeKHU9JNSUAOS
	gn2Uq/cQNaDBqVJvcYbbJLIIHBM5oTybufrKKSKVVEmOoeKOVPzu1EUllblURG4LsoGDlJZI+miwt
	gwuWK9dIVVu/MPc1B/IWCs0LVhBDJA08pgnqBrVNCYS2xr5o5flCWuXcJEYKaDVhN6xqOY2QRvouI
	/4FVkhPnLhlEspIJzdeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSBfX-0002bb-Ca; Wed, 06 Nov 2019 03:07:39 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSBeX-0001rZ-CJ
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 03:06:39 +0000
Received: by mail-pg1-x541.google.com with SMTP id 29so4801799pgm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 19:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1eu3UPlsBV/UY26NeNGjbz4l7EAQWTc1IzyHUwCN9e8=;
 b=l5M21eojm5ADgK30p3n29KBNvRjlQLyb5o3RSfzCBPtwd8xfYvXmO0h/XTmbszl+Cz
 Ip+WvAoeM0zYHC6lP/mwNI1cBLVX//0wIybOlWCY+9eZEZ2CrNzVv3NtsoMU3Yf7PtDQ
 umy/fXovlvyoOFOoyosnA6gBZtjlbWbc/glH+hq/GllGadGd7H52suxaBW4/Xj6Ke80N
 qeqpMcOGN1Tcpuu4sTD2W0I/EQr88ZYXI3mejfPC41ezvNJwsuCnUClc3vT3umE8KOa9
 WBOhSzXHctupm9vMwGbv34PHxVrEHipDQv2J7iSwb7IpO4v/DcVEg87xh2ckquQBw7mM
 Voog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1eu3UPlsBV/UY26NeNGjbz4l7EAQWTc1IzyHUwCN9e8=;
 b=SUPGpIwNb/Z/beEwpJKEm8FEphIIoCk/Fhc4rL6F2vJYVjcchQNVyGk4rrZXiyDT1g
 vASYJxsdi78AKm3s6PSz/zrQibmJTD44K2OHqcYksATmKJeoUioxERozAnLr3OTnTeC9
 0piJAhVESJeK6JaqGfWBU4460Di0btUZKMsVi0bAfYX65XvXgb7rjRqJXxVPfBoe67l4
 MNp88h0/UckFH3azjiWZ4XqHBOrXCFqftTebd96QZ07Raf6u0nnyLDILdT/zqVackdTL
 xlIm5Ee1B18WR0QAW5bEazT8UXBK0dqh4TH4eEjouwPolmuz5WmLuXTUbsorUZ5u68dS
 IPgA==
X-Gm-Message-State: APjAAAW726AJ9cjgXXg1LYZ3vd32s3TOMZ+hnJFCYhtWNsbe+eianVZc
 HAaApQ1IJy9ZBqW4/SXVXwFlEw==
X-Google-Smtp-Source: APXvYqwvxn/9sS9MC1m5ry0eE34Vul3uDKIsXO53cTh59yiwSYajJzdjlH7cpBZS3MzGAYufLnftpA==
X-Received: by 2002:a63:541e:: with SMTP id i30mr219652pgb.130.1573009596665; 
 Tue, 05 Nov 2019 19:06:36 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.06.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:06:35 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 07/50] arm: Wire up dump_backtrace_{entry,stm}
Date: Wed,  6 Nov 2019 03:04:58 +0000
Message-Id: <20191106030542.868541-8-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_190637_479442_59F909B5 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 arch/arm/kernel/traps.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index e4f4ec8a1899..16022b75a72f 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -66,13 +66,16 @@ void dump_backtrace_entry(unsigned long where, unsigned long from,
 			  unsigned long frame, const char *loglvl)
 {
 #ifdef CONFIG_KALLSYMS
-	printk("[<%08lx>] (%ps) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
+	printk("%s[<%08lx>] (%ps) from [<%08lx>] (%pS)\n",
+		loglvl, where, (void *)where, from, (void *)from);
 #else
-	printk("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
+	printk("%sFunction entered at [<%08lx>] from [<%08lx>]\n",
+		loglvl, where, from);
 #endif
 
 	if (in_entry_text(from))
-		dump_mem("", "Exception stack", frame + 4, frame + 4 + sizeof(struct pt_regs));
+		dump_mem(loglvl, "Exception stack",
+			frame + 4, frame + 4 + sizeof(struct pt_regs));
 }
 
 void dump_backtrace_stm(u32 *stack, u32 instruction, const char *loglvl)
@@ -87,12 +90,12 @@ void dump_backtrace_stm(u32 *stack, u32 instruction, const char *loglvl)
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
