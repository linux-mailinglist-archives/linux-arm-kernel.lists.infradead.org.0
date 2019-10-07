Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CD1CEE87
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 23:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X6WCiSS0Mz8VONlW8tOIy37uJJ9xg28Un6eIHdj87Ok=; b=sStDD9NTdrU3vT
	nReongPFOjfAh+6zz8LOiRWp4wqCIBrrmY8WtXvUuq2SDR/5iROG8cBb/BnwOHRy2ByF8vfxodY7v
	xAAUzggtAx7LOjrTdAYEXSKF3uu+eHiTd4YTQpELBdYGyoSPgwDHNzjZWba+rvyFIY1591jJS1VqE
	QY+Z2dFsfJZUFg4NG/R+AXUPfOIK4cJkrVCOn4qs3GGo176kr3DcQMoa6Dvr3lvz/o15dHjNaKK0C
	c2F+fzjvAphRgKT2cDlatWXVd5r/1A6Y9hjDNQ0ijl4Acx9/4kcrsMch1IIdurjzQJBPRwGJtKo+P
	u1kLK/2nLMSFW0ZLv+Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHaoo-0008Tn-9L; Mon, 07 Oct 2019 21:45:26 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHaoK-000775-UW
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 21:44:58 +0000
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
 by Chamillionaire.breakpoint.cc with esmtp (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iHaoD-0006R1-9c; Mon, 07 Oct 2019 23:44:49 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
Date: Mon,  7 Oct 2019 23:44:36 +0200
Message-Id: <20191007214439.27891-1-sebastian@breakpoint.cc>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Breakpoint-Spam-Score: -1.0
X-Breakpoint-Spam-Level: -
X-Breakpoint-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_144456_987662_85B504F2 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Waiman Long <longman@redhat.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


I added support for queued-RW and -spinlocks for ARM. I wanted to
remove the current implementation but this does not work. The CPU_V6
kernel config does not have support for xchg() on 2 byte memory address.
This is required by q-lock' slowpath. It is possible to create a
multi-kernel (with v6+v7+SMP) which then lack the function.

I tested the q-lock implementation with
	hackbench -g40 -s 500 -l 500

The numbers in the table below represent the average runtime of 10
invocations. I tested with HZ_100,HZ_250 and the different preemption
levels on a IMX6q-board (quad Cortex-A9) and an AM572x board (dual
Cortex-A15).
"Ticket" means the current implementation on v5.4-rc1, Q-Locks is the
switch to queued RW and spinlocks and in Q-locksI the locking
instruction is additionally inlined.

IMX6q
~~~~~
HZ_100  | PREEMPT_NONE  | PREEMPT_VOLUNTARY 	| PREEMPT
Ticket  | 52.103        | 52.284		| 60.5681
Q-locks | 54.1804	| 53.267		| 56.1914
Q-locksI| 52.2985       | 49.398		| 56.7441

HZ_250  | PREEMPT_NONE  | PREEMPT_VOLUNTARY 	| PREEMPT
Ticket  | 54.3888       | 52.7896      		| 58.4837
Q-locks | 52.1027	| 52.2302               | 57.26
Q-locksI| 51.6185       | 51.5856		| 55.327

AM572x
~~~~~~
HZ_100  | PREEMPT_NONE  | PREEMPT_VOLUNTARY 	| PREEMPT
Ticket  | 42.3819       | 42.4821      		| 43.2671
Q-locks | 40.9141	| 40.0269	        | 42.65  
Q-locksI| 40.0763       | 39.9101      		| 40.7811

HZ_250  | PREEMPT_NONE  | PREEMPT_VOLUNTARY 	| PREEMPT
Ticket  | 41.6399       | 42.9386      		| 44.5865
Q-locks | 41.4476	| 43.0836               | 43.1937
Q-locksI| 39.6897       | 41.1746		| 43.1962

Based on these numbers, the Q-lock based implementation performs a
little better that the current ticket spinlock implementation. On IMX6q
it requires additionally to inline the locks while it makes hardly a
difference on AM572x.

Here are `size' numbers for the different vmlinux binary:

   text	   data	    bss	    dec	 dec KiB  variant
8096124	2604932	 198648	10899704 10644.24 5.4-rc1 CONFIG_HZ_100 CONFIG_PREEMPT_NONE
8031639	2605060	 198656	10835355 10581.40 qlocks  CONFIG_HZ_100 CONFIG_PREEMPT_NONE
8319233	2605072	 198656	11122961 10862.27 qlocksI CONFIG_HZ_100 CONFIG_PREEMPT_NONE

8098548	2604932	 198648	10902128 10646.61 5.4-rc1 CONFIG_HZ_100 CONFIG_PREEMPT_VOLUNTARY
8034103	2605060	 198656	10837819 10583.81 qlocks  CONFIG_HZ_100 CONFIG_PREEMPT_VOLUNTARY
8321769	2605072	 198656	11125497 10864.74 qlocksI CONFIG_HZ_100 CONFIG_PREEMPT_VOLUNTARY

8082969	2605468	 198712	10887149 10631.98 5.4-rc1 CONFIG_HZ_100 CONFIG_PREEMPT
8083732	2609692	 198720	10892144 10636.86 qlocks  CONFIG_HZ_100 CONFIG_PREEMPT
8725070	2609704	 198720	11533494 11263.18 qlocksI CONFIG_HZ_100 CONFIG_PREEMPT

8096784	2605188	 198648	10900620 10645.14 5.4-rc1 CONFIG_HZ_250 CONFIG_PREEMPT_NONE
8032307	2605316	 198656	10836279 10582.30 qlocks  CONFIG_HZ_250 CONFIG_PREEMPT_NONE
8319901	2605328	 198656	11123885 10863.17 qlocksI CONFIG_HZ_250 CONFIG_PREEMPT_NONE

8099208	2605188	 198648	10903044 10647.50 5.4-rc1 CONFIG_HZ_250 CONFIG_PREEMPT_VOLUNTARY
8034739	2605316	 198656	10838711 10584.68 qlocks  CONFIG_HZ_250 CONFIG_PREEMPT_VOLUNTARY
8322405	2605328	 198656	11126389 10865.61 qlocksI CONFIG_HZ_250 CONFIG_PREEMPT_VOLUNTARY

8083645	2605724	 198712	10888081 10632.89 5.4-rc1 CONFIG_HZ_250 CONFIG_PREEMPT
8084376	2609948	 198720	10893044 10637.74 qlocks  CONFIG_HZ_250 CONFIG_PREEMPT
8725762	2609960	 198720	11534442 11264.10 qlocksI CONFIG_HZ_250 CONFIG_PREEMPT

On average the q-locksI variant is approx. 200KiB larger compared to the
current implementation. On the preempt configuration the size increases
by approx. 600KiB which is probably not worth it.

Sebastian


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
