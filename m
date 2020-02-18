Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAF516301E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:34:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=E1pg40w0r1gT+hOm96D9XemT86i1FhyB8v8ZxO3TB48=; b=Li7
	yr+9WOLTdhsZuwjFlAYhJ+XQkk/fitaIhrAkTlwvvRSWIjSYpjTHVZlrSee5Z8h5jtzv9t9WYJFPR
	IqFp+cqq+jLF59WMHJducr+WbWJWZH0HAHuXdQRY6jQ8bmLmQWpjcRWxid2RZRPjQqH6zRyNotsno
	E5bmd6XxoHrzGujou9YsbDJ+LyNUqIwn6KBpX5cfJLhq8VMRtCqa8BpXjad/mJNW8Ly3ak9P6XmF3
	cbZG2Alh/VR5j/4fsN6c+1EZjt/VmBWQTAf7RM6szCibuWR2NBvqS+O8KiiK0IYa+xitPIaWnwilX
	J4YSKdW+tA2YXt46aO4C18WX/UJnBuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48d5-00086K-Ak; Tue, 18 Feb 2020 19:33:59 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cQ-0007mW-N4
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:20 +0000
Received: by mail-wm1-x32b.google.com with SMTP id s144so2902759wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=+jgqRKML7Yrf3AYnGUIzG8hS1esv3rcPRRHV79fbvHM=;
 b=psv0JUyk005qlyxlj1y9J8rTdUdyhCDFJ8a52kSkwHTJ/UUnAdgPuS8uo/RvUQeufE
 IdR+1lIruwhhBdDjahf5NsTruJo6m5wRtMuj10lr44QAxMyTu2yeXbwg0oLq5l9XDJ19
 gF/npJQeVP389phPJ1HuNhkxGV5DEpcgDeU2V6F0XFFvsAHMVBJtB2+ZilGPEnwjGZu+
 JHbNfoxTnrwiWgzqfroaexHBf6AOBs7iETrD6WKuri0WQ8YJPpTONO1jHaEK5CLeJuBf
 f8ty/A9+CxIxsy3Ns/70PDj+VGvOcqe1ioJPrgHgkPDevJyMAt3la2sYCqXZGfniokvD
 ofwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+jgqRKML7Yrf3AYnGUIzG8hS1esv3rcPRRHV79fbvHM=;
 b=Qes4hyW2TY3rmEhzBfeDoFJ+rDOFvuzTbch6YyhgIQ168ElBRXNZAssrfRSlfB3ehn
 hv3KeF7YG1tkcdO8RmByRpOjoOIHkbpqCoEQVrcmu3T7/NqJDvwzG2cccH+D0fsTblNm
 TqzS/Fvqx3G5qd6TYE5wRTunQljHZdP9fY86+Q2h7P+jRv6EhWXxLaBUBBvti5ncdKeS
 3C7PuT4CpQWF4ydeFV1MGY7AqHL7zGL6HZchddmTyZf1YZhWVTAa/HEbcpZEeRof4KS3
 KDYsYA1+WC0Gy/5svoaRfPEPIyhq6LvlJhFvgwXouA2xtTTkEOYnvoGUneVLgTiOf5PG
 M2Fw==
X-Gm-Message-State: APjAAAVkzs8t/j+ZYL79G/pMMODUVkHoNwt8nFCnYh+CRD4e0L7+npJp
 pUvUx/L2dPFbsNLmiQJQ2rVU5ji9pU0=
X-Google-Smtp-Source: APXvYqwCxodnbtZlxvUkeYI5t16CdUAuDYPYCyMJxqeG3RsIVjlqMSYNSQQ1wHqDOq1LeY0/99WinA==
X-Received: by 2002:a1c:1d13:: with SMTP id d19mr4919167wmd.163.1582054394962; 
 Tue, 18 Feb 2020 11:33:14 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:13 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 00/20] usb: remove useless cast for driver.name
Date: Tue, 18 Feb 2020 19:32:43 +0000
Message-Id: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113318_749325_EB3259CF 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
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

This serie remove a useless (char*) cast for some xxx_driver.name.
pci_driver, device_driver, usb_composite_driver structures have a "name"
member which is const char * and all the driver patched assigned to it a
const char[] name, so the cast was bad and unnecessary.

Corentin Labbe (20):
  usb: gadget: legacy: gmidi: remove useless cast for driver.name
  usb: gadget: legacy: inode: remove useless cast for driver.name
  usb: gadget: udc: amd5536udc_pci: remove useless cast for driver.name
  usb: gadget: at91_udc: remove useless cast for driver.name
  usb: gadget: dummy_hcd: remove useless cast for driver.name
  usb: gadget: fotg210-udc: remove useless cast for driver.name
  usb: gadget: fusb300_udc: remove useless cast for driver.name
  usb: gadget: goku_udc: remove useless cast for driver.name
  usb: gadget: lpc32xx_udc: remove useless cast for driver.name
  usb: gadget: m66592-udc: remove useless cast for driver.name
  usb: gadget: net2280: remove useless cast for driver.name
  usb: gadget: omap_udc: remove useless cast for driver.name
  usb: gadget: r8a66597-udc: remove useless cast for driver.name
  usb: gadget: renesas_usb3: remove useless cast for driver.name
  usb: host: ehci-pci: remove useless cast for driver.name
  usb: host: ohci-pci: remove useless cast for driver.name
  usb: host: sl811-hcd: remove useless cast for driver.name
  usb: host: uhci-pci: remove useless cast for driver.name
  usb: host: xhci-pci: remove useless cast for driver.name
  usb: musb: core: remove useless cast for driver.name

 drivers/usb/gadget/legacy/gmidi.c       | 2 +-
 drivers/usb/gadget/legacy/inode.c       | 2 +-
 drivers/usb/gadget/udc/amd5536udc_pci.c | 2 +-
 drivers/usb/gadget/udc/at91_udc.c       | 2 +-
 drivers/usb/gadget/udc/dummy_hcd.c      | 4 ++--
 drivers/usb/gadget/udc/fotg210-udc.c    | 2 +-
 drivers/usb/gadget/udc/fusb300_udc.c    | 2 +-
 drivers/usb/gadget/udc/goku_udc.c       | 2 +-
 drivers/usb/gadget/udc/lpc32xx_udc.c    | 2 +-
 drivers/usb/gadget/udc/m66592-udc.c     | 2 +-
 drivers/usb/gadget/udc/net2280.c        | 2 +-
 drivers/usb/gadget/udc/omap_udc.c       | 2 +-
 drivers/usb/gadget/udc/r8a66597-udc.c   | 2 +-
 drivers/usb/gadget/udc/renesas_usb3.c   | 2 +-
 drivers/usb/host/ehci-pci.c             | 2 +-
 drivers/usb/host/ohci-pci.c             | 2 +-
 drivers/usb/host/sl811-hcd.c            | 2 +-
 drivers/usb/host/uhci-pci.c             | 2 +-
 drivers/usb/host/xhci-pci.c             | 2 +-
 drivers/usb/musb/musb_core.c            | 2 +-
 20 files changed, 21 insertions(+), 21 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
