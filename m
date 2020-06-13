Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 711611F85D2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 01:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+YumFBNfIV/HZ1xHr3fAyEqCoHpUfQaNlkecM117iV8=; b=itO
	zq7jEoJ/RXpqU6WFbbZ8pzdYTGUYlAOuhtgya7qX8lZY9OpIZ68rIGvJ+xCr0eaafr4R/b3rJET21
	1nQPIGpCoIFjUlBnET2FSAASL4lQqxAMGWu19rgWyjOHUJunXHdvof1k/piyPVRcqJHrasBxvu08x
	jGzLwv02jf3C0leRtgW29ERRbhfw7JXR7I3T5Y2hfshSqrCNTPZQBlwUUUvUeEt/cpgosMCkLrJDy
	mIrqyJmcEkq5PFjpaFvPUeBTblgWTqtQZ5HkzW+fuW8mhieCWEzZkSAOjr8FEeheF25jQWv7M5AtO
	EM/zuwza542tX3rLjgQBZ2uIJLT3nOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkFGp-0000J9-VC; Sat, 13 Jun 2020 23:09:03 +0000
Received: from mta-p5.oit.umn.edu ([134.84.196.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkFGi-0000Fx-Gh
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 23:08:57 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p5.oit.umn.edu (Postfix) with ESMTP id 49ktZF54D9z9vZ1r
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 23:08:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p5.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p5.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w9mCcInDM92j for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 18:08:53 -0500 (CDT)
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p5.oit.umn.edu (Postfix) with ESMTPS id 49ktZF3Q0Mz9vZ1k
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 18:08:51 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p5.oit.umn.edu 49ktZF3Q0Mz9vZ1k
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p5.oit.umn.edu 49ktZF3Q0Mz9vZ1k
Received: by mail-io1-f71.google.com with SMTP id n123so8726794iod.17
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 16:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=bqeKwkOk6XZo5v2wD5bUoMhkkwGMTZ2YIiOp5s0J3EI=;
 b=blYeLB6ruy/BG0h+sr5PZC8DoM0/i2T2Yvh9NEaV9hzbNZD1SDp9DY8c6cGGW/AAT/
 39f7Fd2g7xUEK781SumumsDR8PTGMWjNkPMgb8rsDjymEeiJO+9lbMyZJn1wG9UjuiMb
 /QXZN998+U3zxGn1RCQGoxuNoYt+KjginABbTtg/Sj4aFeSW0C1XTY7YH0O6ThyPhE2E
 KTCIqxnZf8fr/NFJimQ06vaP/Vq/HJxx1HEiBl0WS0OYT0FBQTojqzpingYrxbBOOaWr
 ktfhq9wtBiQAw9gz3W7hGuQRUieM5kIlPjn3HaDvJrMU+bJ1swi6J+dcnxFdIf4lSuFT
 8q+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bqeKwkOk6XZo5v2wD5bUoMhkkwGMTZ2YIiOp5s0J3EI=;
 b=tnAsKs6z+HJeUOaIoA9YSaS+hcyKrCT0xg5B+jAEVWwHGNc3nVG0TQ+9FbG5jupkii
 1NZHaqmEvZpxx4PLUt0rGKp0ZRX5tkn0PPxKQf4I/GvnT3GFhORI2aTjV8YNVcuqNRDF
 BcpLhyGYwi5kuQHm9oX6wSi/tDCGXx2Tdrp9BjIQpD+Z6HMzorNytPqZzCIi0amDVpyZ
 eeG3/LU6q7X2kDTvplAtfZ4+onYiojCaYrt522SfWvqJx5XPumPjD61MgyTkSdwSdgqJ
 xXw64HQXV4qCrZHJSGDfsPJyphL/KsAzlZkYYgMWQ4FvRboWZlqo503gnaJxb733XwlO
 MSkg==
X-Gm-Message-State: AOAM5322KMMG8J3P9jTExZdjMTVXyfH4QVjr/0AcwNEoJBacVLAATRS5
 PKysK2lQXurhcuy4ZfSzPUlnVRHavw6+i2MEHT/UQUSFFJafw71x9QPma6jmLsnZTxgwrf9/9/b
 molh7IYkwhLdh2Kb1juURCL7IJYvKvEEWZE/n+yY=
X-Received: by 2002:a92:b00e:: with SMTP id x14mr18850432ilh.219.1592089731319; 
 Sat, 13 Jun 2020 16:08:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxmVCe/qnocqMDuI+rUSn33JC0xwAkRz8hA8NtZAbzgXhzeCZTSmGkdB8UI2YxFK+JAFiuFRQ==
X-Received: by 2002:a92:b00e:: with SMTP id x14mr18850406ilh.219.1592089731061; 
 Sat, 13 Jun 2020 16:08:51 -0700 (PDT)
Received: from qiushi.cs.umn.edu ([2607:ea00:101:3c74:4874:45:bcb4:df60])
 by smtp.gmail.com with ESMTPSA id y5sm5668155iov.3.2020.06.13.16.08.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 16:08:50 -0700 (PDT)
From: wu000273@umn.edu
To: kjlu@umn.edu
Subject: [PATCH] media: mtk-jpeg: Fix a reference count leak.
Date: Sat, 13 Jun 2020 18:08:43 -0500
Message-Id: <20200613230843.14109-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_160856_636689_51231B95 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.84.196.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bin Liu <bin.liu@mediatek.com>, Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Rick Chang <rick.chang@mediatek.com>, linux-kernel@vger.kernel.org,
 Ricky Liang <jcliang@chromium.org>, Hans Verkuil <hans.verkuil@cisco.com>,
 wu000273@umn.edu, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Qiushi Wu <wu000273@umn.edu>

pm_runtime_get_sync() increments the runtime PM usage counter even
when it returns an error code. Thus call pm_runtime_put_noidle()
if pm_runtime_get_sync() fails.

Fixes: b2f0d2724ba4 ("[media] vcodec: mediatek: Add Mediatek JPEG Decoder Driver")
Signed-off-by: Qiushi Wu <wu000273@umn.edu>
---
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index f82a81a3bdee..097f0b050f67 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -710,8 +710,10 @@ static int mtk_jpeg_start_streaming(struct vb2_queue *q, unsigned int count)
 	int ret = 0;
 
 	ret = pm_runtime_get_sync(ctx->jpeg->dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(ctx->jpeg->dev);
 		goto err;
+	}
 
 	return 0;
 err:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
