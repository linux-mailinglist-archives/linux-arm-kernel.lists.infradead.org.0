Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04381109C74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 11:43:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r34aa2/AswCz3fV5pvAu76dl7MHfrorwGXyGtaSwLg8=; b=Usz9A+DXfkua2N
	RufBOwuXjziHDuqLpN7V44/Ppv4r0JxLLzTtMW/FtJmAb2t7LdUMrCvBEB1fmp7KOo80vCAVwwpbp
	W3L1xeMh3mr1Yt3tNOfKFzmm8ofN6agTwqKyKYJ415T1mDXj6KaOalD8tZK6o2goAORvf0tRH1uwo
	t66Q8Ge65IFWVtbQ8h6BRDc2UJXwL8NwqkxWoVIsR4We6Ua94BcUYzVV5Ppwo4O3J6X0LLkJJR8Vs
	X5JE6TPcU7H2UNMqkhsisI0x6Out4RguDvD5yrSWX4qNIICgZDiqKYA5thiFmc735O0q6ZEnSeWOp
	bzmI+tHrThaxklQj4Chg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZYJ5-0008HL-JV; Tue, 26 Nov 2019 10:42:55 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZYIR-0007LM-GK
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 10:42:18 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id CD174215C6;
 Tue, 26 Nov 2019 11:42:11 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id AE21C2157A;
 Tue, 26 Nov 2019 11:42:11 +0100 (CET)
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: sparse warnings for arch/arm64/kernel/vdso/vgettimeofday.c
Message-ID: <bc4cc5c0-5192-4772-5444-17bba3ab74fa@free.fr>
Date: Tue, 26 Nov 2019 11:42:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Nov 26 11:42:11 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_024215_859323_2075F992 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 SPOOFED_FREEMAIL       No description available.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Dave Martin <dave.martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Running 'make C=2' on v5.4 (arm64 defconfig) outputs:

  CHECK   arch/arm64/kernel/vdso/vgettimeofday.c
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:49:38: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:50:47: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:51:29: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:52:26: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:53:21: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:56:38: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:57:26: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:58:30: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:59:18: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:65:46: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:78:38: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:79:37: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:80:38: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:81:18: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:87:58: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:91:13: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:99:13: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:100:31: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:102:26: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:105:31: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:113:47: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:115:13: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:116:46: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:126:43: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:132:13: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:133:45: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:136:13: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:137:33: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:138:34: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:146:58: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:148:13: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:151:28: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:152:53: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:154:32: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:155:38: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:158:13: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:159:56: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:160:52: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:183:58: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:189:13: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:192:23: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:192:23: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:192:23: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:217:13: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:226:46: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:228:13: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:229:45: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:239:42: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:245:13: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:246:44: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:249:13: warning: call with no type!
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:250:33: warning: unknown expression (8 46)
/home/mgonzalez/linux/lib/vdso/gettimeofday.c:251:34: warning: unknown expression (8 46)
arch/arm64/kernel/vdso/vgettimeofday.c:11:5: warning: symbol '__kernel_clock_gettime' was not declared. Should it be static?
arch/arm64/kernel/vdso/vgettimeofday.c:17:5: warning: symbol '__kernel_gettimeofday' was not declared. Should it be static?
arch/arm64/kernel/vdso/vgettimeofday.c:23:5: warning: symbol '__kernel_clock_getres' was not declared. Should it be static?


Are the above warnings all false positives?
Do I need to update my version of sparse maybe?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
