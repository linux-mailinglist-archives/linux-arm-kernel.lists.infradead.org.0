Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E85135E17
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:21:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhCcVVIfhWsFM52qlAKiwdgap6nWeOwbTLaU1bh+AY8=; b=QSNC3JiKJYKsqz
	i0w9CELpX6zOLOtXSRCG+Qowk8355waKQgwViELKAvT8dbofz+iSeGFBnRnPy8kAchEhivQbsypID
	eVJ6wIYd9PhNYW0YEpiyEa8r+5YdFxTuFS8eY08bA1+heXxtdjnuBXLr/JWNAta1+NoQzAbOkcDqD
	CByu4zACfkBVb0/ZJPWsdineA3r5jf9GuCElQTGO/7fXSH9xDCSOUWN1mDHJsYCXzMNoRowrEoJK5
	p2nbm8VqvxTaZ4z4CnTyYkd/Jn7H3gSg3Z1xsiWEXYDRglPri6i8QnfAh6op00FQ5bKkVA3JqmlWV
	61kcakIXf9bQrdoYFNmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaYL-0007XV-R0; Thu, 09 Jan 2020 16:20:57 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaNP-0002Zg-7m
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:09:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586177;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mua/qHbvjxBZzAa9DGgUWjthaiVLr4wGp81bwymTxFo=;
 b=c5Eljg8ZOZJt2KVzzWYiZiw3aAQddX008DirZRopY94TzxdWlSAdeD+1yhGNpTh8hZaE6W
 JSy0+27pVuUYTvRUhnrOTD6mKMb+GVGdusg7CbW+euTg1wt8ju8/DYfu7tihrlx+djVE6N
 Ot+EXxd/x57x+GWpO3+Wkag9fuPNfO4=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-250-80kOVaZRNVazXTyRuax1zw-1; Thu, 09 Jan 2020 11:09:36 -0500
Received: by mail-wm1-f71.google.com with SMTP id y125so890767wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:09:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NXlvrJt6z83MLX+WxwdFOCINB+GcX+Yj981D0b2qPGQ=;
 b=YyviGqgCpCymOHBRFcC6EC/kG4ge2x+I65KXV3UrVCE67WgIk83QJRDdybBOlhYYhi
 RAzdVGit2Xr8wp+PeuUCbAWPk3iA6DVe5Uy4CsZ4+AxmvhoNGM6LRciiH/WKeV+Jnhhu
 IWuiCt0R6rOAbiyjjjXuyemCNI6iEsDJUtSubYMKt3bBKelN3NV81sgN8gyf6uPC8wq8
 McrFwuwf3EtZvvwO3ZhoqTRAG3/d6p+rUifsMiuZ72rIge2qyBIiQ7I9Wf8mQha4jJE5
 OUTdaLD85mNi+N+pnuqxd1akN0Q4vIZRXeL5f9h4k+ikzBtuW78bHyYgoq1G67dt/qUn
 LmwQ==
X-Gm-Message-State: APjAAAXHutwl4J3CG92tC6pCOit4w17t+3wYxF1DbrrKoOAcNc1tw0EU
 lfsJE0Qc26QuMQf0DwRdboO/VvWLk9sFTyBJI0pdDEN0wsyCxbWY29sTQd224bL0yspdE0B2ZHS
 0k3GrFtbFOnbVhEIMtFFN4+yx+pIandJsaDc=
X-Received: by 2002:a7b:cbc9:: with SMTP id n9mr5807751wmi.89.1578586175320;
 Thu, 09 Jan 2020 08:09:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqzmBZZfDXBq6RqR3Rkcb9sOH+t9Q3MfPwQWoV78KSevOPVEW0amjALm+VNPMHJy5/8IKwjOOA==
X-Received: by 2002:a7b:cbc9:: with SMTP id n9mr5807724wmi.89.1578586175172;
 Thu, 09 Jan 2020 08:09:35 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id e8sm8517707wrt.7.2020.01.09.08.09.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:09:34 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 52/57] arm64: kernel: Annotate non-standard stack frame
 functions
Date: Thu,  9 Jan 2020 16:02:55 +0000
Message-Id: <20200109160300.26150-53-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: 80kOVaZRNVazXTyRuax1zw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080939_366627_0177BE79 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <maz@kernel.org>, Julien Thierry <jthierry@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com,
 James Morse <james.morse@arm.com>, jpoimboe@redhat.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Raphael Gault <raphael.gault@arm.com>

Annotate assembler functions which are callable but do not
setup a correct stack frame.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: kvmarm@lists.cs.columbia.edu
---
 arch/arm64/kernel/hyp-stub.S | 3 +++
 arch/arm64/kvm/hyp-init.S    | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm64/kernel/hyp-stub.S b/arch/arm64/kernel/hyp-stub.S
index 73d46070b315..8917d42f38c7 100644
--- a/arch/arm64/kernel/hyp-stub.S
+++ b/arch/arm64/kernel/hyp-stub.S
@@ -6,6 +6,7 @@
  * Author:	Marc Zyngier <marc.zyngier@arm.com>
  */

+#include <linux/frame.h>
 #include <linux/init.h>
 #include <linux/linkage.h>
 #include <linux/irqchip/arm-gic-v3.h>
@@ -42,6 +43,7 @@ ENTRY(__hyp_stub_vectors)
 	ventry	el1_fiq_invalid			// FIQ 32-bit EL1
 	ventry	el1_error_invalid		// Error 32-bit EL1
 ENDPROC(__hyp_stub_vectors)
+asm_stack_frame_non_standard __hyp_stub_vectors

 	.align 11

@@ -69,6 +71,7 @@ el1_sync:
 9:	mov	x0, xzr
 	eret
 ENDPROC(el1_sync)
+asm_stack_frame_non_standard el1_sync

 .macro invalid_vector	label
 \label:
diff --git a/arch/arm64/kvm/hyp-init.S b/arch/arm64/kvm/hyp-init.S
index 160be2b4696d..63deea39313d 100644
--- a/arch/arm64/kvm/hyp-init.S
+++ b/arch/arm64/kvm/hyp-init.S
@@ -12,6 +12,7 @@
 #include <asm/pgtable-hwdef.h>
 #include <asm/sysreg.h>
 #include <asm/virt.h>
+#include <linux/frame.h>

 	.text
 	.pushsection	.hyp.idmap.text, "ax"
@@ -118,6 +119,7 @@ CPU_BE(	orr	x4, x4, #SCTLR_ELx_EE)
 	/* Hello, World! */
 	eret
 ENDPROC(__kvm_hyp_init)
+asm_stack_frame_non_standard __kvm_hyp_init

 ENTRY(__kvm_handle_stub_hvc)
 	cmp	x0, #HVC_SOFT_RESTART
@@ -159,6 +161,7 @@ reset:
 	eret

 ENDPROC(__kvm_handle_stub_hvc)
+asm_stack_frame_non_standard __kvm_handle_stub_hvc

 	.ltorg

--
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
