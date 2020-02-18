Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D6A163046
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:37:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=43+YqERODPQmS6WPQ/nvk6j8QaL/cIqmxM/wSBEgiIA=; b=m9kbh+UKSOtkeN2F8hiF278KdP
	7nsqmiS+i+YGta4QIO8N4l0lFobp+szQ+HvkZRR+nXAtw9AIyNm/gm1eQ+Yh8JASx5g8ga9+/JFRp
	BsWRuUYUk2FQOpPbcTDcZk0980N+uPcOr0EYufrKh05PNg2ppdOvmLPb+VH1VVF1FQ3fi57lwlczm
	03dlgTg/i04Tsort6P4ONBwOaT2KnZtEjRuEDZiZ8uo+AGypGACXWtn2Fq/wXDD4LfabYgxBCGTYo
	FzBMfd19U1h5+s4mlvg4nSm3vQvp3jksGuEbzKCtgsvDFW5HqTsFR778h3W/YuY93DeYSHesg166e
	n1JlRIAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48gP-0004EK-J3; Tue, 18 Feb 2020 19:37:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cd-0007wx-1O
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id w12so25402018wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qzVfbuv0UjeSRxXKHRypGoNUSRzZLS4IAN1hM5sqaJM=;
 b=b2RmJ6EscimjzdPIeQMGlNOE4c/kSwwDXzjFpT9RxdJzz318ILKJhMkg6QrMFR0nVT
 tFCoRk2E5fZon4mA7P4wb5e6IogwT36Djrcsn7zGVF3e2VjWzkhzrBx2Ee7UfHciiOnD
 HU9ghibHnMFM7bQo7oSdFRSUae0XsP3gEvC04j02rspxuH3mr2uI9VDDeL4G25uvFpPD
 Nb8QfZtvIwKT4equH3p4U0eT9y3BSfS5l6+zYrfusAIwVf0Sa7dst+ZO3GUtfrKsACc1
 QzhYsAN+bh9z/XCICTACYF5XYq+HAPExPvgf9oNd3ZjmVqzVG7/u3zo/eTgX/tLMI5ig
 wSRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qzVfbuv0UjeSRxXKHRypGoNUSRzZLS4IAN1hM5sqaJM=;
 b=SOFs6CDpokjnieTi//TE5k/3e/tUDhR8rYUcBRckEE2/tN8Fd3FK6pCy9FYgWwKIpV
 3E7Jw4OjmKR8PRiHGfMEMDnQESuIFaMAJh5yMB/UK4oXmMCwIFDNbIsQ5aWr4BURYmPd
 BWXoLMyitur4y+se+OrwQ7LHhkqZQMgYW2a6v7iXNdtmY8EF6RYLH6vMprWPioVZNm64
 RkOUIe8HjBe88JtRgZf5KGJI4sgp43/Do5gfmLwKnFnaY+3skFCCg88htSVronUc0TgL
 ZTATwwvcc/RemklIET6ls/nLiRghTCdho0x1ks6v+TTanCUMOtWg86lLXxJQaP0c7E/X
 xlzw==
X-Gm-Message-State: APjAAAU9wJXMzWJcma2ewU1AotVf8gVDCI0q4yUIg/SoZFiKcknk1ON+
 h4a/5F+gZx8XeITDuRhcyRpW0Q==
X-Google-Smtp-Source: APXvYqxVlIzlOPJ7GmA76MZihm63jDa0r+jAX7yBzPP+MPh9N+W+3wG8JHfgGtdpK1wwbvTmNBLnKw==
X-Received: by 2002:a5d:6646:: with SMTP id f6mr32681840wrw.276.1582054409814; 
 Tue, 18 Feb 2020 11:33:29 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:29 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 16/20] usb: host: ohci-pci: remove useless cast for driver.name
Date: Tue, 18 Feb 2020 19:32:59 +0000
Message-Id: <1582054383-35760-17-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113331_104597_1533575E 
X-CRM114-Status: GOOD (  13.22  )
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
hcd_name (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/host/ohci-pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/ohci-pci.c b/drivers/usb/host/ohci-pci.c
index f4e13a3fddee..22117a6aeb4a 100644
--- a/drivers/usb/host/ohci-pci.c
+++ b/drivers/usb/host/ohci-pci.c
@@ -288,7 +288,7 @@ MODULE_DEVICE_TABLE (pci, pci_ids);
 
 /* pci driver glue; this is a "new style" PCI driver module */
 static struct pci_driver ohci_pci_driver = {
-	.name =		(char *) hcd_name,
+	.name =		hcd_name,
 	.id_table =	pci_ids,
 
 	.probe =	usb_hcd_pci_probe,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
