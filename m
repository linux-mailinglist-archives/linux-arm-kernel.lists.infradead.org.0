Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCFD13F2CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:38:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yrgA9AmzdnGYniWAC38g/J/VJGIncv0r5DNCi2URawo=; b=i1zh8YnNldBnlZHp14krmbvQlR
	bcNZpDuXqz+AxCfUIFSQE+o6h4RJ52BGm4K81EonhBOb6c++E9Ruod1jltu4RRJvCZtwRok/jesIX
	3FpxcJ4NLxJKcxwyLr24vDKMMflzNEbavG4haic+IuHqN1wHAYq6nSIAPE9nLH92lWoAiXdHTgTrI
	FRZ40mzy7yjanO8fHJ8KyRY5oFZzQt0ANvVISFIUoYFEjK2f5Q0KchE63dLuO1kqrEmUPPVrj9sX9
	SUO54MUWn5Vo9TI3KZthHP1uYpnWJu/+WmgKC1amw98EWDaSvMk6BsWxDsf4qKCcsn42luOikRK1N
	QBOx+37A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isA1i-0007Dy-TP; Thu, 16 Jan 2020 18:37:54 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9PY-0002DL-11
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:58:33 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47zBkm2LMgz9v0MV;
 Thu, 16 Jan 2020 18:58:24 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=Kxs0ezyw; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id ni5IDxU2PZjV; Thu, 16 Jan 2020 18:58:24 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47zBkm19zpz9v0MQ;
 Thu, 16 Jan 2020 18:58:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1579197504; bh=PWRUMcmoHAjONpDuJZiavA8lZ2SQsMCwaOs7HJNDLqQ=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=Kxs0ezywgzeua1J6Nz2TH6hRDY686ycC0eBvlT+7VEaf6BG1OMSaTqx3ZNlzL7Dmz
 GOomaHsGdxWUoegNBMPuu9onZpq1TYLSdQDZtpQNH2tlc65PLxh72kb0MscKCVKpF5
 /iR0akD7SHPV0Z7uztGRM/gxxxo2UJ/f+WVDgXqE=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id C7B508B82D;
 Thu, 16 Jan 2020 18:58:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id YBr-0Bk7q74Z; Thu, 16 Jan 2020 18:58:25 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 86BA18B82C;
 Thu, 16 Jan 2020 18:58:25 +0100 (CET)
Received: by po14934vm.idsi0.si.c-s.fr (Postfix, from userid 0)
 id 606F564A35; Thu, 16 Jan 2020 17:58:25 +0000 (UTC)
Message-Id: <ea5531da61c0ede78226b4f6f0ee595be25c4309.1579196675.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1579196675.git.christophe.leroy@c-s.fr>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v4 01/11] powerpc/64: Don't provide time functions in
 compat VDSO32
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 nathanl@linux.ibm.com, arnd@arndb.de, tglx@linutronix.de,
 vincenzo.frascino@arm.com, luto@kernel.org
Date: Thu, 16 Jan 2020 17:58:25 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_095828_408956_E95F39D2 
X-CRM114-Status: GOOD (  10.44  )
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

In order to allow use of generic C VDSO, remove time functions
from the 32 bits VDSO on PPC64.

This (temporary) removal is needed because powerpc kernel C headers
are not prepared for building 32 bits code on PPC64.

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 arch/powerpc/kernel/vdso32/Makefile     | 3 ++-
 arch/powerpc/kernel/vdso32/vdso32.lds.S | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/kernel/vdso32/Makefile b/arch/powerpc/kernel/vdso32/Makefile
index 06f54d947057..738d52105392 100644
--- a/arch/powerpc/kernel/vdso32/Makefile
+++ b/arch/powerpc/kernel/vdso32/Makefile
@@ -3,7 +3,8 @@
 # List of files in the vdso, has to be asm only for now
 
 obj-vdso32-$(CONFIG_PPC64) = getcpu.o
-obj-vdso32 = sigtramp.o gettimeofday.o datapage.o cacheflush.o note.o \
+obj-vdso32-$(CONFIG_PPC32) = gettimeofday.o
+obj-vdso32 = sigtramp.o datapage.o cacheflush.o note.o \
 		$(obj-vdso32-y)
 
 # Build rules
diff --git a/arch/powerpc/kernel/vdso32/vdso32.lds.S b/arch/powerpc/kernel/vdso32/vdso32.lds.S
index 00c025ba4a92..9400b182e163 100644
--- a/arch/powerpc/kernel/vdso32/vdso32.lds.S
+++ b/arch/powerpc/kernel/vdso32/vdso32.lds.S
@@ -144,7 +144,7 @@ VERSION
 		__kernel_datapage_offset;
 
 		__kernel_get_syscall_map;
-#ifndef CONFIG_PPC_BOOK3S_601
+#if defined(CONFIG_PPC32) && !defined(CONFIG_PPC_BOOK3S_601)
 		__kernel_gettimeofday;
 		__kernel_clock_gettime;
 		__kernel_clock_getres;
-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
