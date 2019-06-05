Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFC835CA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=09zsFtQiokKOn0z5rLmaUoVUSXnlH3UgotmJ1uAyVi8=; b=ELTRp51lhuL0W9P62cVBSNbmoP
	xZ38jEy+6I8TIFBt39x83RdHIAhJfBVmWn1UQ7Haw89o+ygnOCZezQ+oISQJ/gptDfxcDfZxpjEiR
	ligILea7Q1KeLlaLUq6pnsrx7AGGSCg2WJS8MVY3ZjkV6UhbxENcPBZWKQYJMHeOEoPRF9QBhZ5x6
	Yq1jIdjlzqh9DvIOQYqXL85j0wy6gUIZlMuUIfYRXibMAzR1z7vX2lUxA+ihSeLiFh77hIwzpDzup
	rQPfmrT8lTs5yyyqzC22dQW4h95IXZjVW5n+WEec9t0HHVIh4VDeZouG95LllCQoj2A0RO/lZmjYI
	FMCs1pFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUwS-0000Js-Ki; Wed, 05 Jun 2019 12:22:56 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUw8-00009H-Sg
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:22:38 +0000
Received: by mail-pf1-x441.google.com with SMTP id u22so14743898pfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 05:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XvD01gwGwPNuRPEhXmAmu4eDP7JeVIjlGNk8Nfd1TVU=;
 b=MyVhaRsQfmeV0VJna801iFQDl6WPANoMVnR9955VixVVj/TS72OIqr+9CxTQnv5Z2r
 bY/pHzQ0OSdSy4TLkWT5ns9BOwfmo9nBB10bHjge4DqGCAEg13oMu1W5MQyb+/ZZ4anu
 w448lLZ9+EBtKQtJsbdT7r+yuPHgkxXGSE/xJYj6PAPv59BpZmtn8HDH43LwLaLauFXp
 75/iSq81hjWhYECyf/gvfjxrWOHiIu64ZuF6BHddPPK3Wqmd2PJk5HLbt00gBlTXOgBB
 Ae9AU6xw4Hzsc2i/v027AEM5hSnX8xz/ww8hplc2mGucvM3woWSxaB5DXsHhojhotIdQ
 DBRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XvD01gwGwPNuRPEhXmAmu4eDP7JeVIjlGNk8Nfd1TVU=;
 b=qdOebjLEwRdMAW3ICbdEUv1UuulnGgVOV6oLxFh2O+lidtNPTfbqbrBq7tEboYXgGZ
 61ZVWyeyYvdgO7n5vXLYzh8+35tjF7Ye5+8RIoCZqDTKUbG1Z9cwrzSrH7WYPgkNKvDA
 s3vFFfmAik1UOomvPCBgZiZFaKAVP3jzThvF183uYtmEmiwnxH8nuNJz6j9LFaAA+Gwi
 w+nOkPP1zE14ZKVxRoeCbH+37bcZC3PeLa3gpLc5MCbFvD2q/32SF9XFVMEUx5qRUMnX
 lUkG+h4q1uFRtUUhlT6J5rrEUldLLn01sUn30fMAJwVpqJrCkKfb+daqSlV+H/vNXaDR
 vlRg==
X-Gm-Message-State: APjAAAV6c5E7ps50v/ejvEQJaf+HXMU3HDWaQvrWnQAP7HXdcVqdJ+dN
 hPym4Pj+jLUc8O2Q8aDfwDE=
X-Google-Smtp-Source: APXvYqzHCuU7Z6N3vPTHx/riiLS2gEmWEYSbb+cJlSKkH+OC/ineeAYzJs1YUjLCINDbYB1cLpZOjA==
X-Received: by 2002:a63:f257:: with SMTP id d23mr3999590pgk.305.1559737356026; 
 Wed, 05 Jun 2019 05:22:36 -0700 (PDT)
Received: from Pilot130.192.168.0.22 (211-20-114-70.HINET-IP.hinet.net.
 [211.20.114.70])
 by smtp.googlemail.com with ESMTPSA id q22sm3322094pff.63.2019.06.05.05.22.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Jun 2019 05:22:35 -0700 (PDT)
From: "sudheer.v" <open.sudheer@gmail.com>
To: gregkh@linuxfoundation.org, mchehab+samsung@kernel.org, jslaby@suse.com,
 joel@jms.id.au, andrew@aj.id.au, benh@kernel.crashing.org,
 robh+dt@kernel.org, mark.rutland@arm.com,
 shivahshankar.shankarnarayanrao@aspeedtech.com,
 sudheer.veliseti@aspeedtech.com
