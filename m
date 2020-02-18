Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CE116303C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:35:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=meP2Fi6e7lUiPdL22Q8J5m10L9/zAN2887eFwurNPos=; b=nFnwbdP0A1fddX8m0Pku1kgkk8
	Rppa+cclXQ+werS1n+f4zM97pGeHqBKGaITtC0p29cfYlAHUCx6XNH+LGnkDL7c2cfJUN85FgKPou
	TsgHpApa53hNuD616+1m1hVmlMu9ksNZBuc5V2vD/jqMrayL/4lrIM/vi62zjhMKy+IbzJL1xfZzX
	ulLbhB5IAT2TL+4IClCNpdp7KiBlrw1D2dEEnvwXs1y3vT7fr2YmiajF7aNc+mvxtCAWQlUspNWmX
	OTu2be3s6ToSLeS9oq2trOFvF9Eqdp5M2T+Sl1e3xD+6U8G12zrx/mnWRN9hSx+s4OpnaFXX3FrHA
	4bQLFOJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48eN-0000sC-8i; Tue, 18 Feb 2020 19:35:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cU-0007oK-Et
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:23 +0000
Received: by mail-wr1-x443.google.com with SMTP id w12so25401532wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AOWCbHndeZPS5+byfbryCBkvxECGgsEdFqsZA/3IxRs=;
 b=uU2854W9t9Wy+R1PcnzelLtDSm00kguTfVv2dKnIl6fYk87418YBQyB44AvSD0Tv43
 7OJUIUpcXGYeEe6TRdeliUT0QK7jxD5wCt9BdXKfdHXqHtoKSO1T4C1Bi3r0BiGiwfSs
 BiPe35HKcbG5BK0ytQY4yWO/u7N7uU7AvsF9bmUFFooaBGFBrXRgQcUylWVA+G+Lkdp6
 fL3E05K9ryRVMePNm3y7zIaC/mtl99vU92cthki3SsP7I0GOcwUAV73zIT3pxQmuVZkM
 91rP90GL8c20fRjpWCesgQjtUzZS1Z0EFkphxUuKw7mrrAjeiI/JrkjRQyHLPOX17RSS
 2fEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AOWCbHndeZPS5+byfbryCBkvxECGgsEdFqsZA/3IxRs=;
 b=LlOManQsj7B7epGKW5YMgL5K229NKjl7eg7YuB4PGCsGBZBz2a1WR6twGR8YFrP8oB
 qZStLQ8Ffb6JAO2wNrAzFyDonsQ60yYk3RMgjuvcQTFwTnpLdFCM8gsX+PsEc31UM73e
 8CqYJIJw7hOdgjPWfmow0nEO3wA/D5iWSDfb9IjgYdvS1/mF8lfq4/eVN7VfkSzKLq8W
 VqGXpGxrwktKSDis2w8vw4zQbIhGXarpcAS7gA4zyU9SJSn7y6QIEfUGatogVW5zqkKo
 Kqk97z+bDVr4SMzphQAE+GUex2Kbn4jogaweH8nf16Uqcg5DEGWZ+eBHDnY2r0f2rLSF
 aXDg==
X-Gm-Message-State: APjAAAUnYptTBOqTN2b8VBAuS0Lh2VYEiX9waOO5nBot9KQuxsTbu/TO
 iUSDUawKjZATzmEXwzr6xf9/uw==
X-Google-Smtp-Source: APXvYqxWwSnTlhW6CSi27BoAt02KsGM3sb4bgJm52rNZkiHzGKPso/pT/s28vLFiQQJ+HdZLVSIYhA==
X-Received: by 2002:adf:d0c1:: with SMTP id z1mr32598309wrh.371.1582054400814; 
 Tue, 18 Feb 2020 11:33:20 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:20 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 06/20] usb: gadget: fotg210-udc: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:32:49 +0000
Message-Id: <1582054383-35760-7-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113322_503828_ECAEB5B3 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

device_driver name is const char pointer, so it not useful to cast
udc_name (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/gadget/udc/fotg210-udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/fotg210-udc.c b/drivers/usb/gadget/udc/fotg210-udc.c
index 21f3e6c4e4d6..d6ca50f01985 100644
--- a/drivers/usb/gadget/udc/fotg210-udc.c
+++ b/drivers/usb/gadget/udc/fotg210-udc.c
@@ -1199,7 +1199,7 @@ static int fotg210_udc_probe(struct platform_device *pdev)
 
 static struct platform_driver fotg210_driver = {
 	.driver		= {
-		.name =	(char *)udc_name,
+		.name =	udc_name,
 	},
 	.probe		= fotg210_udc_probe,
 	.remove		= fotg210_udc_remove,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
