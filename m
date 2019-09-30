Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B6AC2723
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 22:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHURIgUi6aPa1RAtuiF+NN2OTZ1uErPSKpgJ9IiNBhQ=; b=iIs0Q41OL7s9i2
	wQH5WytkeRvb9x2VH2TOFBJ8A6h1F8UcV6c68LVvMBscJOMlEE+MuMI9fQKUYzD/scVbHUX0Yyy06
	CCM0lgoq925J/qmLksckn7vE3LnzRMl4G0p65w7dDfHLGV3WJyQnTLxZRsbgcnzh2/PF0UaXQbScH
	YDdj8WJkyaiFQdx9E2y1MSd8RGofHzpYjjcRziiD/l9+upr8zzxi2lQTPURnoJPL0piV9iqbxpnFy
	O4wUziu4aV9YpltQTX9rEFBdB7mml7YLJ8Y1t7Oeudj4chmItoMwGnZxzOzz46oRqDOUqzeU17O3l
	rF4tMqlO9TFpwmchyeOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF2bI-0004UD-5D; Mon, 30 Sep 2019 20:48:56 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF2b7-0004T0-Q5
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 20:48:47 +0000
Received: by mail-lj1-f196.google.com with SMTP id m7so10984735lji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 13:48:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2XkmrViXlZTGZ245RYNenq5fBl7sK7iDFb6fGcyt8H0=;
 b=COeRvi4nMd0HxJ06ZJWYyeLByX+VMDHQBY4evMM6rYRIfA4pKKqYUK9SeYeSVh+5zF
 cWHSFHFsk92xFYlX1w3fOC0NxNlj6lKe9nCTQquxWzCxP2rabn6nwksfZ2BM5LspioDI
 I9e1WO5v9gXgb6dVo9XwpSGoHJwNNeGtxmdLb2db7n2rkedzjb3ZUDJGVzU7ohKsRghN
 0xDQUvEE5ZGtG1z9qD5k48MIJxpi2hTllzEzizICi+55POjzk4MEJ5hnwLedw3vR7G2K
 NPN/822yhn8m1Bm1B3Rojf3A41NqxLBsAO/92Ntjb/cfZIgmg7jk0CSSbnNRNBFGobGP
 quXA==
X-Gm-Message-State: APjAAAWGbnd8q5zosEvZ67+P+UBmVLAGbtAQHrcpPdF21+aVMd5PjyjC
 sZ5VnhYErd3toi8UPLHgC4H59UTT
X-Google-Smtp-Source: APXvYqyVqTLQSaSPvYycXHi8oB6poIgqD2MxYFat9MbkEE1gRedCs7BRe3biYAiHFo8Ct2d+SNMPUQ==
X-Received: by 2002:a2e:3e16:: with SMTP id l22mr12787964lja.195.1569876523560; 
 Mon, 30 Sep 2019 13:48:43 -0700 (PDT)
Received: from localhost.localdomain (broadband-188-32-48-208.ip.moscow.rt.ru.
 [188.32.48.208])
 by smtp.googlemail.com with ESMTPSA id h9sm3441171lfp.40.2019.09.30.13.48.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 13:48:42 -0700 (PDT)
From: Denis Efremov <efremov@linux.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RESEND v2 PATCH] MAINTAINERS: Update path to physmap-versatile.c
Date: Mon, 30 Sep 2019 23:48:15 +0300
Message-Id: <20190930204815.16635-1-efremov@linux.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190813061024.15428-1-efremov@linux.com>
References: <20190813061024.15428-1-efremov@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_134845_846047_85D5BE63 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yefremov.denis[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Denis Efremov <efremov@linux.com>, Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update MAINTAINERS record to reflect the filename change from
physmap_of_versatile.c to physmap-versatile.c in commit 6ca15cfa0788
("mtd: maps: Rename physmap_of_{versatile, gemini} into physmap-{versatile, gemini}").

Cc: Boris Brezillon <bbrezillon@kernel.org>
Cc: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Denis Efremov <efremov@linux.com>
---
Ping.

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 296de2b51c83..dc7137a9cf77 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1238,7 +1238,7 @@ F:	arch/arm/boot/dts/versatile*
 F:	drivers/clk/versatile/
 F:	drivers/i2c/busses/i2c-versatile.c
 F:	drivers/irqchip/irq-versatile-fpga.c
-F:	drivers/mtd/maps/physmap_of_versatile.c
+F:	drivers/mtd/maps/physmap-versatile.c
 F:	drivers/power/reset/arm-versatile-reboot.c
 F:	drivers/soc/versatile/
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
