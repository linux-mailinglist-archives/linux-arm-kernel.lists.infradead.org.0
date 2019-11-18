Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A7C100452
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:37:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksARTpNh9fB/0Oml8tmfxVuPawOLRnfRSmCQ+QIflZI=; b=RbQST0cdx4siHQ
	J3kIumx+adn5RTqzHBElp8FU6IX/JTEPhe/tdplNM/lNRREwDuVJYQiayDl06yXF6YJQzqNnwgWe9
	MWt5BjYYX9w+28fJUUgTx92d/hKi1qiFf082J8P7PkagOJ2EUCTf3H65HHDFbMLE09F0Pa/3xJUyz
	HDEzUFhEDsRJQiUusPisna3v6N1w7JMFnqarZIUsX+vQSleBjH5DnvIf3cnmzScsrVxsAmh2i4Q2l
	I8VFjR47UWEJ4Y3MZNol/EqKzagxKJZU2VWpTB2+QF1+O9JoUufEdXYWGE2TPQhnJcxWZpoT2Wn6P
	YlTzEw13juh5xQ2IuJjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfKz-0006p0-Fd; Mon, 18 Nov 2019 11:36:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8t-0001bs-G9
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id z19so18382186wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zHMD7aDRcAnceTlZ0tE45j1n7viMV+uwJbkB9Il7bT8=;
 b=Db6euGnEfzB5H/iTyUNURmUloFyq903uV0BYdRSFgVz4amYzVi2dv+0jshKv7P41xb
 sruMTYeeiVwmh+JE265ApF9BX20HrI+c2BUx1ZXojrl449QK2WGXQKWVagHUYulZg9sa
 l2hwnnX+fMO9v0MEfaKICTs+9LISR/3kZZSdE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zHMD7aDRcAnceTlZ0tE45j1n7viMV+uwJbkB9Il7bT8=;
 b=jKdP08w2T0Tc0Ds1RT1NrTEaIvYFEQcHke3aj5ZbByhcqh7SDXC81REAFfSsAHOmUR
 MKY1Yett/oi6WI7NgxrvkTHgvMO6uuYP0+jk3RiJVtmKW7UVHVnaYNw9Za9PKnw5dLpw
 R0p7PGPvOmQupREa77uLnFEcWBf/CkSx/GRZDX6vZ0L1GzWZDqT/2UNAO+0uwUZPkTsT
 zYyuw6Jl44c3X9UJfk3evRTShkFS7yLP/4+LhfMzZphmPOqMzwhZrKvsO2+/AsLKgNQn
 z7ePadGlOXPyv7dCq8BNXucbAjU7nmCJRAKBYt1BbtTNoHe6akM/8Vw/4N5jfuFD3yLC
 vN9A==
X-Gm-Message-State: APjAAAVMCIiXIdL1x2Z6Szqfdb1hx1Hbm6ZfmSbSr82eaCegN/sEGn9S
 hALmgq4BQyLIeI1NsLRMdJbZAg==
X-Google-Smtp-Source: APXvYqwMMHzUUPCd/OFuPAlEujB+DVFL+n+r5M7zPZa0exErgxvPNfo7S9ywHMDhP1IpheD/ml6g+Q==
X-Received: by 2002:a7b:c768:: with SMTP id x8mr29729945wmk.26.1574076266012; 
 Mon, 18 Nov 2019 03:24:26 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:25 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 41/48] soc: fsl: qe: drop use of IS_ERR_VALUE in
 qe_sdma_init()
Date: Mon, 18 Nov 2019 12:23:17 +0100
Message-Id: <20191118112324.22725-42-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032427_573347_1E85B56B 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

Now that qe_muram_alloc() returns s32, adapt qe_sdma_init() and avoid
another few IS_ERR_VALUE() uses.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index ec511840db3c..5bf279c679ef 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -365,16 +365,16 @@ EXPORT_SYMBOL(qe_put_snum);
 static int qe_sdma_init(void)
 {
 	struct sdma __iomem *sdma = &qe_immr->sdma;
-	static unsigned long sdma_buf_offset = (unsigned long)-ENOMEM;
+	static s32 sdma_buf_offset = -ENOMEM;
 
 	if (!sdma)
 		return -ENODEV;
 
 	/* allocate 2 internal temporary buffers (512 bytes size each) for
 	 * the SDMA */
-	if (IS_ERR_VALUE(sdma_buf_offset)) {
+	if (sdma_buf_offset < 0) {
 		sdma_buf_offset = qe_muram_alloc(512 * 2, 4096);
-		if (IS_ERR_VALUE(sdma_buf_offset))
+		if (sdma_buf_offset < 0)
 			return -ENOMEM;
 	}
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
