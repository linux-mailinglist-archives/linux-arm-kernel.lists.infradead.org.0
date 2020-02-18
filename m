Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A663616304B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:38:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d47P1MOBcJ3ZFA9toN5PnbKnOe3CkZYSTsrMuJdC0+Q=; b=f8Cv+u27g5zE1Rt2xPixNrA3op
	/BLLSELA5e3HPdmnqdIWnRlsm/zzrFU29Au+cyILn4L7LHr7cWVjfJgzfIj7nNW5cnkbVClSgquQs
	wCpZzE9xZeAXnpJYctkVMgJ4f4ejogxaIBoaQQ01WRGqxCVlqb+QFiH1A9YxqmdK+HTTLSHQf5nC6
	iQ5+kBL9cdnLShTfUFjK9eFAoMI/tkrYESQeORwIUAHwxszrl2Xe8cIhw8eWjCj98IfCtGaVTEoUh
	tmCa8WbiFb6dlk5LzYPQ4csg6b+3PwBA10vvUQYmuJ6XYX1b2rmKELYt0P7nArNtTPgYOvQ4ul4iI
	fY+gxuHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48hC-00054r-1Y; Tue, 18 Feb 2020 19:38:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cf-0007yh-PF
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id a9so4211967wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ayr0vaOngDA+VkwhWRpdM5V1skhfB+el5GXKIwRxryc=;
 b=xQkcyhd9mpgYZo1ph9KEAbwqPZXD3q7Xx5fqMyOGprcnJ5fdXq73iZaS/fQ+qrso1T
 93FKEqFyelBvQVLjeti8uHKmxCdP6zeXqoOY2zzLQwEp70BQpaxuSVk2MX2WQX0X1RAL
 LNGQp9YBsRwrdCdhh9ydHE2VSaL1o55fVz0ewVwRo77qpyBXCDcmiWtTL0qt2HWJxkAS
 P/WJq0lsxEAdVunCc3N3MuNJuc1li4p4oR7/7MTzD4VmeL/gPVf+4LTEH6AYGqnv9bDD
 CDk+mzo5puPYxdtlOs+lXn0zoA/zKsvce2heh37g6R46RZFknCfkbRmrFAR1tVfc3L9l
 ze6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ayr0vaOngDA+VkwhWRpdM5V1skhfB+el5GXKIwRxryc=;
 b=jmeI46G44v8KrzsCI9YLVtNO1Ruhd0eKSGHyI4J1qi1ygBlHdiJkKyVUBwwlenmLwW
 JMkgvIaOYRaVGkmgvlYcUWExBnHUpM4uzBJjewUzvd1N2eMix5yDOJs4BqIQc10BT2po
 Xdw3CEjqJ/Hvikyyr3jMsNeAduY6pJtDAhpOqE8kCkPrXGNouHOrJYQIYuUURdOCHH6j
 JUocPLGMkxrXezVaVwohJbFeXLQ2CaoNIb53Mz0n1HTfDYkxiOY2rd9BNoThXWx+QdWb
 0kNb4kj9oqVfKKyI7AS6rAxHXK4qgTBZE1b5vQT3Q5fufuc4XkByoyt87914ZFndi8Id
 URhg==
X-Gm-Message-State: APjAAAWesJ6FYIg/eClPxTH0bCm/t/CrzHr0JkLmngqhzdKRmRFxiREI
 w5GW/3nV7P2FXif+ew6uCV/SFg==
X-Google-Smtp-Source: APXvYqzDsjJ38h0gWD0g2s11Gr1Lmz6VBAIYHUJDGPLQPQMDv1f+ZTd+/40BghBPL7gZYdi1jG1GBg==
X-Received: by 2002:a1c:1d13:: with SMTP id d19mr4920253wmd.163.1582054411665; 
 Tue, 18 Feb 2020 11:33:31 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:31 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 18/20] usb: host: uhci-pci: remove useless cast for driver.name
Date: Tue, 18 Feb 2020 19:33:01 +0000
Message-Id: <1582054383-35760-19-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113333_946267_FD4F0106 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

pci_driver name is const char pointer, so it not useful to cast
hcd_name (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/host/uhci-pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/uhci-pci.c b/drivers/usb/host/uhci-pci.c
index 0fa3d72bae26..957c87efc746 100644
--- a/drivers/usb/host/uhci-pci.c
+++ b/drivers/usb/host/uhci-pci.c
@@ -294,7 +294,7 @@ static const struct pci_device_id uhci_pci_ids[] = { {
 MODULE_DEVICE_TABLE(pci, uhci_pci_ids);
 
 static struct pci_driver uhci_pci_driver = {
-	.name =		(char *)hcd_name,
+	.name =		hcd_name,
 	.id_table =	uhci_pci_ids,
 
 	.probe =	usb_hcd_pci_probe,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
