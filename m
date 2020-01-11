Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A4D1382B6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 18:48:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z3h3/Mk3EmPghn7h+tYTzQj8jC5t49Z++H4/WA/PJIA=; b=CFb
	48eRYqtetvMtfrsDjBolsMn8MH7oYS6fKhxWX/Dcbi5H+1TTxWvn1Uav+rHGrPmIUe/QWT78y+7AN
	RTv3voV2z1njC4qAWZ+8A/1TUNGQk3RtDgI8Sa7FssagkLxu/0O4E0BWSWKrrhqg3Txzu5W8GP6NX
	S7xoMhhb9ZyKkdoOtCKphRKs128oKJfVMIBrt01Ln+vzey7eqTUWehL3CW+0skkM7v5btZzA8hq/N
	1quW0QSsHy1iEns8qlTCCzPXgK15VV+kYGan+FCQy0EFxrYWu7Gtu+J5mVmWxhXn6TeMnrxV+fpSD
	DjThnP0X8A6FlCUy1n0GRXrAU7VRWyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqKsE-0001u7-Mj; Sat, 11 Jan 2020 17:48:34 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqKs5-0001sm-Fg
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 17:48:27 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47w6lL6K8cz9tyVC;
 Sat, 11 Jan 2020 18:48:14 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=Ndqg+k0Q; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id kGPBY1kr8M4S; Sat, 11 Jan 2020 18:48:14 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47w6lL4t6kz9tyVB;
 Sat, 11 Jan 2020 18:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1578764894; bh=rWzye87XejSTOoMHiw7Qf2ytvLtb8fImWFNoum8VhkY=;
 h=From:Subject:To:Cc:Date:From;
 b=Ndqg+k0Q+U706ClKg/A77m9CAJWL+dmX83zxMFCi51x4RXQvVbMRWXypUNrag2Xkw
 w673desfBUJ0oDhueeWvnNkiNtOU8McOEpwTZxrlULnTUURmT3pssRfdnR8TOrQN/N
 n9JZ9z1RZz3v0siXxWmqPLn1k/xAxa6yiIwv1AzM=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 589B28B791;
 Sat, 11 Jan 2020 18:48:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id V5T1u6D6LVz7; Sat, 11 Jan 2020 18:48:16 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 201C28B752;
 Sat, 11 Jan 2020 18:48:16 +0100 (CET)
Received: by po14934vm.idsi0.si.c-s.fr (Postfix, from userid 0)
 id BA9BC63BCA; Sat, 11 Jan 2020 17:48:15 +0000 (UTC)
Message-Id: <e7becc50bee355e3872b84d91cc68ae8d7776bb9.1578764712.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH] lib: vdso: mark __cvdso_clock_getres() as static
To: arnd@arndb.de, tglx@linutronix.de, vincenzo.frascino@arm.com,
 luto@kernel.org
Date: Sat, 11 Jan 2020 17:48:15 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_094825_690384_89CEADD5 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
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
