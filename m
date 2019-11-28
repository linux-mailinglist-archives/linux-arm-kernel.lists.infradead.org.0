Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F4210CB13
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 15:59:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkyXdi6x+/XXC0IBY9Ce7GTFXI8Hx7RaqSkmvkRTK2A=; b=sJsf2QNjgmBYdw
	lDUMbqeCFRHwLVObqF7kB10twMb779gmO/UZORKrrYAFK2kj1u6upQvEmmrUceMNWANJJeH9y/ifQ
	P7Ml5ToLYpgP964/4I4w9cNgalV1UG1tHlKvYIThqwvHZFz8jcpnPXTlP5lri3xVv813e4Wku+/MC
	JwDlEDD1xfCVlBCsqhWeDy7jEXMMGazFc0QUHiI/Ct/olSY96lXMuRD5hDD+J/JwTVquLPLP5ueqr
	JHbiqiJAHuCF2K+uF/Z0Rulla86CDq7PkEjFo1zucJrKL33Ldbgfqjv1nqyREtjfpCe6UNtXRjLTK
	qB9zFUNNm8C78Hsq21LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLGM-0001bP-Lg; Thu, 28 Nov 2019 14:59:22 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEN-0000bi-FR
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 14:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1FO1UQTXh28fI62ubVME27vBFvBx/0Nlk287V+GPtYU=; b=IGwZEWyYfMv0gxO00JLC55hlZB
 p6j/wsrrcAD1r1y80T3HifYP13JDaW2yWYWf1Ev8QRrNL0c2NwrzW9l2IdqST/wtFwXzKRmO8GYvi
 cYeHA+Q5zGHMDDxMm8hfTP140DM3JIifYreRCRKgwcvfu2VviVsIpJPQWnkDLdKlIKPMnTNDZehHs
 epKkzNKFEWmqdQS9DUMH3NtKX9jT+XR0IC3WbDsqLJTt6a80xMg49CuKHyABQiXNAWF5sM3kbsxaS
 Yvscug8V9ugSvHenoebIWqJnvccvifbEILG160uy8gE0cikUTTbRofzD+23s+0yZgVT1H2lDA9c5Q
 fce6+lmg==;
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEl-0005sD-LH
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:45 +0000
Received: by mail-lj1-x243.google.com with SMTP id t5so28868474ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1FO1UQTXh28fI62ubVME27vBFvBx/0Nlk287V+GPtYU=;
 b=ZNhCjhlXYdCo4kAsX4UTTimsvzqdgi2hv8plsAFFBTnJnb4euDfFWwFH4zxFx7MhZ+
 RbpYnU0P9tFXmZQP1mq9z+OrG5+RlE+3xdI7EhoVDAA+VVIPGMPTe8TwM2ppgKuG8LGk
 O1ZhnUDfTQ1fjCjBLJmqQ+eVOggVlMbYyMVqE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1FO1UQTXh28fI62ubVME27vBFvBx/0Nlk287V+GPtYU=;
 b=t7Kj3gfAWs8Xs1KjF63QMPHuMDdiCqNlrV3A9t/nygMEA6fUXaelY152H+tn0WwtH8
 MBE3RlPzFlXuBb4KGrG8OmE1x2/WcEzLYnTtf/xm7qhH8LcOqeva4ADcszYV7Y/6xh7Q
 wePmNi+zF78PM8iVWKchXVz+tKvuTvtoFwUvXH9MMUn4gQmReNF8uPeqA+csHHFoulgR
 4n1Id4iMZLmKnUiQe3Iz0zdT/ld3mTMjR+ef551oGyYtvhPq/z0lQBZ/xE3e1+K5LzGp
 V5SJgYDUsERKfUmoS6iEMJxuPrmWWH9Ps3mej8fuG3N1I0hqW/JUwtx5gge7SslEogWn
 rNDg==
X-Gm-Message-State: APjAAAW+dZZV4NhR4nPc4Mklv2z6pJwGiXe5zbk4VS9Om0cjKczLAZ9G
 pHRe1XKRup00a6ArMj0rkzeXoQ==
X-Google-Smtp-Source: APXvYqwWny19ndDBOcZFfoY6H4dtBKDtCID2hru7I1YwvHnyPzyw7kTW9NPWsf4LyhSpEJUZyub1AA==
X-Received: by 2002:a2e:9006:: with SMTP id h6mr34696274ljg.231.1574953032680; 
 Thu, 28 Nov 2019 06:57:12 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:11 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 06/49] soc: fsl: qe: replace spin_event_timeout by
 readx_poll_timeout_atomic
Date: Thu, 28 Nov 2019 15:55:11 +0100
Message-Id: <20191128145554.1297-7-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_145743_718787_0F7CF605 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for allowing QE to be built for architectures other
than ppc, use the generic readx_poll_timeout_atomic() helper from
iopoll.h rather than the ppc-only spin_event_timeout().

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 456bd7416876..85737e6f5b62 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -22,6 +22,7 @@
 #include <linux/module.h>
 #include <linux/delay.h>
 #include <linux/ioport.h>
+#include <linux/iopoll.h>
 #include <linux/crc32.h>
 #include <linux/mod_devicetable.h>
 #include <linux/of_platform.h>
@@ -108,7 +109,8 @@ int qe_issue_cmd(u32 cmd, u32 device, u8 mcn_protocol, u32 cmd_input)
 {
 	unsigned long flags;
 	u8 mcn_shift = 0, dev_shift = 0;
-	u32 ret;
+	u32 val;
+	int ret;
 
 	spin_lock_irqsave(&qe_lock, flags);
 	if (cmd == QE_RESET) {
@@ -135,13 +137,12 @@ int qe_issue_cmd(u32 cmd, u32 device, u8 mcn_protocol, u32 cmd_input)
 	}
 
 	/* wait for the QE_CR_FLG to clear */
-	ret = spin_event_timeout((qe_ioread32be(&qe_immr->cp.cecr) & QE_CR_FLG) == 0,
-				 100, 0);
-	/* On timeout (e.g. failure), the expression will be false (ret == 0),
-	   otherwise it will be true (ret == 1). */
+	ret = readx_poll_timeout_atomic(qe_ioread32be, &qe_immr->cp.cecr, val,
+					(val & QE_CR_FLG) == 0, 0, 100);
+	/* On timeout, ret is -ETIMEDOUT, otherwise it will be 0. */
 	spin_unlock_irqrestore(&qe_lock, flags);
 
-	return ret == 1;
+	return ret == 0;
 }
 EXPORT_SYMBOL(qe_issue_cmd);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
