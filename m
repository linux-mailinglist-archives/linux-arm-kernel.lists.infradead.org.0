Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B31C91BE86A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qcLVVB6EJWk7SUd0M3dd6qA/Sk1mpUKfu0pMx08+0qU=; b=pQp8PsSIuUa32s
	DD6SQGch5yDrFGIF1AJ/QT8xzOKu/FhXCdjbVFNyxczCXzImnF3FEi9AAdIF9LZg+NgmJ7nEbPBB1
	TmuYfBTaWoPe4cAQOpkEItZpTI/UYOkrwsBl6Qxl/0Y0fOwdjBLvdgN+fmyFCeyV9mIxx/qv8Mi/L
	pgS9dkBoM8rjPSTPCtuze48W1NIHyECPxPrzDvLRlurmVbEtfTm+3IVuVZviKgayov+HHhQWxYTJ/
	/je1gSuzR67w76VxK6YlhxmFAUntH7wLeNdwCRL7D8wp2awcX/elB92DSUoKwaBr1WEVYtzlM0eRT
	75ZrocefiqwOY2vxgCBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtAG-00081K-Vo; Wed, 29 Apr 2020 20:18:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTt8t-0006vN-Qo; Wed, 29 Apr 2020 20:17:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id b11so4113134wrs.6;
 Wed, 29 Apr 2020 13:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cq2CMCfNFIo7pBX1TF7b/dKJdrRkh6g3At8GmpCqDn4=;
 b=tqN2p6cbLg38vJgSeASbAQo1ovE3VIDD2t6o+S/8v2Lg93Hj7R1SKjQY/BzKe6J993
 NeQdaiwezZodZrXhrRQUyCAblQK4cEY4lihoGyIkxM3x+XHfvlCMWfvJ4MeHjxuIV/Vk
 5QLthzNaA/zn+hDa8T2iIllR1IDkd5wEjhPPu05sOHFBwtbWd5dwlGQpNBDcms5I6+cU
 XZJR1oo9AKQ3xWOi21Jp2EFNjMCSUotqDSq9j8kxEyDdSr/4vlN/EWuc8901AvJDobln
 Ho/dLv8zBDCb+Jw+HU6qBl7nbc0eg36OUpCKAUz4UdtRpxQFDO7maikXG1YkZZfRI3K/
 DwCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cq2CMCfNFIo7pBX1TF7b/dKJdrRkh6g3At8GmpCqDn4=;
 b=h7RlSJDYgiSSrm+Ml/5JNxrowwi7dxVwzvd4G2zw6KgLVphokz6PuyvqpjIcn5K39r
 L+XzuODgOEG4wfZka7hKt6gssK40f0F4SrF4HX9Vv99gqW4ct+HCtg3fhRgshpLCwsAH
 Fr/8RU5GtngL352N3M4VzMqnmXx18efBTIqAaVJw5eIl5o6W8m9G8HSchlRnrk+pKzMy
 fBeIgEjKSMufS31jHBdUbhP7KWG7+V5NBcXm5CG4k40isjxo0OczfEjaEZwBdYFmCqxR
 I9FTitbUadk+4FaEyS+ILkNUfmq1m2UczpmZlr36NX96u6RJWsyGtNR9m3Lhe46ITa+t
 BhAg==
X-Gm-Message-State: AGi0PubWluOtVBKXPOXEiDTCjt9su/n04xvrANAfj3Ftmo8cfHq8tRqn
 QdRUvhCtCpdbWivXpGm8K44=
X-Google-Smtp-Source: APiQypKKrc+VsYDd27uw8w+8me5jo1cYxiOApSLcXUWgmctOf6zkILYraWmMsPldaTWfAC2eBy2dKQ==
X-Received: by 2002:a5d:4cd0:: with SMTP id c16mr38575871wrt.98.1588191434647; 
 Wed, 29 Apr 2020 13:17:14 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q143sm9923623wme.31.2020.04.29.13.17.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:17:14 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH RFC v2 03/11] net: stmmac: dwmac-meson8b: use FIELD_PREP
 instead of open-coding it
Date: Wed, 29 Apr 2020 22:16:36 +0200
Message-Id: <20200429201644.1144546-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_131715_868892_3A8DF277 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use FIELD_PREP() to shift a value to the correct offset based on a
bitmask instead of open-coding the logic.
No functional changes.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
index a3934ca6a043..c9ec0cb68082 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
@@ -5,6 +5,7 @@
  * Copyright (C) 2016 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
 #include <linux/device.h>
@@ -32,7 +33,6 @@
 #define PRG_ETH0_CLK_M250_SEL_SHIFT	4
 #define PRG_ETH0_CLK_M250_SEL_MASK	GENMASK(4, 4)
 
-#define PRG_ETH0_TXDLY_SHIFT		5
 #define PRG_ETH0_TXDLY_MASK		GENMASK(6, 5)
 
 /* divider for the result of m250_sel */
@@ -262,7 +262,8 @@ static int meson8b_init_prg_eth(struct meson8b_dwmac *dwmac)
 					PRG_ETH0_INVERTED_RMII_CLK, 0);
 
 		meson8b_dwmac_mask_bits(dwmac, PRG_ETH0, PRG_ETH0_TXDLY_MASK,
-					tx_dly_val << PRG_ETH0_TXDLY_SHIFT);
+					FIELD_PREP(PRG_ETH0_TXDLY_MASK,
+						   tx_dly_val));
 
 		/* Configure the 125MHz RGMII TX clock, the IP block changes
 		 * the output automatically (= without us having to configure
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
