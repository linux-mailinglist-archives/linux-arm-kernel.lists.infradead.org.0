Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B886100454
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:37:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhYrvMLj04NqAQnGmL2tMKu5FXTooTC8w3mVVR9YRX8=; b=CdLZ3tRTx+qSVZ
	/oA0+s/GXsh5DnYXqQH3+4l76BzDl2dRq4S0CsIjhtPTPbwQ5EbymkOBI9NxGklufGHQvtR/AcJwJ
	q9WOEdz4T/SPDJFM363EGu89Wp/vCwL/xujtbUaw81nRhhTCNmIYUjQwRR6mL488gxtGaxyMo7CV+
	MRIaBxSR3wUvcV0IkJGfIDc+BKcvlWsydxd75LxLkLFJj2UgNWBtasHYJ93DzPUWHtN1qUSo0cBYU
	A25VMytP6S5x2WIXDdb/Yxzgy9R4vA52F+hOjllMsvGQ9wWZSllYZcTevutHP6BVkDOB0WJIZbSxv
	0+iTvbVVFKWdrZcBnBSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfLT-0007F7-JJ; Mon, 18 Nov 2019 11:37:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8u-0001cs-KZ
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id r10so18999639wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FL4wefDICHo32h9247H9jmqyY6zv5MUtAqMoiveQx9g=;
 b=E4AHDjvC6aXMNQjRveC5f6E2vzA0LBGQPU4cVhU95XHEvW4ndN2XtxJT8GKavd70F2
 jC9tRDlotOojTjdz6tbnx1hk+e6LRNypVnQPbIF4Bep2+cKjOdMAyk5VimxdRAI1phcT
 lwP/3vwBXv7QrZtV8x00tERfMHg5v1yR1r5Os=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FL4wefDICHo32h9247H9jmqyY6zv5MUtAqMoiveQx9g=;
 b=gxHh3J0uFbpn1MoLC59rtOT+X/6FjP2v6hCNxIKXAgtKX4PATN5kiZSoTPLvlKXkNJ
 yRPaKd0+FtAiHzJx/mrG9NClbTyoxFLybaExzCO6nqeQCwsfVXcU9O3KcBUJdNT7j3nV
 kEiIhFgVa0RQkDOxE1NPEW+MXoiL9/+NPOk0JgrTyYAtURIIXNcGUylnWTudflU0b8EC
 VBOfFM3DF/Um73q7mGu8RSvVzLw21GhFOkW1+cUn2+v2dmK+JWmDL4z98KKlmQIewunq
 6EB22F5H8GGVGhT6D1o7ONShCdqhqxY1aodCgHiyXbSgy8BFDksWEnAnQQp27HXcHe2y
 /6xg==
X-Gm-Message-State: APjAAAVb8Pekgf90PgmZP+ipcPIDWFuGwP2L+ZlPRiJYkX8/4yZwAzXu
 fM/pR4zyKTez3fL2Xnlp6zuItA==
X-Google-Smtp-Source: APXvYqwHH2szYVNaS4MG6r2NeMu4AnUDfPLgQecmFMGcPhOZDZXQ80z3njZwNa52cVw6dP6X8ZlqQA==
X-Received: by 2002:a5d:448a:: with SMTP id j10mr21126896wrq.79.1574076267155; 
 Mon, 18 Nov 2019 03:24:27 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:26 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 42/48] soc: fsl: qe: drop pointless check in qe_sdma_init()
Date: Mon, 18 Nov 2019 12:23:18 +0100
Message-Id: <20191118112324.22725-43-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032428_828475_C8E2F7FC 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
