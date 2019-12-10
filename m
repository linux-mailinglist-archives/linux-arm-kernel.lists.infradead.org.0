Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7191189B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nc+AtbV5aSaYV6OM6MnSGAcrPG3VAXIXyShXeOZzDGY=; b=M+Xdd5JE0Qv/umEP4yF2X2ye+7
	zxL6t4m8kHO3yPbBvT+myEBQFRprdwZEekEyXXjFJzRmIzMbQwJu8kAxSOeyetqDgP23GGnENTIvo
	s2S7r55aaxoSUx6sC8PHeHQCb2kznTRKqQVhFDqJ5+86rREFj80ILooeK4pveyCQ5WILMgKBUf8ea
	zBKznKMQtTm/L5I9nnB81fEk/uHGQ4AMQoAMccXABkXU39aIWNxgLrlnBXBZESo0ljhuBgOjLOvCi
	UNRQge9LUckpu1v/uPRZ2j9uKj1cTxN7a947W3sNjDYqDoOf7Ix21eNRXxD9sdVJI0xnsSZhekNJc
	rxmPEDXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefXf-0005jJ-4I; Tue, 10 Dec 2019 13:27:07 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefUY-0001cf-MB
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:23:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id n9so3203005wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 05:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wS4OYwLXLEvBtINm/7GwVk3W/9nI5ZzRdQ3AYe/w/RE=;
 b=Fu1LtkIuLARFdm/9GgPl/lueamweLUNxWP1y6mMVz45hVC7qqPlEZNGJENvQI3hgUP
 gVVvQLdtiSYFmn+EIWNTzIYdAS0846tqC2Gp8XZxL8+bQ79PRc/Yn6wVCahElwQD7eSy
 5Ic7EfUj41zeS+NnaEZW30qn87Rj44EfvoSQmGrJxy7LIhMN1wcAb9QgYdLH+ZcbJimR
 Xf4+WhbQI5+zRTEfS2Ls4NSKePRpC0MowYlMBRrXv7j/cMv1Y+8Ukfg1FgwzcTwNjQku
 14rLfeu7NpZ0PBMZGxK6q5/JKeMuXVbqme5XLgYPoO2sAPQG5zk3SXno9UXRT0e6Gklp
 QUTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wS4OYwLXLEvBtINm/7GwVk3W/9nI5ZzRdQ3AYe/w/RE=;
 b=Pl23XmTIEKIAl6pfh/BEREm8O/XZm9I+xaL8LQRqrb20Cuya4xY1JhZiPP1rjRAtJc
 uQfDcUbvJQ+Kqs+ANfg7vwhuHT3PPfIvU4BdcF2SviEd9Zb6co05MpHtTn6iJyV/+gVW
 wi/oRJPCIM4fjULx0SlCS5vJDmaOH5rZIK5HpwR5vXWf/Hqrq9NOoOOusqxltK1LXAYc
 Vjra93HMZqEYnhKq9pAM0TL0gBpiHZ/Vgb37iDiITJnG2UDfqco0/IvILB4twJUjzSGL
 6BwYeyPB2Z2XsSHyoarOmh8CpwT8ThjIqzRHk8YB09xQS0Uo0dDZ90NenMF1PHDP5/Dc
 YGgg==
X-Gm-Message-State: APjAAAULnOIDWdvTvNjuTuhGiKKW3+sPIk++0CdZnXU64GcZS5TrWGtA
 qdVy+uJ2FRAv1bFmLneytRc=
X-Google-Smtp-Source: APXvYqxmm6xjOoklsCQq4CtTblMfdkOZjUUBsUhviFDYr3aP4pYyN3txPMaHU+23EZ0ModoCGwMeWg==
X-Received: by 2002:a1c:c3c4:: with SMTP id t187mr5109555wmf.4.1575984232534; 
 Tue, 10 Dec 2019 05:23:52 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s82sm3101680wms.28.2019.12.10.05.23.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 05:23:52 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 12/13] phy: usb: USB driver is crashing during S3 resume on
 7216
Date: Tue, 10 Dec 2019 08:21:31 -0500
Message-Id: <20191210132132.41509-13-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210132132.41509-1-alcooperx@gmail.com>
References: <20191210132132.41509-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052354_753575_DE9EDE8F 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a result of the USB 2.0 clocks not being disabled/enabled
during suspend/resume on XHCI only systems.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index cc5763ace3ad..1ab44f54244b 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -543,7 +543,7 @@ static int brcm_usb_phy_suspend(struct device *dev)
 		brcm_usb_wake_enable(&priv->ini, true);
 		if (priv->phys[BRCM_USB_PHY_3_0].inited)
 			clk_disable_unprepare(priv->usb_30_clk);
-		if (priv->phys[BRCM_USB_PHY_2_0].inited)
+		if (priv->phys[BRCM_USB_PHY_2_0].inited || !priv->has_eohci)
 			clk_disable_unprepare(priv->usb_20_clk);
 		if (priv->wake_irq >= 0)
 			enable_irq_wake(priv->wake_irq);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
