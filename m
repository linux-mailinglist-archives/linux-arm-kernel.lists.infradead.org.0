Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 993E11936FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:30:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuGntsAmczE7VKGAGqm08B/MIUb4LulvrR+o6laHeKI=; b=GOD8mzgCSWfDTT
	wN6EWMdO1788OidhI2PkwVQMBix56xdIu1dk18q6GsCD/y3hqHX99F8NZDp5VC5bje2iDh4Fv3xjH
	bqPWfCvp46g+EuO6TOty4v24+3T2gaqA7N69+a/+8vV3EleHA/lMzGqJYndp2PGy7/qhsYym8OohI
	vgx65qI+oZ/e84sG079Xlqqw2xlbvm2K9ilHBdEQX1UmEQ7N+hllqyPFW9pPUtAsm6TWl1vxC3oHF
	R75RIy61i6YRsxlh2dn/VTBYqJaSgzJIZ3teMK8YP7tzVfw14h2ET/8n4V1pGt9WTPD9v1yCGn7XL
	4ZZMv3t71cA3nYOJKIDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJED-0002gW-2a; Thu, 26 Mar 2020 03:30:45 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8M-0004j5-Kh
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:24:44 +0000
Received: by mail-qt1-x842.google.com with SMTP id g7so4150470qtj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 20:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=+QNwRXfDbgmdgwiAWzmJWWFV3AeWwC/BkLzCJNBiX7U=;
 b=ORP3E/ZpEgE98OIaAPSZGFAcOrHLCH0OZ+6B4Q98GVNlw635eAenr+Qr6UJfPlzHZY
 zwcjqMKnATW+Tkpb6om6vwznhxUoKQpNie7bBYkPOzThhNddYDKgHOwX1j7FKdprMZ0j
 slzaC/miPXlNVoqvbDQpi0b1b9HhU+3trTqExs8FfHkN9BTVYlurgItTUgg9mBvJ/4jM
 0eHkcBTq+tojnVx3RUoQkWgoO5ZREG01eZNlkd5JbuMNwpM2SmzDSMHd+kD3UHLh17E6
 4hX9u/EVkhq/ryWZUCX7I4vUDngpM8dJCfXmmrYvQCPvj4Vx6r9X4yNAf0rTcJ2FxFIa
 i0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=+QNwRXfDbgmdgwiAWzmJWWFV3AeWwC/BkLzCJNBiX7U=;
 b=ukxNGqpIokd8iFVSrYZLMqU7ptYNtsGaQEod6LXDp2zI1b/I8TZS7FDdIpuuc8tsCg
 s/PoYOCqJ9/I0VPF0tZVKryblK9T5BJC8zWv4URqHNJYfWJFscJ2mXPs+o+Th2fTLFhB
 KLGA69KgcVFvjuARFeryTPlH6O0awfT0NTFlLyv0y+xIfen6jnVCJmorUfg2gXbGtJ5p
 pMAlM00i1+kR9w2sYEKgtDWj7QWEojal01EcsTDCm6aRAR8bee7jhLHLUrcgGjQTzNaY
 7DIM49pDAgQ11ZOe+yDDUmt5nWaCewtB9hoS4lO8zQVP0n29cJ66Mzfp34mNl8b5lLZy
 DSQw==
X-Gm-Message-State: ANhLgQ1cYlFWy4oYdT43ixQFxeqVWTdMp0c4DLs3V+th+JaaGO464t/i
 3EIlBFRoSbPg6kjVTZ0zvHfJqA==
X-Google-Smtp-Source: ADFU+vtbKYyEZjxHqMRMqVkHzcW5e1lkwXuYNftBecpITpTgyTzGVt02JTYGpZDymXDfWspDslX4ZA==
X-Received: by 2002:ac8:4641:: with SMTP id f1mr5868894qto.216.1585193081247; 
 Wed, 25 Mar 2020 20:24:41 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:40 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 12/18] arm64: kexec: arm64_relocate_new_kernel don't use x0
 as temp
Date: Wed, 25 Mar 2020 23:24:14 -0400
Message-Id: <20200326032420.27220-13-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202442_710230_5AA567DE 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

x0 will contain the only argument to arm64_relocate_new_kernel; don't
use it as a temp. Reassigned registers to free-up x0.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/relocate_kernel.S | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index e9c974ea4717..41f9c95fabe8 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -32,14 +32,14 @@ ENTRY(arm64_relocate_new_kernel)
 	mov	x14, xzr			/* x14 = entry ptr */
 	mov	x13, xzr			/* x13 = copy dest */
 	/* Clear the sctlr_el2 flags. */
-	mrs	x0, CurrentEL
-	cmp	x0, #CurrentEL_EL2
+	mrs	x2, CurrentEL
+	cmp	x2, #CurrentEL_EL2
 	b.ne	1f
-	mrs	x0, sctlr_el2
+	mrs	x2, sctlr_el2
 	ldr	x1, =SCTLR_ELx_FLAGS
-	bic	x0, x0, x1
+	bic	x2, x2, x1
 	pre_disable_mmu_workaround
-	msr	sctlr_el2, x0
+	msr	sctlr_el2, x2
 	isb
 1:	/* Check if the new image needs relocation. */
 	tbnz	x16, IND_DONE_BIT, .Ldone
@@ -51,17 +51,17 @@ ENTRY(arm64_relocate_new_kernel)
 	tbz	x16, IND_SOURCE_BIT, .Ltest_indirection
 
 	/* Invalidate dest page to PoC. */
-	mov     x0, x13
-	add     x20, x0, #PAGE_SIZE
+	mov     x2, x13
+	add     x20, x2, #PAGE_SIZE
 	sub     x1, x15, #1
-	bic     x0, x0, x1
-2:	dc      ivac, x0
-	add     x0, x0, x15
-	cmp     x0, x20
+	bic     x2, x2, x1
+2:	dc      ivac, x2
+	add     x2, x2, x15
+	cmp     x2, x20
 	b.lo    2b
 	dsb     sy
 
-	copy_page x13, x12, x0, x1, x2, x3, x4, x5, x6, x7
+	copy_page x13, x12, x1, x2, x3, x4, x5, x6, x7, x8
 	b	.Lnext
 .Ltest_indirection:
 	tbz	x16, IND_INDIRECTION_BIT, .Ltest_destination
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
