Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F3316304A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:38:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2qK9mhZ3tkgKBRIzg0mvrztFWApdOemOV5J0jL/Zxko=; b=XzKbmplaLFQtbO0magZ1L8ecb9
	usrPNJh2NxXdcbhV3y17UE6LUo4hQ05EDfXVRwmvSIlcFmiz15gxqDgSYwkqsw4eY7R2PwOXHqXfi
	9/QXYiVMK/xqcmzq0AfT6JeAsKwqoDfTRJTVicGXecKM6vZ/PPBrwgStg7Nrn2+fLdGvv9Mc3XR/2
	XecWMHCVcUol3+nibCy8fXyKvg0aZnqrs5JFjrth4thufch3i66w3Xj4Up/3g4aeTwEhBHzAMZ5Ef
	c6L/9PJu2n1BuA4uDbp3xzaSM7F5eUFDXs2GF1HRp0wxd87Ghxd8+Uc9xztZ6PM4SDFdD6294QoV3
	pabG0scQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48gy-0004sK-Fr; Tue, 18 Feb 2020 19:38:00 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cg-0007zP-NY
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:36 +0000
Received: by mail-wm1-x341.google.com with SMTP id b17so4241284wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=N/BxOSBMeZaNye1MoygZyS5wTUoMQ90aTMHecPnsJPU=;
 b=rXidaeWUp55RRA4kDzm4Zjydnfv3HOiUvFDIADeJPNx920JX7ff7VJvMbBJ8TLcZAS
 P70P6YhgdR182/a/jxnxOJ7b+PN7+Ca34GK1v080CSCqVvNFeD0AUXcReChn+VRY/7gt
 Kvp3BbyB3mBpywJLrhwHcajvmvC2J1okk8E6i4NpjP/e2gK/kjrobHkPlnDyVf/w+Ndv
 +QfqJVGt8S8dA1nMPd4jgBjxCudtplIKiWxXtoYvZU5MFJ0KNm6A23Wmc83NxvTCvKKx
 1KB1Elinhg9txI2vUhlprBn65djxajzW63KKnnOFNUR0q6QDayPTKEGLl4MOzjhCqmfb
 8gMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=N/BxOSBMeZaNye1MoygZyS5wTUoMQ90aTMHecPnsJPU=;
 b=kprSUnXyQ7Qpu+d6hVJfplOldZOqcCtbBbQYMEAkW62+8lt0rnXO0CB1FYn0smQtd3
 2q0pyePm1DD/Wqt8ETeEuoe80AdIKqiZE/3wXus++VzWvmP68PwtFAwD+ZTDVF1vIauj
 7n7D3d9S5jadUdwjXRmQMiiWIQIwKiUr14UIUBxrduc6vaTEGSyNdkaY/kIQpjSR1u+a
 D03Gm9ILca5NEXgEVk1XgdBdAM6X2YowoZT4Iu/QIVKrHsoR5apnQY5N52RyM2kJe3ZP
 wixDLgHy8oFXI7pHJOPv+ZxP2+rc3CLqOnQECGqzKfYl25paeFt+d17MLR4+uHVyVzeE
 LJGQ==
X-Gm-Message-State: APjAAAW+/gmE/K5Jm6i3nSF/yJhzb+DYA/lhVnxkd4b+QnaA+JJ1Qx5c
 UPtj40ayQr+DNcxC7aLnqD/UpA==
X-Google-Smtp-Source: APXvYqx2OzakvxU5+FL/ru47MRsIqww5QrDu9aHWIw0Oi3Ym29k9T249gOsfNdREzGBgqi5TKxRGww==
X-Received: by 2002:a1c:541b:: with SMTP id i27mr5046830wmb.137.1582054412748; 
 Tue, 18 Feb 2020 11:33:32 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:32 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 19/20] usb: host: xhci-pci: remove useless cast for driver.name
Date: Tue, 18 Feb 2020 19:33:02 +0000
Message-Id: <1582054383-35760-20-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113335_082465_4DACA148 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 drivers/usb/host/xhci-pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
index 5e9b537df631..0715a2e75413 100644
--- a/drivers/usb/host/xhci-pci.c
+++ b/drivers/usb/host/xhci-pci.c
@@ -549,7 +549,7 @@ MODULE_DEVICE_TABLE(pci, pci_ids);
 
 /* pci driver glue; this is a "new style" PCI driver module */
 static struct pci_driver xhci_pci_driver = {
-	.name =		(char *) hcd_name,
+	.name =		hcd_name,
 	.id_table =	pci_ids,
 
 	.probe =	xhci_pci_probe,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
