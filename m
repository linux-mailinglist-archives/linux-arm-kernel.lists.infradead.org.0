Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA13FE534
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:47:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nc+AtbV5aSaYV6OM6MnSGAcrPG3VAXIXyShXeOZzDGY=; b=Z9LinsurDauvBzPCZj5cv3tgVu
	D9Ewe90JrTadzryMhjS+Q1DzIf9MNMV70QN0M+YvK2qhS2ebQ8edPYFz1ZS1zNCOOGHK46ebOInJr
	QHicBOShprl/ihOcjHQJEsHq0GOeyftNwqXKGaqUC6GK1RCnsJWOV7uKf5trxv3+Fn+sn6JjBnjbs
	ksMN4dlVzjZXctJaM+VR9ZUYQ2ezrbJ011vRqBS2eoW6Vv0Tf9GgnkXbi93kJKvN/m70cycOLdWsI
	l5cUoF3PD9rM4sNVMiSOm1yUAG13dGZC0ixkIXfaAa4ktq05rbWAgWSNtntrctKhcmtPYD612NZw8
	+2toKseg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVgcY-0008C9-0h; Fri, 15 Nov 2019 18:47:02 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVgZZ-0003oE-QY
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:43:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id s5so12070491wrw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 10:43:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wS4OYwLXLEvBtINm/7GwVk3W/9nI5ZzRdQ3AYe/w/RE=;
 b=ZfQzyGBTDq2JsmAF6Eh9iDl+Q8ae6hWrlfyq1qDABegjvni4ncRQe7VfUvjwF8NZOm
 zqDIxIfzys9VdjodVY+M+y+H4Y23arlmvL4yTcmzZyH2WBG+dCAvYIUxSV1UPQjw5zI6
 2kUubxMAG/576F7xmvw+IHx3iBzS7qPXTzLjKhM44OHG7CY4rBS77k9gnqwkvOI9KDYZ
 WrtUkiK5hOPFyrrW3YC8xUVygOMuS3UWCsnlpQbBSCGcX9bP0WvjSN13B2FpG/b2FkAp
 0Rr/XhxLZFXTZSWI0CiMysGIAvsl1do3BL0JXEYwRQRsvYnTS/FiHQ+fZGe9NBuJWEUH
 pPSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wS4OYwLXLEvBtINm/7GwVk3W/9nI5ZzRdQ3AYe/w/RE=;
 b=jh0CawW7lOOoxdzlY2PtjT+3fuW1GZnsKXg12zDAQYnZyCXCq43lcts1LoAOzEKmxg
 hCy5YoQCnvC+Vf6acA2tFwARaum+DEPsbYEbM1g0fnbCC6iAkx4rHshdxqko00virPws
 yK8yTojkRDJ80N9gUtoYI4chfCiUYB5oUGj3W7LsOUIYyelVJh/aE84dlxvJF+Hp+LOU
 3jFpH2f+sf3gtQPVa7Rr58c97l1Y193aPFnNbGFZxjWHPVNEdrYB+pHwovNMpqpjCndV
 2leCr929ZKxBJdRWxey9AqLWRaxUuCbNNm0fHIUz0mMs+xpsjBfjDiggXQo9CDs3pJys
 sKMg==
X-Gm-Message-State: APjAAAUKEt3WTYVpVsvGK8NtxR2iC0f5t4xv2wCVXB7Ye2kC1UhVwHap
 v8Ufkvd/NFt6Bmo4E7JHit0=
X-Google-Smtp-Source: APXvYqx5Ackgu5oO7MlkxDLNeqrXtQzAqtgQjJXWKc6eQCl5NZT10rv9zLGyYs9Wmoopnoh/iyFT7A==
X-Received: by 2002:adf:de86:: with SMTP id w6mr16923037wrl.220.1573843436058; 
 Fri, 15 Nov 2019 10:43:56 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id g138sm2620989wmg.11.2019.11.15.10.43.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 10:43:55 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 12/13] phy: usb: USB driver is crashing during S3 resume on
 7216
Date: Fri, 15 Nov 2019 13:42:22 -0500
Message-Id: <20191115184223.41504-13-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115184223.41504-1-alcooperx@gmail.com>
References: <20191115184223.41504-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_104357_934556_0CC3120D 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
