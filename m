Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9309F4CF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:16:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=81UwloymLW7uenfNLo3Ix+XzW2xhp5URfilUXm/xlVo=; b=fcz3EGxIKnayHG
	DXl6kKogk0WHZmWxOfHqDaVQZSKHDwJms23OdsflLR0shw2NOQzhRgX4qvHcfYzsBgOgP44VoRSlL
	EdC9ypfcojYBGhdRsQCMu2I6NJquN0eNLxG/YZee5VG3VTkn5BCI4//ddQK+F4fUdhvcGZ1I8sc4h
	gqWQIs64qb7Mq1r5inBeQD8VzK1wkiHqtwIveV8p/bk7pH/sjmasfulpNIKbZ51s+66Ieex6jZch9
	0jd9Vtd1pCnUqODT+aMIFmdDed94K0PRIYHDZxdLWIFko05yDRRIq9ACHPKdS1R6Msl8+Eb8wApqm
	qIoHn/IWmUGfDZwoMrBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT47Y-0003Ha-0R; Fri, 08 Nov 2019 13:16:12 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3uD-0004ut-HR
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:29 +0000
Received: by mail-lf1-x144.google.com with SMTP id y6so4423572lfj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2QjvBFt/Ahp0rywmkIDhfkZ7dAuBAKpWua4zqIA54R0=;
 b=XVACoOOuXlxl4Cy3V/J8sGSeCCFw8ZKOKZ7FqB/K3JgCxUCJ1xCj/Mqawr8e2qIujx
 O7k1zBR8675/UVFNVWJud7B7gGy4eRxvGFDaQiIdBxLuh/UvxbGJ2jiZIbbPNPtq2kf0
 ZABUDJvpYchPCeIhdPhVBPmgejb6251Cuy5iE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2QjvBFt/Ahp0rywmkIDhfkZ7dAuBAKpWua4zqIA54R0=;
 b=E2QJ66a+bHMNrawkTTtlRkkvXCPwRKo2yr1Y8cofTkTv8BiR9eEcFubgrkgWMlFTZM
 VtFP66ylqDHqYBJ10MAES4M9eiti5AToL4WeIMQrClA4b1eKzvhyS3oq8bnaXFgoaX1A
 O2+1bhyiY3WIkOBnIIRtKVVjrl3+8pQbcJ9ZEu2g3TkaxZn/GpY4gkHRF+wbCSfodrQh
 aUfMJ8pcRgS/8HtZq1wCL0D9nScBJYrpr04LfPqL9geqlA17tenoGtxCndyV19tr5v7v
 8brKDxCJba5mZ4LNKU7QkOE+9/LcqjCsfwlUk3ez/y+u0pmDUW65TDOGZmGJ/wsiXce+
 5QYw==
X-Gm-Message-State: APjAAAW54O7YP/PMn8wPgCzPEIUCniCAlpTYgLApLM7lTKf/sukHCg28
 xZ0Ybe4YYj60Prg17yxxUyxH0w==
X-Google-Smtp-Source: APXvYqwScoFAHiImQMnrTZk87e9zBJh2EkwdHqWoi9bG9XRi4pfN3RXUv9ZB5CXwEIsQqOH7j53G/g==
X-Received: by 2002:a19:820e:: with SMTP id e14mr6605403lfd.29.1573218143917; 
 Fri, 08 Nov 2019 05:02:23 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:23 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 45/47] net/wan/fsl_ucc_hdlc: reject muram offsets above 64K
Date: Fri,  8 Nov 2019 14:01:21 +0100
Message-Id: <20191108130123.6839-46-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050225_645587_11A625C0 
X-CRM114-Status: GOOD (  11.08  )
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
Cc: netdev@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Qiang Zhao points out that these offsets get written to 16-bit
registers, and there are some QE platforms with more than 64K
muram. So it is possible that qe_muram_alloc() gives us an allocation
that can't actually be used by the hardware, so detect and reject
that.

Reported-by: Qiang Zhao <qiang.zhao@nxp.com>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/net/wan/fsl_ucc_hdlc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/wan/fsl_ucc_hdlc.c b/drivers/net/wan/fsl_ucc_hdlc.c
index 8d13586bb774..f029eaa7cfc0 100644
--- a/drivers/net/wan/fsl_ucc_hdlc.c
+++ b/drivers/net/wan/fsl_ucc_hdlc.c
@@ -245,6 +245,11 @@ static int uhdlc_init(struct ucc_hdlc_private *priv)
 		ret = -ENOMEM;
 		goto free_riptr;
 	}
+	if (riptr != (u16)riptr || tiptr != (u16)tiptr) {
+		dev_err(priv->dev, "MURAM allocation out of addressable range\n");
+		ret = -ENOMEM;
+		goto free_tiptr;
+	}
 
 	/* Set RIPTR, TIPTR */
 	iowrite16be(riptr, &priv->ucc_pram->riptr);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
