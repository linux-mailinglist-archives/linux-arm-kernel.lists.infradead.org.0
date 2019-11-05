Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045FEF07C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:09:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VoTnjEb8C3RwphgGgNfrc22oIQB3OILL6m1GZ8Ts95c=; b=E9lRckuIr/YkKIgKc0GQgNLZ/p
	He0KN0X/f04JUBB+RGad9/9Rp5MvCkeHr04/wVQzDs6uMBIfvjBtG8OIg4XKLcOv2Cc5/7dFGBLe+
	OzXRpFRY05H03TluLRIkWco4xXBdgAzPaI+ERSLrUZTgCHSeihQQayPj/oO+5QNn2lvDc6D65iswN
	zFTNbWHSW1MgpbTGgWZtbgHUMsWYff+MPNSxtYo+akfvtpx3yPqttmvYTaOZrG7uzul+xG8jsTuRz
	F8MOF0ImI4Cs3i6CjKfE16CIjJKYv4wS3tPivBPt6dhg3H8ggEDP1gfLa6l3Nc6BGpy9MhT9oxmOD
	d2dfJxlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS65J-0000Y5-00; Tue, 05 Nov 2019 21:09:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5wV-0007zT-Tq
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:00:49 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B579121D7F;
 Tue,  5 Nov 2019 21:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987647;
 bh=Jx+kWacuaj1Sp6sb0mSbTkSutP0MuVR1ZaxgsxHEpgs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fGK4/v/1e8E9SdkbcZDHX4pvFgsplgQdgSLMSWkDrjrDIOzYIhVE1KKg3IUwk/5DO
 Cc5+dt/nP+xP/iKcSxCgFebIxLzrPe4Hc7LHFj7S+i7sDncb5sN+CHHoBgBm7SeQCS
 z8GDsGyD5WffNrumRsVc1brvxNzb3pGQIt87SkPI=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 38/53] ARM: spectre-v1: mitigate user accesses
Date: Tue,  5 Nov 2019 21:58:31 +0100
Message-Id: <20191105205846.1394-39-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_130048_072692_E4B4A63C 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David A . Long" <dave.long@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit a3c0f84765bb429ba0fd23de1c57b5e1591c9389 upstream.

Spectre variant 1 attacks are about this sequence of pseudo-code:

	index = load(user-manipulated pointer);
	access(base + index * stride);

In order for the cache side-channel to work, the access() must me made
to memory which userspace can detect whether cache lines have been
loaded.  On 32-bit ARM, this must be either user accessible memory, or
a kernel mapping of that same user accessible memory.

The problem occurs when the load() speculatively loads privileged data,
and the subsequent access() is made to user accessible memory.

Any load() which makes use of a user-maniplated pointer is a potential
problem if the data it has loaded is used in a subsequent access.  This
also applies for the access() if the data loaded by that access is used
by a subsequent access.

Harden the get_user() accessors against Spectre attacks by forcing out
of bounds addresses to a NULL pointer.  This prevents get_user() being
used as the load() step above.  As a side effect, put_user() will also
be affected even though it isn't implicated.

Also harden copy_from_user() by redoing the bounds check within the
arm_copy_from_user() code, and NULLing the pointer if out of bounds.

Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/include/asm/assembler.h | 4 ++++
 arch/arm/lib/copy_from_user.S    | 9 +++++++++
 2 files changed, 13 insertions(+)

diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
index 307901f88a1e..483481c6937e 100644
--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -454,6 +454,10 @@ THUMB(	orr	\reg , \reg , #PSR_T_BIT	)
 	adds	\tmp, \addr, #\size - 1
 	sbcccs	\tmp, \tmp, \limit
 	bcs	\bad
+#ifdef CONFIG_CPU_SPECTRE
+	movcs	\addr, #0
+	csdb
+#endif
 #endif
 	.endm
 
diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
index 1512bebfbf1b..d36329cefedc 100644
--- a/arch/arm/lib/copy_from_user.S
+++ b/arch/arm/lib/copy_from_user.S
@@ -90,6 +90,15 @@
 	.text
 
 ENTRY(arm_copy_from_user)
+#ifdef CONFIG_CPU_SPECTRE
+	get_thread_info r3
+	ldr	r3, [r3, #TI_ADDR_LIMIT]
+	adds	ip, r1, r2	@ ip=addr+size
+	sub	r3, r3, #1	@ addr_limit - 1
+	cmpcc	ip, r3		@ if (addr+size > addr_limit - 1)
+	movcs	r1, #0		@ addr = NULL
+	csdb
+#endif
 
 #include "copy_template.S"
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
