Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A32181C2C32
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 14:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PQl1AFz1nKdl0JQpycOS6ydyFCg/kMNUobBxkwrQ8m8=; b=RW2
	EFZpaWyV+gdFw2euf0SxRhOu+hRfcqoE2yMZi481J8VaO7pBCsf/e9P5muKHk+IgjhGZiwPV3TCdr
	ndxJfNLebFghv7NS+MjBSQ7joX9iFH8hE/0i/M8TSTQM1xyFjMH2GFF0hyXlNiUZciP1g85oGI7Fk
	hPD56IjI9wOksjgEYZb/WKb9aa4qmRb3Mvu5QAw0H4uodTjj22HVo4XijEGyr6A/ZOg4/VphdLpmF
	stvxhcDujoaes/V25W1ngfS22Nqdigr7J2hyzVmGWxRO5J/paQVT1C8WIgpW14jW1kJsx8u6HjYmd
	ueT0BcXLLFqvHMPYh9/GjNXoOgYOnXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVDnb-0005in-3i; Sun, 03 May 2020 12:32:47 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVDnV-0005i5-DG
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 12:32:43 +0000
Received: by mail-pf1-x444.google.com with SMTP id v63so4139372pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 05:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=S9UZgj84mZAUAnmYOiySi9W6UM6bjoHB6qeDJBZBBZ4=;
 b=EfiAq3xhC9XfMREVxYJntXiQCSfbWYk1IgxAqVXwY9/XYi9od5O8peytXsfQ2QvClD
 /PCFthfcWmKq3W9UShq5i5xhkuVacd1WfhrKE8CoBJ8uATv0/CZ63Z+LgsdZgeC0WqvH
 sVSwL3NT6MaA56QifgOddRScrZbTpPRwF70nOR2LTtidsztx3yiMaCo5a4ksyqWZsJFQ
 sUGSCaGQOVLvBKE9BIJrcSKAtVA4dX6M6+cvjwGX6nCOnBsmOQV4JeowAFgsmYxfb0tm
 WXvSKjc+/eJc+zHNn28/W4obnMslqfQnJE1qBIzbY/eazL8H3K/7SEGvvbIv5Jx+2Rpu
 elXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=S9UZgj84mZAUAnmYOiySi9W6UM6bjoHB6qeDJBZBBZ4=;
 b=fjmDbk5d9l+xyJkg3dz3lqeMTMCne/Z8n9rgAfTIIs6gPYxDF8R9MGU4uQ32woLl5G
 1i+/RlsKHTbLK2tm75Xoyu3L8VKSWNMQCb2D1V8KVxIUMKDbqVZnQGdHgyaBAWCcrxXv
 wGD8YhPJ7X2KJPs+Gs8oIF5BzmgXZVI+n1s515gZdUMtFHsURi0upIqPAohrQc36V1+o
 K54VK/dfCwCpl6BDhZBOOba3r+F76NXl010cQfJk8wMu9MBD9ir3E4KKkDj3a3vPaoA/
 bkjJxb4RVFZMPE/QlDpUEW6VN8UitH0YQORTTGjPDlFlDWIB1UVyE0qa6rS2j2O5pUed
 lZ7Q==
X-Gm-Message-State: AGi0PubfrxT64PnH2PGAe0hlhRwVjnLllaPcmNKqZQ1OjQyEYjM90G+Q
 Q5Hi91HtPHJ75gVZTbYcK4g=
X-Google-Smtp-Source: APiQypL6YSIqiQz/09JrBRtKPPnIm0Gn/IEdymEAxBFebb6kaG2jLSnHf77BG22ZRivXdD11gPVNhg==
X-Received: by 2002:a63:3206:: with SMTP id y6mr12499287pgy.68.1588509160450; 
 Sun, 03 May 2020 05:32:40 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:8b:8746:9817:f6e9:c9f8:6a59])
 by smtp.gmail.com with ESMTPSA id
 u5sm6496514pfu.198.2020.05.03.05.32.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 05:32:39 -0700 (PDT)
From: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
To: Vladimir Zapolskiy <vz@mleia.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] i2c: lpc2k: Remove superfluous error message in
 i2c_lpc2k_probe()
Date: Sun,  3 May 2020 18:02:30 +0530
Message-Id: <20200503123230.14304-1-aishwaryarj100@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_053241_470498_30B7AF2F 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aishwaryarj100[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aishwaryarj100[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: aishwaryarj100@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function platform_get_irq can log an error by itself.
This omit a redundant message for exception handling in the
calling function.

Suggested by Coccinelle.

Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
---
 drivers/i2c/busses/i2c-lpc2k.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-lpc2k.c b/drivers/i2c/busses/i2c-lpc2k.c
index 13b0c12e2dba..43dc9b7043e4 100644
--- a/drivers/i2c/busses/i2c-lpc2k.c
+++ b/drivers/i2c/busses/i2c-lpc2k.c
@@ -362,10 +362,8 @@ static int i2c_lpc2k_probe(struct platform_device *pdev)
 		return PTR_ERR(i2c->base);
 
 	i2c->irq = platform_get_irq(pdev, 0);
-	if (i2c->irq < 0) {
-		dev_err(&pdev->dev, "can't get interrupt resource\n");
+	if (i2c->irq < 0)
 		return i2c->irq;
-	}
 
 	init_waitqueue_head(&i2c->wait);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
