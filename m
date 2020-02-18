Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F5F163045
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JqZZQq4AMtpBvZ1ZkgVS0GN9VyXplnCOKXS9GwsZWOk=; b=cq3FeI3Y9SVqSHGnrwyDtaFL31
	zrvallTB+9wVOUjpLphbTI6W1JHV9wrAAFJmgp2lAEHAabvh0CrslhRbI245/oTLUCzcuGd2ZeoOv
	0jhqke2CmVAk/G6lGkPVfCJ0mJw/st4B1e29cAinykI+xm+GuuMHn6RWP83DkN4H59lsxbvjgAxUL
	HzOMjhovArxJuBv3mlS7I1cl52UYSFUrQjmHkAv4E1qe/sZ8Lyzbn9XfxTnqfQc26I3BdCtSfnK9z
	YcCNMexP2ctyi4VTeJ328MKxmMpXHvYVUlv6gldha/pVf6LILgLPCwk9QwP5P7sxo5YJL49f38WzY
	XkmHcbbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48g9-0003yQ-HS; Tue, 18 Feb 2020 19:37:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cc-0007w5-8b
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:31 +0000
Received: by mail-wm1-x344.google.com with SMTP id t14so4203852wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VageqtOZsyobFYSRSb56IHHuxmKRjwjLuogyKVcC/80=;
 b=WP2Nb5X/iHvjuhfX0cwqp5/S+DDSlybv2/MDC9JZm2aK9z5yGFSkpHx57q5uiUdYiJ
 KwewSKKAaRkL3LT8E2oFQWrq461FqCi3owPfKK+YB5XVVVpBOM09lZ3LoNXefY57mLp2
 OmYd2uHXYgO8xZdP0b+0EwWp0DzuAqEJF2SbZX2CTkHPvD9o49xkHtiYdN8FMHhWEprT
 m6B/m3ZZTrFOmfRNlCoDpaoo4NdLBfHvZpyC8eAeRJQtxFnM2QMdi9I6CtlTWn55BZAl
 +VPqu/lch8gT7TQLG39ouZcfjHI/ttrEwAaE5WhUyf5wqsO9G0Rl8X8DmGxyvzQffBgR
 US0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VageqtOZsyobFYSRSb56IHHuxmKRjwjLuogyKVcC/80=;
 b=TH+nwSVU2Gyg1qcsJQLOMZ5VUaUnckXMxnWNsjvS1Tt7IYbkU7ytUPHEX0bEqHxf5+
 e86y3eTQiVLS+bBQvvXjSVjmICd1iUAQey/iMxJ+cM8G/RkbeOguMRnTrdGPWhTLf94v
 ApW2hmIMVxNV3qNU1HPNd2MDe0+9GxfdvoNatD9R0JIyn41tTby/wGuerNgMbV7WDEIN
 6ml2Vxg3nRKYesUffzI2qVQzdLen09WvkbIvtuIcJ0oGUtTYxkvZfcRG6Q8xxXZncbp/
 d3BIH9GSh72PVv06rbMjlTt7Hcv90xXm0EwhSXPiIqWk56gQVjS3fWBx7/yDayMYrCtL
 Dsbw==
X-Gm-Message-State: APjAAAXpI5NjM95XhwDr03F7HqjWYnDwpE0Qb9CU48yHcdC8RqSkms0U
 +rsxkABz3Nj93GfDz7NmpK2L1A==
X-Google-Smtp-Source: APXvYqwQ/UXHl72OmZruSflpc5eioVTKPp3ANMMmirpPpsbjMqwaBn7VaVg9yPcWpx5E4upI/oajNw==
X-Received: by 2002:a05:600c:24d2:: with SMTP id
 18mr4738998wmu.149.1582054408923; 
 Tue, 18 Feb 2020 11:33:28 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:28 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 15/20] usb: host: ehci-pci: remove useless cast for driver.name
Date: Tue, 18 Feb 2020 19:32:58 +0000
Message-Id: <1582054383-35760-16-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113330_333510_C37BC0EA 
X-CRM114-Status: GOOD (  13.13  )
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
 drivers/usb/host/ehci-pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/ehci-pci.c b/drivers/usb/host/ehci-pci.c
index b0882c13a1d1..1a48ab1bd3b2 100644
--- a/drivers/usb/host/ehci-pci.c
+++ b/drivers/usb/host/ehci-pci.c
@@ -384,7 +384,7 @@ MODULE_DEVICE_TABLE(pci, pci_ids);
 
 /* pci driver glue; this is a "new style" PCI driver module */
 static struct pci_driver ehci_pci_driver = {
-	.name =		(char *) hcd_name,
+	.name =		hcd_name,
 	.id_table =	pci_ids,
 
 	.probe =	ehci_pci_probe,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
