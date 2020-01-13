Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E056F139720
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 18:09:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Is+oS8XPLQa4EN5F9SjrMtWflYy/8ljvCITl8xvCO4I=; b=ga2I/+G2pk4N2rLmeSbma8Qkul
	SejsJbipeFBzase/PG91Wh0641vpInOLTSKzR/4m6fHOuWjYOdMjukfpYN8AxmNj7+7Bun1+PPHE9
	KC5Uk8lJ7eS/luJ8QjzAo6S6kPQJn3CXZ2EmIDfLZiKdSm/SqL0WSQMkpxVEOgyw2gi5tQJPP4v7S
	xML+kPeprquZrBn2F6KHt+QHGiBmj1EEYyDkCD0m5nBcsZecGJxcvRL3ym6swW1VXwFKVaXXxrJVn
	vBu4MhzdMGPR0OC+utntCcqHA8w+WhzgC5Xth5fn9Vfx4pbw5z6JLpp8ZM82ixogbBHlKVlL7APNZ
	FG6W+eBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir3Ds-0003Cz-Qw; Mon, 13 Jan 2020 17:09:52 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir3Cp-0002Ko-8j
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 17:08:50 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47xKmk72cCz9txyx;
 Mon, 13 Jan 2020 18:08:38 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=HtFNRPge; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id mjoWBsPHa-lT; Mon, 13 Jan 2020 18:08:38 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47xKmk5mb2z9txyq;
 Mon, 13 Jan 2020 18:08:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1578935318; bh=Eb2ZF+M9WBtPogiQVXilo9gV/urkBEO8lF9A3E/Edxw=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=HtFNRPgemN7felkbeT+FB0EwFPgnVRgimg07M9iZM8wdrHwAwhSoKmrDZbQvBZlfA
 n+uw1euzbaRGoi7intJLkB8fWtUVdQpvovV7HtTph8+lzZUOYBROTg3WQ6RYuxMmZf
 qrbTgWxm7Zg/Bj13VNbh0acYZyo3CV4jtooAuD9I=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 24A058B7C9;
 Mon, 13 Jan 2020 18:08:44 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id mGn9IhJ8RRPM; Mon, 13 Jan 2020 18:08:44 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id E3A8A8B7BE;
 Mon, 13 Jan 2020 18:08:43 +0100 (CET)
Received: by localhost.localdomain (Postfix, from userid 0)
 id B3CB164A1D; Mon, 13 Jan 2020 17:08:43 +0000 (UTC)
Message-Id: <9e4f75ca93c46b8aa0239f561f3a61dc713577f3.1578934751.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1578934751.git.christophe.leroy@c-s.fr>
References: <cover.1578934751.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v3 05/12] lib: vdso: Avoid duplication in
 __cvdso_clock_getres()
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 arnd@arndb.de, tglx@linutronix.de, vincenzo.frascino@arm.com,
 luto@kernel.org
Date: Mon, 13 Jan 2020 17:08:43 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_090847_644402_CF596208 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

VDSO_HRES and VDSO_RAW clocks are handled the same way.

Don't duplicate code.

Before the patch:
clock-getres-monotonic-raw:    vdso: 737 nsec/call
clock-getres-monotonic-coarse:    vdso: 753 nsec/call
clock-getres-monotonic:    vdso: 691 nsec/call

After the patch:
clock-getres-monotonic-raw:    vdso: 715 nsec/call
clock-getres-monotonic-coarse:    vdso: 715 nsec/call
clock-getres-monotonic:    vdso: 714 nsec/call

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
Reviewed-by: Andy Lutomirski <luto@kernel.org>
---
 lib/vdso/gettimeofday.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index d75e44ba716f..decd3f2b37af 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -184,7 +184,6 @@ static __maybe_unused
 int __cvdso_clock_getres_common(clockid_t clock, struct __kernel_timespec *res)
 {
 	const struct vdso_data *vd = __arch_get_vdso_data();
-	u64 hrtimer_res;
 	u32 msk;
 	u64 ns;
 
@@ -192,27 +191,21 @@ int __cvdso_clock_getres_common(clockid_t clock, struct __kernel_timespec *res)
 	if (unlikely((u32) clock >= MAX_CLOCKS))
 		return -1;
 
-	hrtimer_res = READ_ONCE(vd[CS_HRES_COARSE].hrtimer_res);
 	/*
 	 * Convert the clockid to a bitmask and use it to check which
 	 * clocks are handled in the VDSO directly.
 	 */
 	msk = 1U << clock;
-	if (msk & VDSO_HRES) {
+	if (msk & (VDSO_HRES | VDSO_RAW)) {
 		/*
 		 * Preserves the behaviour of posix_get_hrtimer_res().
 		 */
-		ns = hrtimer_res;
+		ns = READ_ONCE(vd[CS_HRES_COARSE].hrtimer_res);
 	} else if (msk & VDSO_COARSE) {
 		/*
 		 * Preserves the behaviour of posix_get_coarse_res().
 		 */
 		ns = LOW_RES_NSEC;
-	} else if (msk & VDSO_RAW) {
-		/*
-		 * Preserves the behaviour of posix_get_hrtimer_res().
-		 */
-		ns = hrtimer_res;
 	} else {
 		return -1;
 	}
-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
