Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 822A210CB39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:02:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kw45F2Nqyy0q34nn8R1ysqF0F3H9rYx5ie5hrO38Rs4=; b=tnoryksAOn3Dmo
	/sCr9tgqJsrDGENkg335pdbVq12zH6KFvxCuYaw2vCUOPIJT7XfFeLbqQJcqdaMnklXDom4OFp0L3
	Al8l4tiwiu56H0WsWjdxfyGKpEUN8JHyciE3GprbIBDHob90Ahre9fUv1XroFK4opL6nzBqtMc6bG
	9JyylkWAf8X5H9Or3FQLW7xt6R05lOgNrSG6fn8fdOMB0M/9LGlJJw24duBvvJqpVU15lo9mlAtUf
	DZmfw/XYdMH0nHCqr3VGEB0aZCRZ9kHwE6rRY4ruTrx7VjPeYbv1zXTW38HMmygA2mCp+R8vgIefi
	hksJvDpDI9w4MHn25cGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLJc-00051h-OB; Thu, 28 Nov 2019 15:02:44 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEf-0000s2-8R
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:49 +0000
Received: by mail-lj1-f194.google.com with SMTP id a13so5670831ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nzzyzsivy+YcXl/jyzCYf1SBk8p4BrEyK9ScDwPsYTY=;
 b=K2wEiOKx+dAnA20pPj/gC7k2WKFK03JPBFAMB2+x1KJ6IuQ/uzYy9NIfORoCqtv3pO
 dWqQg66agfm4ME7e+/iKZAKKQcUv7xPOdFY+K30U/ZIKEFr2OWIUlEL30xH0BCtMLQa4
 fBZ6XqpmIXYhwdW204OYq/yNppQkLMCsU8gWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nzzyzsivy+YcXl/jyzCYf1SBk8p4BrEyK9ScDwPsYTY=;
 b=mfKhSsRI23CLWYCpyppXwcJRr9M9brHFcmWOZSs7FNfPMM3ds+D6oCbk7BOg4nJ2b3
 cGO0B6zj8ChTLPydFBDfuG/8ZJ0YX+WeKneg/aQS/v/POZ5Fc8A2p4sivnA/VVmtmSsi
 +GXRSZrv4zB/AOnTQLDBf+Uy1Rd3LEJ0edNKwWvuhUDqRZfJuGJiEVsa8wt76Ol1dPe4
 9800z3YBhJLtlgoQ3FV9ZpAp6/W+Dltt/8E2cvwT+vLjK8TxXBCAu744BzwKIcamO221
 id4REtofaqkqInV1xv0rVAqLRuYOIOjom4sH/Vj2yIp5EBo+b1DU4iHaeug+FIlvHzwp
 2pbw==
X-Gm-Message-State: APjAAAU4VwvbFRTkGEru+VJriJNqldQa8DQjanrOD7Br6TKouHBRk5vW
 +BFR6tKlK2ZMvCX9BnmGzoY8MA==
X-Google-Smtp-Source: APXvYqxcCZp9VC/hOwbAbqHS7Mi8diiPVBeVRdJba1gvlZ6qtvTT24K8z3rdfj6gIFE8XPjaG9eObw==
X-Received: by 2002:a2e:9f4d:: with SMTP id v13mr35083259ljk.78.1574953054971; 
 Thu, 28 Nov 2019 06:57:34 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:34 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 23/49] soc: fsl: qe: qe_io.c: don't open-code
 of_parse_phandle()
Date: Thu, 28 Nov 2019 15:55:28 +0100
Message-Id: <20191128145554.1297-24-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065737_354622_0C993648 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
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
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_io.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_io.c b/drivers/soc/fsl/qe/qe_io.c
index f6b10f38b2f4..99aeb01586bd 100644
--- a/drivers/soc/fsl/qe/qe_io.c
+++ b/drivers/soc/fsl/qe/qe_io.c
@@ -141,7 +141,6 @@ EXPORT_SYMBOL(par_io_data_set);
 int par_io_of_config(struct device_node *np)
 {
 	struct device_node *pio;
-	const phandle *ph;
 	int pio_map_len;
 	const unsigned int *pio_map;
 
@@ -150,14 +149,12 @@ int par_io_of_config(struct device_node *np)
 		return -1;
 	}
 
-	ph = of_get_property(np, "pio-handle", NULL);
-	if (ph == NULL) {
+	pio = of_parse_phandle(np, "pio-handle", 0);
+	if (pio == NULL) {
 		printk(KERN_ERR "pio-handle not available\n");
 		return -1;
 	}
 
-	pio = of_find_node_by_phandle(*ph);
-
 	pio_map = of_get_property(pio, "pio-map", &pio_map_len);
 	if (pio_map == NULL) {
 		printk(KERN_ERR "pio-map is not set!\n");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
