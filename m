Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A19C2129783
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 15:33:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gc8DrlS7ImGhHd8psv53/09O15mhd4LqvDhVe3pWwXk=; b=ZIw1nTDwvMPvEd6YMFQ79QBmrA
	rlHf1Uc9S2LR+c62TFzRJo/C1q04EkXFkfYRkfRBNsdReiPEq7mFHLQB6ITNMZpfFtZ3zfJo7ym0H
	D9hCR0GnRriHwsR6SUmpv+sjpZ3LKf+WZYXAoE71ABEpPFiQpH4pvBA0jtggXP3uMupWdGoxcHlTU
	68k4LIIPSAp0/uBTQDNLbJf+3xVoGNKjwkEgZjmstOpMfrKnsuWmuJS/eWoWgyqwF0FYx6htWaMoK
	4A/8tOOODEM5bu9+LmwxelcidZyHxmpvtd4WuqXKG3/T9tg8f7Wt5Y09JmpQ6oYSDN6NfUG4zIl8v
	W3jDHSqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijOm4-0002nw-HT; Mon, 23 Dec 2019 14:33:32 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijOjr-0000nb-7d
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 14:31:18 +0000
Received: from localhost (mailhub1-ext [192.168.12.233])
 by localhost (Postfix) with ESMTP id 47hMGZ4Tyvz9txjv;
 Mon, 23 Dec 2019 15:31:02 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=KCu8JdhV; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id mFPGrRR_Px4H; Mon, 23 Dec 2019 15:31:02 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47hMGZ3S6Mz9txhg;
 Mon, 23 Dec 2019 15:31:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1577111462; bh=gGQQWU2/OzDgivXq6POKzHHoU8nAP0pffpFK4Hw4f5o=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=KCu8JdhV8ril/SLZ2cIjpvSR6KUhaaxUBf12AAawmc6m9awzyxj0erkSut9SwKMy4
 lIa9o/tvu2IQe7H4F3ik2pCVBURsKq/6FA5TZsotz4+/RJuPrSovLLYC7Qh7aSnqoZ
 0urZbdFBzVdeOA77s9XkFrxcctol1LftVrxIWgMg=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 908908B7AB;
 Mon, 23 Dec 2019 15:31:07 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 0Ts-AinkXcCE; Mon, 23 Dec 2019 15:31:07 +0100 (CET)
Received: from po16098vm.idsi0.si.c-s.fr (po15451.idsi0.si.c-s.fr
 [172.25.230.100])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 6226C8B7A1;
 Mon, 23 Dec 2019 15:31:07 +0100 (CET)
Received: by po16098vm.idsi0.si.c-s.fr (Postfix, from userid 0)
 id 6C7BC637D4; Mon, 23 Dec 2019 14:31:07 +0000 (UTC)
Message-Id: <21e8afa38c02ca8672c2690307383507fe63b454.1577111367.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1577111363.git.christophe.leroy@c-s.fr>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v2 06/10] lib: vdso: make do_coarse() return 0
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 arnd@arndb.de, tglx@linutronix.de, vincenzo.frascino@arm.com,
 luto@kernel.org
Date: Mon, 23 Dec 2019 14:31:07 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_063115_625308_72A035EB 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: x86@kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

do_coarse() is similare to do_hres() except that it never
fails.

Change its type to int instead of void and get it return 0
at all time. This cleans the code a bit.

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 lib/vdso/gettimeofday.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index 86d5b1c8796b..17b4cff6e5f0 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -64,7 +64,7 @@ static inline int do_hres(const struct vdso_data *vd, clockid_t clk,
 	return 0;
 }
 
-static void do_coarse(const struct vdso_data *vd, clockid_t clk,
+static int do_coarse(const struct vdso_data *vd, clockid_t clk,
 		      struct __kernel_timespec *ts)
 {
 	const struct vdso_timestamp *vdso_ts = &vd->basetime[clk];
@@ -75,6 +75,8 @@ static void do_coarse(const struct vdso_data *vd, clockid_t clk,
 		ts->tv_sec = vdso_ts->sec;
 		ts->tv_nsec = vdso_ts->nsec;
 	} while (unlikely(vdso_read_retry(vd, seq)));
+
+	return 0;
 }
 
 static __maybe_unused int
@@ -92,14 +94,13 @@ __cvdso_clock_gettime(const struct vdso_data *vd, clockid_t clock,
 	 * clocks are handled in the VDSO directly.
 	 */
 	msk = 1U << clock;
-	if (likely(msk & VDSO_HRES)) {
+	if (likely(msk & VDSO_HRES))
 		return do_hres(&vd[CS_HRES_COARSE], clock, ts);
-	} else if (msk & VDSO_COARSE) {
-		do_coarse(&vd[CS_HRES_COARSE], clock, ts);
-		return 0;
-	} else if (msk & VDSO_RAW) {
+	else if (msk & VDSO_COARSE)
+		return do_coarse(&vd[CS_HRES_COARSE], clock, ts);
+	else if (msk & VDSO_RAW)
 		return do_hres(&vd[CS_RAW], clock, ts);
-	}
+
 	return -1;
 }
 
-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
