Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D62710CB42
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:04:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fza9tkXaCOBHOnrCfKU7yoNU6vKfOk/QKvzjoughBwQ=; b=RwIzPuir/wRIKO
	MliBw5iKHJ/v19+4ic6VH59bf2/FnkBdz5X/gUY+H6coz0ANo/3Ei2gvQf85h+yUNLwZYjCio56SC
	vr3WePOn/dSNQSATueaFJBnHLHqJJfouMutk5rEWNSY7m3pK9xYg8s3LEaoiuJh2IRSULkS7S7qxx
	PNg6/kB6qaGm2Ek4GGUQYYAGMxJwF74kSo9ZOmLa++UKYYRfEy2Qn8GAU1W7N28ZPcPALadn4XoH7
	FjZ9leXqQsm7DKLRhIrsbulNZDAxGLX+HhuOIFQuepeV2rLmANlgU9DmrXuvOOgLtIA+xdrZE2gR1
	i03zprQYTJ/Xtbtiz2Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLLJ-0006Kn-FK; Thu, 28 Nov 2019 15:04:29 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEp-0000y5-VL
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:00 +0000
Received: by mail-lj1-x243.google.com with SMTP id t5so28870276ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lk3laNSvKrksBmzvW1+vBhhKfEZjlULs2tdXrxvrw9M=;
 b=WL+NyXT4PE96r/aFfykz6rJ/jSO5ngXrbuEXhHV2hvCO2pLlE226VK6kJOehz+jQDF
 aLFIJFEAZY+IOodG+ekGt6hgWrjisce5XzijEQcM5TRjGF3DmtuQDgzP9yT52SmHQvQE
 +CXBMdpP8v47QFJKPuUJL3H7gaGIy0wI6SElg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lk3laNSvKrksBmzvW1+vBhhKfEZjlULs2tdXrxvrw9M=;
 b=GwluvDvxz72EkWpN6inSKGI/aJ0zsFGKxgLUJFs18wdGIOCvaldA3JuZObsn7nYBoR
 z2W9UxXUJ6AroQBnorJP3P50AXuXkoWR3AyNUGomFg4BEWu7ELlFTfIrBJwGFi/XKDuD
 PxsN40p7/9YW+4S4UudJZWF2Lz2V4y3+FEBdqx+6SQhtAJOQOkz+6zbzw9L54G/ehE36
 4lntz6YPPn2RepDPHDh8Z3pym3DdDX3ORWHusoqJUdjG2ifEGvf+TqO/R8plxTxJ2mGK
 ds+cra4tf+yyxczFbBep/FeRY4GUmNx4dfmILQeuXGI1U+D8xim+fHBsNeU6WcEtJ69r
 HDTA==
X-Gm-Message-State: APjAAAUGkvvKVLa3NYdy9rE9XJrP1X5Y+KVKmIn0+7tjzsa9aZMSHYLp
 AueQnS8jbWmeBDVyAeQ7Py1n9A==
X-Google-Smtp-Source: APXvYqzWZGc7U6YNYIXxabBpQROWk46uY46htczHX91iAC5ZJJaEArYMvILp8Ju6zSpngcewVqC5vw==
X-Received: by 2002:a2e:8ed1:: with SMTP id e17mr10842604ljl.52.1574953066298; 
 Thu, 28 Nov 2019 06:57:46 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:45 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 31/49] serial: ucc_uart: stub out soft_uart_init for
 !CONFIG_PPC32
Date: Thu, 28 Nov 2019 15:55:36 +0100
Message-Id: <20191128145554.1297-32-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065748_112956_CB5E292F 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Reviewed-by: Timur Tabi <timur@kernel.org>
Acked-by: Timur Tabi <timur@kernel.org>
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
