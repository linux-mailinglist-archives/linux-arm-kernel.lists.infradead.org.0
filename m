Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A55EAD2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 21:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kzqZZtnzZijDIaUtMlLnhzwn1QR27DnZp+0YjqRnl1U=; b=osR
	pq3nS1qp1Vrts/wZ018Z+BxCvVMrFangTq0uaFq1irif9GtcQQ4kAhdZqSDnumtP9UTXn1Lqua3py
	hid/dAstZvue/hDZynlWjS3GC3iKl6f7O5bFbAGg3f1PDjKVPiJ+8R1SyJPchzD8UGrGZPSlEh8FJ
	7NQwoj+zEs47ujvBUBf0OWgCZb7JVxqM1ZKhsDdchEiAIcNtfOTCsuF8peigxzuThltTKHU59MwXD
	yf47YBkWxJ4541I6L6LbFIrx68VL8hQ/kBZnp5bqOkxmp/gNdC6aa5TWlk35Y+3ei01yaWdZVP/wa
	AQpdyl6GVR5XHmZYhdIhM4JGYSS6DTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLBvR-0001bO-Cw; Mon, 29 Apr 2019 19:26:53 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLBvJ-0001b1-IO
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 19:26:47 +0000
Received: by mail-pl1-x642.google.com with SMTP id e92so5541528plb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 12:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=6UjDJ2wYYD5iq/uRSGt58Ptwqfw8XBwyYFE74zksfSk=;
 b=o9H8DHSbMphee15ktR5IM2vMe3OYztI9wGvUGW8SbFiyw8nuLJZh4Y2yfcxqXKzr84
 e4/DWGrVq3NjubaQFRLV8M5gKivUFdw/7jDRygy9WuTuXvq5iqEtKfRbdAiuoERD50DE
 T5qhuUw/+TriSq8+okptIJ+nsFRlr8Bk7QvJljg3s8cpZTGYz8RsSrvaiBdJBlf10Wz7
 4rfRNvBDK4r1OcN0ctTWFa9Es4DVy4LUWMkjXAgmawdTRs2dq2YnyhbMq2aFZfTzTDlk
 vzlwJpaEAFvkdEld9DL6/vgf4eE0U0P2RnvMrOvzI7ay6c+3Gxui5/bSrMjGm2f1JxIk
 KtMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6UjDJ2wYYD5iq/uRSGt58Ptwqfw8XBwyYFE74zksfSk=;
 b=tki6mJJ0LtmyDkfcrNjpUwm8g1GNpCkOWq+RGmf8a2pom6+D1FSRrHhFLgcmbPF69i
 dD+f4iXaJvft3XCguGvqxs1eiR4+m23kkEYd38UXpV9h7gXZYc5tMgl12oPuKz7yMcvh
 w4a1dYl2rJVw8iIlrt0DYsWu5uxf0+uAGqvcZoKB30lFj680MVJzpKu+f4fivVqwrgAJ
 wH8Hv+FCF+u3B81zGVJOqArhooDfXeuJC6oRX0j+8EAP8CHtsjZc/vmz8rpiykfCZeC0
 lzM6+IuJGEyucxMZk6nJKFnwUBEnt+zw4VnnRVgAR/Gypy4A4uh6owgEiBSqwNHMpxtH
 DYsQ==
X-Gm-Message-State: APjAAAWjdyQXrOGcx5aCCPaEMTYXh2X1/sZd8QyzoBXrPejoEzW6guHz
 toCEFj8mFb+ChP0RlbcP6K0ABRCqSKd29bRfoUQ=
X-Google-Smtp-Source: APXvYqwcfzBog20YnxUvsnAYzjThm8FRpF7rFuh2JZkjX+inx7ogkIDX64vhU3P5Tkm1hGRNNQan7w==
X-Received: by 2002:a17:902:2dc3:: with SMTP id
 p61mr64315185plb.308.1556566004146; 
 Mon, 29 Apr 2019 12:26:44 -0700 (PDT)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id q10sm43860026pgh.93.2019.04.29.12.26.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 12:26:42 -0700 (PDT)
From: Olof Johansson <olof@lixom.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] soc: aspeed: fix Kconfig
Date: Mon, 29 Apr 2019 12:26:32 -0700
Message-Id: <20190429192632.13041-1-olof@lixom.net>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_122645_754161_1AC2489A 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: Olof Johansson <olof@lixom.net>, Patrick Venture <venture@google.com>,
 arm@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes build break:

scripts/kconfig/conf  --allnoconfig Kconfig
drivers/soc/Kconfig:24: 'menu' in different file than 'menu'
drivers/soc/aspeed/Kconfig:1: location of the 'menu'
drivers/Kconfig:233: 'menu' in different file than 'menu'
drivers/soc/aspeed/Kconfig:1: location of the 'menu'
<none>:34: syntax error

Signed-off-by: Patrick Venture <venture@google.com>
Signed-off-by: Olof Johansson <olof@lixom.net>
---
 drivers/soc/aspeed/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/aspeed/Kconfig b/drivers/soc/aspeed/Kconfig
index 457282cd1da5..858b5e3f79c9 100644
--- a/drivers/soc/aspeed/Kconfig
+++ b/drivers/soc/aspeed/Kconfig
@@ -17,3 +17,4 @@ config ASPEED_LPC_SNOOP
 	  the host to an arbitrary LPC I/O port.
 
 
+endmenu
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
