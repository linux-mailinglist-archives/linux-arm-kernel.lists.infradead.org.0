Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B3010CB6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:13:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNZ8Mn+vJ7HJfZSvFngyRN9ikA1OwML5jWPk5zqZxo0=; b=UcjXOFOJ6Mgww6
	hZmTsMATl1lD9qT8npEm3fwh24PHqSo+DtSczY8DeF1NHydKKC5UKG8eJEshUcYU75JUvmIlbG+rt
	+HHBYYY2V1DQmE5GVaC2GlqyzgsyIRlj5vFwo12Wj8dLsZEZPctXi8CS4TP61VvIJuAg2RATdF7N/
	zVIPIQe0s8eOJCyJ5tQVYoTZLF75SVkSYT2G9DhOngJW0jO3V8bm7ABCaseJHz40Xpk9G6sS1raP/
	pCxnvI1DawyK2nGhegXpphD5S63KFLyH+wr4swTYeHA0FYl6/xyizXJuUe9vUEZcz4kahvVSJfiNu
	gPJfgCNNVMbUvIvI16ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLUM-0006OT-SA; Thu, 28 Nov 2019 15:13:50 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLTO-0005ML-SG
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:12:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JWyaIwq9mdmvZ/JuYUnZiMulaql+3s1ZVx5WN7km3uw=; b=Jr1BjL817MTtp6RBlUmB2J6LVI
 2t0efTqNHh3G0jI7ij073VUU+V8f58XnNc69Nm4dUJpL4YXDMyzBe7iNWmV3dJ2aj4TvHeHfC9HjS
 1Fi1rRAipNTryCVun5sjFw3DpIGQmObqBuoCXmcYEXKO3yLc9SIQZ1t+sxqVVB6tKvm105/WC3C3S
 qdxcqhBJciFV725XWYJorOhbfRGJqbkC8AcXOAYQrySzGQko5MDJS3GbmqUlzc2oqeS9x1zNlStne
 JlH6YMEQf7CJcO1JuZSDIS0rxMmCzZ2RG3lQM5eW5LkPFuYB+QTJlKFp8k9BRETyVgEjKdd03ylSx
 S9WVyMyg==;
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLF6-0005wf-52
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:08 +0000
Received: by mail-lj1-x244.google.com with SMTP id e10so19658065ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JWyaIwq9mdmvZ/JuYUnZiMulaql+3s1ZVx5WN7km3uw=;
 b=KWe7360wBhzV77hKN+t349b+mPvaiilCDUxIUxULEYnN/2BFgQPleVjKrpxA4uHfHL
 BIRRBKcwfnATFr4REC7warrEOdFOAngsSQ5yxOQM9UaBYWHHFb8ZpUZqId/xsdBpRG25
 5xPHs3YpJ4keFEuArLXA40it4ZOh1rVS3sVPI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JWyaIwq9mdmvZ/JuYUnZiMulaql+3s1ZVx5WN7km3uw=;
 b=NFh7CmQJnCo2R6bHZQbcGsDv2Ppxnw0Km/MHqGgpTj78WkHPQK0vT48OSpiB9t84cm
 VhlzZ3LGSEe3XRqphjFu+040dvNDEceoGK6wz7YCFigGtI63KgeVeO9hvfKRRpp6b1V1
 2ymk28LnrWjzhH8wxhMID1XsHYM2P80xAdiA0ulVLgMSWxYhk/Yu/2+ilmsV9tvPsAlJ
 Nib8MfreI09g2HA4a+yqqglG7ICpdsAG4TBEOGTBHJTA20agk2muyfk/V9Oq852Rat9U
 8AqSwWfO3nnMeYLY4fLu5SiqimV3rpOpYPaFb8m0uUwzg60eez8XhAvTiTGiO5R7cu9U
 ub1g==
X-Gm-Message-State: APjAAAVcBfCU8q/UQPBPAeb6uHUozd4IiLAatiHVB1UzCcKgI5UFtF3z
 t7TfSaEqd32M8z22PtrYJ/5/jQ==
X-Google-Smtp-Source: APXvYqyVDq6NQJ2Y1gdqv1S8h+9+Uo9oKx4Z5PDYEkDUD5ZetIxhlvatqxTyxBBUOdBPmmbBkDpi6Q==
X-Received: by 2002:a2e:b5b8:: with SMTP id f24mr33941792ljn.188.1574953053452; 
 Thu, 28 Nov 2019 06:57:33 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:33 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 22/49] soc: fsl: qe: qe.c: use of_property_read_* helpers
Date: Thu, 28 Nov 2019 15:55:27 +0100
Message-Id: <20191128145554.1297-23-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_145804_266961_3AFE48FC 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

Instead of manually doing of_get_property/of_find_property and reading
the value by assigning to a u32* or u64* and dereferencing, use the
of_property_read_* functions.

This make the code more readable, and more importantly, is required
for this to work correctly on little-endian platforms.

Reviewed-by: Timur Tabi <timur@kernel.org>
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
