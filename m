Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCBD71444
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:43:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/54I3ioe2XqFIbHdyMxapMd/5tbemg3tQezvEqcXCL4=; b=HBhpmgoNCIY+P1
	XlNJSIjNLz0UYdbiEAtAz2h4JA5vYbsctXi7QmC6606CQ1ZHKs7oFeW0zO6HIFZsYuniW192hORFC
	/tz0j01jfjMCGWA3XEAU+S6VgWvFHZn6jCwlUavWwFyqqFUAVuPkHfxS3yqr61OUR6SgKiYe/wjhT
	NbTwfPzUdeqdKGSSEilTfaHbQJQo4zRhOqEmBG6AhWvdVtXzB2vd7EcrtEsymoa6hFviYuLRPRAXy
	b2sCq6p8uBh2dOaqs2EpdeQmI7Dj3YeIpTBOzMR0+Z7hPn+b65TUGVfXgAXr4D1uLB6EVmCVS6VBx
	t3Pyn+/kaKQ52+uTwn7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqOq-0008TW-9J; Tue, 23 Jul 2019 08:43:56 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqOQ-0008Mf-AS
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:43:31 +0000
Received: by mail-lf1-x141.google.com with SMTP id p197so28719013lfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 01:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OTAd/fwrlOgwf/tB6n2+tyJATpfD6gPlAjxOR7U/RyQ=;
 b=f/8VU9qhLWwqXiT6BX9mmUgf8g8UhfUniiDq9xB2ExDIhjuEpmDYvErlZHhiI+5dU1
 +SEBXqzylfaOnEGjwv2YdWNYuD4wTTEzMfafxBIWEQ+Xiypl4cREjl9W8qRO2Zos1xg3
 SudvKLqgfT4A7kr1YROTrUDZEf+1orkGMPqXNYqasU2rXKb49K/Gz5i2IqFdC/wCrcpT
 lyD/9nCR6xNpYPKvwX1Be6gvlp8CAbda6Q2x3o/WXa9N8yjyHmFn3RXDIEb3bt9+HpWs
 cR2vZ+yW1AP9udBcCtlBIIDeCmVuRcut+ANUIQbB362EfEKbaRsbrF3vWsqsAeyG0wfB
 aeNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OTAd/fwrlOgwf/tB6n2+tyJATpfD6gPlAjxOR7U/RyQ=;
 b=MYOb1OoguRD5POVtvTok8xij6jIygKlgyiJ7Ndb45l1kqzThtRlMdM5C/uAG0ab0mw
 ASIGyMYbrsNhW45Kw9ELMFlNzTm1lUpoVtwQa2rOnTErRfDes0Cyc4u1KdqzoQv7/5hY
 xlzujfb7smqsNtcZAS/QaZuuyMSi9sJbVc4w1Qyycpe0q3KCyX0LmMZWbNaxhewr1qA5
 qkB4vcA1Lny2qvWimJvJ5bDpyEfB+NF5+BGPizAx+dds0JjEXv033XmzkrVl94hSm3A4
 gJPNUgAsy6yrZ/GIZh0DatgvBQAB/QnfLbLQXLXf451MLyeC4zBgT4RcvDnX6YRA1H2z
 M9ww==
X-Gm-Message-State: APjAAAV8CtnXJqg5iOMNdF65cRzbVxyr6N9vX8Fk2qz0r9IAJ81Qh2TI
 cvazreFYFmeP98DQFJjhd+sy2hgWDl0=
X-Google-Smtp-Source: APXvYqwp5qk4WNEGGb5k4grtfozkPkT5gx68Jibmp27TxAYOorzKpegRert43DSRzKCH4+pEhFyiCw==
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr32661436lfm.104.1563871407931; 
 Tue, 23 Jul 2019 01:43:27 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id u15sm7896463lje.89.2019.07.23.01.43.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 01:43:26 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: ux500: simplify and move debug UART
Date: Tue, 23 Jul 2019 10:43:25 +0200
Message-Id: <20190723084325.2279-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_014330_428255_C641DA81 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The debug UART code defined three different virtual addresses
while only one is ever used. Get rid of this, and move the
UART remapping to 0xfffe8000 where DTCM reside on some platforms
but not on Ux500, so it can be reused moving the UART out of the
vmalloc area.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/include/debug/ux500.S | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/arm/include/debug/ux500.S b/arch/arm/include/debug/ux500.S
index aa7f63a8b5e0..aa3af7cb45e0 100644
--- a/arch/arm/include/debug/ux500.S
+++ b/arch/arm/include/debug/ux500.S
@@ -24,21 +24,16 @@
 #define U8500_UART0_PHYS_BASE	(0x80120000)
 #define U8500_UART1_PHYS_BASE	(0x80121000)
 #define U8500_UART2_PHYS_BASE	(0x80007000)
-#define U8500_UART0_VIRT_BASE	(0xf8120000)
-#define U8500_UART1_VIRT_BASE	(0xf8121000)
-#define U8500_UART2_VIRT_BASE	(0xf8007000)
 #define __UX500_PHYS_UART(n)	U8500_UART##n##_PHYS_BASE
-#define __UX500_VIRT_UART(n)	U8500_UART##n##_VIRT_BASE
 #endif
 
-#if !defined(__UX500_PHYS_UART) || !defined(__UX500_VIRT_UART)
+#if !defined(__UX500_PHYS_UART)
 #error Unknown SOC
 #endif
 
 #define UX500_PHYS_UART(n)	__UX500_PHYS_UART(n)
-#define UX500_VIRT_UART(n)	__UX500_VIRT_UART(n)
 #define UART_PHYS_BASE	UX500_PHYS_UART(CONFIG_UX500_DEBUG_UART)
-#define UART_VIRT_BASE	UX500_VIRT_UART(CONFIG_UX500_DEBUG_UART)
+#define UART_VIRT_BASE	(0xfff07000)
 
 	.macro	addruart, rp, rv, tmp
 	ldr	\rp, =UART_PHYS_BASE		@ no, physical address
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
