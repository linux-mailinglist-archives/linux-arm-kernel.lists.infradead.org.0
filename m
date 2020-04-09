Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1BC1A36AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5pPKLYxx48QMGxz11GglOryC/HfAKduauaGNqAxkRF4=; b=QtZ8mcUV5uD6Lo
	5yYHAdUtnPWsYlJBssMNE0w8pQzX32u11obv0rupvxSvoQn9dakH6bJGszk9/triiSRA1Yr8GmkZE
	mxXZCBCBMaQETiIpidfdk4JYQRY5/jdkUoFMMCWBZNRAisBv2nIg5X02wqhEO18vUfibiylc02HhS
	J1sNyR9jHCfbFD3xPDTsjZw0Mwcv7RSkUsT79pkQ2EtBE/dANfvebAJ5FkaV6ZxGVRvVIzLjtY43L
	PhvbFzD+90yRAGjiG6tYkuvi83bbEqQVhtrfxs3zy38VEh5AXQ+pP4gSuFkfpDPu2Huj2692EJ5iI
	Hoxv4aCHb8a1tBXK1B0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYqM-0001xT-Ln; Thu, 09 Apr 2020 15:11:50 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYqG-0001x8-6m
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:11:45 +0000
Received: by mail-pj1-x1043.google.com with SMTP id n4so1429625pjp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 08:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=Uyv/46Juj5lfxcr3X6PKHvpdHN5/CAT3a4tPfLzARdM=;
 b=pnlwXTJGzos2ogii+pXTu2z1dU1WlWajjcD9NxY6gBuekvamSXZTdOZiB/DAIr/wsH
 TG87wBTFk5jBzdeez1DuQe6H6DlPvRz4GFgceEaeQh/ruyeiVhR610KoG+WIVAPBOuIO
 +u4jh/ujyvta9oWDtpzEXQM/q9HoIPXemre6qYRz6cS2LROgykzVj0GNZ4fatX8G9NEP
 7Ql5ru+fn077/80MqdqcJUNH/lVJkwUj13GxCT0zP/L/Craz1AXpgAYn+oK6nUkK8mfz
 jweku9IBKesjmlxrvRlH43f9PJrAgcwzUz21KqToVjydwo+jPyj4+CJMcTJbdWTiDGlA
 wlyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=Uyv/46Juj5lfxcr3X6PKHvpdHN5/CAT3a4tPfLzARdM=;
 b=GtyuJ3Nz78ab7wk1mbsSPbfxM1/Jsp+zqzhApXFSJ8FjcMSpJB0ccpsQGgmTB2G7m5
 uWnjyaaK0tjaJTVIAuzs3J6sQE6tJ779BbSNPl7zA6Jnvw/mhnIiqHVgTYgFfefqutxu
 i0G4jIZvHaF8bRrr8vBFhV7aML9ABdKsed8Lp4I/GWKRIBWJSlMZm9FMTcxAZ71K4ZH4
 G02ap0k6Ag+sYc92lsZ4XQPo7v3dEDO1e9TjinIro8HctOpBLG20XmH/vqN+M2OHOB8s
 u66M7PHGvtYgnrVkoO9OxURSYmesRFPFpKNnAJVGhDCnXr9WlgxAJ+xJG7vr+2T4NEGl
 DO9w==
X-Gm-Message-State: AGi0PuYjrOMQMSco/eaIARBg24PFGKVuVn5vWJAxodptbyg1iQSKUlJ2
 9kzR1qNLn2juWxK3dyk4yp8=
X-Google-Smtp-Source: APiQypIRB49qL8jGLWw50RsGEtKpAFea2tTVz3FzmbuF4LyW3fyWIJKa8TcU+jZhRNPayvyUyvafUA==
X-Received: by 2002:a17:902:8bc7:: with SMTP id r7mr91051plo.12.1586445103298; 
 Thu, 09 Apr 2020 08:11:43 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:700:a20f:d50:b01b:c4e4:35ad])
 by smtp.gmail.com with ESMTPSA id
 s39sm2493358pjb.10.2020.04.09.08.11.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 08:11:42 -0700 (PDT)
From: Aishwarya R <aishwaryarj100@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 Stephen Boyd <swboyd@chromium.org>, Aishwarya R <aishwaryarj100@gmail.com>,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] iio: adc: at91-adc: Use devm_platform_ioremap_resource
Date: Thu,  9 Apr 2020 20:41:23 +0530
Message-Id: <20200409151125.32677-1-aishwaryarj100@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_081144_244003_8272F12F 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aishwaryarj100[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aishwaryarj100[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the helper function that wraps the calls to
platform_get_resource() and devm_ioremap_resource()
together.

Signed-off-by: Aishwarya R <aishwaryarj100@gmail.com>
---
 drivers/iio/adc/at91_adc.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/iio/adc/at91_adc.c b/drivers/iio/adc/at91_adc.c
index abe99856c823..0368b6dc6d60 100644
--- a/drivers/iio/adc/at91_adc.c
+++ b/drivers/iio/adc/at91_adc.c
@@ -1152,7 +1152,6 @@ static int at91_adc_probe(struct platform_device *pdev)
 	int ret;
 	struct iio_dev *idev;
 	struct at91_adc_state *st;
-	struct resource *res;
 	u32 reg;
 
 	idev = devm_iio_device_alloc(&pdev->dev, sizeof(struct at91_adc_state));
@@ -1182,9 +1181,7 @@ static int at91_adc_probe(struct platform_device *pdev)
 	if (st->irq < 0)
 		return -ENODEV;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-
-	st->reg_base = devm_ioremap_resource(&pdev->dev, res);
+	st->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(st->reg_base))
 		return PTR_ERR(st->reg_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
