Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C699139730
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 18:11:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QHBgYhMy9+rSULiaekpFDrNmxclOhcLrIyS/Y4GT0Eg=; b=I9fqP3J4VQcfxcurux2uHD7mqc
	d6yrC2EZUaXmHsttuk/j5OjI18EKw+U2NT1yg31xwmuKJwxUkFeTLUaRQUhAX736hsHIl0J9oIC/T
	gi7ZlSYtBn07mEA1LnhXKj/S/AQQRxXD1+eXULBHvQv0FIk7InJAGUgVxN1nhAFLZGiAGyJm4hSHy
	HH7RVZh453c9P5GYOxHtqu1zP6dxaIsx9RH7fIlS7kwqLAV1soCx4latDzSIT7iHMtGWBU1dTcaJw
	Drax1ZPsu2a+slxsevC/ZEhsQ+txvQWrtroyRifxnWqZVpSeWEpYJk07wGSA+dNhTR9zTf36H3uCT
	0gRTyhNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir3FO-0005oj-O6; Mon, 13 Jan 2020 17:11:26 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir3Cu-0002P1-08
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 17:08:54 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47xKms1KbYz9v0Y0;
 Mon, 13 Jan 2020 18:08:45 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=ltBD6+si; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 2grE1wQ3VL1l; Mon, 13 Jan 2020 18:08:45 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47xKms0BhPz9v0Xy;
 Mon, 13 Jan 2020 18:08:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1578935325; bh=XLnzIcQo2gdn6/h4SDeOO8peJAxsTTmgC8iXnixatHk=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=ltBD6+siFYlWWG5dz6TSocWL3jpuQkzoWPC3xPxE01ZHvMRMiVv8yn+46Fn1vDAQs
 162dR8qUJMY1/1TefqinYBAAfHQyr5UsbSxiugQLjDb7t5oItKvK/H3exuotlqfipX
 mp3zxCOe4hj+Y66sTj0SUCkp01MdjmZBIT0gxDk4=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 563FC8B7C9;
 Mon, 13 Jan 2020 18:08:50 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id nXhUeUXxlMgG; Mon, 13 Jan 2020 18:08:50 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 249F18B7BE;
 Mon, 13 Jan 2020 18:08:50 +0100 (CET)
Received: by localhost.localdomain (Postfix, from userid 0)
 id E5E5D64A1D; Mon, 13 Jan 2020 17:08:49 +0000 (UTC)
Message-Id: <bb92e7208d820f74188ab3edc1d56e6733f2df29.1578934751.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1578934751.git.christophe.leroy@c-s.fr>
References: <cover.1578934751.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v3 11/12] lib: vdso: split clock verification out of
 __arch_get_hw_counter()
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 arnd@arndb.de, tglx@linutronix.de, vincenzo.frascino@arm.com,
 luto@kernel.org
Date: Mon, 13 Jan 2020 17:08:49 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_090852_271708_4BD13221 
X-CRM114-Status: UNSURE (   9.81  )
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

__arch_get_hw_counter() returns the current value of the counter if
the counter is valid or a negative number if the counter is not valid.

This is suboptimal because the validity is checked twice: once before
reading the counter and once after reading the counter.

Optionaly split the verification out of __arch_get_hw_counter()
by providing an optional __arch_is_hw_counter_valid() function.

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 lib/vdso/gettimeofday.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index ea1a55507af5..001f6329e846 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -67,11 +67,18 @@ static __always_inline int do_hres(const struct vdso_data *vd, clockid_t clk,
 
 	do {
 		seq = vdso_read_begin(vd);
+#ifdef __arch_is_hw_counter_valid
+		if (unlikely(!__arch_is_hw_counter_valid(vd->clock_mode)))
+			return -1;
+#endif
+
 		cycles = __arch_get_hw_counter(vd->clock_mode);
 		ns = vdso_ts->nsec;
 		last = vd->cycle_last;
+#ifndef __arch_is_hw_counter_valid
 		if (unlikely((s64)cycles < 0))
 			return -1;
+#endif
 
 		ns += vdso_calc_delta(cycles, last, vd->mask, vd->mult);
 		nsec = ns >> vd->shift;
-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
