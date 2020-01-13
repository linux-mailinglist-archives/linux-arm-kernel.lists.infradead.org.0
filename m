Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2187A139719
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 18:09:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ljtw7MTcaEpL1AaB8Ua7DSwQMly3RnBIuga+ELwoEi0=; b=BhtFqSJPQ+GDCU2VFWTYbSLVQY
	eYAGClSigGxwQfMKMiCVX+KiRTthrKmsK/z36m6FuydpAza4gGFcGxB40iAkC7NH+cznRqkuAesQd
	SfQxZ5+BxR8rKmm9GEiu12O0IMmE7Q42sbJOE8veR6SkMx6XQ8BDxHbgpJy61UUx6SpYWq1eraR1o
	dY+2twV0GvQLLDWLtKeENZhSalKsUIgmOt9TIbWy9MI0o/qJZ6k2rDEHDjndTMWYyLDIEhV91tHnh
	VE/sM2yUmlCOwPlykDbpF+Uucu4Yt1Y50JyNS9m62nubt8roplhL3UnhstJdXfiXhsuyTrInNVjlh
	S4ChrjEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir3DS-0002Zy-Lf; Mon, 13 Jan 2020 17:09:26 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir3Cl-0002Iv-Fp
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 17:08:44 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47xKmh6GKJz9txyv;
 Mon, 13 Jan 2020 18:08:36 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=mBpCKKG/; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 47SfHxDpbXMG; Mon, 13 Jan 2020 18:08:36 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47xKmh5CtGz9txyq;
 Mon, 13 Jan 2020 18:08:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1578935316; bh=FbDYhvBTgQ/Lrh5RwFYuCQEYwJvHYlZlnPbutz2hvUg=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=mBpCKKG/R/EQyJZFZ9dsTIMC+sg7c/c1wXtd7QEgOWLNi3i2AAC9Vfv/Ud7HFmFuU
 HmlggOZhmWRHXKl/lKRl+RpCLeyu9Xi5gNGL0xjvd+JpWn5zcRECBbDM9OHFWWIXGo
 YorKxdnV/93taISEusU2hS50irb55O/OVnGaRC+k=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 0E6EF8B7C9;
 Mon, 13 Jan 2020 18:08:42 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 6e0G3CbwxoJN; Mon, 13 Jan 2020 18:08:41 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id D00BE8B7BE;
 Mon, 13 Jan 2020 18:08:41 +0100 (CET)
Received: by localhost.localdomain (Postfix, from userid 0)
 id A66B564A1D; Mon, 13 Jan 2020 17:08:41 +0000 (UTC)
Message-Id: <9f0f72424a8f0260470ecd50d5803db685285ba5.1578934751.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1578934751.git.christophe.leroy@c-s.fr>
References: <cover.1578934751.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v3 03/12] lib: vdso: mark __cvdso_clock_getres() as static
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 arnd@arndb.de, tglx@linutronix.de, vincenzo.frascino@arm.com,
 luto@kernel.org
Date: Mon, 13 Jan 2020 17:08:41 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_090843_674693_4E73C62F 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
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

When __cvdso_clock_getres() became __cvdso_clock_getres_common()
and a new __cvdso_clock_getres() was added, static qualifier was
forgotten.

This change allows the compiler to inline __cvdso_clock_getres_common(),
and the performance improvement is significant:

Before:
clock-getres-realtime-coarse:    vdso: 984 nsec/call
clock-getres-realtime:    vdso: 922 nsec/call
clock-getres-monotonic-raw:    vdso: 968 nsec/call

After:
clock-getres-realtime-coarse:    vdso: 753 nsec/call
clock-getres-realtime:    vdso: 691 nsec/call
clock-getres-monotonic-raw:    vdso: 737 nsec/call

Fixes: 502a590a170b ("lib/vdso: Move fallback invocation to the callers")
Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 lib/vdso/gettimeofday.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index 9ecfd3b547ba..42bd8ab955fa 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -221,6 +221,7 @@ int __cvdso_clock_getres_common(clockid_t clock, struct __kernel_timespec *res)
 	return 0;
 }
 
+static __maybe_unused
 int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
 {
 	int ret = __cvdso_clock_getres_common(clock, res);
-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
