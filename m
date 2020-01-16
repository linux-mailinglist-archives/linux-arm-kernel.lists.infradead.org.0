Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B4613F321
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:40:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Sr5FqgirVL3u8TagFmjRNmJXMCva7CgZi8oPZm5skyE=; b=ghpWrbPFhVDrIal8V6KMqCXd4w
	CDjb4MBIVYA9ru2GnkcDWHUd7oSj/IuT1MBh2vynLfPpakaN2W7ypK+ppfkiSuMVjqmH8UONrgp5L
	TNoV7lFN5pbqat/utDs/GM8PF2PomAh0+fx5E/GMX2Kt/sOusoEEYEvyZut4szIabEqI7Jrn9izdO
	N+t3JHDZemmiRD0Fys49vkP/moAG3sojlShVhZHxmaY1W4xY37NPjILP6tujjQ4YzdQ3DCL13ZVml
	2M5ErhV8s5K6f0AYKg5ShdO3R3iSB6PSVInVygZlZXijJIydeHu3NmTzVuk+P766mSVeC/cDVmjUr
	OaQMKCnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isA4P-0002f7-O7; Thu, 16 Jan 2020 18:40:41 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9Pi-0002a4-DK
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:58:49 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47zBkw4Y6lz9v4gn;
 Thu, 16 Jan 2020 18:58:32 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=UQil0z6K; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id mhPOBAGVB8j6; Thu, 16 Jan 2020 18:58:32 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47zBkw3RdHz9v4gc;
 Thu, 16 Jan 2020 18:58:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1579197512; bh=dI2VkNAhHWcekKp95TXfWTj0joevEjoDA4cLyXKcRJs=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=UQil0z6KPtZoE4IIgyqrDBSU9X++9rjj8ncIeY6CZXiPoACTViMiHr1hq6MyLqjFs
 NYsS+kkgITXlInWdQjntooTn54GkdBh+PsKIX4v6NrruyU3YXO9ZTwlCbRP6T1mThA
 NiCgtiKs/DT7XbSGH03WuzM4g4BuDwB/Ys2ivoQU=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 0913F8B82A;
 Thu, 16 Jan 2020 18:58:34 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id eHJ2rsSqhfWE; Thu, 16 Jan 2020 18:58:33 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id BFACF8B82D;
 Thu, 16 Jan 2020 18:58:33 +0100 (CET)
Received: by po14934vm.idsi0.si.c-s.fr (Postfix, from userid 0)
 id 9828464A33; Thu, 16 Jan 2020 17:58:33 +0000 (UTC)
Message-Id: <2bf9735a6ae5ff9b350b667c0b8434cf2bbe9b50.1579196675.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1579196675.git.christophe.leroy@c-s.fr>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v4 09/11] powerpc/vdso: override __arch_vdso_capable()
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 nathanl@linux.ibm.com, arnd@arndb.de, tglx@linutronix.de,
 vincenzo.frascino@arm.com, luto@kernel.org
Date: Thu, 16 Jan 2020 17:58:33 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_095838_661175_4336C19F 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
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

When the timebase is used, make __arch_vdso_capable() always
return true. When the RTC clock is used, make __arch_vdso_capable()
always return false.

Before the patch:
clock-gettime-realtime:    vdso: 1086 nsec/call

After the patch:
clock-gettime-realtime:    vdso: 1033 nsec/call

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 arch/powerpc/include/asm/vdso/gettimeofday.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/powerpc/include/asm/vdso/gettimeofday.h b/arch/powerpc/include/asm/vdso/gettimeofday.h
index 0a247f9b9af9..74b6eef8fbe9 100644
--- a/arch/powerpc/include/asm/vdso/gettimeofday.h
+++ b/arch/powerpc/include/asm/vdso/gettimeofday.h
@@ -74,6 +74,12 @@ static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
 
 const struct vdso_data *__arch_get_vdso_data(void);
 
+static inline bool __arch_vdso_capable(const struct vdso_data *vd)
+{
+	return !__USE_RTC();
+}
+#define __arch_vdso_capable __arch_vdso_capable
+
 /*
  * powerpc specific delta calculation.
  *
-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
