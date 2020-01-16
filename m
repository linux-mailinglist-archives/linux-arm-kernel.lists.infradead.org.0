Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AAE13F2ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:39:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ac7jSOsVVrVMXhAGYoBNoFxccUuiyUR9kdM4CODdWY8=; b=u1CWCC5Rs4neGo/EQKEEvaOPAq
	UlVCuK0gr7D0FWMlX5WhJTrxdJHJn7iZ6FpGWRctFbkZRn5M408SXqPVjiSOznznda9CqgOkIWMQD
	0saQwFiXgi7Uq68XnOm7/ktIWHzDWeUYnf+jlCg6yJij1WyVf58ZdCfxP1EJBHHayH9Q0RPCLdRRL
	/b2mZQqxyFMX3frUavp5yUeGPuzZry74HNkVkFFE9ANmQQlWTujbc7TAmCAW6eN/1HyWv1o2SjGU1
	4btSKZEGnev3FnlpD34RJKV2pdZ7NdbYQKIMfzuxSFV+nJIMSMnnfcBx3oKwlfRBfycVyfPjt2oXx
	3fZ+8hiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isA3V-0000cz-Ml; Thu, 16 Jan 2020 18:39:45 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9Pf-0002R7-7M
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:58:47 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47zBks4rWmz9v3G9;
 Thu, 16 Jan 2020 18:58:29 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=hu4ilqW7; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id O51UVLooQNFG; Thu, 16 Jan 2020 18:58:29 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47zBks3d0qz9v0Mk;
 Thu, 16 Jan 2020 18:58:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1579197509; bh=8NMCNHuubcE6t4e17wk7DBu9YLriy2ZDehAsOAuF4AM=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=hu4ilqW7N3T8WujMXabIwtHKKTKsmMtwFUCZFVxCoaYZhizxdgG91lNwgD9tz6FyN
 uAxw87XR6KVTrvW4It/YMNKKcsT/90SNK/yrsdGq5RLmxki5jNn8tARXBLEi5E8HYL
 bOCKf2uGE6tihxiwW/DhFtaOPssrZOPbyYQhcHVo=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 282748B82A;
 Thu, 16 Jan 2020 18:58:31 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id viixK8XbZXYy; Thu, 16 Jan 2020 18:58:31 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id ABC488B82D;
 Thu, 16 Jan 2020 18:58:30 +0100 (CET)
Received: by po14934vm.idsi0.si.c-s.fr (Postfix, from userid 0)
 id 84AC364A33; Thu, 16 Jan 2020 17:58:30 +0000 (UTC)
Message-Id: <2e730f4e6ef77be2d5bfc38273d8a622e2cb4f97.1579196675.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1579196675.git.christophe.leroy@c-s.fr>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v4 06/11] powerpc/vdso: provide inline alternative to
 __get_datapage()
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 nathanl@linux.ibm.com, arnd@arndb.de, tglx@linutronix.de,
 vincenzo.frascino@arm.com, luto@kernel.org
Date: Thu, 16 Jan 2020 17:58:30 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_095835_644888_C9C5FBBF 
X-CRM114-Status: UNSURE (   8.91  )
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

__get_datapage() is only a few instructions to retrieve the
address of the page where the kernel stores data to the VDSO.

By inlining this function into its users, a bl/blr pair and
a mflr/mtlr pair is avoided, plus a few reg moves.

The improvement is noticeable (about 55 nsec/call on an 8xx)

With current __get_datapage() function:
gettimeofday:    vdso: 731 nsec/call
clock-gettime-realtime-coarse:    vdso: 668 nsec/call
clock-gettime-monotonic-coarse:    vdso: 745 nsec/call

Using the __get_datapage macro provided by this patch:
gettimeofday:    vdso: 677 nsec/call
clock-gettime-realtime-coarse:    vdso: 613 nsec/call
clock-gettime-monotonic-coarse:    vdso: 690 nsec/call

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 arch/powerpc/include/asm/vdso_datapage.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/powerpc/include/asm/vdso_datapage.h b/arch/powerpc/include/asm/vdso_datapage.h
index 4d7965bf369e..7342cc0c1ae4 100644
--- a/arch/powerpc/include/asm/vdso_datapage.h
+++ b/arch/powerpc/include/asm/vdso_datapage.h
@@ -105,6 +105,17 @@ struct vdso_arch_data {
 
 extern struct vdso_arch_data *vdso_data;
 
+#else /* __ASSEMBLY__ */
+
+.macro get_datapage ptr, offset=0
+	bcl	20, 31, .+4
+	mflr	\ptr
+#if CONFIG_PPC_PAGE_SHIFT > 14
+	addis	\ptr, \ptr, (_vdso_datapage + \offset - (.-4))@ha
+#endif
+	addi	\ptr, \ptr, (_vdso_datapage + \offset - (.-4))@l
+.endm
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* __KERNEL__ */
-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
