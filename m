Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DA8190C67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 12:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xvy3qRdXbApZz+6h6dXxjL+Pn/1ly9oezcwaAjPAJZY=; b=gNQ8hXoytfXnAm
	GbQtsdfyTrcLj/YtuoOHhpnfsoBNeKRumiCHYShlVOW6J5lDirGZAybCOwXiIZCvLohc3k3Xfvcsz
	xND2i0UoS46XqsWkVcC+A9PUKT0KtwE3PKESn3txqzNi6Zhove5b7y+okFiM76WFWE2ct4EJe32ea
	+IsBOCVycWNk9edAsqbQRpb0rFwCJWLXSYRI2ChhqC3MmRmV52eJhRmDmOUf5S8xLRPewuzdH84I9
	VvgcJANzxwvSAZBVHUnstOp/z+jakHIpjR3bc+TuOUGu+xb9fx0t5IpvHb1mSpxQrCJtdyjF9GxfE
	BLFwrKUTB4D4vxYTRf8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhi5-0003Em-6Z; Tue, 24 Mar 2020 11:27:05 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGhhw-0003EJ-Fn
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 11:26:57 +0000
Received: by mail-pg1-x544.google.com with SMTP id 7so8894166pgr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 04:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FrbvE2+XGpAbkhd83eQ/l+A4H9hHet3Hf7AqA26edfw=;
 b=G4FstDptw0ertkuwcrfdpUKzgqLUAfdH03n/zKcG4Ozvq8Dl8sViuWhFe+jF8bY3p4
 C5IhT4IM8x+w0OrS5smYwsOmHL0U4MGo/7gU+JHPzCsLqAyICNBFJfsyP8dIXToM2yWI
 8H3WXTsB42phpRuA8wknt/1fCK0elvX5CNYHcB46tfU3R+ZohLAbKEnYR+t1RgqPoHWB
 XU2iR+BexF3hBrzKIieVTkwozV21Ow7j7vyWZbr/JNMtrnENEeUeKFpuK0UOWUAX8a+T
 pKTdPeArgQOfS6YxM+Shx85MJL4fWCl5ho/hAn3hRhKfsMhFvhy++WXVhdbctj3aTgVS
 tKZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FrbvE2+XGpAbkhd83eQ/l+A4H9hHet3Hf7AqA26edfw=;
 b=VGwndlYjHwBXrtkq/j3ZjHJztBVqTRULhw0DJxETNaG3thdJPMyyyAzm3eU5qjQCuz
 YmQrH3Fi2DIp7QAAHsPSLFi3q925oQxlLFCZ5bLuaGiZ7t29d2qneuoplT4ouZV4BKMS
 NCiSN3njhZZj77dnotIo2iUqOdZEV0XDJqai002dxvHfHqKnlm2bu3lV+1UrTpvYopN0
 43YSTZKMmIvxoKYiwkCMFMVtzZ/1wIueE2M7C4I/NozWhyK2doEARs6uijNS73fSwgtU
 Wcr0POYZp6I/LhfYl9fxGZcMr3Zn0za08f/h23PssGfzJAo+hsjuMvbfPB74zj48ebOt
 UhUQ==
X-Gm-Message-State: ANhLgQ198IT2P5OFE99ePaS9I+jQ8FAqnO9J4ZePggJUKQ53psjWm1pM
 FwvTBtI7zcMj1Tfaou26Pr0=
X-Google-Smtp-Source: ADFU+vt1jg56FUPmc2UWey6QkZhMBdlnJxDKePswGVYyeaouJxVkEEvb+rFCGkFiDg5fOd6lYt/O3g==
X-Received: by 2002:a62:170f:: with SMTP id 15mr28277644pfx.12.1585049215248; 
 Tue, 24 Mar 2020 04:26:55 -0700 (PDT)
Received: from localhost ([144.34.194.51])
 by smtp.gmail.com with ESMTPSA id n30sm8070278pgc.36.2020.03.24.04.26.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 24 Mar 2020 04:26:54 -0700 (PDT)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: andrew@lunn.ch, f.fainelli@gmail.com, hkallweit1@gmail.com,
 linux@armlinux.org.uk, davem@davemloft.net, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 netdev@vger.kernel.org
Subject: [PATCH net-next] net: phy: mdio-mux-bcm-iproc: use
 readl_poll_timeout() to simplify code
Date: Tue, 24 Mar 2020 19:26:47 +0800
Message-Id: <20200324112647.27237-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_042656_528136_F6EB80A9 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dejin Zheng <zhengdejin5@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

use readl_poll_timeout() to replace the poll codes for simplify
iproc_mdio_wait_for_idle() function

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---
 drivers/net/phy/mdio-mux-bcm-iproc.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/net/phy/mdio-mux-bcm-iproc.c b/drivers/net/phy/mdio-mux-bcm-iproc.c
index aad6809ebe39..42fb5f166136 100644
--- a/drivers/net/phy/mdio-mux-bcm-iproc.c
+++ b/drivers/net/phy/mdio-mux-bcm-iproc.c
@@ -10,6 +10,7 @@
 #include <linux/phy.h>
 #include <linux/mdio-mux.h>
 #include <linux/delay.h>
+#include <linux/iopoll.h>
 
 #define MDIO_RATE_ADJ_EXT_OFFSET	0x000
 #define MDIO_RATE_ADJ_INT_OFFSET	0x004
@@ -78,18 +79,11 @@ static void mdio_mux_iproc_config(struct iproc_mdiomux_desc *md)
 
 static int iproc_mdio_wait_for_idle(void __iomem *base, bool result)
 {
-	unsigned int timeout = 1000; /* loop for 1s */
 	u32 val;
 
-	do {
-		val = readl(base + MDIO_STAT_OFFSET);
-		if ((val & MDIO_STAT_DONE) == result)
-			return 0;
-
-		usleep_range(1000, 2000);
-	} while (timeout--);
-
-	return -ETIMEDOUT;
+	return readl_poll_timeout(base + MDIO_STAT_OFFSET, val,
+				  (val & MDIO_STAT_DONE) == result,
+				  2000, 1000000);
 }
 
 /* start_miim_ops- Program and start MDIO transaction over mdio bus.
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
