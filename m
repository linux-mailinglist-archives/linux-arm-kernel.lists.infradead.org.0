Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3315410612D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 06:54:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tL1tL3GZR4czS2pzDsCo/DHQYfRWaZParmmTEFNUjJQ=; b=HvXyJOswHvUMWL
	7F+8dZY4WMpaSavNogKz3u3czj5D9SxAi0JTVCr1gEGAAWlpyiWDm1mmmAK56Vnl12t4kvAIX1DfB
	fjRgHKd9AMCER5FREHwPUR416EMzt5x6YDrE/PECE0nP8gQcExXHaLJUHwgqDwkU+yF4E5FJbPL5j
	dolIha7JPHIJdo7pbL+bYjdIxOOYCRFy2z462n0F3aZB6TjrtTl3EA8amAPa8BhVH6xNkOkEZF6m8
	fDzTLhxgtb5T5aJSsemWgbKw0YaYDHh5xJiXgYqXPy/3uilvcz3H5TVN15i6sxiQ0vF2uJTBtXeNx
	ispCgnZNoSMxLoqZ9i6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1u2-00060y-OR; Fri, 22 Nov 2019 05:54:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1p9-0000Qt-TC
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:49:46 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8AD02070B;
 Fri, 22 Nov 2019 05:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574401782;
 bh=MqOdMBcFN7cKpxoPq7s5s29VjuTXuCthvZFz0pCPqiI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Yb7yVyexYs61jZHaLuaoNUyj6cksjR08vb6qJgFkhWeJUzz4k/Ic4B39I7DdwiKPP
 Nu642lajGlQM8/v544cPsPwRbLa+Z4HHUAdnDGJd6/1za0m6VubkvasRrGxOxPr8x0
 lhmsbdQ84Cj78LgIsBB67SFQjELqQSQdrTPy4yk8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 031/219] arm64: preempt: Fix big-endian when
 checking preempt count in assembly
Date: Fri, 22 Nov 2019 00:46:03 -0500
Message-Id: <20191122054911.1750-24-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122054911.1750-1-sashal@kernel.org>
References: <20191122054911.1750-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_214944_097783_4BE92D94 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, "kernelci.org bot" <bot@kernelci.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Will Deacon <will.deacon@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

[ Upstream commit 7faa313f05cad184e8b17750f0cbe5216ac6debb ]

Commit 396244692232 ("arm64: preempt: Provide our own implementation of
asm/preempt.h") extended the preempt count field in struct thread_info
to 64 bits, so that it consists of a 32-bit count plus a 32-bit flag
indicating whether or not the current task needs rescheduling.

Whilst the asm-offsets definition of TSK_TI_PREEMPT was updated to point
to this new field, the assembly usage was left untouched meaning that a
32-bit load from TSK_TI_PREEMPT on a big-endian machine actually returns
the reschedule flag instead of the count.

Whilst we could fix this by pointing TSK_TI_PREEMPT at the count field,
we're actually better off reworking the two assembly users so that they
operate on the whole 64-bit value in favour of inspecting the thread
flags separately in order to determine whether a reschedule is needed.

Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reported-by: "kernelci.org bot" <bot@kernelci.org>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/include/asm/assembler.h | 8 +++-----
 arch/arm64/kernel/entry.S          | 6 ++----
 2 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 5a97ac8531682..0c100506a29aa 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -683,11 +683,9 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
 	.macro		if_will_cond_yield_neon
 #ifdef CONFIG_PREEMPT
 	get_thread_info	x0
-	ldr		w1, [x0, #TSK_TI_PREEMPT]
-	ldr		x0, [x0, #TSK_TI_FLAGS]
-	cmp		w1, #PREEMPT_DISABLE_OFFSET
-	csel		x0, x0, xzr, eq
-	tbnz		x0, #TIF_NEED_RESCHED, .Lyield_\@	// needs rescheduling?
+	ldr		x0, [x0, #TSK_TI_PREEMPT]
+	sub		x0, x0, #PREEMPT_DISABLE_OFFSET
+	cbz		x0, .Lyield_\@
 	/* fall through to endif_yield_neon */
 	.subsection	1
 .Lyield_\@ :
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 5f800384cb9a8..bb68323530458 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -622,10 +622,8 @@ el1_irq:
 	irq_handler
 
 #ifdef CONFIG_PREEMPT
-	ldr	w24, [tsk, #TSK_TI_PREEMPT]	// get preempt count
-	cbnz	w24, 1f				// preempt count != 0
-	ldr	x0, [tsk, #TSK_TI_FLAGS]	// get flags
-	tbz	x0, #TIF_NEED_RESCHED, 1f	// needs rescheduling?
+	ldr	x24, [tsk, #TSK_TI_PREEMPT]	// get preempt count
+	cbnz	x24, 1f				// preempt count != 0
 	bl	el1_preempt
 1:
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
