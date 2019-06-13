Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BA6441C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WtVWL8kaR5sCu52Vx33V3XyAr1neQV9OS7xaKz+v4Us=; b=fGxEKygAtVbHqzrAiH8s49PkG8
	i4uxKAx7zYjDDKALdfXxlhe+prbMtpO7B0rmrtf66sI8xps99t8ocjzHjlr7tF1YwqqlYfItQAqOs
	QjadYUIKHw/2jdNAiG1KpR8A3ak3W3Fcgi/bxD+0yJsBRLCKvyGfK6VM0wOQyt7FhayWbvjZRlDvq
	PYpIxphYMn4rrDKhrc5pxohurZyxVzpEyjzqWoo6AJ2hvx6LIEtvJQmolZqya8l8WveZyqVwfH0Mb
	CHjgg247TGmLV9dNWzg2ZvprZbVAzd/CjoS4uhFU7nKVLeKLEkCbqjMjtUqaB7ijnvUjSQo0M+Yr0
	EokXmAgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSQz-0005EO-0x; Thu, 13 Jun 2019 16:18:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSPV-00048D-RI
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:17:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 918CBCFC;
 Thu, 13 Jun 2019 09:17:09 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D1543F694;
 Thu, 13 Jun 2019 09:17:08 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v2 4/8] arm64/fpsimdmacros: Introduce a macro to update
 ZCR_EL1.LEN
Date: Thu, 13 Jun 2019 17:16:52 +0100
Message-Id: <20190613161656.20765-5-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190613161656.20765-1-julien.grall@arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091709_940350_C3576876 
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

A follow-up patch will need to update ZCR_EL1.LEN.

Add a macro that could be re-used in the current and new places to
avoid code duplication.

Signed-off-by: Julien Grall <julien.grall@arm.com>

---
    Changes in v2:
        - Fix typo in the commit message
---
 arch/arm64/include/asm/fpsimdmacros.h | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/fpsimdmacros.h b/arch/arm64/include/asm/fpsimdmacros.h
index e2ab77dd9b4f..5e291d9c1ba0 100644
--- a/arch/arm64/include/asm/fpsimdmacros.h
+++ b/arch/arm64/include/asm/fpsimdmacros.h
@@ -198,6 +198,17 @@
 	.purgem _for__body
 .endm
 
+/* Update ZCR_EL1.LEN with the new VQ */
+.macro sve_load_vq xvqminus1, xtmp, xtmp2
+		mrs_s		\xtmp, SYS_ZCR_EL1
+		bic		\xtmp2, \xtmp, ZCR_ELx_LEN_MASK
+		orr		\xtmp2, \xtmp2, \xvqminus1
+		cmp		\xtmp2, \xtmp
+		b.eq		921f
+		msr_s		SYS_ZCR_EL1, \xtmp2	//self-synchronising
+921:
+.endm
+
 .macro sve_save nxbase, xpfpsr, nxtmp
  _for n, 0, 31,	_sve_str_v	\n, \nxbase, \n - 34
  _for n, 0, 15,	_sve_str_p	\n, \nxbase, \n - 16
@@ -212,13 +223,7 @@
 .endm
 
 .macro sve_load nxbase, xpfpsr, xvqminus1, nxtmp, xtmp2
-		mrs_s		x\nxtmp, SYS_ZCR_EL1
-		bic		\xtmp2, x\nxtmp, ZCR_ELx_LEN_MASK
-		orr		\xtmp2, \xtmp2, \xvqminus1
-		cmp		\xtmp2, x\nxtmp
-		b.eq		921f
-		msr_s		SYS_ZCR_EL1, \xtmp2	// self-synchronising
-921:
+		sve_load_vq	\xvqminus1, x\nxtmp, \xtmp2
  _for n, 0, 31,	_sve_ldr_v	\n, \nxbase, \n - 34
 		_sve_ldr_p	0, \nxbase
 		_sve_wrffr	0
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
