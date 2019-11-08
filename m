Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F6FF4CAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:08:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EKraj63/1t7XGM2GtfU9VbtfY7w3hjvcEsyMR39pxXo=; b=eNiMgST2PD78TC
	e27togNf//KvFyfLOUEjnL+x7A6ZrgMPHQr/7FfcuM6JDv/iiPQzCWCbTObE5mpbZhqQ+3A8W8LUy
	OOSlp2Hnr80Zg8D88U/6c6P7k6XKbYw7TAHZvYT/zHzVaXy5ifaefAFadHNYRW5Hfzi6YanOXOUVJ
	xXb/x15zemM6Yfh35u4r+SJzy15/FWt4FQPYoAQtsS5c2z4mZAz9/E3/LqDfgc3jOu2KtieOkcezj
	JFNEJ/5R7el1cRxYz5uNGyS4qjp0HaqdSisV8yPfI+CzlTHtJ6qqm0H2A+zMOAU7hSigHjcs86UNv
	AEnoWSW1EcdOi0jf11fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT40B-0002fG-W6; Fri, 08 Nov 2019 13:08:36 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tm-0004Z8-JP
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:00 +0000
Received: by mail-lf1-x144.google.com with SMTP id o65so731351lff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DamhDMgU5LUEj6+/3a9o1XbDY44tIM+8wHrJxcRu+uM=;
 b=CzwCiuj6exVzCOFgPuTt4r411VFLxU0lG62JmrAC0Tq/FkGLV3hcmjLjTOyorGZ6BF
 f5vdfP5f8/tUJl6K09ZcsdwAkooUD8r/2Uhwc8HsNoAH1bikyuyJ6cAkf0huPMxyLgC/
 q3hQieIudS4xARAsuE4JftrjXtWacrgN01Omo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DamhDMgU5LUEj6+/3a9o1XbDY44tIM+8wHrJxcRu+uM=;
 b=Ro1mLuv/qetT1cy5uiDsfe5XkMX6qM57TbprMaVsvyfDQUXW6eycLTyaTWMzHi90Vk
 WJCx9oS7wHIjU+0EUxMdxeOc/8lB0346blUJdKVZsV+UxhN7KMFgdGz5mwxjEvC5A+HG
 8JgMSKAw/4eUjOs9vGHAFV+175bpXNZbfiaZCkTINnBEFhzImEuM6cAkv/G2UPT9ZDuv
 5Wa8gGv2oceo8d6ms7shnD8iSiKbPraeMhKLXSxSnjl8krKUNH4Xr82F2WJV+/H898PP
 yfjQdCt9ppVBN+SNRlbFzaJgftsCZPcnWjaEGxT/0DCyrJNyHEiNsU1DbLspJugEKE/c
 vgeA==
X-Gm-Message-State: APjAAAW1P+suRApeNx6H7joBJrXwbqRgiQgpGorqBYZ8om2WI9LB58lU
 cNQaJ4oAHJCKjfyvDuCVQhYvhg==
X-Google-Smtp-Source: APXvYqxLhyI+di0UO4K7+gvbN3eZpupJEQvTp7M7AQUxi/FrrJBEEQYjplGtvhFcgeq0+SdHb/S3Bw==
X-Received: by 2002:a19:fc1c:: with SMTP id a28mr6554479lfi.170.1573218116086; 
 Fri, 08 Nov 2019 05:01:56 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:55 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 22/47] soc: fsl: qe: qe.c: use of_property_read_* helpers
Date: Fri,  8 Nov 2019 14:00:58 +0100
Message-Id: <20191108130123.6839-23-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050158_668862_3B0503A8 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Instead of manually doing of_get_property/of_find_property and reading
the value by assigning to a u32* or u64* and dereferencing, use the
of_property_read_* functions.

This make the code more readable, and more importantly, is required
for this to work correctly on little-endian platforms.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 33 ++++++++-------------------------
 1 file changed, 8 insertions(+), 25 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index a4763282ea68..ec511840db3c 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -159,8 +159,7 @@ static unsigned int brg_clk = 0;
 unsigned int qe_get_brg_clk(void)
 {
 	struct device_node *qe;
-	int size;
-	const u32 *prop;
+	u32 brg;
 	unsigned int mod;
 
 	if (brg_clk)
@@ -170,9 +169,8 @@ unsigned int qe_get_brg_clk(void)
 	if (!qe)
 		return brg_clk;
 
-	prop = of_get_property(qe, "brg-frequency", &size);
-	if (prop && size == sizeof(*prop))
-		brg_clk = *prop;
+	if (!of_property_read_u32(qe, "brg-frequency", &brg))
+		brg_clk = brg;
 
 	of_node_put(qe);
 
@@ -571,11 +569,9 @@ EXPORT_SYMBOL(qe_upload_firmware);
 struct qe_firmware_info *qe_get_firmware_info(void)
 {
 	static int initialized;
-	struct property *prop;
 	struct device_node *qe;
 	struct device_node *fw = NULL;
 	const char *sprop;
-	unsigned int i;
 
 	/*
 	 * If we haven't checked yet, and a driver hasn't uploaded a firmware
@@ -609,20 +605,11 @@ struct qe_firmware_info *qe_get_firmware_info(void)
 		strlcpy(qe_firmware_info.id, sprop,
 			sizeof(qe_firmware_info.id));
 
-	prop = of_find_property(fw, "extended-modes", NULL);
-	if (prop && (prop->length == sizeof(u64))) {
-		const u64 *iprop = prop->value;
-
-		qe_firmware_info.extended_modes = *iprop;
-	}
+	of_property_read_u64(fw, "extended-modes",
+			     &qe_firmware_info.extended_modes);
 
-	prop = of_find_property(fw, "virtual-traps", NULL);
-	if (prop && (prop->length == 32)) {
-		const u32 *iprop = prop->value;
-
-		for (i = 0; i < ARRAY_SIZE(qe_firmware_info.vtraps); i++)
-			qe_firmware_info.vtraps[i] = iprop[i];
-	}
+	of_property_read_u32_array(fw, "virtual-traps", qe_firmware_info.vtraps,
+				   ARRAY_SIZE(qe_firmware_info.vtraps));
 
 	of_node_put(fw);
 
@@ -633,17 +620,13 @@ EXPORT_SYMBOL(qe_get_firmware_info);
 unsigned int qe_get_num_of_risc(void)
 {
 	struct device_node *qe;
-	int size;
 	unsigned int num_of_risc = 0;
-	const u32 *prop;
 
 	qe = qe_get_device_node();
 	if (!qe)
 		return num_of_risc;
 
-	prop = of_get_property(qe, "fsl,qe-num-riscs", &size);
-	if (prop && size == sizeof(*prop))
-		num_of_risc = *prop;
+	of_property_read_u32(qe, "fsl,qe-num-riscs", &num_of_risc);
 
 	of_node_put(qe);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
