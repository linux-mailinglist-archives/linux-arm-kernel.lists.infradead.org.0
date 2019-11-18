Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FB9100443
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:34:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COMXCVDYfRMO4zYwRTJ2W9l/psmTKhvLO6naaZSoX48=; b=XseOZKdXPkpMRF
	NShHmt8vwVGcC3xQcYV4e5K9YWgRUsX2bqdOTeA//aSGWe74AINXYeolH+FcO+b8Yac6/7YzxFU/B
	06ql31ZqP98I5uyVf6Q1wtm0zZy2lOlK7mnnt/Bj/VemHYxvm3Vz7lreqE0vzfgvbN6tO4cJeJvG/
	5gjN+7NBwXgODZv4TeXHoKZFEDWIvZElgi8O01nFiJuG2QP8eB1HVsoBH7yKBArtAqJr80TAjmpb0
	tnn6N4P29IcxTz/G1GLvrmqXM1ocrvUhquNvEomN0tdAxXedhOfZ+JETs1B8WHydjVvnQZgL6BajP
	vkvMK1Q0mwBobfjk1YfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfIP-00039M-7U; Mon, 18 Nov 2019 11:34:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8f-0001Ri-Ez
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id c22so18349818wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zPi0SchlJBpcK2Uafamd7sY3psIZzF+ErFogb8EsMtA=;
 b=ZiZ90qqpfO5qG7SMgAh9/PB8QFX94uZpsWOqL6XjsbR9k5YCqcy9OSx87H09ThU+0w
 vys3j3NPV7goOMpCenbAPyOKNvRwKCMnbmiGxqi+1n2EGup9wl2ulfLkuB0N+ksQaWh5
 tpchHcQSPNzqhcfPrkJ1VxR3gsSN+rvrINqOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zPi0SchlJBpcK2Uafamd7sY3psIZzF+ErFogb8EsMtA=;
 b=aoKTy3/NDRLu8WMis6TfpQYYWJVRxdpa9uN+MkSqoxu9SmYsCIdqbnzGC3noApwjuk
 WLbfW6v1CcpVEaOrEyQRwwLre4xNs/OCLCkPguQzPRd2mwF8WSOYGOeqSf9UWNvQwo85
 UiQfKsFOPr4eB/HeLrWKtDzjrBw37afNa6UcDQIJEYSETLPwuatIgivWC1RujkcbpBfj
 Ev32+kvlOgM4swiV3pRVyNx0jOXh7ZUNz41qemEu4ahQHAzZ2K3O+75084p83QcC1E9l
 IFDXopbKE8sJwjHu8icWE/FnMP/Rne/cVaWHZbf9kZBYa0DzgJDBv7UKVRS1Yf7VnMgR
 ZPqg==
X-Gm-Message-State: APjAAAWpD0EyYht7WEbifO2eg+uJC2kwJ+4/7SMQB4G53KyyAmnFdhK6
 VgzRMxprxKbTZ027lxvN/+MtRA==
X-Google-Smtp-Source: APXvYqyMlre0ptC746RrIs0o3/q5vSgHaOfHInZsRln9L66Xi9zEqoUBbz9OzBot4n1Ofcy+OJlHFw==
X-Received: by 2002:a1c:b607:: with SMTP id g7mr29865871wmf.94.1574076252099; 
 Mon, 18 Nov 2019 03:24:12 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:11 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 31/48] serial: ucc_uart: stub out soft_uart_init for
 !CONFIG_PPC32
Date: Mon, 18 Nov 2019 12:23:07 +0100
Message-Id: <20191118112324.22725-32-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032413_536681_9D1AF6B4 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-serial@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Soft UART hack is only needed for some PPC-based SOCs. To allow
building this driver for non-PPC, guard soft_uart_init() and its
helpers by CONFIG_PPC32, and use a no-op soft_uart_init() otherwise.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/tty/serial/ucc_uart.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/ucc_uart.c b/drivers/tty/serial/ucc_uart.c
index f286e91714cb..313697842e24 100644
--- a/drivers/tty/serial/ucc_uart.c
+++ b/drivers/tty/serial/ucc_uart.c
@@ -33,7 +33,10 @@
 
 #include <linux/firmware.h>
 #include <soc/fsl/cpm.h>
-#include <asm/reg.h>
+
+#ifdef CONFIG_PPC32
+#include <asm/reg.h> /* mfspr, SPRN_SVR */
+#endif
 
 /*
  * The GUMR flag for Soft UART.  This would normally be defined in qe.h,
@@ -1096,6 +1099,8 @@ static const struct uart_ops qe_uart_pops = {
 	.verify_port    = qe_uart_verify_port,
 };
 
+
+#ifdef CONFIG_PPC32
 /*
  * Obtain the SOC model number and revision level
  *
@@ -1238,6 +1243,16 @@ static int soft_uart_init(struct platform_device *ofdev)
 	return 0;
 }
 
+#else /* !CONFIG_PPC32 */
+
+static int soft_uart_init(struct platform_device *ofdev)
+{
+	return 0;
+}
+
+#endif
+
+
 static int ucc_uart_probe(struct platform_device *ofdev)
 {
 	struct device_node *np = ofdev->dev.of_node;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
