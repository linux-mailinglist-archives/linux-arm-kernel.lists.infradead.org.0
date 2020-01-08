Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67383134527
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 15:38:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R0YVSQ5c6mx39qqicSOaPcWGhxf2Uigx8wzPGrI22UI=; b=WtZVO5iqe2Snh9
	5Fas762+DI20lKb0JoQDGSRt16Tn4jRavCmLFF/M1RmSrLhHRMg2RrTFEQGsFU5yjfkrbtiYA1kix
	o0JwtnjvziH2AvCSoBZa6slW+8DCe94uBngLcAK2zXV+dXkg6fXL2i/pk0fRu4vL74QrH6qWpztpJ
	4CUL3ODZZsLtwwiLDg3ELBn5Rv0TVjmqdy75ZX3pcZNnbMC+Ul/5Ne5S79khIEiHbXPsqyXRxP4lu
	B2+LgD/rQFVq1qPJY7GaFq0J6KU4iF24gS5qPWXLZBnXgRtRcLXwgr5DXfM/Y2+e38hSOSngZ//Zi
	+NbOFQZtzGj4h8qsea1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipCTO-00052i-C0; Wed, 08 Jan 2020 14:38:14 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipCTG-00051j-Sk
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 14:38:08 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MC2o9-1iymor10Tl-00CVYi; Wed, 08 Jan 2020 15:36:44 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Russell King <linux@armlinux.org.uk>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>
Subject: [PATCH] arm/ftrace: fix building on BE32
Date: Wed,  8 Jan 2020 15:36:30 +0100
Message-Id: <20200108143640.1034808-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:DNg/f0DgH2AuFmls4CuTuds+KyudRqDqzfh6viVMfvvGdk8u9Q0
 yf8f7lprW7tAoIgat71ySCreHfiHJ7a5EY2p18mcMrgmgGEusFJ2Rrv8CsB/Ny/NyVIb4/H
 DGohQLlUBZmTTu2qasznjvrU7nxq3aTas5zlEKj5QdHDUqZ/6Lni94HX/qlXoZi7UJe6wZN
 SZqt2en9FiTgT8KNvLZyg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WFVEuGhsmHc=:5Ehnd9BB2/wv3L7ZBxOOvK
 mBdj2KEKMtBAdFCvY2s40Q0UYqQsPm6WgiazzK3pEpOVb/GxiSZ303UtK2p7YHf9T8aptaISS
 tFgKevI6rbeQYrGBRMSDKZQo6/4HQ6LUPFpD1Wl3/y+j9YLyPyMASie8IbgG66er9A6CP66Gh
 rqLsDX92RbSBROptuOQvte6u0DmBzb740TgAybw8BBSWzOreRtrxPZVxCqAJh1cOPkCHYEKf2
 +OzUY2/KeHDE0kfnz7u/Nz0IrtuS5j9FY8ck64ssj/FBt9Qs4/DAWMlRg6tLT4/OW0Oh2cFMk
 M0UXudFGyWfwJQTUgNPkpE4LgUTHkbCoOoA30eLL82nHNavUgIuCUi6DEWyPaTRUthkvU40nE
 9D/RH80jyejtR2/gGXmaPuXNFJu1REfPrs/03nqv5ECbkF/oDdYZEIT1PMjkEKMjVSU2OOOGn
 YArsYMaOGmywUc4nFK1Mlj+wc9P4YAtW35LedEY5+lOr4+l9TnHw10ze2h/IAii82/AAZ17Tv
 Eb9ERvxeJ1gy1Y/0cKhUKH1+onKYwHaibjqu6+4hjm+BJlwbxO6gs8w5AapcKxFFTxf3/NTA3
 GCQmgyEBVWQYUM3O886BshWTgLmAMN/0gj3p+eBWck5PeDJnG3fjPQ2VJqWJQf42zEMYd7zrs
 An4ndfsWn0eHKchauHovwoUwasGxBJdHwOZblS4J7qzGXF/Jw1Z2ee1K2hMKDiNSGsdf8Fi/w
 JWwn7D3ieXPbYhCUNVYgbfxQxZO42Cwvye018COjOKoCuZeVTHqIvRJeViNOcC42iDmOKQR8a
 T9CuH0XYQgH3JoN6YVdGxAaDh7mCAaBwyO7DpF02xwGMgjkgmbdL2APK7dVUwXm9HRexhivu9
 EgbBF0i++dXX0ftUQ5nA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_063807_214587_B9DA095E 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Denys Vlasenko <dvlasenk@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, ard.biesheuvel@linaro.org,
 Brian Gerst <brgerst@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org,
 rabin@rab.in, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 james.morse@arm.com, Thomas Gleixner <tglx@linutronix.de>,
 Enrico Weigelt <info@metux.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Compiling patch.c on BE32 fails because there is no definition
of __opcode_to_mem_thumb32()

arch/arm/kernel/patch.c: In function '__patch_text_real':
arch/arm/kernel/patch.c:94:11: error: implicit declaration of function '__opcode_to_mem_thumb32' [-Werror=implicit-function-declaration]

Since we don't actually call it, only a declaration is required
here, add one without a definition that fixes the build here
but will cause a link failure if someone actually relies on the
result.

Fixes: 5a735583b764 ("arm/ftrace: Use __patch_text()")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
Not sure if this version is any less ugly than the first
approach of adding an #ifdef in patch.c
---
 arch/arm/include/asm/opcodes.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/opcodes.h b/arch/arm/include/asm/opcodes.h
index 6bff94b2372b..f75f59c1257a 100644
--- a/arch/arm/include/asm/opcodes.h
+++ b/arch/arm/include/asm/opcodes.h
@@ -110,14 +110,19 @@ extern asmlinkage unsigned int arm_check_condition(u32 opcode, u32 psr);
 #define __opcode_to_mem_thumb16(x) ___opcode_identity16(x)
 #define ___asm_opcode_to_mem_arm(x) ___asm_opcode_identity32(x)
 #define ___asm_opcode_to_mem_thumb16(x) ___asm_opcode_identity16(x)
-#ifndef CONFIG_CPU_ENDIAN_BE32
 /*
  * On BE32 systems, using 32-bit accesses to store Thumb instructions will not
  * work in all cases, due to alignment constraints.  For now, a correct
- * version is not provided for BE32.
+ * version is not provided for BE32, only an extern declaration to allow
+ * compiling patch.c
  */
+#ifndef CONFIG_CPU_ENDIAN_BE32
 #define __opcode_to_mem_thumb32(x) ___opcode_swahw32(x)
 #define ___asm_opcode_to_mem_thumb32(x) ___asm_opcode_swahw32(x)
+#else
+#ifndef __ASSEMBLY__
+extern unsigned __opcode_to_mem_thumb32(unsigned);
+#endif
 #endif
 
 #endif /* ! CONFIG_CPU_ENDIAN_BE8 */
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
