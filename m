Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D98A0441C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qD2NnVkYr+xQtlc5/xnU+GK46Buw26KI1lliSwurwGo=; b=FnUrB3UjO+Nyvfcx/SjNB5OtBG
	vtJ8QSCMRtunuw9n+zg1TGq/Ri/+UUeVq7laZdX75yO5fSRq0LAxV6/xe+ix/A70DCOMIsTfvpm52
	kFaYhVBPoXMxdEPWrgdE5lSq63SaJfFuj9j3IaDMQmMw+PtQklwjFAjK+Y7LiPKhgywXJqCNJNPhp
	oAmMhCTxBjLpljo+dRlIHP3hYr8Un/er/F74QY8s0LmTfnOxXGNI75XlkBo/QZVDgXsiOVqEDv8gB
	pK5T8/zYSjDs5M47w8evU6/EGrqVnQmXBrYgGrcOOix1IbfhPlRleRenrCuH7JDGn/U582Rg01SXy
	rGHFYVjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSRE-0005Ta-VR; Thu, 13 Jun 2019 16:18:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSPX-0004A3-Iu
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:17:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 25621D75;
 Thu, 13 Jun 2019 09:17:11 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C585D3F694;
 Thu, 13 Jun 2019 09:17:09 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v2 5/8] arm64/sve: Implement an helper to flush SVE
 registers
Date: Thu, 13 Jun 2019 17:16:53 +0100
Message-Id: <20190613161656.20765-6-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190613161656.20765-1-julien.grall@arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091711_932752_2517161D 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, Julien Grall <julien.grall@arm.com>,
 alex.bennee@linaro.org, Dave.Martin@arm.com, Daniel.Kiss@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a new helper that will zero all SVE registers but the first
128-bits of each vector.

Signed-off-by: Julien Grall <julien.grall@arm.com>

---
    Changes in v2:
        - Fix typo in the commit title
---
 arch/arm64/include/asm/fpsimd.h       |  3 +++
 arch/arm64/include/asm/fpsimdmacros.h | 19 +++++++++++++++++++
 arch/arm64/kernel/entry-fpsimd.S      |  7 +++++++
 3 files changed, 29 insertions(+)

diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
index df62bbd33a9a..fda3544c9606 100644
--- a/arch/arm64/include/asm/fpsimd.h
+++ b/arch/arm64/include/asm/fpsimd.h
@@ -83,6 +83,9 @@ static inline void *sve_pffr(struct thread_struct *thread)
 extern void sve_save_state(void *state, u32 *pfpsr);
 extern void sve_load_state(void const *state, u32 const *pfpsr,
 			   unsigned long vq_minus_1);
+
+extern void sve_flush_live(void);
+
 extern unsigned int sve_get_vl(void);
 
 struct arm64_cpu_capabilities;
diff --git a/arch/arm64/include/asm/fpsimdmacros.h b/arch/arm64/include/asm/fpsimdmacros.h
index 5e291d9c1ba0..a41ab337bf42 100644
--- a/arch/arm64/include/asm/fpsimdmacros.h
+++ b/arch/arm64/include/asm/fpsimdmacros.h
@@ -175,6 +175,13 @@
 		| ((\np) << 5)
 .endm
 
+/* PFALSE P\np.B */
+.macro _sve_pfalse np
+	_sve_check_preg \np
+	.inst	0x2518e400			\
+		| (\np)
+.endm
+
 .macro __for from:req, to:req
 	.if (\from) == (\to)
 		_for__body %\from
@@ -209,6 +216,18 @@
 921:
 .endm
 
+/* Preserve the first 128-bits of Znz and zero the rest. */
+.macro _sve_flush_z nz
+	_sve_check_zreg \nz
+	mov	v\nz\().16b, v\nz\().16b
+.endm
+
+.macro sve_flush
+ _for n, 0, 31, _sve_flush_z	\n
+ _for n, 0, 15, _sve_pfalse	\n
+		_sve_wrffr	0
+.endm
+
 .macro sve_save nxbase, xpfpsr, nxtmp
  _for n, 0, 31,	_sve_str_v	\n, \nxbase, \n - 34
  _for n, 0, 15,	_sve_str_p	\n, \nxbase, \n - 16
diff --git a/arch/arm64/kernel/entry-fpsimd.S b/arch/arm64/kernel/entry-fpsimd.S
index 12d4958e6429..17121a51c41f 100644
--- a/arch/arm64/kernel/entry-fpsimd.S
+++ b/arch/arm64/kernel/entry-fpsimd.S
@@ -57,4 +57,11 @@ ENTRY(sve_get_vl)
 	_sve_rdvl	0, 1
 	ret
 ENDPROC(sve_get_vl)
+
+/* Zero all SVE registers but the first 128-bits of each vector */
+ENTRY(sve_flush_live)
+	sve_flush
+	ret
+ENDPROC(sve_flush_live)
+
 #endif /* CONFIG_ARM64_SVE */
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
