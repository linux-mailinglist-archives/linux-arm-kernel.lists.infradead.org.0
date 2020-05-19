Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397B61D8C84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 02:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QiBFXiYbS2O1y+R9IW5iUoSv997xaHIzDQkG3P/sFZ0=; b=WNX
	gTCZJ0UbGPwnGYikF2vRcHkyDvImSObN1SSdO+Lo2JG/uEwMhSsYuhwdz8pf67l4wlu+K0SaOc6Qo
	psDZ346clRkz5VPxJIxQcyOFI6ZRwTXtJ/+LhEGoRypTpFcxGqjyGKuwja20o3dVlVPgnQAgRotQb
	81FgfltoJsrEp74ZHzyZsG2ApTLceIIUaKabJGR6CBLjjadODFHUuno01XCGQvXT4WtWouitKgOmZ
	AGcMrWN58MWDY5SsQIVbgrb83hHp9LOlElp5w+S7Q4+TQ9PtvdyiXsrnJo3K04OnAUBF7L6uO/XOR
	YzU7gHZJBgeRlCSMbnCSKTw9e6fIFyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaqOO-00048y-2n; Tue, 19 May 2020 00:46:00 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaqOF-00047t-Rc
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 00:45:53 +0000
Received: by mail-qv1-xf42.google.com with SMTP id l3so5709786qvo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 17:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=leaflabs-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=SpKrU1LZHPDz7aM+ZRqKdIZt+rjg7Am2w59IOfBqqwA=;
 b=mJipiPmcY8YsiwBF7viBGc6FPfNozTL9S6e1V2gzodnopOOTOJ+uNbxF7ncPoo5r9R
 +hyfgU6U39JjKrZcg+XoLcEKYRQwnQq1GpJOCv4ZrtdzI0mGmsd+63/2DUF2MPheWuWC
 zrjjNsAHzA2M/ye9HNdKSCG3+X1q0sB2PjgdjGAID48Aj3zWJyHold9UG2QykiuUzXzK
 I13mriaXSN/c1yr4+3LIh8m3DxvZvpW8BUWI4xJs0gxWKikSSeCHPAFdoz59+aOLuarv
 vQo6eoN75WUaSFpoU7jrY0VSE3AIZGo7LdwrleAajQe5iaUJiLpeGgFzj9BcoIo7nLih
 ZWEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SpKrU1LZHPDz7aM+ZRqKdIZt+rjg7Am2w59IOfBqqwA=;
 b=lRK9tjmz5W97TxF1+tJLR+fOrVOm8V2jwd03s72r4pYAOEEkvi5oJ1bVWibn8TOCjZ
 4xslP9IdBulfesk5hsXJDVtq6WWw9jjI7ROwqkt6IEkApt+AdrrH65m6pt1s/FMdxzIV
 FJo9zuwU/yp9qKPjvy/+BtRR6aA21vQiY5yD/369YN5unTCen55o47/MUsxyH8C+ikyg
 rfEdzIY3UFKwZLUSPP8fR2ta6mf1LGPrJYC1wUwVCnm+wEuMyZku7P9vvxaITlQn9Cof
 c3eZDKXrqGV8gmo0OkFNCYZ1/CPqzON7RZ5em/UcjgtgpOZlHZ+big63ajKTVNMAtoaD
 1kUg==
X-Gm-Message-State: AOAM533uxWO1p97cloDVfve9qBXwXjyPyHdRmxFx4jyvIESbZ+OFstM5
 um3/BjmX+vBWRdrL6fNeL4Arzg==
X-Google-Smtp-Source: ABdhPJxJS7CthGaemy5vzNrIYxqUmcnmeIw1PYxtinAkRj5eHPysxhWhVtbrl4ENMVaMV5AI8t/yXg==
X-Received: by 2002:ad4:4f87:: with SMTP id em7mr9708469qvb.192.1589849149349; 
 Mon, 18 May 2020 17:45:49 -0700 (PDT)
Received: from ubuntu-virtualbox.localdomain
 (209-6-156-57.s56.c3-0.sbo-ubr1.sbo.ma.cable.rcncustomer.com. [209.6.156.57])
 by smtp.gmail.com with ESMTPSA id l22sm9312392qki.45.2020.05.18.17.45.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 17:45:48 -0700 (PDT)
From: Mitchell Tasman <tasman@leaflabs.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jamal Shareef <jamal.k.shareef@gmail.com>,
 Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: [PATCH] staging: vchiq_arm: cast with __force as needed
Date: Mon, 18 May 2020 20:45:31 -0400
Message-Id: <20200519004531.33158-1-tasman@leaflabs.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_174551_890709_8D53BE9D 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Mitchell Tasman <tasman@leaflabs.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In several cases where a pointer marked as __user is
(intentionally) assigned or passed to a non-marked target,
cast to the target pointer type with a __force directive
to quiet warnings from sparse.

Signed-off-by: Mitchell Tasman <tasman@leaflabs.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c     | 7 ++++---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c  | 4 +++-
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index c18c6ca0b6c0..38a13e4618a8 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -371,14 +371,15 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
 	pagelistinfo->scatterlist = scatterlist;
 	pagelistinfo->scatterlist_mapped = 0;
 
-	if (is_vmalloc_addr(buf)) {
+	if (is_vmalloc_addr((void __force *)buf)) {
 		unsigned long length = count;
 		unsigned int off = offset;
 
 		for (actual_pages = 0; actual_pages < num_pages;
 		     actual_pages++) {
-			struct page *pg = vmalloc_to_page(buf + (actual_pages *
-								 PAGE_SIZE));
+			struct page *pg =
+				vmalloc_to_page((void __force *)(buf +
+						 (actual_pages * PAGE_SIZE)));
 			size_t bytes = PAGE_SIZE - off;
 
 			if (!pg) {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 2d3e114f4a66..28ea8c3a4cba 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -1209,7 +1209,9 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 					/* The completion must point to the
 					** msgbuf. */
-					completion->header = msgbuf;
+					completion->header =
+						(struct vchiq_header __force *)
+						msgbuf;
 				}
 
 				if ((completion->reason ==
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
