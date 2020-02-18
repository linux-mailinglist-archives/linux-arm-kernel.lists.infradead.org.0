Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CE116303A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:34:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UlKMUu72kIj6D25GHKh5L58T5rujVqgwVp4iK69s0uk=; b=pYiG3BFDB+Asd3K8gPBdYkytNJ
	eTu/hWSpiaigUIOyLZYN8rFZ4M+N0bsBjulv4ZWtuGivjubSIc9CudxD6sF7ADm7w+OFDelNisWnf
	wuZzBmmKNvZJWlBOmWtGuWdPZsR06BRs3LUyUneXrN/M1zDPtblnYs6AGFeTHRLfIIPGzS4xl0gWd
	Q5cFbJMD436jp6FHisEzJyjIUczE0aQcyXHLIrigwh6wW3A3CcYPFSFTYiGzreMQcx8YvtOseCp8q
	pUo+YKXPeLtaPYVXiPMXIZ7aiAgyQ6Kp5Z3WdvbT4BFEhiC+w2LAn86n46kz6b2THBQHwsL9imJbZ
	uNBqIkvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48ds-0000Nl-Ng; Tue, 18 Feb 2020 19:34:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cQ-0007mm-Rt
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id k11so25371607wrd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FhP33f76rG+2Qj5CzOw/Y5VWMBQgpWuzrnyIzrFTRug=;
 b=rxlXAX64TS/KCHzcquPeVDjrlKmhePjl7Da7rcF8lconyP93SOoeZRkpAzD8fKtmwN
 GyZ52w3D8vQQhcN0UUHGGogGIQCSCsYLLhHmeUAbg5p0Zi1Qe3hj+pxbxKIkp0WTEgti
 wG6PFqRUclRWAZQOQOFkcEm4BxOBBPj7tMZV63K1ptJfpRV6x2VWltJmPpPVgH7cPiRR
 x4UFbSTU64A9kFo4Be1Caj3s2qyIctoiCWCsBNZBuemmG2DOnqTlMNeLNYbRviohmz31
 SUrXmmqVSlasXdBJbXfR+6bKA2L/2Fe2/3siHfd886mRj4AtRBGDMaayfe+49fq18sBZ
 rarA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FhP33f76rG+2Qj5CzOw/Y5VWMBQgpWuzrnyIzrFTRug=;
 b=fyf3ugzsaAkIXdMmeql0aJdc7J9KSqRFibCJuSDuhrDbRLss4Q4kRZ8As08lWj7Mvz
 yisO9IWL5Egqt1YBz90ZYVDyqKGTnzt9/ZvL1RZByUG02tdCGPy/VRCJ4B8yjqc+mEts
 UaYoT5a96DLSvLpevXccAsZ4rB8m1tams9gpNZgo9ZtZqlNQ+Tot0EIBZH1E3EgOQnW3
 FVrZP1fLOtZY5PzlpZDj2GPanCK+4ibl34l0/0AqjD41vAAvnNtiPvyWgwZwsIAKtrfy
 vjEONIYeTcDkn5HLIwvsqB7jCIrfDSYqJF/iG+qBsY6zjXVhDMODY0/Rd3tNuBqALxQm
 64DA==
X-Gm-Message-State: APjAAAXVyJbBuzAWezUp2quD5GfHl1svCLu11lizkJ7i+xrldGy8QgQO
 riiOY4fkHxXHQftbzxh/oUCLnw==
X-Google-Smtp-Source: APXvYqxhujNKLgxfrSjYnJS/zwBxDj7zsb/kp7GsJVcV6m1WCw9TcjWQNQ1Ew3Vn+k2gChJtTAvicA==
X-Received: by 2002:adf:cd04:: with SMTP id w4mr32416868wrm.219.1582054397663; 
 Tue, 18 Feb 2020 11:33:17 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:17 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 03/20] usb: gadget: udc: amd5536udc_pci: remove useless cast
 for driver.name
Date: Tue, 18 Feb 2020 19:32:46 +0000
Message-Id: <1582054383-35760-4-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113318_914890_1535E129 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
name (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/gadget/udc/amd5536udc_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/amd5536udc_pci.c b/drivers/usb/gadget/udc/amd5536udc_pci.c
index bfd1c9e80a1f..80685e4306f3 100644
--- a/drivers/usb/gadget/udc/amd5536udc_pci.c
+++ b/drivers/usb/gadget/udc/amd5536udc_pci.c
@@ -202,7 +202,7 @@ MODULE_DEVICE_TABLE(pci, pci_id);
 
 /* PCI functions */
 static struct pci_driver udc_pci_driver = {
-	.name =		(char *) name,
+	.name =		name,
 	.id_table =	pci_id,
 	.probe =	udc_pci_probe,
 	.remove =	udc_pci_remove,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
