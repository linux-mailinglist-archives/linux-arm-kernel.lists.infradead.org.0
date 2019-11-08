Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF72F4CE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:14:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhYrvMLj04NqAQnGmL2tMKu5FXTooTC8w3mVVR9YRX8=; b=ppmtmhXopN7FuQ
	ufAuSS11ECfJMhslJGvsmgxMystUyH7ue1byYyppZbfd/TfStmVpYoFgW+pIRcuIsABuN8Ato8+O0
	tYmgHj7+beEU8K4Uzlja2CM3O/tFDCzZcTGlbtvw/w4OIQTF27cMARIfF7HCBAgMhfyfNB/pqj/ae
	8pBuFv+Ym6dB1xdoBvsdmJAe6bVJWqrXd3nG9Ir/EYfKXMka65/dpQ+f7tz238IZ4yQF/jxsStHxH
	+WpuJGRFhcZ4sjjMMdJxz9O+z8kmos8TzjT4nmR4GSdxFnNx0nkhdBtJGKM1Vz74CZrFsA9/2JG0D
	bwyolAMuHgHfYqFOn3/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT45p-0000Rf-6G; Fri, 08 Nov 2019 13:14:25 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3u9-0004s0-1l
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:24 +0000
Received: by mail-lj1-x243.google.com with SMTP id g3so6105206ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FL4wefDICHo32h9247H9jmqyY6zv5MUtAqMoiveQx9g=;
 b=WM3db+UZNX0xYRn8xFInkWCZ/gGBxlESeid8dXGQU2p17G2KmYfmQKEJM/6nxdjVkz
 dcCfwIBMRd3gygzYVu0IHJtJgUPU16y1N7AQMDT6+xP5d6gPmR+R/fMCMBXpDEu/jhZJ
 wIS2GKrKi2LdTuVlyChuB3CdPaAYkTSGlI7eg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FL4wefDICHo32h9247H9jmqyY6zv5MUtAqMoiveQx9g=;
 b=Mskt0hpM1+M2vGmYLc1UnbCA2KItj8sB1yCNP3/zGFtRB4xaceyhSJo1vO7mL1J5Pw
 vNg3yyUU4pEl7uzmXEL/RXI0mABQNbZc18siY39ZcQw8SydT59FhCay3AxigIVCGCay2
 tFhk0LJSLYckfybfAJE63l6aYnOpoq8sCnfb8JBt4gP8JVzTvpUEClSAjy0Cqe5nAAX6
 9N6sfo2NCbXVoiwj4erVoG0v8dU82YewKRWhfWeQHTgj2eMCsZ9GSvUQtlVh7zD3jf57
 IH1ADohRh09aqn2VtERhzAB9XY6qeRm/pRvzJujI1Imc6QgOqDj6xMurh8VXjwicuKGd
 RneQ==
X-Gm-Message-State: APjAAAUJpfR7yViNw9uz/UyvvfB9Ld+WziQK2k0s99dwWInQDJzuNvl3
 LsLzXqX4+dv8EOvKoRbheJ4pXw==
X-Google-Smtp-Source: APXvYqzCkS9lqjETR7JbwYC8m9Tz96BZoapb1R12xn90SEX0h1M81nDkrgY6B1mLpdktlcuraWeZvg==
X-Received: by 2002:a2e:9a53:: with SMTP id k19mr5922502ljj.246.1573218139469; 
 Fri, 08 Nov 2019 05:02:19 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:18 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 41/47] soc: fsl: qe: drop pointless check in qe_sdma_init()
Date: Fri,  8 Nov 2019 14:01:17 +0100
Message-Id: <20191108130123.6839-42-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050222_572466_0A6B696D 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
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

The sdma member of struct qe_immap is not at offset zero, so even if
qe_immr wasn't initialized yet (i.e. NULL), &qe_immr->sdma would not
be NULL.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 5bf279c679ef..96c2057d8d8e 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -367,9 +367,6 @@ static int qe_sdma_init(void)
 	struct sdma __iomem *sdma = &qe_immr->sdma;
 	static s32 sdma_buf_offset = -ENOMEM;
 
-	if (!sdma)
-		return -ENODEV;
-
 	/* allocate 2 internal temporary buffers (512 bytes size each) for
 	 * the SDMA */
 	if (sdma_buf_offset < 0) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
