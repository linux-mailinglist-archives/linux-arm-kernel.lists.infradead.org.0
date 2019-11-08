Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C06BF4CD0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:11:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COMXCVDYfRMO4zYwRTJ2W9l/psmTKhvLO6naaZSoX48=; b=dh6IdHp2Zi2/ms
	NTQXCuq/z4H1rLM5kbqJXaT1ilpVuL6cwM2sEPhcQgjO8WGimbUiMP4n1WXnrdgp2WtM61XFbANHn
	huQ3kvxc1WXcRDEJRsf5mP4N7q1vAWm5q4tdaIUlfqheDPTlZTqQQxGYtGrX0ZpAygNeOV5nvkhT9
	8+AbBmUSEnvt/trQCKYYO/zlMckJu3bHQVP91KaPfy5SmBDD2/RPw/faNLHIygapHQDF1C3vV+8PP
	MWjjhumwJNPegl0cen4yBIrVpKjPNRRldEjWp21kUjYEKfRIaL0DqxF4qtMKAco2K5O/KdKGYgpX/
	PaXKfoyBh+jtMXZx5DZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT436-0006PO-7w; Fri, 08 Nov 2019 13:11:36 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tx-0004iq-1Y
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:11 +0000
Received: by mail-lf1-x141.google.com with SMTP id v8so4386245lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zPi0SchlJBpcK2Uafamd7sY3psIZzF+ErFogb8EsMtA=;
 b=SRXE1NoSEoSCywO+L8E6ng+2FXGjgyGd7B+f0jJ2JaXIveaCYZLPIeDN3ivZQSSkGE
 u1V/D5rgTkWtpx6sNDzCdXxFB3bSCGyd8bTMf7BINnG8O7NsszC3ReD1KjCbn+P9Wj81
 /49kVxIImaa1ns64nyNk2b2uJQOsVial126RE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zPi0SchlJBpcK2Uafamd7sY3psIZzF+ErFogb8EsMtA=;
 b=RnW7O/D0+DDivm1/hoRmhMC/nZHfHEaGOhn3sPZqmiQ+NPG6pOyjl9R2/baP2h36nJ
 REARQ1cK2Hm4XUkqzyrcqZaUDgFzI1t7Mo3jRt0dp8QXPNY0VmaJ7yiiYuHKK5sOc7Id
 ixUSV59G5b6W0Mv/JVEr5k6Z9YX6Onf0ab4bIhYABLoZ0mR5kSZbWsxxNbvwwsfWmK2A
 qEj86NPOn83PLRjxqdw7a8sEqwjbHkzV1e7nTipBz0co0/EN+9wAFPbGpQ2Qd/XTwBic
 ItcpJYQMxQOxJpp/9vODDengPblxxdtd8xzACK0GCWgnrT7Ahwa8cxkzA+Aa9J5dUAJn
 FAjA==
X-Gm-Message-State: APjAAAVKqWr1HsS6Z8vH/Sh6MZB6TD8GlAtsTtGIFfrzY+7RtAHehjWZ
 kP+KxDLYLhFG6lVmsvZ0KrMe9LO8dcshy8UX
X-Google-Smtp-Source: APXvYqwOqHE3M01CuaW5urlsbt5KzMbJiYrCdCN84TCfTLcHk6GXpiZEJDNrDr2YmEEm613FNacMMA==
X-Received: by 2002:ac2:5dcc:: with SMTP id x12mr6536635lfq.163.1573218127481; 
 Fri, 08 Nov 2019 05:02:07 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:06 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 31/47] serial: ucc_uart: stub out soft_uart_init for
 !CONFIG_PPC32
Date: Fri,  8 Nov 2019 14:01:07 +0100
Message-Id: <20191108130123.6839-32-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050209_215373_EA72F31E 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linux-serial@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
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
