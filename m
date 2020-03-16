Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E606C186D73
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 15:41:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ap9Owb/P9Y9zf49473Uo6B/LBvQOA6NhvbJmXbibH2I=; b=i+tZool0u1ex62
	8/XYtGcl5u+SxSmtbRuYgfD1JE0fghZTLxVX2Zg/5eUuYDaNhaeLmTzfPyaOob0NlA37+295MILtx
	r8KAB0LQNBXubuXdh2DPgDY15oiAy5f7FKWYlExztKnerl14PrI6DQAbfi5vrM/WIV60EqnPRJ5ko
	m6HNs3HGyMsFNtWIKs7RjL2IiHoIGiaJ+dV1rG2i1q29Jp2Eo/Km5KvPCmVzLfQRE2XAXjJ9+My4/
	qfJmfEgpIOoIKcZV8uFh2FmrlLrZbKbdOK3tkhIgwd0lMRYjKtrvjbgbXmP5Gnvz9/tIMtKeC6TzI
	JaNlKv15YHwyZAwd+aQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqvy-00031u-KG; Mon, 16 Mar 2020 14:41:38 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDquh-0001zJ-PE
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 14:40:21 +0000
Received: by mail-pj1-x1044.google.com with SMTP id o23so2702494pjp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 07:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QHtnMaoK5O9FegkpkkwNmoxCiRNZGD2z9MaeDc0+/xc=;
 b=CZszvrzmIRvERN2PlRfmNYaxq7wc0KrRfRp+ZUcwArxYqFLQDjiJyKC0N3hjkUHKKz
 HaU/VFm68qpJWzdHlhTZHI5ax7L23gtlENHvgWiRZmTlFvS6VVKkekfJ+OWUot4LKwAz
 V1RTs/vDsTw9ZUxE9K8lwEMCNWIWS7T3Giko+Vvy+YsAAnc4tM5wptSLlXVpIYQLe+zs
 ocnbJoahMUAwCosYsTR1CeARHLJE3nNy26/UAQHvAinQ8kTGLjY/sA6ypsPDk+pshlCi
 YTjCevn2ykVc4DODRIutQNGktScrUEwI/gcH02xw4H7+Nr7swysCIKXWySAPQdJcZWvI
 GhrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QHtnMaoK5O9FegkpkkwNmoxCiRNZGD2z9MaeDc0+/xc=;
 b=NfFQIcKMZCQAV48YmVegUFjlkXA43NcA58VSzY/iuBybRDD8xwe7VTqoZsUxB2LdXv
 oQfURMRfneWJHnIPl2cIfL3MeMvRk8NKi/MlItZZFtpaG0VlAQLKYBdThn2BKG1WKYd9
 VmDWqDfDzCQxtGuHfn7vV6yBuUPX6FGFm1r8zY61MgV5qdMK5tLoBrLMIz6RP6QkWTIP
 N9I5IRolkBl3yXvZlEZugAe9S/HyIKU3CsPFxFDBK35hsEYn0/LZHMIFgSfAMhuniG+X
 Q7f50M5m1QSJAabujTQ5xop+2LysbIAOhxmFVh3OTEwl4p9m7yIRdDeZoKVheQhF78I4
 gUeA==
X-Gm-Message-State: ANhLgQ1i807KSoIfMRO3IIMb/2LP5XeiIW38Ioab3C1y1+rvWx2X/IqB
 NpNbRtbrUyVABfDqTYGW3rAp9g==
X-Google-Smtp-Source: ADFU+vuv0p+9CyDCn7sGloFjTFfHxbeMZbOZDt3pRLhru+RDD2KBw7DzGtWo4ZzXWPme/uj8Q70fIQ==
X-Received: by 2002:a17:90a:2a89:: with SMTP id
 j9mr25550721pjd.64.1584369618925; 
 Mon, 16 Mar 2020 07:40:18 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.40.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 07:40:18 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2 08/50] arm: Add show_stack_loglvl()
Date: Mon, 16 Mar 2020 14:38:34 +0000
Message-Id: <20200316143916.195608-9-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_074020_007343_1D8DF4B6 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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

Introduce show_stack_loglvl(), that eventually will substitute
show_stack().

Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm/kernel/traps.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index e1be6c85327c..00455b5bbf8a 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -247,12 +247,18 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
 }
 #endif
 
-void show_stack(struct task_struct *tsk, unsigned long *sp)
+void show_stack_loglvl(struct task_struct *tsk, unsigned long *sp,
+		       const char *loglvl)
 {
-	dump_backtrace(NULL, tsk, KERN_DEFAULT);
+	dump_backtrace(NULL, tsk, loglvl);
 	barrier();
 }
 
+void show_stack(struct task_struct *tsk, unsigned long *sp)
+{
+	show_stack_loglvl(tsk, sp, KERN_DEFAULT);
+}
+
 #ifdef CONFIG_PREEMPT
 #define S_PREEMPT " PREEMPT"
 #elif defined(CONFIG_PREEMPT_RT)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
