Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1F613F2E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:39:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LqjAbLb/yxnKlU4wWcHAcvF3B+LSRz/hna7JXOJs08s=; b=lDYUa8nQGRhwCwea+jOC99rwe2
	0jmvePGu/OdJ61+Nj4i6VS6CJpsECqkUF3t6+p9U1dr4ubgxE/6CS792C9G+UiZQP+mz0Q5UaGF9W
	uM0onxFe3dzwxLIZIfYVbAsT4mfnS/oxMbNLIarC2/3JDB9+UWqrybFfc6xYqq1F7JTXpc0GdCAfP
	BljFcl/aO0uA/9oDkI7z2OrV+5bKvvsftyz7wjNYwPcPj/l98IvRa7l9+MCx7sjmOSDhuoZA0oiEf
	d3yjgzw1aIh7K3eFnHWi34xhar1gTC5QP2RkMiGVXk8gX6vuYZVy4Jl6f8+xztEjr5ufCf/IEE25h
	PNRXdVpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isA2i-0008F5-7N; Thu, 16 Jan 2020 18:38:56 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9Pf-0002RW-9F
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:58:46 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47zBkv4jWBz9v4gd;
 Thu, 16 Jan 2020 18:58:31 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=VpEAVsMo; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id DXtJZSmMJMX7; Thu, 16 Jan 2020 18:58:31 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47zBkv3NwQz9v4gc;
 Thu, 16 Jan 2020 18:58:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1579197511; bh=wfHgFrBCUMEE5/kS6fI9jRYQD9EPAenOLbEqfa9DCHQ=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=VpEAVsMoaRaYR/GDi6jEna8DY+dp86tqIqGVdjZ9p7CFVKq9q4/QlPb4PyiZjRSKd
 pkZmibrJqKFhI86ouCtZlJGL+CvG8vsycMzfZZq6zR5sEiwOxE1evs6xYe+ppXJtC0
 rPKQ3nF22KjCabgC73k1U7UYgFh9oD/+ZhvTL1ik=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id F39148B82D;
 Thu, 16 Jan 2020 18:58:32 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id yj3XipUHd9_m; Thu, 16 Jan 2020 18:58:32 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id B80628B82A;
 Thu, 16 Jan 2020 18:58:32 +0100 (CET)
Received: by po14934vm.idsi0.si.c-s.fr (Postfix, from userid 0)
 id 8FAE264A33; Thu, 16 Jan 2020 17:58:32 +0000 (UTC)
Message-Id: <1b278bc1f6859d4df734fb2cde61cf298e6e07fd.1579196675.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1579196675.git.christophe.leroy@c-s.fr>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v4 08/11] lib: vdso: allow fixed clock mode
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 nathanl@linux.ibm.com, arnd@arndb.de, tglx@linutronix.de,
 vincenzo.frascino@arm.com, luto@kernel.org
Date: Thu, 16 Jan 2020 17:58:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_095835_657843_792C349D 
X-CRM114-Status: GOOD (  10.08  )
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

On arches like POWERPC, the clock is always the timebase, it
cannot be changed on the fly and it is always VDSO capable.

Therefore, give arches the opportunity to redefine the way
clock_mode is checked by moving the check into an overridable
__arch_vdso_capable() macro.

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 lib/vdso/gettimeofday.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index 9fa249809399..724b45c3e8ac 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -46,6 +46,13 @@ static inline bool __arch_vdso_hres_capable(void)
 }
 #endif
 
+#ifndef __arch_vdso_capable
+static inline bool __arch_vdso_capable(const struct vdso_data *vd)
+{
+	return vd->clock_mode != VDSO_CLOCKMODE_NONE;
+}
+#endif
+
 #ifdef CONFIG_TIME_NS
 static int do_hres_timens(const struct vdso_data *vdns, clockid_t clk,
 			  struct __kernel_timespec *ts)
@@ -66,7 +73,7 @@ static int do_hres_timens(const struct vdso_data *vdns, clockid_t clk,
 	do {
 		seq = vdso_read_begin(vd);
 
-		if (unlikely(vd->clock_mode == VDSO_CLOCKMODE_NONE))
+		if (unlikely(!__arch_vdso_capable(vd)))
 			return -1;
 
 		cycles = __arch_get_hw_counter(vd->clock_mode);
@@ -134,7 +141,7 @@ static __always_inline int do_hres(const struct vdso_data *vd, clockid_t clk,
 		}
 		smp_rmb();
 
-		if (unlikely(vd->clock_mode == VDSO_CLOCKMODE_NONE))
+		if (unlikely(!__arch_vdso_capable(vd)))
 			return -1;
 
 		cycles = __arch_get_hw_counter(vd->clock_mode);
-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
