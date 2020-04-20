Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DD51B0EF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 16:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Xikt9oIj4f+VakK8LlKHLmk/bRy5lUcVuLETXeT2Hro=; b=MZL
	wI4BKmNl8Yn5FoVCuVGh4ibo8CRC3omKyMdh7/XFqEu6l8qSFio5hkj6Tzvchd+v5/T+JLoqTbfwN
	d1k2o+Jmf7Q8vDA1e2z4EKdUzWuPWMEWtx7ONzMlxBCB10VT06N3pHuIpVdomrqil4dJ7XFqVw+Za
	oUi+NEWqV3uRiaq378BRNSR9MtpIm/FVFECCNPNYpzZIdML9fQe1tyfFZVPHIyzu3mI0/KEC+VOCB
	/8o/Ty/Nv85+I1in8WCe4yNELrjmfeA8NwdCvD9Ir8rO4mCgo6pJPzphydAQIercg24TQCsDpBv2l
	mRUDmwN6ddsP7ktiy0xTLUeU8hnLcnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXpy-00020L-3f; Mon, 20 Apr 2020 14:55:54 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXpp-0001zu-Al
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 14:55:47 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587394545; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=7MhmolhOBg+potQk9sjLeyxXiHqBAvP6Cxd5Xrm2ty4=;
 b=UiazicVdND6AW2K3WHT/1oefOmNN6+iEWyhTTmYv0WXWlpYswA/8LeMj0v1HU+ZvHmoZiJFO
 koSJubzgGYLvQaPbdEM47MCbGXmmgUvJl0Xq5l7PjSkoSmI45yACk77+jEuvtHybWvTpP2Uc
 ExqhLmdSZFncQ2AG/90Wdvy/2+E=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9db7ef.7f06d128a570-smtp-out-n01;
 Mon, 20 Apr 2020 14:55:43 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A2C02C433BA; Mon, 20 Apr 2020 14:55:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from congzhan-gv.qualcomm.com (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: congzhan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CE7D4C433D2;
 Mon, 20 Apr 2020 14:55:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CE7D4C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=congzhan@codeaurora.org
From: Cong Zhang <congzhan@codeaurora.org>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: align the start and end of v7_setup_stack to cache line
Date: Mon, 20 Apr 2020 22:50:35 +0800
Message-Id: <1587394235-24008-1-git-send-email-congzhan@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_075545_640403_7733F9C7 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Cong Zhang <congzhan@codeaurora.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The v7_setup_stack is used when D-cache disabled. When CPU is reading
something nearby with D-cache enabled. It is possible to read
v7_setup_stack to cache line. There is a risk that when cache line write
back the data, v7_setup_stack may already been modified by other CPU with
D-cache disabled.
The change make v7_setup_stack align cache line size and use the whole
cache line to prevent corrupting v7_setup_stack.

Signed-off-by: Cong Zhang <congzhan@codeaurora.org>
---
 arch/arm/mm/proc-v7.S | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
index 339eb17..587e2eb 100644
--- a/arch/arm/mm/proc-v7.S
+++ b/arch/arm/mm/proc-v7.S
@@ -18,6 +18,7 @@
 #include <asm/pgtable-hwdef.h>
 #include <asm/pgtable.h>
 #include <asm/memory.h>
+#include <asm/cache.h>
 
 #include "proc-macros.S"
 
@@ -548,10 +549,10 @@ __v7_setup_stack_ptr:
 ENDPROC(__v7_setup)
 
 	.bss
-	.align	2
+	.align	L1_CACHE_SHIFT
 __v7_setup_stack:
 	.space	4 * 7				@ 7 registers
-
+	.align	L1_CACHE_SHIFT
 	__INITDATA
 
 	.weak cpu_v7_bugs_init
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
