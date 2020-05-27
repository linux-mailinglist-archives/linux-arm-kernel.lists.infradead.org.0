Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 286761E41D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nj+ess8e4hsExPELvkDW2d8sAbgxLz3LRGzd1Xp4czo=; b=pj9HYWvSMyhgjL
	jPdB1QCVC/0yClU2g4JrthgX+MQasx/v92AFXhleN5rU7y1k8q2juw85ZfJYfuXbMom/Y/C37kx9r
	Zm1BXKKvz43r2bxe6zOK6AAtoSYqLkQM9b2VOeUbU4zPxBRB8kAATwrCr/kAFRZK/8+fiUO29+rtt
	Pgf4Ij10IrE5qL1OtSt77FIhIm9viJGxZYCp/hUYpaaVMp1vCdSMagptS+7L5zpBVCOhxSoAuEKhH
	T5Zgf+Of1G6k000Tu+5p3xUzDdI4oII6qWHCvefLknGySCr1QqxQjBpPFgsRheQZeL0jkv/kvibDs
	52XYASY5wwR4lBLfrYlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduyW-0002ib-32; Wed, 27 May 2020 12:16:00 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduhU-00048j-GG
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:58:34 +0000
Received: by mail-lf1-x144.google.com with SMTP id r125so14251172lff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 04:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rYrZ6BNeShCtzdDME/YtGKRfZIxdp9G0kT5ZVD+CsCM=;
 b=punGG7/lcxtEUybVw/AkDDIp96wgkX0q1A2AfkZP8+e4I1WWgtGhI6QrE5IqqAxJRW
 gqEZx5we5EzJA6+G0ZWNvoeQqoi7FGu2BD6pIV4BkzJPg4QCuz04dcS9s4qYJ6U5inaN
 1YAURPfKqwXBpRn0bnTFH6Ssy7h0TDt5RYHnVud2Az+f72gFTndXUg9cuqDAsWmHmoCI
 O6uRRKmjAypbjOllD1OcDTT+YW7rEIiiRocExjTPWxNLX8ecMdOmgd2gjy3HE+x3s/gC
 uC6txx7GUBYw4DdCS7/lD/pkeXc4edYjPBaDTzQXHDR+Q1NYZXQWRM+LLWlM3Dx44x7Y
 9NtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rYrZ6BNeShCtzdDME/YtGKRfZIxdp9G0kT5ZVD+CsCM=;
 b=lQuEh1b1AeZCZjB/Gg8q1WSqCWknlxkAELPdVA9zFqaDv7bBt5pA/Ke0Zryq0r+Plt
 KbDDNcO+sfaFh5zRjNXQAp0qGwr3J4ur78uF/aCr1griKObPTg9WZj+a2s5pzkeWFng1
 kP4nIWFr3rvutY7GYsu7SJ1lrpmjP4erlBqNozO4GjkhW8VOw1QA/maBQtcspZAiJ784
 n4cmFGgrd4xG+4kpZsK53NvV/SSMUZ8BXu2J218+gSZooqvBrvZM9IQbocVw/rJ+OTWK
 pDGEjOKkDCvdesDn945/sslvsDh2tqdGbgr3JKyQISOMFGS9aKpMHj69aXOYE98qPmg6
 8Kzg==
X-Gm-Message-State: AOAM5330jtpzQiJIRilFg6COvea4pOEfmusuxKHSviwVjHqMILGVnwDK
 hIUMq/UmwdgI9xC2DO1LyEx8s1/2odQ=
X-Google-Smtp-Source: ABdhPJz6BnIVdaE6omirT8WzHpqNo4HjEQiM4vi6c+coCdJpG45JgBzX6eMvw9f4MmtGXXbkt4Hn2Q==
X-Received: by 2002:a19:bc4:: with SMTP id 187mr3007790lfl.211.1590580701220; 
 Wed, 27 May 2020 04:58:21 -0700 (PDT)
Received: from localhost.localdomain
 (c-8cdb225c.014-348-6c756e10.bbcust.telenor.se. [92.34.219.140])
 by smtp.gmail.com with ESMTPSA id 2sm648936lji.100.2020.05.27.04.58.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 04:58:20 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH v2] ARM: mm: Simplify act_mm macro
Date: Wed, 27 May 2020 13:56:18 +0200
Message-Id: <20200527115618.92792-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045824_578929_43402B8D 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The act_mm assembly macro is actually partly reimplementing
get_thread_info so let's just use that.

Suggested-by: Russell King <linux@armlinux.org.uk>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Accidentally removed the index to the active task which
  is what we want here.
---
 arch/arm/mm/proc-macros.S | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
index 60ac7c5999a9..e2c743aa2eb2 100644
--- a/arch/arm/mm/proc-macros.S
+++ b/arch/arm/mm/proc-macros.S
@@ -5,7 +5,6 @@
  *  VMA_VM_FLAGS
  *  VM_EXEC
  */
-#include <linux/const.h>
 #include <asm/asm-offsets.h>
 #include <asm/thread_info.h>
 
@@ -31,8 +30,7 @@
  * act_mm - get current->active_mm
  */
 	.macro	act_mm, rd
-	bic	\rd, sp, #(THREAD_SIZE - 1) & ~63
-	bic	\rd, \rd, #63
+	get_thread_info \rd
 	ldr	\rd, [\rd, #TI_TASK]
 	.if (TSK_ACTIVE_MM > IMM12_MASK)
 	add	\rd, \rd, #TSK_ACTIVE_MM & ~IMM12_MASK
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
