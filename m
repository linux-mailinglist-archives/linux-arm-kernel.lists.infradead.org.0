Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8261061FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 07:00:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdSCpikIH5I0AD0O4ktvdc27zlzfM9/Xtq0+BWqKpew=; b=Mt2Vc/RJBLYXeL
	ozDwojXV1Sp5991j8BzyvJdLFMSu0GfbZHELaNxcd2ePuCtzcCznpy3LwBoMkw6BLwVsLGsD51ZRI
	K28aEkKd5AXU56WsmwCB+FSbkoC6kd63LKB1qDkLvkOvkMz18LZOStnvYJQhTcqBDfpqbcH+80dpG
	XzKPhQevu9GrTlw55ytKPk4QbwlAfTg/3xqB9Eo7vW4SPd4uYImWz1wumMw6+crCxf/4BW2qZP0DI
	9VUWk9o/Z7j5k0FtOmlKtJHE29fRetsH8Cbpyjfs7eNfkKJKjLucWSSS02AKNPDfzz5nm1L6AifI+
	IoRX7N2Oug9CNtcCjKhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1zu-0005bU-5G; Fri, 22 Nov 2019 06:00:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1vA-0008LG-59
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:56:01 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFA6620717;
 Fri, 22 Nov 2019 05:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574402155;
 bh=SX2sF24SxxN0DTRfvAZ+p3qN/yPB1GS57zgjqYDAA+o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nzAj0Vc9yar85tYggVzWTDW15L/YtAPvrKz8cPCe+eMqfpDxaVdSzcW0iPJJzoKCZ
 dxKm4VkjU9kbEvBSxt4eKvmbkYglwe50XGF++yn6/1k0yrc18i1Enraod39ptHVR74
 0XaAWDf8APZ548kICWAdTlIfQXC0uxA4N0YokuJY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 010/127] ARM: OMAP1: fix USB configuration for
 device-only setups
Date: Fri, 22 Nov 2019 00:53:48 -0500
Message-Id: <20191122055544.3299-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122055544.3299-1-sashal@kernel.org>
References: <20191122055544.3299-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_215556_280230_2CD29657 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tony Lindgren <tony@atomide.com>, Sasha Levin <sashal@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Aaro Koskinen <aaro.koskinen@iki.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Aaro Koskinen <aaro.koskinen@iki.fi>

[ Upstream commit c7b7b5cbd0c859b1546a5a3455d457708bdadf4c ]

Currently we do USB configuration only if the host mode (CONFIG_USB)
is enabled. But it should be done also in the case of device-only setups,
so change the condition to CONFIG_USB_SUPPORT. This allows to use
omap_udc on Palm Tungsten E.

Signed-off-by: Aaro Koskinen <aaro.koskinen@iki.fi>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-omap1/Makefile           | 2 +-
 arch/arm/mach-omap1/include/mach/usb.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap1/Makefile b/arch/arm/mach-omap1/Makefile
index e8ccf51c6f292..ec0235899de20 100644
--- a/arch/arm/mach-omap1/Makefile
+++ b/arch/arm/mach-omap1/Makefile
@@ -25,7 +25,7 @@ obj-y					+= $(i2c-omap-m) $(i2c-omap-y)
 
 led-y := leds.o
 
-usb-fs-$(CONFIG_USB)			:= usb.o
+usb-fs-$(CONFIG_USB_SUPPORT)		:= usb.o
 obj-y					+= $(usb-fs-m) $(usb-fs-y)
 
 # Specific board support
diff --git a/arch/arm/mach-omap1/include/mach/usb.h b/arch/arm/mach-omap1/include/mach/usb.h
index 77867778d4ec7..5429d86c7190d 100644
--- a/arch/arm/mach-omap1/include/mach/usb.h
+++ b/arch/arm/mach-omap1/include/mach/usb.h
@@ -11,7 +11,7 @@
 
 #include <linux/platform_data/usb-omap1.h>
 
-#if IS_ENABLED(CONFIG_USB)
+#if IS_ENABLED(CONFIG_USB_SUPPORT)
 void omap1_usb_init(struct omap_usb_config *pdata);
 #else
 static inline void omap1_usb_init(struct omap_usb_config *pdata)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
