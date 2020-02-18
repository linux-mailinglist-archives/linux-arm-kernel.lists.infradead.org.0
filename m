Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91965163042
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:36:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ghVdORPia71j0mSGIAXEDFrh6aydJgb/PF1AgwI73sI=; b=QlblDsr0lYvMYUVmtX1tQpIBd0
	PPMHcyPlwPP4/1tFcXTPc4oOdJPrD9mDHhPJ97UDpzDWjynfia6m/clkdP8VO9Y7vYf/EP1Hg1H1W
	ugTNtlm5cfguESZtol12pgYmCNOjKBOvVE0d1m/NPmVCFJdhnnFarPX82DRqveNevtP9k2e+M07MM
	GUxrd1XyUAndXg2wWd6l42BTGR1Zh0qrddNeDB9StlCy63kyqcRQTIEBwWWhmTf4Ci6IHER1D3qIj
	/WCnpM50yKm0f2FTyPPsXydpw7US2HCloY2GKihscLYKrzw/CP7Fz9Zjj+Hy42aMwYFDTT9eM/cyV
	BUK2TZwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48fX-0003H1-Rw; Tue, 18 Feb 2020 19:36:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cZ-0007sb-Ho
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id m16so25358438wrx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ByhSpSk0RbpBmQb/3fbgoL2btiyO1MoLUthBlNAP+jw=;
 b=Ginbqi3BPfw0S21lnWHbzwTt97BQiojH1B+yjE0E6p3LIu9F++u/cPgEBU2neON+7T
 ilap8jk8Bq2qhW4pjVsdxK2TuSzQajG2qsOd2l7g0bY4PLZ6a9K0EY7bP9PwCrqvqtLT
 XuRPTuZQy3vnvHs3ay6cCXlUaK+ngA26TxdcFeXsOi6jghvyynux2xFVs27m9ifmlDv7
 FKw27wyhjBLhKzrL8rvQvGgMBaYGNP4KmX2jHjbBdCIv+XQLDinPPIJgcf0KzwHraTl/
 /poQAnaUr6Trchy2eisDWZXXlMcP7v4+jPEFfr0XxZov/nS9UomHUTr9L18L3A0Ybite
 St1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ByhSpSk0RbpBmQb/3fbgoL2btiyO1MoLUthBlNAP+jw=;
 b=YBpmBjKh25l4MHYBQivGPvFSNkF6NMmxLP72u36X/UCA1b6JCzO72Ix/OJ56bLW5hJ
 DzWTlQDSkyDOPhdT5URw0iH0BhNqZfNUeOjMSAfuNgMLpMZ7EpClZh1crsp9gYhjMIp5
 uS+xryFPpLcKA6q55o8XakWxZCkLstTp8uE3ISMxAXxi6WfXyEU8FVgTC3yc7R5jqSVk
 bX5Xys4AYNK7M/WTFK7Za1h4wKmOYX8RvHdY7z6xXVIqgfWI5W3AEExTmYZ5KokWW6KA
 Bd3N0fPldm2RVL5lioYpel1HYK3bA04Hqvyya2P1V5cqOF6pZXeldVtuciilN3Qv3SvR
 30lg==
X-Gm-Message-State: APjAAAXSlydHji4mlyRuBPddwqdk8Ex32hqi5vU9WkkmU9+5F6OrKq19
 4/bnQ4/XQucce8rlY/BGaibQnQ==
X-Google-Smtp-Source: APXvYqwM1AhZpMBzLvaJB+hOg8Ca8jvotSklINB1IsiGR01YYW45xXdNQg0YraL/2BoAWvsd55Wang==
X-Received: by 2002:a5d:4e0a:: with SMTP id p10mr32456351wrt.229.1582054405339; 
 Tue, 18 Feb 2020 11:33:25 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:24 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 11/20] usb: gadget: net2280: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:32:54 +0000
Message-Id: <1582054383-35760-12-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113327_654063_73AE59C0 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
driver_name (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/gadget/udc/net2280.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/net2280.c b/drivers/usb/gadget/udc/net2280.c
index 1fd1b9186e46..4a815aab8f5b 100644
--- a/drivers/usb/gadget/udc/net2280.c
+++ b/drivers/usb/gadget/udc/net2280.c
@@ -3857,7 +3857,7 @@ MODULE_DEVICE_TABLE(pci, pci_ids);
 
 /* pci driver glue; this is a "new style" PCI driver module */
 static struct pci_driver net2280_pci_driver = {
-	.name =		(char *) driver_name,
+	.name =		driver_name,
 	.id_table =	pci_ids,
 
 	.probe =	net2280_probe,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
