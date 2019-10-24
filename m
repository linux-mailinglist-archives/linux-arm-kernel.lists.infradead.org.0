Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C468E385B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p1Y3grck6brgIuxqCvaSnCD7Yws+FQaJCCLUNqBIfv4=; b=tyHDCLvswzLP2WIeudm+9oeoI0
	pBXHBNH6frsC1V9k/+6NGdExFsD3g61aBwgLn/3ZG8o2jdRhYeEJbxI7K/eG9twrr1CqW74Sw625x
	YMg4BTwWM3+bseRP21cJvxCgCoZPHqIWTcHWNpuyFcG4Pz0HQldH0D0Ugl/koHhOCZOB5hhD7yDSv
	6+OpOVPQAwAF/28PlxBlxaFnHt3xOlFjp2hKrKVHEtXDJj3vJaWD+PFXB+ditjsizyg7Q+9QIrzvF
	9sEXTeiFRkdnuDoheLx25My4vMkC8NeUJP9zeEvmudTxq1kWyyzv5hMDSenprx9NCa1o6jpBgFR6J
	0EkgHWPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgB3-0000TQ-Nv; Thu, 24 Oct 2019 16:41:33 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg8N-0005Pg-1z
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:38:48 +0000
Received: by mail-wm1-x342.google.com with SMTP id c22so3259700wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+Uje5yZA2ldJsbsoiBPp+JyZjTmn5fr8PAwcjGY2GnI=;
 b=DQl9V900fqGUpTL6GCaKfkeZ3gpfIHFqAKSX3ufvAjrIcUCC99G8QrABRgrFAHr84f
 zXLGkBQbvxYo558DCuJqQRDDXaj2qphtEatUBS+Lk2L/kgUEZOlNLKkQr/2VGOUirh4E
 6jKdZxmOXPYIkjq+XUBdV+4Kw/ot1PyjPtVGHPHjzWvr5e5pNz9JmDdPSIPFVB09IPWO
 J99BmaTltlCpMUovCATgjqDRfUheM9tsvnCGce4Ysz+isq5zOjxTekh7k4kElKxW1h0I
 wSMBV1bRCLq9eaApiDlolzZZeA1p6It53pyezLs2vAm0LSkxnBL7yVJGV/ov+1Xf6Njw
 Chtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+Uje5yZA2ldJsbsoiBPp+JyZjTmn5fr8PAwcjGY2GnI=;
 b=Zi38Y8Jq9AQAHR5uRYnJL3O882CIr93UX+FlXlaLFDsqCxnWnf3JatgtuuNT3aX6Yz
 mUK8cd1EQgsqO5u4MaFfgB7x7TnkNyb4dfzrlmBkBynfxcC/k85Esezzi+YOj3SjKurN
 trObCr2o7lhHwp5MBOmaKNx2jwzaDCFRAhCuVEsZgfgYsw+RGpI/5sJa093trjadX+Gc
 +KDQQdJfDGnt54z9zFKudAQzWSjm/57JA77TME8zchXFqVGMPTptgTbIC43u/cofC+3E
 tFIeUZ6mPeU8XUVve3L8elxQtmuu7IDoXtc9Zw+PeWJoIsD29GQbKsQG3VmmMeHbWZE5
 4TZQ==
X-Gm-Message-State: APjAAAUd+cP2vQN4FkDT5Q+1GaKm7vFpyi2aPvRyN/uahNj8r8QuTR+e
 dd6ROJYcvqR0eRUICIGLAVEKsA==
X-Google-Smtp-Source: APXvYqxlMNsjCTwkEt0d7L6AsHU/jq7MCFgUCZONkNBta21bcHrPhdZtg5MDI/XxzWmIHo3m+xvqdw==
X-Received: by 2002:a05:600c:143:: with SMTP id
 w3mr786098wmm.132.1571935124805; 
 Thu, 24 Oct 2019 09:38:44 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id 6sm3446175wmd.36.2019.10.24.09.38.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:38:44 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v3 08/10] mfd: mfd-core: Protect against NULL call-back
 function pointer
Date: Thu, 24 Oct 2019 17:38:30 +0100
Message-Id: <20191024163832.31326-9-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024163832.31326-1-lee.jones@linaro.org>
References: <20191024163832.31326-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093847_156343_0DF98573 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lee Jones <lee.jones@linaro.org>, baohua@kernel.org, stephan@gerhold.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If a child device calls mfd_cell_{en,dis}able() without an appropriate
call-back being set, we are likely to encounter a panic.  Avoid this
by adding suitable checking.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
---
 drivers/mfd/mfd-core.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
index 8126665bb2d8..e38e411ca775 100644
--- a/drivers/mfd/mfd-core.c
+++ b/drivers/mfd/mfd-core.c
@@ -28,6 +28,11 @@ int mfd_cell_enable(struct platform_device *pdev)
 	const struct mfd_cell *cell = mfd_get_cell(pdev);
 	int err = 0;
 
+	if (!cell->enable) {
+		dev_dbg(&pdev->dev, "No .enable() call-back registered\n");
+		return 0;
+	}
+
 	/* only call enable hook if the cell wasn't previously enabled */
 	if (atomic_inc_return(cell->usage_count) == 1)
 		err = cell->enable(pdev);
@@ -45,6 +50,11 @@ int mfd_cell_disable(struct platform_device *pdev)
 	const struct mfd_cell *cell = mfd_get_cell(pdev);
 	int err = 0;
 
+	if (!cell->disable) {
+		dev_dbg(&pdev->dev, "No .disable() call-back registered\n");
+		return 0;
+	}
+
 	/* only disable if no other clients are using it */
 	if (atomic_dec_return(cell->usage_count) == 0)
 		err = cell->disable(pdev);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
