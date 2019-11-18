Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54BB100435
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:32:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EKraj63/1t7XGM2GtfU9VbtfY7w3hjvcEsyMR39pxXo=; b=Tck8CcaKvZ/+vp
	1162S1zF/m7dJM6FpFP12ufQjSTylHgYjKrIhPGatpOW+U85iDkaSIXwrhWI7//EAFSS2nk8yxJCA
	5zoHbiJXxsp9XgKg+p6gU7+Rg+Cpsyi/PQ2NL9G/zxnPzHLzcp2xipVq3nXsX4NdXPwEwP7e8zQzP
	t3iZXWsaBqx15NX+CHmDmCglSGraAgDxht2mqWS9iMMLYl+fKaLKsJCyINENEocCJWrZfDlbWwJ/l
	MIWwGvyFQD5xeBWTmqHVqPFp7OhXlchi1iWyQM9MzEnrPtfyQyuDKDPvZPLSX8z62ESSzFXRri9E6
	Yz8+CY2wnBeNbCAcs8hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfGm-0001pS-P8; Mon, 18 Nov 2019 11:32:36 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8T-0001GJ-Od
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:04 +0000
Received: by mail-ed1-x541.google.com with SMTP id b5so13177320eds.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DamhDMgU5LUEj6+/3a9o1XbDY44tIM+8wHrJxcRu+uM=;
 b=EeKRZY+MVjOCti97dMZnneeL5nno7RcmeFHILNlgtA7ODsV04Xm0/eVnj9qtB9xOj3
 ZTWgHyDyE2iGT6X2eIJefJ4ECXfQ+UQjnsKiiIp/kN39VN2x0o+NOKJiC2+Z40FRlyt1
 Pq891AenK+W7V4NlPs6G4YolK/GqWiQqlaw1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DamhDMgU5LUEj6+/3a9o1XbDY44tIM+8wHrJxcRu+uM=;
 b=ZycCS9e7UcRHAOJvjNToxAgA+uoRFg6u9vwNDy7k5DSRkpg8UmiySUx6D1B9IBhEvR
 C9+2mzaUmfe/w2ZqjfFRyp5XsdbBhDx7DfnvcHxdVfSzJKzxbJI7en22/uEMMXeeE/Wi
 jKC/9qw3dHC+6KRDzM1BMdFtHdaW/9H1Bl9nrxdW2+h5VsSab5h801RS7yKGaJ3kvLgK
 3CMVyj7EryuCHE6RmGaMvZtNajjVsMvJDayvdWtUjSuiMAEfav+Kk/XXIhTkrgYjepvt
 o3Uzt/1j2AIM1buzgxXJi5mh/Utk/7+CU53qHeJR3b8qSwRRtSvO2QENLZhOAY3PpMzz
 /0gA==
X-Gm-Message-State: APjAAAVWO4pq0AH1gv9JQSDT6b6l/y+snA2h4OyGPU77GjMyV2v21j+X
 sHrmarV8ntVZwasSB4PqxiQyNdBZg4e3lg==
X-Google-Smtp-Source: APXvYqxLNGdHXe96TW+1uvu+Pvc7OkzyqEFaz9gJvV4r1+K29tbryCcQDxIg5Nxrtyog8faRXt7H1Q==
X-Received: by 2002:a5d:490c:: with SMTP id x12mr16428660wrq.301.1574076239444; 
 Mon, 18 Nov 2019 03:23:59 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.23.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:23:59 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 22/48] soc: fsl: qe: qe.c: use of_property_read_* helpers
Date: Mon, 18 Nov 2019 12:22:58 +0100
Message-Id: <20191118112324.22725-23-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032401_824758_4232AAFF 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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