Subject: [patch 2/5] build configuration for AST2500 DMA UART driver
Date: Wed,  5 Jun 2019 17:53:12 +0530
Message-Id: <1559737395-28542-3-git-send-email-open.sudheer@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559737395-28542-1-git-send-email-open.sudheer@gmail.com>
References: <1559737395-28542-1-git-send-email-open.sudheer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_052237_130369_D8D41404 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (open.sudheer[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sudheer Kumar veliseti <sudheer.open@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: sudheer Kumar veliseti <sudheer.open@gmail.com>

Signed-off-by: sudheer veliseti <sudheer.open@gmail.com>
---
 drivers/tty/serial/8250/Kconfig  | 35 +++++++++++++++++++++++++++++++-
 drivers/tty/serial/8250/Makefile |  1 +
 2 files changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/8250/Kconfig b/drivers/tty/serial/8250/Kconfig
index 15c2c5463835..c793466a1c47 100644
--- a/drivers/tty/serial/8250/Kconfig
+++ b/drivers/tty/serial/8250/Kconfig
@@ -45,7 +45,7 @@ config SERIAL_8250_DEPRECATED_OPTIONS
 	  keep the 8250_core.* options around until they revert the changes
 	  they already did.
 
-	  If 8250 is built as a module, this adds 8250_core alias instead. 
+	  If 8250 is built as a module, this adds 8250_core alias instead.
 
 	  If you did not notice yet and/or you have userspace from pre-3.7, it
 	  is safe (and recommended) to say N here.
@@ -189,6 +189,39 @@ config SERIAL_8250_RUNTIME_UARTS
 	  with the module parameter "nr_uarts", or boot-time parameter
 	  8250.nr_uarts
 
+config  AST_SERIAL_DMA_UART
+        tristate "AST UART driver with DMA"
+        select SERIAL_CORE
+        help
+          UART driver with DMA support for Aspeed BMC AST25XX.
+          this driver supports UARTs in AST2500,AST2600. It uses
+          DMA channel of DMA engines present in these chips.
+          since this dma engine is used only by UARTs it is not
+          added as a separate DMA driver instead added as a layer
+          within UART driver.
+
+
+config AST_NR_DMA_UARTS
+        int "Maximum number of uart dma serial ports"
+        depends on AST_SERIAL_DMA_UART
+        default "4"
+        help
+          Set this to the number of serial ports you want the driver
+          to support.  This includes any ports discovered via ACPI or
+          PCI enumeration and any ports that may be added at run-time
+          via hot-plug, or any ISA multi-port serial cards.
+
+config AST_RUNTIME_DMA_UARTS
+        int "Number of uart dma serial ports to register at runtime"
+        depends on AST_SERIAL_DMA_UART
+        range 0 AST_NR_DMA_UARTS
+        default "4"
+        help
+          Set this to the maximum number of serial ports you want
+          the kernel to register at boot time.  This can be overridden
+          with the module parameter "nr_uarts", or boot-time parameter
+          8250.nr_uarts
+
 config SERIAL_8250_EXTENDED
 	bool "Extended 8250/16550 serial driver options"
 	depends on SERIAL_8250
diff --git a/drivers/tty/serial/8250/Makefile b/drivers/tty/serial/8250/Makefile
index 18751bc63a84..54d40e5c6e2a 100644
--- a/drivers/tty/serial/8250/Makefile
+++ b/drivers/tty/serial/8250/Makefile
@@ -36,6 +36,7 @@ obj-$(CONFIG_SERIAL_8250_LPSS)		+= 8250_lpss.o
 obj-$(CONFIG_SERIAL_8250_MID)		+= 8250_mid.o
 obj-$(CONFIG_SERIAL_8250_MOXA)		+= 8250_moxa.o
 obj-$(CONFIG_SERIAL_8250_PXA)		+= 8250_pxa.o
+obj-$(CONFIG_AST_SERIAL_DMA_UART)	+= 8250_ast2500_uart_dma.o
 obj-$(CONFIG_SERIAL_OF_PLATFORM)	+= 8250_of.o
 
 CFLAGS_8250_ingenic.o += -I$(srctree)/scripts/dtc/libfdt
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
