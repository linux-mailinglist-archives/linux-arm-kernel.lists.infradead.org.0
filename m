Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A805F8F3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 13:07:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=enCHpT3MZbPXCraTOHe0MLDKOvxr3ddXcwk7IcRy/48=; b=iMClX2zTYYweOU
	Sagxf+HVvfZ7JvHjGTEEUdjK/rKk3aV+imySpSAYfuVDGo3WGaSUw5lqGKtTiSBmzU/f3f176RV4I
	lBhCHoAK3N3StlFeHacAKfw/86ujbKX+6i7wam0ZKUxLtNxumid/ciRCbp20SQA2pPVpE5oC0LOIh
	HHaHHOeyuL0yzYjObB6QaNKnDF5vwLgyoFqVRUfUBqpes/44xhJ5vefmVWPXkHCUKkTAEcTAJR5yB
	ULok7oo3zAaBfcoB/Qr1gVGJUbo+P3use6Jv8YBTsKsVZJxFzyKBuQzJqIw5o/59RNp7igacaYNkU
	/4qd74Bb+SlWVX9zpjlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUUwn-0005Vf-TY; Tue, 12 Nov 2019 12:07:01 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUUwe-0005V7-0f
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 12:06:53 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xACBqFLb028925; Tue, 12 Nov 2019 13:06:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=VcswSaQgjwVPJKQoYkqU+reFn99J6VbQH4Gn2WoEbg4=;
 b=nqdyOp8BwecEtygM50ctVa1kTGngR4LZh7LrEz4aLiILpLe82NxD1OXJOpocbyh+xuXO
 2Uy3JcfEh+f2BSEMEopjFfCegb0AGdWjp2c3Xz3WOO9DvFenzU6cv5JztYZRelOKKfXp
 24/Xr+5DX8kkionSrIx1nOIviQastISvp00rbqaZ563Twvc2HJBfbMOnsKvzTvuAYxug
 v10DGjupCRFOnVE/auKzG6+/ptMKtldjgMu9z9xyQy7zClOSqcu70hXrplC6iH1uAiwb
 w/EVOdAF20b/v95IcnJZgTuNMyf5NZNhjCbFHjO9dWsLsre99zrrmCUGwTIj5ZIC95w9 mg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w7pstsurk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 12 Nov 2019 13:06:28 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 81D09100034;
 Tue, 12 Nov 2019 13:06:27 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6199B2BA7DF;
 Tue, 12 Nov 2019 13:06:27 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 12 Nov 2019 13:06:26
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <linux@armlinux.org.uk>, <tglx@linutronix.de>,
 <gregkh@linuxfoundation.org>, <rmk+kernel@armlinux.org.uk>
Subject: [PATCH] arm: kernel: initialize broadcast hrtimer based clock event
 device
Date: Tue, 12 Nov 2019 13:06:25 +0100
Message-ID: <20191112120625.20173-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-12_03:2019-11-11,2019-11-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_040652_496447_1FB146BD 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On platforms implementing CPU power management, the CPUidle subsystem
can allow CPUs to enter idle states where local timers logic is lost on power
down. To keep the software timers functional the kernel relies on an
always-on broadcast timer to be present in the platform to relay the
interrupt signalling the timer expiries.

For platforms implementing CPU core gating that do not implement an always-on
HW timer or implement it in a broken way, this patch adds code to initialize
the kernel hrtimer based clock event device upon boot (which can be chosen as
tick broadcast device by the kernel).
It relies on a dynamically chosen CPU to be always powered-up. This CPU then
relays the timer interrupt to CPUs in deep-idle states through its HW local
timer device.

Having a CPU always-on has implications on power management platform
capabilities and makes CPUidle suboptimal, since at least a CPU is kept
always in a shallow idle state by the kernel to relay timer interrupts,
but at least leaves the kernel with a functional system with some working
power management capabilities.

The hrtimer based clock event device is unconditionally registered, but
has the lowest possible rating such that any broadcast-capable HW clock
event device present will be chosen in preference as the tick broadcast
device.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
Note:
- The same reasons lead to same patch than for arm64 so I have copy the
  commit message from: 9358d755bd5c ("arm64: kernel: initialize broadcast
  hrtimer based clock event device")
 arch/arm/kernel/time.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/kernel/time.c b/arch/arm/kernel/time.c
index b996b2cf0703..dddc7ebf4db4 100644
--- a/arch/arm/kernel/time.c
+++ b/arch/arm/kernel/time.c
@@ -9,6 +9,7 @@
  *  reading the RTC at bootup, etc...
  */
 #include <linux/clk-provider.h>
+#include <linux/clockchips.h>
 #include <linux/clocksource.h>
 #include <linux/errno.h>
 #include <linux/export.h>
@@ -107,5 +108,6 @@ void __init time_init(void)
 		of_clk_init(NULL);
 #endif
 		timer_probe();
+		tick_setup_hrtimer_broadcast();
 	}
 }
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
