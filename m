Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 312CD14477
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 08:32:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RV+nSTv2KnVSQjoAjv/k3XyCZTyAPJoJsBMg+4AmCc=; b=qhkoLHDn/4ih2q
	qCkvmzlGx24UsVvfT8l0ez47fj0iOpwzEumbPTl3DbIebrNPxrf/Z0Zl8o912gsIx+f5JmncgvfEV
	SMTXcbe0VXGgkPqYRZsj6SUNzc/tAqDVW3j7woHT7eoNmfEbdjt4RRQRsnCzW8LQhjV+ukr9Nk6ax
	c+p9ef+KugIjfJkWqV66t6Yu5m539XfId2y76nyekWentHboJCHjD0msMSLYo0DtmEkEvEzjWReHw
	pJil8+XFYARxXrMdV06UPNtlLGDvKy2kpvJHKFkTcMyQSHomZG1/8UGfqYlsRMtZymGkPViaFWOai
	/RMhVS0Bu0qnHwmVO/IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXB0-00069C-OD; Mon, 06 May 2019 06:32:38 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXAl-00060o-Tp
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 06:32:25 +0000
Received: by mail-lj1-x243.google.com with SMTP id y10so3513457lji.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 May 2019 23:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=el3sf+eVAf26QOosyBcNCXIzTOxzBWZ375jbr300XAs=;
 b=aqj4rMeXlZOxdM+TSTaFF+bNQhTNejYppPeARembAKomnpv+HHQlIsC4AG2EoLzK/F
 D6YXNPK7UwZOgjE/X+bkG1eDYeARNlQfJpPqEZZBPvHk+4X6s2iIchtfn5qH+Kdl2+GH
 zJMfrK9tq57uOeZN83bXf34mMsSsfLSr40VNWt52/236sdIATlrrRpcYXbSie3+OXAEl
 bPN1odKNFwUilVVM7NVAYvAJ4UgcUZRI5/oCQROj+jsY1lORxOJiooUVuEmEK4jrl8Lw
 WSjafWJ8fh9pZHyEp/p4OUqwk4o5KG+wGhUeoj9KRrxPWnr+5V1iokRefPbpDXUWavsg
 vAGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=el3sf+eVAf26QOosyBcNCXIzTOxzBWZ375jbr300XAs=;
 b=t7FODy+Dfh+MPyoz3kB9gWxlD8KEtQkMXwaxqumPDEtLXGAj+KLTx0D+S+8oIqMIZr
 iDSmyjWZDWyBpiF1aSu1u51JeAOiUUNAZgNygDSJIKQCrAVyxMdBs5PNQTDiFUHRwSqE
 Dof66v3hIKW2Y61NWTp71IzyvzddioqJT0/So34BOkk/nigrFruJ0h30Q5ibp47k72+G
 c8J88XYO4PkxiHj5mFUSm+hLB4cdJf+i7ywfAGeHjxgNUd914V7Cx30o8GlLLd8Pq5FI
 0lLPFGVIKkopU1GAKVnUH8xksYzKRtgWKug1Pgj8rLB5BlklBYLmsjrvFJ149/uoITdR
 oLVw==
X-Gm-Message-State: APjAAAWqYQj2ZhQBzXhJhkkuFJmForics910Q58gd3m/VQMjR72A0iR6
 4ueAjlF1swJ+TsIOP+41PvcGIw==
X-Google-Smtp-Source: APXvYqyHdgWASHhzJEh12M9W7hQFbTMObu4dnJ0txYTkhEbVzzprM6xWto+iz9WbRm/Z+4lsztkgDw==
X-Received: by 2002:a2e:9d4c:: with SMTP id y12mr12343295ljj.132.1557124342074; 
 Sun, 05 May 2019 23:32:22 -0700 (PDT)
Received: from linux.local (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se.
 [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id j19sm2122866lfm.29.2019.05.05.23.32.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 May 2019 23:32:20 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org
Subject: [PATCH 2/3] soc: ixp4xx: qmgr: Fix an NULL vs IS_ERR() check in probe
Date: Mon,  6 May 2019 08:31:08 +0200
Message-Id: <20190506063109.3072-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190506063109.3072-1-linus.walleij@linaro.org>
References: <20190506063109.3072-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_233224_041370_05407353 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dan Carpenter <dan.carpenter@oracle.com>

The devm_ioremap_resource() function doesn't retunr NULL, it returns
error pointers.

Fixes: ecc133c6da60 ("soc: ixp4xx: qmgr: Pass resources")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: please apply this directly on the IXP4xx
branch where the IXP4xx rework is pending for v5.2.
---
 drivers/soc/ixp4xx/ixp4xx-qmgr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/ixp4xx/ixp4xx-qmgr.c b/drivers/soc/ixp4xx/ixp4xx-qmgr.c
index 13a8a13c9b01..bb90670ec160 100644
--- a/drivers/soc/ixp4xx/ixp4xx-qmgr.c
+++ b/drivers/soc/ixp4xx/ixp4xx-qmgr.c
@@ -385,8 +385,8 @@ static int ixp4xx_qmgr_probe(struct platform_device *pdev)
 	if (!res)
 		return -ENODEV;
 	qmgr_regs = devm_ioremap_resource(dev, res);
-	if (!qmgr_regs)
-		return -ENOMEM;
+	if (IS_ERR(qmgr_regs))
+		return PTR_ERR(qmgr_regs);
 
 	irq1 = platform_get_irq(pdev, 0);
 	if (irq1 <= 0)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
