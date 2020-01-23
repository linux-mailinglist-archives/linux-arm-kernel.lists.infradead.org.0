Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 320E0146927
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 14:33:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zxD7CAbJ76zn/tEX+lvmpRi0kVjjRNnNJBZOEmZ3Zoc=; b=d+7RASInC47jKO
	CI98+Oe4+b4JB+DgF1GKHQ4QEhYJ+RkuzvXoAHv2mSrFjeJGML/NjBmY8hjqfC7PasvXDwugcAu7J
	CdUl4VntK0pQ3lbXTkE1i5eS4uV9WOA9rff/VoLtodaik5u4Uut0yIvSj2VGw63yh5XYnZZVhhK/q
	TY0VK0U7fevXAh3aZosEg0+mQvRXHUuSKzIV6mKx8YuOngjYfwx9qHg9P2sRiUARCYw4A9xo4JjI1
	zxEPd/eWuTql97jxM8HthK7BavKeXvQyfmBqXEL8ebWk+q9S3+v9vRjH3OwXUJIzj2dbEna38oIh/
	HUMkkOzHbVOpnddH4UbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucby-0001iO-NV; Thu, 23 Jan 2020 13:33:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucbg-0001eX-GG
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 13:33:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7315328;
 Thu, 23 Jan 2020 05:33:11 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 24E573F68E;
 Thu, 23 Jan 2020 05:33:10 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: entry: Annotate ret_from_fork as code
Date: Thu, 23 Jan 2020 13:33:08 +0000
Message-Id: <20200123133308.45308-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_053312_594414_2524A20C 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly
functions new macros have been introduced. These replace ENTRY and
ENDPROC with two different annotations for normal functions and those
with unusual calling conventions.

ret_from_fork is not a normal C function and should therefore be
annotated as code.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/entry.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 9461d812ae27..b0a4012cd535 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -902,14 +902,14 @@ NOKPROBE(cpu_switch_to)
 /*
  * This is how we return from a fork.
  */
-ENTRY(ret_from_fork)
+SYM_CODE_START(ret_from_fork)
 	bl	schedule_tail
 	cbz	x19, 1f				// not a kernel thread
 	mov	x0, x20
 	blr	x19
 1:	get_current_task tsk
 	b	ret_to_user
-ENDPROC(ret_from_fork)
+SYM_CODE_END(ret_from_fork)
 NOKPROBE(ret_from_fork)
 
 #ifdef CONFIG_ARM_SDE_INTERFACE
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
