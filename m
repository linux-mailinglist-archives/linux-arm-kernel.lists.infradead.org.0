Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7376AD43
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 18:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3+e80Y/FyztU0yuOHA2jYYdDFbcf8M2P5OqwkZ4yig=; b=LNu/p+tL0jcqol
	trWKGKJXJPy8AEHr7PxJ0fbcDDG9ZTtcZW66ecrtKq7MK6UQofDHfvPAHMi86KC2osvtFUjDXvuHb
	enxeoPGpqmlDhCH4UKRBGEl4+HVPOArw4T2CsGaNyLkierPYe1UGPBqNOfXUJL8Qq+eMCnqqxLIrd
	9J9SdvpjZ4b4XEfzrAwvLm4kdAKjnhu77lPJzQWHX48dIbUCsyQNN8IWKaj3IZutBOMp5Ci71z1uN
	JHEqcDJW/6KR5d/onbrHwoBhKhmSzUE/WOBdD/DRSG7Tq8HGgrOHa3YGjTWY1HHbe+NV8SJD8Aw7O
	FfXOfma3nlhGseG08+2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnQmo-0006Jx-Dx; Tue, 16 Jul 2019 16:58:42 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnQkz-00055H-J1
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 16:56:51 +0000
Received: by mail-qt1-x844.google.com with SMTP id 44so20246024qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 09:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=OHreDCpotkEUucxoE5EiEKrcc9yzecv+duVH9vOORKc=;
 b=GGIQw/kgAUl/eG3d2NKYO7rrigP3xCd6L3ITkDfbZyMEUnoEj0yVHLsV2LlbgRYbC+
 wxGDoUKvbsOD49xDxxVjVMA/cVW24Ta7j9hj3+wxoFsCV7bE/6zX1BcHliTfmRJa2HL6
 t1GMulrmuUdkYdtWJR3tWcDBbewttH11SYty1lYTYPi9/xqOKf63ADEYQ5vRWxW8OT6H
 VHjxbQVnM+5FFok1c8bap5vm+E40C8t2yYrwiy22m4L+k24TpV5SxJbfpoBHfRpCqzb2
 H6dm0a1hIjm8g/mZThetxdugoRf8Pcyv6ZduRuCZRIwQmu9srFbLpacSM3DPtY1OABO9
 4vlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OHreDCpotkEUucxoE5EiEKrcc9yzecv+duVH9vOORKc=;
 b=dhhBgqPBYCTciL99jeda9JHgecemgsvsYyCuOs0KLrYs/s95CJziNZI0GshMc7DK6H
 Ck1yibY6OK/ZacIHAIKjZrEOXjPd4H5jNW7wntCvTSdLYSZAwFvvd7Xpc7Q4DvzJeNUV
 2Pu/sK+vwBxl1RpXFeLmJS5L7zWIeCJDraRJRINT7RTdoOjhY5IhoC2k6KI+kkYs5kOX
 VVXWpX3ecJQ8aJrVz5EOZM8aej0Xle9x5xwkyPoNLtnYz45NSzAJocyfESO/hmko1Ul5
 LsGbApUXXxaDC0O62LaU2PMGRIw4CiLQQaPcy+pdZgpZQ+zaPBmcr71slYbpRwjlTWDd
 Z8iw==
X-Gm-Message-State: APjAAAUuYFffq6/aU2vw3msegcyT7djpCwFYGou9vjud4dsNQH91zS2W
 gphnRtmzi16CDpTZjNEUQbA=
X-Google-Smtp-Source: APXvYqwxJ0A/FHhU5OVW66jrPFnnHKm79duNOHFiKTe25GUCXmo7/DTY10UCE+L1XIgV2bRdwMnQ6w==
X-Received: by 2002:ac8:41d1:: with SMTP id o17mr23857397qtm.17.1563296207876; 
 Tue, 16 Jul 2019 09:56:47 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f20sm8519538qkh.15.2019.07.16.09.56.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 09:56:47 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC v1 4/4] arm64: Keep MMU on while kernel is being relocated
Date: Tue, 16 Jul 2019 12:56:41 -0400
Message-Id: <20190716165641.6990-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190716165641.6990-1-pasha.tatashin@soleen.com>
References: <20190716165641.6990-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_095649_697406_C379A0FC 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is inefficient to do kernel relocation with MMU disabled. This is
because if MMU is disabled,  dcache must also be disabled.

Now, that we have identity page table we can disable MMU after relocation
is completed.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/cpu-reset.S       |  8 -------
 arch/arm64/kernel/relocate_kernel.S | 36 ++++++++++++++++++-----------
 2 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 6ea337d464c4..d5cfc17b8e1f 100644
--- a/arch/arm64/kernel/cpu-reset.S
+++ b/arch/arm64/kernel/cpu-reset.S
@@ -30,14 +30,6 @@
  * flat identity mapping.
  */
 ENTRY(__cpu_soft_restart)
-	/* Clear sctlr_el1 flags. */
-	mrs	x12, sctlr_el1
-	ldr	x13, =SCTLR_ELx_FLAGS
-	bic	x12, x12, x13
-	pre_disable_mmu_workaround
-	msr	sctlr_el1, x12
-	isb
-
 	cbz	x0, 1f				// el2_switch?
 	mov	x0, #HVC_SOFT_RESTART
 	hvc	#0				// no return
diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index c1d7db71a726..e2724fedd082 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -36,18 +36,6 @@ ENTRY(arm64_relocate_new_kernel)
 	mov	x14, xzr			/* x14 = entry ptr */
 	mov	x13, xzr			/* x13 = copy dest */
 
-	/* Clear the sctlr_el2 flags. */
-	mrs	x0, CurrentEL
-	cmp	x0, #CurrentEL_EL2
-	b.ne	1f
-	mrs	x0, sctlr_el2
-	ldr	x1, =SCTLR_ELx_FLAGS
-	bic	x0, x0, x1
-	pre_disable_mmu_workaround
-	msr	sctlr_el2, x0
-	isb
-1:
-
 	/* Check if the new image needs relocation. */
 	tbnz	x16, IND_DONE_BIT, .Ldone
 
@@ -63,10 +51,10 @@ ENTRY(arm64_relocate_new_kernel)
 	add     x20, x0, #PAGE_SIZE
 	sub     x1, x15, #1
 	bic     x0, x0, x1
-2:	dc      ivac, x0
+1:	dc      ivac, x0
 	add     x0, x0, x15
 	cmp     x0, x20
-	b.lo    2b
+	b.lo    1b
 	dsb     sy
 
 	mov x20, x13
@@ -104,6 +92,26 @@ ENTRY(arm64_relocate_new_kernel)
 	dsb	nsh
 	isb
 
+	/* Clear sctlr_el1 flags. */
+	mrs	x12, sctlr_el1
+	ldr	x13, =SCTLR_ELx_FLAGS
+	bic	x12, x12, x13
+	pre_disable_mmu_workaround
+	msr	sctlr_el1, x12
+	isb
+
+	/* Clear the sctlr_el2 flags. */
+	mrs	x0, CurrentEL
+	cmp	x0, #CurrentEL_EL2
+	b.ne	2f
+	mrs	x0, sctlr_el2
+	ldr	x1, =SCTLR_ELx_FLAGS
+	bic	x0, x0, x1
+	pre_disable_mmu_workaround
+	msr	sctlr_el2, x0
+	isb
+2:
+
 	/* Start new image. */
 	mov	x0, x18
 	mov	x1, xzr
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
