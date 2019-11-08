Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 020D1F4CAE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:09:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tb08JHneizceBh9LaEabLCVslQquEdKFKTQJA0plLQk=; b=B5gIbYvENaS/uU
	TN3wyMzmpEtGvrZUXw+34aho5i7lp5kKfIhoQdXxN/cP5ob6WUTP+7SHFWGzxYWrluzQHmVE+dKsl
	b7OUoQOX88dF+3l8byxiERKI0JDEHSXot2tDxr9jyFaRx5Bq7XOqD4JBTS98ZI79/jld1lFn4LZp2
	cmHo2mEKsQpE0HnX7s0wPxyLi9gChSAJj1XePidT1u8oucO4sn31HTt3mTPr7o4O6t+iDOH/p5X1r
	PqwFX/FTOiYyTscCS/QTN1oMGDlkkVwCerEXkPFtx4QnxiAHv406fU1xNNQOoQqEw5Swpx6MiZNnz
	ptyfG6anYuIiZ+BFN06g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT40S-0002tq-BD; Fri, 08 Nov 2019 13:08:52 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tn-0004aG-Jn
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:01 +0000
Received: by mail-lj1-x244.google.com with SMTP id y23so6101766ljh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:01:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/C1Eg1dR+pzbI0uF0+AzerXAuAR/n78tvkDzoMBSgLI=;
 b=e/P1lD7zvmjURhmsvbX23QE+8ASowwEgb4BpM1IFfQWI91Tr3jDWiq0X6CrLk99wVN
 mPk6Txdn0NvIKorqKDh7HBcWVDg2Ic5Yi9fVd1R5QMWlVvOdwlxoWhTPHcB8cInVr8Dv
 yoknf6mGfRANkmWuDMLpwcTHs5OfxaRyfaFd0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/C1Eg1dR+pzbI0uF0+AzerXAuAR/n78tvkDzoMBSgLI=;
 b=nDyxdm1L1zmzlnwbgxKVe14HrvyY8tj8H1cIzQthq5Kw8TWxNnsSDsI5qM7Dp29jhb
 dnHTmSVnJhLeAwGJlLK4R4/QgP8MyPonnXX3/J0InOvaGN0GSXTES//38CkSlMLzjNcR
 vaR2B+rUW7bOjj1Odtk+4ufWDPh+m9r/Q+lAMiNLechtOSCg9aAg29V3r1hSP2/Nk0ju
 Ayrd0XlqFmhS0kN+APo+WqqneEHo90OhVvZjcSllH3OEuNnU8pqtLigAm+qWFDGF77x/
 oK0njFBStDgrNHZAtD84IFm1WdcFGTJnWqJBqf7OjW20jcPESTEHISdErBByFRAZedKM
 pwVA==
X-Gm-Message-State: APjAAAURtCwv7e9dTUDXYLz3GLwTGTN/Rh/d5rKTkDMH2QvCIdeVitOh
 4r7qH13CWkJT4t9FdnvVW2WcFA==
X-Google-Smtp-Source: APXvYqxZ1oqYp4p6l2IsGiGO+a6bcfmX2jCuzyyob5hxO/rAt/CL2aEGqAw4ukWNphNhXQIN4rIjrw==
X-Received: by 2002:a2e:b5a2:: with SMTP id f2mr6611603ljn.108.1573218118236; 
 Fri, 08 Nov 2019 05:01:58 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:57 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 24/47] soc: fsl: qe: qe_io.c: access device tree property
 using be32_to_cpu
Date: Fri,  8 Nov 2019 14:01:00 +0100
Message-Id: <20191108130123.6839-25-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050159_785053_279C610C 
X-CRM114-Status: UNSURE (   8.66  )
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
