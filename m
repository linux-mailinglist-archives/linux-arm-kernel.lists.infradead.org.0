Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBEC6FDE4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OV3xeTJIza/o/QnElCaSu5XFiHY4IDPE2lzUW+USYk=; b=H8QCCkn0s+b5Nl
	9WokjVnI/H38juoPHwp/YdD1FZn7YxdAryL/hqwv3ZScNz8rt7qb1xDOLkjIhzCp00agS1wCVQ8kX
	f/aGCDRvg3q/b2BLVpm3KU/rfG2pFK/t0R7kiSkm+r8Ywd8Y5aqYpRt36+IEf9o4awHRQr41czePB
	abwrqn+G8amcacylb7tW8M8xO2UDvUeTv19z1+QuOSCM+xqisxkyGNWRl5sxK/7ecCV8xu5tdaWCl
	NEq8EypDjiHKOsTt/KjpzYl+OV40FuMbzFkRodQwHPmppo19qHiWf5poWg3ej2QkCc7tfuf1KIRgG
	DTONXONLlLGqcyrUD8yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVe6-0003Wc-4k; Mon, 22 Jul 2019 10:34:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVdY-00038K-PI
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:33:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E27DD1576;
 Mon, 22 Jul 2019 03:33:43 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7347E3F71A;
 Mon, 22 Jul 2019 03:33:42 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>,
 Pavel Tatashin <pasha.tatashin@soleen.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will.deacon@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/3] sched/clock: Allow sched_clock to inherit timestamp_clock
 epoch
Date: Mon, 22 Jul 2019 11:33:29 +0100
Message-Id: <20190722103330.255312-3-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190722103330.255312-1-marc.zyngier@arm.com>
References: <20190722103330.255312-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_033344_863178_F85529F1 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we can let an architecture override the timestamping
function, it becomes desirable to ensure that, should the
architecture code switch its timestamping code to sched_clock
once it has been registered, the sched_clock inherits the
timestamp value as its new epoch.

This ensures that the time stamps are continuous and that there
is no jitter other than that introduced by the lack of quality
of the timestamping clock.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 kernel/time/sched_clock.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/kernel/time/sched_clock.c b/kernel/time/sched_clock.c
index 142b07619918..ee1bd449ec81 100644
--- a/kernel/time/sched_clock.c
+++ b/kernel/time/sched_clock.c
@@ -192,6 +192,16 @@ sched_clock_register(u64 (*read)(void), int bits, unsigned long rate)
 	new_epoch = read();
 	cyc = cd.actual_read_sched_clock();
 	ns = rd.epoch_ns + cyc_to_ns((cyc - rd.epoch_cyc) & rd.sched_clock_mask, rd.mult, rd.shift);
+
+	/*
+	 * If the architecture has a timestamp clock, and this is the
+	 * first time we register a new sched_clock, use the timestamp
+	 * clock as the epoch.
+	 */
+	if (IS_ENABLED(CONFIG_ARCH_HAS_TIMESTAMP_CLOCK) &&
+	    unlikely(cd.actual_read_sched_clock == jiffy_sched_clock_read))
+		ns = timestamp_clock();
+
 	cd.actual_read_sched_clock = read;
 
 	rd.read_sched_clock	= read;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
