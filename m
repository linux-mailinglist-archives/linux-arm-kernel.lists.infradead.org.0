Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDE812CFCB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 12:55:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLn9fXIT3ffptCa0NplGJRBucMMoRd6qIBPNJwYctzk=; b=Ovuk8YohFV0KGU
	vbxAQwAxhPh8WUPKsp1g6uKq3gunS+lBnbG2o8N3n0LI1VAUhL/19dqNxmHitW3HRD0AgGL7Y9SWp
	opfZBuptWKaFrsbMigqtR5asx++mxt5uXos/DytpISsJvY/5UvxrdNE5hrhm0xH7CWlhE2dH9y3aq
	LZC7foJ1GJQusrhfOyOI1c17jpwj+VagKF28wiHWafmvESkoAJFZbYI1XMDVJcO0LafETSThFGQAK
	43GHUljwS2ab3MtVwKi3vtFTvcl+QnHNhaiYb5pDcaJOmsmIpb0nQxAAhgEDxQK0qJs0d4SWjQJ9h
	GMe7exwvuqBeWbhFIfcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilte9-0004YV-8F; Mon, 30 Dec 2019 11:55:41 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iltdy-0004YC-JG
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 11:55:32 +0000
Received: by mail-pj1-x1042.google.com with SMTP id s7so8026734pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 03:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QmvUyOThLKgIMmAYLq0yhUeeOF7gjd7fkLseJ1QqBz0=;
 b=cnPlqgi+FQx6/QEMcrf8L3berGqTWJqZpi1LDYXdPHSFSKbij9MzBTZqYdNLXJeNeA
 EEHPXp3J1dIz6iVi0+vzngX0t4bl144PzH3rElS1AOp9Tn81oLdwPeu+hUm0CKehq+0Q
 mS5jKidKmcVa+UAWJpuZ4uKyeE+D0atLbPHaxdeoX6NvNRYfO6lf5btSY3GHeNWmSpjx
 6D7CqXeaGTk3wzPbKkIP+A32DnRNRXjSqDEkkawAQMBURMnE2ANwDQzFlvdw3UY2Nk7q
 UhsyGd9KMgttFpivz3Ic+CRnHNWicbfkuidoWK9B16W5Y0wqlPPBGDU/CRmpj4rCQuve
 7UcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QmvUyOThLKgIMmAYLq0yhUeeOF7gjd7fkLseJ1QqBz0=;
 b=ShTnp8hmACZEBXGntlTusEefV7J3JXo4pF1XBWujOXtVwJBcypDmgc4f6fh5Y0eBza
 wHUxVCcC6y2svjIuf89NFgeONKwLYI2OcmBBy7krlNzzzjSxV4NVfUuXTg9dYQIPohEH
 QD36NsV8pwChC992+1Q9UQBK53ktIVHXPuZnZNjrsNd9nu9MP2VLGI+HF9bvzgnUGaO8
 /0PAcVEZ+Uw52KRH/LPvhb+/JsYMp6iShBUz2ApAMRTBrjlYpMbIq+MCtut7t/OsXVzK
 pPhVprCivsbZFgsI1JHdMSE8RejhQc0Z5uCfEylGLSIIUH/xuDMU9mfMwa0IfD6H6dZC
 mY9g==
X-Gm-Message-State: APjAAAWDuPLVbVnvFmSda1rvQJGLytDz9eH7fuTHAH1uTgI7DtY4Xvny
 fJ6pnOLcQUY4SPBq7aoaqtC+rjXu
X-Google-Smtp-Source: APXvYqwMc3BA+RXuQW9mKgvrslgYpCpOTZDjadt25dHNTHzW1D8P3wuDgx6NI5gOvt4aK3eqRGaLIg==
X-Received: by 2002:a17:902:8207:: with SMTP id
 x7mr42684646pln.286.1577706930056; 
 Mon, 30 Dec 2019 03:55:30 -0800 (PST)
Received: from localhost ([49.207.54.121])
 by smtp.gmail.com with ESMTPSA id c19sm53990746pfc.144.2019.12.30.03.55.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Dec 2019 03:55:29 -0800 (PST)
