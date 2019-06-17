Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A3247FEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 12:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=58vOsYeWD+waiglVnezasbguX+zFUDhX1/aSvw3acgI=; b=NUpvy9oegFYheq
	rnV/dOySSlSbJFlvFoLQqzmRZyfuQCuJoQTwQ41Nwyywim8dB+gvH9J7PnnbnKHbbfBxY6iu9YGAQ
	Xw3ltrcm4pUawlK9j8wJRR0ICjxKOk7FMCuUEBXapW2wZXPOop9xDUHQU6wovDgI8pzlb80m8892K
	E1bU+U1bGW2eSzMEROeLFsFfeA5AgkmBgBvE8l2roUy8tCAKaxrNy6KLd6mdIYcXhDNyNQpXTKKqe
	oypXefKYrNZM841VYyedLMLOv4dzuYyDyqa3yWivA3gJC5iLCvt9PKOaeiwOZEZxoI3TsLhBkhgYt
	W6Vj5AVYf8QDHXmqLWGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcp6R-0007Ly-7o; Mon, 17 Jun 2019 10:43:07 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcp6A-0007Df-Ec
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 10:42:52 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M1qfu-1hf0xP2jpA-002IOT; Mon, 17 Jun 2019 12:42:43 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Dave Martin <Dave.Martin@arm.com>
Subject: [PATCH] arm64/sve: fix genksyms generation
Date: Mon, 17 Jun 2019 12:42:11 +0200
Message-Id: <20190617104237.2082388-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:GHkVA1Dy87IfWvGaT0UvEAty23wZsSPrrw8mvVuU4V2xwnZ0ZPo
 9ZiXJCiqGGqG/xdGF30QoA7sBAKCqe0Pwd3K3a5OjVyy6rre9s+3p8O7VYXYstPxVnPUnsH
 iSVy5mih+qkefBykZt4Z0kc2qMoapAtTT7xZAbCSpw1L/zn0QKkkFGcRSU73n9KD5aE2AO1
 hSg0ljYQEjCHA0J5TsSYw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lKeDETOU9i8=:UKR4EOC8S7Ji6Nbp3eTSLo
 TjYZ2W/CoFLoPLgh1VF7zGGB6JL0jnXjtT38e4nUexrjXcHeNe7UadgYwjdp0Gt/4IRYNqJkw
 +3hyOV8HReErfhFrpThfoUp4RZzFgRifngEBsMsVDd+VaQL1pQ4ucnDlw6GWXMAb2WYbFzf2K
 yh5y/Oh/IYD7QjqJO6nEsvebSte7CA3yzNd/AebLy4XnzqJoi1wpGWmBmWSo9QhPF1U5V7ycz
 VXjAQrKgA4Fv2pA3ta0vfSLXUQ9jYSiJvNwqQ5aDlaoUc+2XmMDx2reiZKSbIdc9qJ8TyG18D
 8Q4CrPqjcceEYxfrKfZRSKlUZs5Bjtv4kjcGo2aGA71Vdd0UiVROH3DgLy0VtoAi+1LjBMx8x
 xpPvkM+GshK8z322rH7gcKdSkKrCsYsGXcpFAvQEikZg/yHeZGS+ijejuVG9XMeDerfZXB/IX
 tKxhiA73pv4rX7s7jbWZAR7/f8mIZ8eWXH9QjVJiRaC9BfpUnlYWBr+G2xOCx3z9eGhrrbxuf
 2oUh6m3hZq4SHf4EWt/gXOKjxVau2WhM0gsBNpV0HhwhSN6avxd3NbZcP/GeS1NvSO/g1oy7f
 B8mob4b1LzoqMXXRqcsbsE4ERRvYlRpJHNy79n3HiqzEA8QiUl9TXjCSix6O7pwzDyxQ/+VM+
 k44uIm6jupiwYmbXI96yFVKLn//KijI1hk9wcu8pDNIXGQ54MvkgE318qxNba/IEkDluAkOJQ
 W+6rqShXIQwyNmzTrbQs/fz4NdOUi/WmWpChVA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_034250_802977_F35479FD 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, linux-kernel@vger.kernel.org,
 Julien Grall <julien.grall@arm.com>, Alan Hayward <alan.hayward@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

genksyms does not understand __uint128_t, so we get a build failure
in the fpsimd module when it cannot export a symbol right:

WARNING: EXPORT symbol "kernel_neon_begin" [vmlinux] version generation failed, symbol will not be versioned.
/home/arnd/cross/x86_64/gcc-8.1.0-nolibc/aarch64-linux/bin/aarch64-linux-ld: arch/arm64/kernel/fpsimd.o: relocation R_AARCH64_ABS32 against `__crc_kernel_neon_begin' can not be used when making a shared object
arch/arm64/kernel/fpsimd.o:(.data+0x0): dangerous relocation: unsupported relocation
arch/arm64/kernel/fpsimd.o:(".discard.addressable"+0x0): dangerous relocation: unsupported relocation
arch/arm64/kernel/fpsimd.o:(".discard.addressable"+0x8): dangerous relocation: unsupported relocation

We could teach genksyms about the type, but it's easier to just
work around it by defining that type locally in a way that genksyms
understands.

Fixes: 41040cf7c5f0 ("arm64/sve: Fix missing SVE/FPSIMD endianness conversions")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm64/kernel/fpsimd.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index 07f238ef47ae..2aba07cccf50 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -400,6 +400,9 @@ static int __init sve_sysctl_init(void) { return 0; }
 #define ZREG(sve_state, vq, n) ((char *)(sve_state) +		\
 	(SVE_SIG_ZREG_OFFSET(vq, n) - SVE_SIG_REGS_OFFSET))
 
+#ifdef __GENKSYMS__
+typedef __u64 __uint128_t[2];
+#endif
 #ifdef CONFIG_CPU_BIG_ENDIAN
 static __uint128_t arm64_cpu_to_le128(__uint128_t x)
 {
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
