Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099BFDEA42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bJFpnyuhYseD4f6cmK/qRt0dJZBMSFR5GVZs0xTcBk0=; b=d9sfZIlPomRL8U7S5dLPqOZltU
	tkn+4yvUvvCWJc/fNmjQL3xhAxPHcEATathKHTqEs2WrsiY1EI/2CzGH6TXBxmiapnL2NFyH3nnCI
	6uiiZxvNAMtD1KcfIr20X1Q4g3qmdKdAszdNMfZmsb0LWEcdsn4L+Mv+WnIRBi4q/b5KhfL6sBriQ
	myzOV49wqM8qkJ+H7ai79Q17XM7YNKpcHCDeicXVZ9frGIdF46FrdXy2RLAnIykdExvc28vhFPo+h
	i9uY0uEdslyiWksDOdur6v6pPR0utNKZjNNgyxSrG5R0g2L8iphJXSpYL6cNKdObvSCJHAch1QR9h
	EKwwZgpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVPQ-00011y-Iv; Mon, 21 Oct 2019 10:59:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVOU-0000ID-3E
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:58:36 +0000
Received: by mail-wr1-x442.google.com with SMTP id o28so13410202wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OylZk9s0mis8tzuGBIwAaa88loW1Yq19LfmLj+u4mfs=;
 b=hjbd4jzPeI1PUWLlYV4B8LpdZp+xJ8qe9umoadGdA9E9h5uyWAn+m4H6FUYmLJdd4J
 0HxB57wjYo23ive7bR5mSTDVnyms+GgEFeZECTnwOrZlvN7jbloHloiEiUlKkISk4LIO
 osY7YZU9gXM6dy41N1p5yl3bu2LkA2fiuxLqwBQqjQD4IFUBxfKuXasoBn2UcVT37Z79
 8s9spHNbvhlSqirIuhbUceepbMrutWVFNZ4PGKN1ypMAPZ1sC2zc2EueBqoiG1YbJP2t
 UcbZenefQ1KTENMJJ52x5nF8UKFG8jUBzrieioNMqQE8qMh8wV6zhiXRAdpnG+PSa4ml
 fbQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OylZk9s0mis8tzuGBIwAaa88loW1Yq19LfmLj+u4mfs=;
 b=i0CJbmBph6W8CRH5qM7jHbP5z+usJPbtacPjD4ixN5uPFk3rIxkq4rEo8Lq3qcToam
 gD6StTBmoqogxhicdKzivBbDmxaJUbSGTU6QgnBr5+DGp71ERCQVjURrKH+6/uhvp0R+
 HGLzUH7m0p2tWMNFO32tm2M5V60JIENxViQWxtfZNq+j5IhEkJggk4yk4ULJh09w6oyB
 /TsAnLKyjJkNGFzh64ll5dKvM+eau6kIvGpbpSQQGsmBKOWS5iFkXde5OdJfbclsBkoY
 NTcFVSvRgys8BxauiOl6K91vNG6aDFhyb428xXcKXcn+0N2s1CiHVt7TAnmfuJ52sonW
 nnAg==
X-Gm-Message-State: APjAAAXlp4RmTWGO47l470ypudUTMA/wACFhdpvpnh5v4V5B3h7dC880
 O1S3XgAZ4grgSLsWGMtsUaG0WpTIL04=
X-Google-Smtp-Source: APXvYqxLywQVQYV53+QkKrhkhGktMMDXKUnoIKcMuinLHZJR/+FqsdQZzCdzCxFlcc4O5bj2Qqs5OQ==
X-Received: by 2002:adf:f004:: with SMTP id j4mr20804975wro.68.1571655512433; 
 Mon, 21 Oct 2019 03:58:32 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id q22sm12544289wmj.31.2019.10.21.03.58.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:58:32 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v2 7/9] mfd: mfd-core: Protect against NULL call-back function
 pointer
Date: Mon, 21 Oct 2019 11:58:20 +0100
Message-Id: <20191021105822.20271-8-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021105822.20271-1-lee.jones@linaro.org>
References: <20191021105822.20271-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_035834_179370_678A9417 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
---
 drivers/mfd/mfd-core.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
index 8126665bb2d8..90b43b44a15a 100644
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
 
+	if (!cell->enable) {
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
