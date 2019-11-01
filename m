Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5E9EC32A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:49:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tb08JHneizceBh9LaEabLCVslQquEdKFKTQJA0plLQk=; b=ig2Pvfa/RCbKEh
	1BEcUzLnAjgtvcyi8hj6dsOtcdbUTaj1xEY4DufFcWhNkS0CR+yBAgWodQpBzrXvGNJYnhVqWbFfZ
	NEObOBxGL9aBj+rFHWyCN/FvYeeMDu60pjWIqdpMhjmm47GxQ9P3cyWEgx8g5feZSj8h1wiMUlbkn
	It3zc+vRZSHUNnHjSYzvwjiX6T/NOah0OxqtTZ/F1VvIHtYLBOeA8sNwd2G/pkWb0+3mGqpShXrrV
	5nkouhDmZLxqeePJ6yZNwit9D5XB/nPJtZdqr5icTi7hHxl0GReAY6BWlDtiy9hAZJVHohVDnovuj
	MDK1GXSqP/Kp1M8l98Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWMm-0006VN-Tq; Fri, 01 Nov 2019 12:49:25 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWGM-0008IB-K6
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:42:48 +0000
Received: by mail-lj1-x244.google.com with SMTP id w8so10069478lji.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/C1Eg1dR+pzbI0uF0+AzerXAuAR/n78tvkDzoMBSgLI=;
 b=E6p6xxCrNL24MJSKd9WV7hyzQub0rZ74qqVrC33D8S4zffFOXSmiI07OOrVK/EYRr7
 RUa2hKLf0AbNe1U4vqbo424rJ6TtF5dZ7URlni+1mSdKFNbhfuyDZH2bmwUkEc1PN5+y
 KsDZUcdFfYKJBovm1/jt9ezy8dXuKFe/haEvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/C1Eg1dR+pzbI0uF0+AzerXAuAR/n78tvkDzoMBSgLI=;
 b=RPe27ocNUKSzEoThFOy9uyljRAb8FvRpNIW65X8IXUb5PYTcTOc1+lbQb5M5URAiML
 ZUGEi+Y61FkwGTpqdITnfL1PCq/eYHT24ct9kWADDoYE8Oi/LyTLSSbc+qf7N8bfGAax
 L+BmNDi9fb/uj2aioY49tK2A68EJiwSWAMo+kgMQbDd5ITEOAhJ+PAkAtEaCckyWulNB
 ocFXPtM/NKMDxlShcqqZ//z6EcEbiOuHowzX+k4SgFGZhitYNCzAEuCqqKmOuKUUN4Mk
 rkqcz2gDHiYxr8rQcbBPYRC+cumhxzkUUSnbvbf9KsH4lZN79dclTA7gLffzbbvk4gpF
 hEwg==
X-Gm-Message-State: APjAAAVJimRE8lwSRbWO3glOwT750VO19Vs+OK4jB3v3N+i+Uiyqcz2w
 bNDBN4trC/40Qf3gJ1SXy3LHdQ==
X-Google-Smtp-Source: APXvYqwFNc8j57WfHASb7dDdRvzJDRCUUK7Jd083Crpc8DfY36CzXhgw+rR0rcivqtg51F7xRMNXHQ==
X-Received: by 2002:a2e:8007:: with SMTP id j7mr8239471ljg.19.1572612164992;
 Fri, 01 Nov 2019 05:42:44 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:44 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 24/36] soc: fsl: qe: qe_io.c: access device tree property
 using be32_to_cpu
Date: Fri,  1 Nov 2019 13:41:58 +0100
Message-Id: <20191101124210.14510-25-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054246_661244_386ECD9D 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need to apply be32_to_cpu to make this work correctly on
little-endian hosts.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_io.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_io.c b/drivers/soc/fsl/qe/qe_io.c
index 99aeb01586bd..61dd8eb8c0fe 100644
--- a/drivers/soc/fsl/qe/qe_io.c
+++ b/drivers/soc/fsl/qe/qe_io.c
@@ -142,7 +142,7 @@ int par_io_of_config(struct device_node *np)
 {
 	struct device_node *pio;
 	int pio_map_len;
-	const unsigned int *pio_map;
+	const __be32 *pio_map;
 
 	if (par_io == NULL) {
 		printk(KERN_ERR "par_io not initialized\n");
@@ -167,9 +167,15 @@ int par_io_of_config(struct device_node *np)
 	}
 
 	while (pio_map_len > 0) {
-		par_io_config_pin((u8) pio_map[0], (u8) pio_map[1],
-				(int) pio_map[2], (int) pio_map[3],
-				(int) pio_map[4], (int) pio_map[5]);
+		u8 port        = be32_to_cpu(pio_map[0]);
+		u8 pin         = be32_to_cpu(pio_map[1]);
+		int dir        = be32_to_cpu(pio_map[2]);
+		int open_drain = be32_to_cpu(pio_map[3]);
+		int assignment = be32_to_cpu(pio_map[4]);
+		int has_irq    = be32_to_cpu(pio_map[5]);
+
+		par_io_config_pin(port, pin, dir, open_drain,
+				  assignment, has_irq);
 		pio_map += 6;
 		pio_map_len -= 6;
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
