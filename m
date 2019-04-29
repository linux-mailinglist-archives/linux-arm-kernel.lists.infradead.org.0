Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B04E7A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WBPxLIgJA06PHAhl0ShHFwTNejzvfBm0V/bzukQlelI=; b=F8HK1YPpwXQj644yX6pnTZ8K0+
	0RSZ3Qnzx+cVakir1eRbetuXnEcSdJQwVTCNUxgBTpQOgI7zHT1zc+QsAdI0sO5qJM9hNfhM4m3WH
	Gi0KUP9mqgldX4z6j4Ke3SKQQvakNC8RfXlqc6p0xOGy2FH7bI9OPJRoxpZYiy3gThscWlvaZjIjE
	JA4TaARm9mt4CMKE7sq51wHr6zGyn5DpikLqdCdNqbLsooKrxP1Mf7vWCWS1e0138bBQ0Hjq8fSA7
	gCH6HEPNPVRRHmfuMfdmFhZH2q2omsYxYnftbYZXBxflsLMwBcafrznszTJkbzj9jOKNYomcP6Ol1
	0m7s1PQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL93Y-0002Vl-5V; Mon, 29 Apr 2019 16:23:04 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL93R-0002VK-4e
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:22:58 +0000
Received: by mail-pl1-x643.google.com with SMTP id f36so5307862plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 09:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4f6WrzyzuO2F1bDTPxHcLE3z/+pAjPfe9qLmvK4A6as=;
 b=vPpCrKUW2ez99jzndfqZtu6JNvWNanlUzH3AuveO0GSSRCCQl72+NIdUPDxp4e1j2D
 oR+KD27SMnporP7BtqsmFOHrHH48hM80JhZBbvQFxbgs9ZmuljJwGNsbO97maHqcUfjg
 8wSXcpfVKMB8tCe4gXP+HgKsW0HJtYjx0dBSpNwC87IzbXqY3gwaTJ7c+snUOwGxdTSd
 2zD9P9f8ZXZjyRLibwYBPF9JXLqNVcGKoIVvLYRLSDdEH/zokklEz+pbZ4uhjxbg/sSw
 527JDJwiLrfS+2iiWXbdKDp8JItn+dGur5RpDU6TA35z23hVVY64OqVnxcZtB9i0suTd
 njtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4f6WrzyzuO2F1bDTPxHcLE3z/+pAjPfe9qLmvK4A6as=;
 b=EjfnBznfzHM25lA3eZPoMHnFSxIbw6RTLwxvOWw7QHXbc8vQ9O1J3fxpp9Iwm9Iiem
 LHsg1WhhOu2y2/TmXb11W13O1xpqw0mxW4thr9FH9JfvNo45lBboAq0of76KG6e51q4M
 g7em3r4991jDk9sgLGhUAVBrHCQcn8V+evvB9H+0UjFQHfxSZT0h+kP1AtwKXaul+Tfo
 6QPOj6FAEhW00VD3SUhdIJ49Ac5cFgb/xzxPsz1ssZjqaEm0VMzT1sVoAjY2lLHF9z5L
 u5VfYihiLusD8TAMynGksuaDEz/ELO5WA/E/GsCt3W9crTOv41Tw13faj9aLZGF20qvx
 WSvQ==
X-Gm-Message-State: APjAAAV58ar6LYMeTfhf0kwSIxlkesWAGfvo6N9YoxapoYFRtNM6Wzhc
 eEPfB0W5zKDtp9kq0a7S54DKqf9CWZtGOBMM
X-Google-Smtp-Source: APXvYqzYEA3pbS2iE2gKVdOlfQIPiAhmrRB708Vt+S0UrPEJo1az+L1keMZHjy1L2zZAifx1wHJpAQ==
X-Received: by 2002:a17:902:b605:: with SMTP id
 b5mr24397547pls.206.1556554975840; 
 Mon, 29 Apr 2019 09:22:55 -0700 (PDT)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id g10sm39691003pgq.54.2019.04.29.09.22.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 09:22:54 -0700 (PDT)
From: Olof Johansson <olof@lixom.net>
To: linux-spi@vger.kernel.org
Subject: [PATCH] spi: zynqmp: Fix build break
Date: Mon, 29 Apr 2019 09:22:46 -0700
Message-Id: <20190429162246.6061-1-olof@lixom.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <2bb66114-c976-9c44-6db3-33a5dd12edde@monstr.eu>
References: <2bb66114-c976-9c44-6db3-33a5dd12edde@monstr.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_092257_230840_EC79C3A8 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Jolly Shah <jollys@xilinx.com>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Missing include:
drivers/spi/spi-zynqmp-gqspi.c:1025:13: error: implicit declaration of
  function 'zynqmp_pm_get_eemi_ops'; did you mean
  'zynqmp_process_dma_irq'? [-Werror=implicit-function-declaration]

Fixes: 3d0313786470a ('drivers: Defer probe if firmware is not ready')
Cc: Rajan Vaja <rajan.vaja@xilinx.com>
Cc: Jolly Shah <jollys@xilinx.com>
Cc: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Olof Johansson <olof@lixom.net>
---
 drivers/spi/spi-zynqmp-gqspi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/spi-zynqmp-gqspi.c b/drivers/spi/spi-zynqmp-gqspi.c
index d07b6f940f9f..9850a0efe85a 100644
--- a/drivers/spi/spi-zynqmp-gqspi.c
+++ b/drivers/spi/spi-zynqmp-gqspi.c
@@ -14,6 +14,7 @@
 #include <linux/delay.h>
 #include <linux/dma-mapping.h>
 #include <linux/dmaengine.h>
+#include <linux/firmware/xlnx-zynqmp.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/module.h>
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
