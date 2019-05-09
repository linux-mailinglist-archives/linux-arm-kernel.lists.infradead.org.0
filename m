Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC5318C9A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 17:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Date:Subject:To:From:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EDFZ3A6BAoxiEdfZToBebrJBOrS+og+czhAV/Uo+SOc=; b=cNe
	sbLjRDdy4vs/LMenK+cChsWvshhpMCyPuugM74R+rVwH4GMDbB4BFzge/SqRTOzjfrJRXfOxqE+kJ
	D64FL2s6Ueqbs3PYtallIOsIV3HKM2MUsolJ9+K5vFKgxXMimGHGKYOGfCDIWn0uw0MXiT+7TjBgO
	O0uhCgekB2fvpHcLbs23rHgz1SOGUcaviXHlnOj9k1+d/306gJBuk/6SUEVVlL6OU/d8gHzp/Qfk4
	S159k0x08+hFuXlXLKjDYrdPk0GPgWomF/80o43vIEMWQwczhTlmb9rcwDsBgrl2oY512u5OVZqj7
	LKAXwUgs2p7QJgGMOGK21aIm62Svzrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOkYi-0002uC-8E; Thu, 09 May 2019 15:02:08 +0000
Received: from mail3-164.sinamail.sina.com.cn ([202.108.3.164])
 by bombadil.infradead.org with smtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOkYZ-0002sw-G4
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 15:02:03 +0000
Received: from unknown (HELO laptop-0p1i5f25)([114.246.225.250])
 by sina.com with ESMTP
 id 5CD440DA000068C5; Thu, 9 May 2019 23:01:47 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 142192395186
Message-ID: <177247.865216003-sendEmail@laptop-0p1i5f25>
From: "Hillf Danton" <hdanton@sina.com>
To: "Ard Biesheuvel" <ard.biesheuvel@linaro.org>
Subject: [patch] arm64: assembler: Update the yield NEON comment
Date: Thu, 9 May 2019 15:01:43 +0000
X-Mailer: sendEmail-1.56
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_080159_725277_6F8B5D58 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.108.3.164 listed in list.dnswl.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?202.108.3.164>]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hdanton[at]sina.com)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peter Zijlstra <peterz@infradead.org>, Hillf Danton <hdanton@sina.com>,
 Will Deacon <will.deacon@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0315488266899410015=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This is a multi-part message in MIME format. To properly display this message you need a MIME-Version 1.0 compliant Email program.

--===============0315488266899410015==
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-93978.8555997474"


This is a multi-part message in MIME format. To properly display this message you need a MIME-Version 1.0 compliant Email program.

------MIME delimiter for sendEmail-93978.8555997474
Content-Type: text/plain;
        charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

The comment was a bit misleading when it was created in commit 24534b3511, and
deserves a tweak like,

- * - Check whether the preempt count is exactly 1, in which case disabling
- *   preemption once will make the task preemptible. If this is not the case,
+ * - Check whether the preempt count is exactly 1, in which case decrementing
+ *   preempt count once will make the task preemptible. If this is not the case,

then code fix was added in commit 7faa313f05 with the comment left behind untouched.

It no longer matches the code now, so fix it. It is changed along the original
direction as much as I can, though simply deleting the relevant block looks fine.

And finally a question remains: is it needed to decrement preempt count before
invoking kernel_neon_end() in which preempt_enable() is put at the end?

Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Hillf Danton <hdanton@sina.com>
---
 arch/arm64/include/asm/assembler.h | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index c5308d0..8518a7b 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -713,13 +713,9 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
  * Note that the patchup code does not support assembler directives that change
  * the output section, any use of such directives is undefined.
  *
- * The yield itself consists of the following:
- * - Check whether the preempt count is exactly 1, in which case disabling
- *   preemption once will make the task preemptible. If this is not the case,
- *   yielding is pointless.
- * - Check whether TIF_NEED_RESCHED is set, and if so, disable and re-enable
- *   kernel mode NEON (which will trigger a reschedule), and branch to the
- *   yield fixup code.
+ * The yield itself decrements the preempt count and if count hits zero, disable
+ * and re-enable kernel mode NEON (which will trigger a reschedule), and branch
+ * to the yield fixup code.
  *
  * This macro sequence may clobber all CPU state that is not guaranteed by the
  * AAPCS to be preserved across an ordinary function call.
--


------MIME delimiter for sendEmail-93978.8555997474--




--===============0315488266899410015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0315488266899410015==--



