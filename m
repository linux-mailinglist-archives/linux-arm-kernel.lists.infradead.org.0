Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72B7EE711
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:14:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fJg+acMjBV1B6i54F46Mgldn2rqzVYaXg/AtVH+vKSM=; b=avupy+3vLidzqoFg1q0Z5+OGn4
	vuXb+eEOn1smnFlEnYN6yddbDyh8rU5F17RKp0ZhdsGccN3ePtWsE0U6c/ZcWW0bFIyqgbKvU0gmu
	Q7tkdTEgomSsjlTjI+mcnb2M9tYTAstLDcxP4CFrA5wemT18WTZb7TJPDTSzMz2Yt9agLwD6FWlu9
	DGbDQA3yxndyR7mjF6CYE7EAVU0GKSJFbq2vdJoR9HRtl6S2TNTExv/Gw2z3tIkuh46rIzEzDmzVv
	BeI186h09n97UQ8dT4CPs8yKcyAy8jxGPc65kXO5R9NeuO9MkTws6dGLog96HLBJC2gZh/WGajgwV
	7zP1trqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgra-0007jI-0y; Mon, 04 Nov 2019 18:14:02 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgqX-0006y1-DV
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:12:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id s23so8479219pgo.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6tmVV51SnSk2HYvVHQW3Mgj1F0ShkbzQvD8YUBsAymU=;
 b=sCW7KUGIc3HUE/GqsL9BzjnT6sINFkDABF3L4NVTNMpCiVH7pENhwh6OKQKYZB2MbO
 CjMf6NICEFUuCou6SNeKlkeuiqvshvVGcVvFrIxz1zL3M/LRrF1+XVQDIzmxjh1YS3MT
 B43VjLhL7ZiuVqm9Gm+zPezFN+24EEBjkweQ0MKJgSIhhLvVFoumq5DQeSxf7ymH6HNW
 FdzJPcQ2hjawP9UTYMeFbbQCUpztJHek3Hyd0ryyG3j65Qt4BH2RYCzlbO+fXpqSFcv5
 ZVOAyNlYSLQo7tztXFvQj/SS9f/Bq8P9d+//OYRZQUY9wyJfqoiJJomD73hO1OySYycI
 RBSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6tmVV51SnSk2HYvVHQW3Mgj1F0ShkbzQvD8YUBsAymU=;
 b=DT5FcRjKJE5h5vJmZ7hgGrHX6SwdAwV58V+48nrST1xCaEZSJfxGohtu9vcHBVAHc/
 GIOuwNIoBgjaTFdX/+PsZrl+uvP/hOPLCKIdkHKuDuuQBNpArKOvsw+xw0kMttx7q2EK
 FaNVS1KOjvud/grGZHxPNmdEJHofbAy5MfdXKpFOKydumIx8j9nzfSHgDfjDSxkSB2LK
 FjrAsGEmELj5ZOqdFpuyip5pj0sYIzEBKjNbCyg6Afk/ivRvbOck2NVO+98o9h4DSpkq
 IETR1whkwbiK+k/hGPk2FPk1Z3CAO+XA+fhCUhy8PP6DutG/ZnDjOwJZgtfo9WJrTv7D
 FXjA==
X-Gm-Message-State: APjAAAWNZEmbkAfps8LQHJxxy5fHPNxo77c71W8Ki0R3xnRMdF3pm9Wg
 KdlqHs7GBe21M97i5YXqzJPE1A==
X-Google-Smtp-Source: APXvYqzXup5kFh+zU7dXgRCBdDuKqJJYbpQ0F3tarAJNBFrh0YuprUsd4gWgCWKC1AjnDuI55Funqg==
X-Received: by 2002:a63:5f44:: with SMTP id t65mr23902892pgb.124.1572891176673; 
 Mon, 04 Nov 2019 10:12:56 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o12sm16149520pgl.86.2019.11.04.10.12.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:12:56 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 03/14] coresight: etm4x: Add support for ThunderX2
Date: Mon,  4 Nov 2019 11:12:40 -0700
Message-Id: <20191104181251.26732-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104181251.26732-1-mathieu.poirier@linaro.org>
References: <20191104181251.26732-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101257_451506_515B6FD5 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>

Add ETMv4 periperhal ID for Marvell's ThunderX2 chip.
This chip contains ETMv4.1 version.

Signed-off-by: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 4cecabdd051b..8f98701cadc5 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1529,6 +1529,7 @@ static const struct amba_id etm4_ids[] = {
 	CS_AMBA_UCI_ID(0x000f0211, uci_id_etm4),/* Qualcomm Kryo */
 	CS_AMBA_ID(0x000bb802),			/* Qualcomm Kryo 385 Cortex-A55 */
 	CS_AMBA_ID(0x000bb803),			/* Qualcomm Kryo 385 Cortex-A75 */
+	CS_AMBA_UCI_ID(0x000cc0af, uci_id_etm4),/* Marvell ThunderX2 */
 	{},
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
