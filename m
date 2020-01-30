Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C7214DE7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 17:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KyGgTuR/9RpU6x/M4bU1wz6E/ckxGhZjzUCAL2CTAQc=; b=r2Gs6HLDdZfh9eAxmPK0WuHqBp
	Y998o4oIqno+0CCbhoLQb0nfyTDQWXvJI5f8o1QtssGcK1t13yt2ViRRWrQKVhuVKEmme1P3qwnWs
	ovlIwRa4Y1nEs6+Qcvp516n16UTxeieiiwh/AWlICedBfcnd4kWqo8wPXJC53uOn2CDXB+mpRyDCz
	DsJXUpJic1I0zmJL9Xf/7kr9uFJRmlqAgWab/72YZAmWXobMNDCcopMF7hqHSg4OZ7vFMtF2icSRb
	SLllUEItIwTtkTshGrMkPuniuB+4YTMuI2w767bTbsL18NLQ4bLpnVlVj26ai4+kJllGqnT4x5ZUd
	xd+HJtQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixCNq-00012S-AD; Thu, 30 Jan 2020 16:09:34 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixCMy-0000WY-FC
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 16:08:43 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 487ldd2zQzz9v6KQ;
 Thu, 30 Jan 2020 17:08:37 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=X9LhxdZE; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id XQHp63Tpvetz; Thu, 30 Jan 2020 17:08:37 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 487ldd1fxlz9v6KL;
 Thu, 30 Jan 2020 17:08:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1580400517; bh=opdc97PQgpxv6WQptdNj4QCI44pmYV4DmS9A7ZMKMhQ=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=X9LhxdZERdpj1RBH8cqlpbU6LLGFypCEgKkf8NcHPPpy3gWter1LkiyWIlC6uktg6
 kzf/3qWUxytjj5VRX1tRXLg5+Z5BtjWDg3U6VgiPHUlvsfk0pt0sYCjp1Uri9fEIoW
 V+Q6tiVn2QT+7A17JjIukPkJRO0tRsoFs8M72X+I=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id BD1698B87B;
 Thu, 30 Jan 2020 17:08:38 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id a3HgqEy-UMm0; Thu, 30 Jan 2020 17:08:38 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 815438B877;
 Thu, 30 Jan 2020 17:08:38 +0100 (CET)
Received: by po14934vm.idsi0.si.c-s.fr (Postfix, from userid 0)
 id 4DDC065283; Thu, 30 Jan 2020 16:08:38 +0000 (UTC)
Message-Id: <47500ae9aa628aead4c5b5a71d5279268cdddb48.1580399657.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1580399657.git.christophe.leroy@c-s.fr>
References: <cover.1580399657.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 4/6] lib/vdso: Allow fixed clock mode
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 nathanl@linux.ibm.com, arnd@arndb.de, tglx@linutronix.de,
 vincenzo.frascino@arm.com, luto@kernel.org
Date: Thu, 30 Jan 2020 16:08:38 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_080840_692025_8C0356DD 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: x86@kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some architectures have a fixed clocksource which is known at compile
time and cannot be replaced or disabled at runtime, e.g. timebase on
PowerPC. For such cases the clock mode check in the VDSO code is
pointless.

Therefore, give architectures the opportunity to redefine the way
clock_mode is checked by moving the check into an
__arch_vdso_capable() macro.

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 lib/vdso/gettimeofday.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index 72d65dd50cb4..0b4b71880f22 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -120,12 +120,18 @@ static __always_inline int do_hres(const struct vdso_data *vd, clockid_t clk,
 			cpu_relax();
 		}
 		smp_rmb();
+#ifdef __arch_vdso_capable
+		if (unlikely(!__arch_vdso_capable(vd->clock_mode)))
+			return -1;
+#endif
 
 		cycles = __arch_get_hw_counter(vd->clock_mode);
 		ns = vdso_ts->nsec;
 		last = vd->cycle_last;
+#ifndef __arch_vdso_capable
 		if (unlikely((s64)cycles < 0))
 			return -1;
+#endif
 
 		ns += vdso_calc_delta(cycles, last, vd->mask, vd->mult);
 		ns >>= vd->shift;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
