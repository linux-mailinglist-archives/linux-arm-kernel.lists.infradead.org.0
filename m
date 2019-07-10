Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1489B646B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 15:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0MDOJgAqR9XKd5L6nGEEasfFL9hrE6BVga5uYD9Jp4k=; b=me2oKmTp+XKs3V
	jzKXT9x+S0QpAH6t6/aaMHi5O+ajxPjzDoqcTrTyZXRiRlKxpu5vLrQSMNn0hOxZchUSqTgr2A+ck
	5wWC8Eyo/WKwYnbyzHNmni0ukzKb7L1A8HptnjWZZdZDQ1er9slDTWm2FO/xDe3R+4aSlVAT/8P2W
	UTj3olQYzdd5D7di8G7huiEyplkbvr5alFtQW0kEbueOwMst9lSXKzccIIMAVZgAgRNUZ4+2pZNtw
	HZBrkZ576jCgjLpCJQ+iCtQ/kuejNvYab1nU7VB1CrF0HjCQLskWV2rIIjoqyjELiRt1/LAuSQUXu
	gT2XvHDnE1gE5PLv3cyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlCFK-00022U-3M; Wed, 10 Jul 2019 13:02:54 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlCF6-000225-Io
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 13:02:42 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MfqGN-1iQbak3EYz-00gD3I; Wed, 10 Jul 2019 15:02:11 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH] vsyscall: use __iter_div_u64_rem()
Date: Wed, 10 Jul 2019 15:01:53 +0200
Message-Id: <20190710130206.1670830-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:VYafebV/Q7CLTnWZ3vcfCq05iJn/NVcnt1G0HsD21yoEzIkoekE
 GowoTPqBzup5f7V7xMLaEhy9kYVbaCnEXVORNGnVIa8I2H78SDiMxn8HQmhjaxAcq4M75O3
 n1F8e1rj/DWTM3EUk68i9Xc0Ao0x514ZBgN+xP1ILeAPJqVS+IE7IlGj8Aqn56bIoG9A/Xg
 UepIr9PkVYqdrblAse6ww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JDc5rbPPiV4=:XAvQ8JJ5XLRK8GSkrUMuz/
 HWUwAcw/PhALur/u6/ttxc3cm9gdCqtsTNP52XyBncxE2HOTgoKvR3otYj/sts/ORoquxdGsz
 BxR0NKAzNwmYughjAVvXKClqjgD9SEX8zpODX2NZzeOWv5JayFghv5E6qGgaoqyGUzUp2zsL3
 AFfZQWAAKs9U8Doq+EnhblZnFZbJYXw8DnzdtvE0+a0EI+0oJvQPPU6CQqkYAjNkYiDj8QDQX
 GPT2vGHj479BaPHnNRIyBq+aXw6GOQ70W/+rZFZqFpbNf7bjKtYCMBl6OTswrpqXDQp+/coNl
 BZopxI79m2Xxes8/GmUJYF4p8qmEYfePM39/G1O/ErJ5kzOaAOjI8gw4OiuEwN1z53/Fu09dN
 nH48rqsKfJVRCo3Fh0FlcWNbVVn23+3YoQOKj8/hkTeZD7tbcwbAEEniEIIFFeKeY6ZHmFkmm
 UGmKiaWSa2GilVF0BbvBv/m3EQ9PF61lukpTnI2cpAaXzUdFAOciz6he839Bk8PRkm/Gg4LgQ
 fL+LlDYge+e1k0KnTuY/I5ckYX8WuOZHZtN87AgdBPO9qsV8jeh6AjhErOfyeMSU0hUhP0KuZ
 DJ4x+nwBH3akGdENlotFLEuh8ogcq2IIk+eB9ge4Krbd/CjIhHt2VKGP7uZEuQR1Qv0qwqMTP
 kkZ6QFe/kMFjoAGKoKyw75KK4IjiMwWixw0j5uI706+1CfzNH3T3rEvOMoYcU4flZYNW+Ztej
 tMj9T/hBrnPCeLPBBi8Mb8K0S8H8UPmwftlyZA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_060240_916478_CEF698EA 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Paul Burton <paul.burton@mips.com>, linux-kselftest@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Mark Salyzyn <salyzyn@android.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 32-bit x86 when building with clang-9, the loop gets turned back into
an inefficient division that causes a link error:

kernel/time/vsyscall.o: In function `update_vsyscall':
vsyscall.c:(.text+0xe3): undefined reference to `__udivdi3'

Use the provided __iter_div_u64_rem() function that is meant to address
the same case in other files.

Fixes: 44f57d788e7d ("timekeeping: Provide a generic update_vsyscall() implementation")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 kernel/time/vsyscall.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/kernel/time/vsyscall.c b/kernel/time/vsyscall.c
index a80893180826..8cf3596a4ce6 100644
--- a/kernel/time/vsyscall.c
+++ b/kernel/time/vsyscall.c
@@ -104,11 +104,7 @@ void update_vsyscall(struct timekeeper *tk)
 	vdso_ts->sec	= tk->xtime_sec + tk->wall_to_monotonic.tv_sec;
 	nsec		= tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;
 	nsec		= nsec + tk->wall_to_monotonic.tv_nsec;
-	while (nsec >= NSEC_PER_SEC) {
-		nsec = nsec - NSEC_PER_SEC;
-		vdso_ts->sec++;
-	}
-	vdso_ts->nsec	= nsec;
+	vdso_ts->sec	+= __iter_div_u64_rem(nsec, NSEC_PER_SEC, &vdso_ts->nsec);
 
 	if (__arch_use_vsyscall(vdata))
 		update_vdso_data(vdata, tk);
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
