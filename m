Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E20135E12
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:19:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvWTrOGFtSo6jJO29FD0TgImemG1itDnVXFPagc2OGA=; b=h1C1tx2sQ4TxSh
	HumYuoyUN1YfmWzcLGbAs0MwkLAXisy5Ybp9tNz8xT5GUjEEm8C5iyawsz8xot6D5UlnIq8Y40Lma
	9cGuavTfmk+YdZKcDiJHqrlHcWz1rVqSW+QzXPuwfRSiIF7qQbP67XeoZ4KaBl+a0ZneXKgkma8js
	4jNzQ7jafj957KaII8YSMo1Sv0iCfjUaSNyg8cqjc1pZh/GFoZr4QpwWdEQ/PZjsSk5IwvXA/mxiv
	KxSDnHN0yKOELufHN7B3tqotzgDX7Kn/GvBLMdeLZMmmQla+/CuhlA5D+4xqxFNfK6lMm55JYtGHZ
	wMM9fb1tZB68CZBQO6Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaXA-0005Hk-P5; Thu, 09 Jan 2020 16:19:44 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaMo-0001xm-Fh
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:09:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586140;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=j3rJbJBi/4wLWjHpSpMH7gUaner+0ML7JaZLfifCTBs=;
 b=SfokSEaAqLfYeMzXxWsEtZhRdzPoDzwXSEPGA+UTCPCwgcoIuBXUURUbAqkZWYuCfcUPi5
 396sVxHczZl1hLsVL9a2mBcU/pwG5KtAh6QiknFlbME2CRPSkNa6QtWJBoCh4/KQtVyAgV
 kzEIEOsiipGsY0wLCM2qCvtQPmGyfPE=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-Zv26SsnYMfCxmwfFsgftvw-1; Thu, 09 Jan 2020 11:09:00 -0500
Received: by mail-wr1-f70.google.com with SMTP id u12so3048721wrt.15
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:08:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kEfbHgsVU9eDoIkKPm/bUyQidxKwrK2z05bxXpj07hQ=;
 b=H2SAXeojKZHbzYTt0t545S1id72cBRcYwGkZYQdcHpK7vedjlPz4RVKUto2H5LRBwr
 X9/0SGoFO4PQG+9LG9NwB5gpRaj9iuI/ty3vkPTRatOtrUvnHzIUZ53bd2z33RfoyQK4
 Hzc6d23eey+0ORm/VTvrZYmcOA83kXfEg6wwFdYiVxZaebmU9SicMH79ji6gujD+cJ9g
 G8prO1rHwo1PBtJYJrmHVUnRLorDDwR3B+/jxXD1Aa8grX82bcYzFsojrzGu/ehNZ/Np
 ADb6KLt1Jmql83gGwC08pGDcxY88jcd7elxrjZGBvO7evkt0YHhE03HM26DWpPAnroXk
 t25w==
X-Gm-Message-State: APjAAAVw9hubvz59VWV/fR1u2TmGFWcD446oLhYSfFhi6y+7+oadgJlg
 VA3/gK2XsWaNgildBqLEN7Biizfb2+rXIWs1a46GeRaUGK20oFKwFLiyRjyEFHYII/CVRbqa+q8
 mMAQcbjkhUpueXVS9hEYu37en8/Zc9ZTVeWc=
X-Received: by 2002:adf:e3d0:: with SMTP id k16mr12018283wrm.241.1578586138794; 
 Thu, 09 Jan 2020 08:08:58 -0800 (PST)
X-Google-Smtp-Source: APXvYqzSLia58QbEuzIUwye/7K2S8R5lieQsiVKxVvK2wzbrjNJr4CLjCo4Rn4vyl1YI3pmhsGWMjA==
X-Received: by 2002:adf:e3d0:: with SMTP id k16mr12018264wrm.241.1578586138549; 
 Thu, 09 Jan 2020 08:08:58 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id v8sm8403505wrw.2.2020.01.09.08.08.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:08:58 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 48/57] arm64: sleep: Prevent stack frame warnings from objtool
Date: Thu,  9 Jan 2020 16:02:51 +0000
Message-Id: <20200109160300.26150-49-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: Zv26SsnYMfCxmwfFsgftvw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080902_647183_718CCA1D 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Raphael Gault <raphael.gault@arm.com>

This code doesn't respect the Arm PCS but it is intended this
way. Adapting it to respect the PCS would result in altering the
behaviour.

In order to suppress objtool's warnings, we setup a stack frame
for __cpu_suspend_enter and annotate cpu_resume and _cpu_resume
as having non-standard stack frames.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 arch/arm64/kernel/sleep.S | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
index f5b04dd8a710..55c7c099d32c 100644
--- a/arch/arm64/kernel/sleep.S
+++ b/arch/arm64/kernel/sleep.S
@@ -1,5 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 #include <linux/errno.h>
+#include <linux/frame.h>
 #include <linux/linkage.h>
 #include <asm/asm-offsets.h>
 #include <asm/assembler.h>
@@ -90,6 +91,7 @@ ENTRY(__cpu_suspend_enter)
 	str	x0, [x1]
 	add	x0, x0, #SLEEP_STACK_DATA_SYSTEM_REGS
 	stp	x29, lr, [sp, #-16]!
+	mov	x29, sp
 	bl	cpu_do_suspend
 	ldp	x29, lr, [sp], #16
 	mov	x0, #1
@@ -146,3 +148,6 @@ ENTRY(_cpu_resume)
 	mov	x0, #0
 	ret
 ENDPROC(_cpu_resume)
+
+	asm_stack_frame_non_standard cpu_resume
+	asm_stack_frame_non_standard _cpu_resume
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
