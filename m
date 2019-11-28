Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C1F10CB4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:06:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LoNZbqpcUsTbi0ivPZ4BP4pc8uyU1bHjI3IGt7g425Q=; b=TCLajxs8SweAgn
	7tRDK3UII8Ia0cZNgnTDUq51h8dpe4ZTSBTMN9F/B2udVv80mWatRPupXAvgHMDYJoCawUs3qmWLI
	WlXqbIg+Tdil2RHHR7xvt0C8/w9D+pcy/DNRFXxZs8dzvuTb0ZF1fNgM/OE52Y7P0sEKclyKAGfDh
	T+EzkOC/V0lSAUSxrWZR4T9FbT/f4521Fq9pD6C045KerFXDIpU6OLIy8cVw2CNFtF9Co8m+x4Ldb
	mG68iLOcvT7iIde9Utc8oybDJhGqjy0sLc66fSEB4Asdg2w0u0qwA3ZijcJbEicZPBt2/i2mcDFrY
	0hUhZn1abQauppwfGwmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLNH-0000lq-4g; Thu, 28 Nov 2019 15:06:31 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLF2-000157-Of
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:10 +0000
Received: by mail-lf1-f65.google.com with SMTP id a17so20229005lfi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:58:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A3LxCwaWF3+EjSkH3Z11+aFYy5ZGZLaMI8GPoISP0aQ=;
 b=h5Ofrh1lS1SdvEU2TywQndew2wv/s6SlshVIlXBQI587u1AT3EXJXpyq2oJdPtVTHA
 ffPQYYcE3fOicrEVwVc9YzvRFsFG48tQ72uf4CxV3GNrG6HUW7b3FV+oHlayfUO2uleS
 drOU4bl3A8RKImHPPcr3Gta017yms39ACmP2Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A3LxCwaWF3+EjSkH3Z11+aFYy5ZGZLaMI8GPoISP0aQ=;
 b=IATal3sIFxfrVHMXlwbZWceqoP0QJ7oA9dvqwdI/fJFG0M45xTnWT7LoNhK4uCBZ3A
 xexqj1kd9dUKqlNuj5RJoKjzQLEA8yfrSTEYLYcK5RAmAVg3R2gWlKAKF+zXoJssnLYV
 Xxg2GlJLT6OaCv8nbzTrxkP2LgZD2UWjCtlyLNKXXY8iB/qz2rcnTMEUjo0iUH1uySnB
 HoyL0xSjk86NDPBg9S5DHafWndY/XkcO7CWqxaMrx3ib5kO59XWfgoq8lb+re4bprcsa
 7G2m+ZyBvSINzHSeF0lgkcI+QyI+fVcQeUZdQQs7UMa2j0cXBWjOP89qUC+Vr2rQDkkX
 DN3g==
X-Gm-Message-State: APjAAAV7WoZ4ukqOBamPbGpdujf90QJsoxeEnR1i99+2rpHUFHKdkPLT
 BeThgbh7Pqlqq51BDxRwh3XsPw==
X-Google-Smtp-Source: APXvYqyficCStsKpAiJlZ+/UQRHEGEEI0ZQvcoo+FRiOWz4LSGBEVSlvdyU5SdjwjnSIc9iZd4E/Rg==
X-Received: by 2002:a19:c3ca:: with SMTP id t193mr19540921lff.40.1574953078637; 
 Thu, 28 Nov 2019 06:57:58 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:58 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 41/49] soc: fsl: qe: drop use of IS_ERR_VALUE in
 qe_sdma_init()
Date: Thu, 28 Nov 2019 15:55:46 +0100
Message-Id: <20191128145554.1297-42-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065800_911800_0F678D15 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
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

Now that qe_muram_alloc() returns s32, adapt qe_sdma_init() and avoid
another few IS_ERR_VALUE() uses.

Reviewed-by: Timur Tabi <timur@kernel.org>
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