Date: Mon, 30 Dec 2019 17:25:27 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Russell King <linux@armlinux.org.uk>
Subject: [RFC PATCH 2/2] ARM: !MMU: v7-M: preemption support
Message-ID: <c24f8d1c8e813eef62d642b5e620e0062c52c9a8.1577705829.git.afzal.mohd.ma@gmail.com>
References: <cover.1577705829.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1577705829.git.afzal.mohd.ma@gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_035530_641335_437A7C59 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (afzal.mohd.ma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ICSR RETTOBASE bit indicates whether there is any active exception other
than the exception indicated by current value of IPSR. Existing code
already makes use of it to find whether interrupt occurred during
user(thread) mode. Add preemption support in the code path that executes
upon finding an active exception other than the current interrupt.

Having an active exception during interrupt exception indicates that
the interrupt occurred during SVC or PendSV with current Linux exception
setup. On PendSV, interrupts are disabled at exception entry (applicable
to all) & enabled back just before returning from exception. Hence it
has been assumed that active exception during interrupt is indicating
SVC interruption. This would have to be revisited.

With this change, there is some effect, but not enough to make it
usable, this is being debugged.

A simple character driver that does infinite while loop during read was
used to test it as follows (/dev/mymisc corresponds to the node for the
character driver),

A. Before this change,

A.1
~ # cat /dev/mymisc
[   28.099225] mymisc_open
[   28.101625] mymisc_read: enter

command prompt is not usable (expected), interrupts do happen during
this time.

A.2
~ # cat /dev/mymisc &
[1] 39 cat /dev/mymisc
~ # [   11.699880] mymisc_open
[   11.702274] mymisc_read: enter

command prompt is not usable (expected as preemption not supported).

B. After this change,

B.1
~ # cat /dev/mymisc
[   27.374821] mymisc_open
[   27.377349] mymisc_read: enter

though user will not get control back (as expected as it is fg process),
entering on prompt causes new line, doesn't know what to make out of
this behaviour, this doesn't happen in the A.1 case. Interrupts happen
here as well.

B.2
~ # cat /dev/mymisc &
[1] 41 cat /dev/mymisc
~ # [   44.836417] mymisc_open
[   44.838814] mymisc_read: enter

though prompt is available under the control of user, upon typing
anything on the prompt (typed character doesn't get echoed), it crashes
as follows,

[   44.838814] mymisc_read: enter
[   51.710314]
[   51.710314] Unhandled exception: IPSR = 00000006 LR = fffffffd
[   51.717576] CPU: 0 PID: 37 Comm: sh Not tainted 5.5.0-rc4-00004-g2328d01dbd85 #105
[   51.725078] Hardware name: STM32 (Device Tree Support)
[   51.730206] PC is at 0x90195958
[   51.733329] LR is at 0x901c4df3
[   51.736471] pc : [<90195958>]    lr : [<901c4df3>]    psr: 21000000
[   51.742713] sp : 901e5a58  ip : 00000000  fp : 901d89fc
[   51.747911] r10: 00000000  r9 : 00000000  r8 : 00000001
[   51.753143] r7 : 000000a8  r6 : 901e5a58  r5 : 901e5b08  r4 : ffffffff
[   51.759643] r3 : 000000a8  r2 : ffffffff  r1 : 00000001  r0 : 00000001
[   51.766122] xPSR: 21000000
[   51.768866] CPU: 0 PID: 37 Comm: sh Not tainted 5.5.0-rc4-00004-g2328d01dbd85 #105
[   51.776369] Hardware name: STM32 (Device Tree Support)
[   51.781594] [<0800c0c9>] (unwind_backtrace) from [<0800b25b>] (show_stack+0xb/0xc)
[   51.789166] [<0800b25b>] (show_stack) from [<0800b9eb>] (__invalid_entry+0x4b/0x4c)

It is a Usage Fault happening while in thread(user) mode. PC & LR in the
dump is strange in the sense that they do not point to text section.

The change here has been made based on how Cortex-A handles preemption.
Since PAN is not applicable and since it seemed that saving & restoring
thread_info::addr_limit does not make difference on the !MMU Cortex-M
due to single address space being used, there was no additional save &
restore of 'dacr' & 'addr_limit' as done in the case of interrupt during
system call on Cortex-A. Also as DUT was UP Cortex-M4, it seemed that
cache related would not affect in anyway w.r.t preemption, as currently
cache is not enabled for M4 in Linux.

As mentioned above, it was assumed that active exception during
interrupt meant SVC was interrupted, though it could have been PendSV as
well. To ensure that issue is not due to interrupt during PendSV, the
PendSV handling of pending work was lifted & sticked onto __irq_entry
and setting PendSV removed as well. Still the behaviour is same.

Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
---
 arch/arm/kernel/entry-v7m.S | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm/kernel/entry-v7m.S b/arch/arm/kernel/entry-v7m.S
index 581562dbecf3..e671115767d2 100644
--- a/arch/arm/kernel/entry-v7m.S
+++ b/arch/arm/kernel/entry-v7m.S
@@ -55,14 +55,29 @@ strerr:	.asciz	"\nUnhandled exception: IPSR = %08lx LR = %08lx\n"
 	ldr	r1, =BASEADDR_V7M_SCB
 	ldr	r0, [r1, V7M_SCB_ICSR]
 	tst	r0, V7M_SCB_ICSR_RETTOBASE
-	beq	2f
+	beq	101f
 
 	ldr	r2, [tsk, #TI_FLAGS]
 	tst	r2, #_TIF_WORK_MASK
 	beq	2f			@ no work pending
 	mov	r0, #V7M_SCB_ICSR_PENDSVSET
 	str	r0, [r1, V7M_SCB_ICSR]	@ raise PendSV
+	b	2f
+
+101:
+#ifdef CONFIG_PREEMPT
+	ldr	r2, [tsk, #TI_PREEMPT]
+	teq	r2, #0			@ preempt count != 0 ?
+	bne	2f
 
+	ldr	r0, [tsk, #TI_FLAGS]
+	tst	r0, #_TIF_NEED_RESCHED	@ __TIF_NEED_RESCHED set ?
+	beq	2f
+102:	bl	preempt_schedule_irq
+	ldr	r0, [tsk, #TI_FLAGS]
+	tst	r0, #_TIF_NEED_RESCHED	@ __TIF_NEED_RESCHED set ?
+	bne	102b
+#endif
 2:
 	pop	{lr}
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
