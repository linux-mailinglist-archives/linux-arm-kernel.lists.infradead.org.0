Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC88F12FC5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 19:22:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nc+AtbV5aSaYV6OM6MnSGAcrPG3VAXIXyShXeOZzDGY=; b=ZLTVAZ/B771WyXURvy7ktUuODb
	dwly/lmVUp3OrGTjibGHJBtY87f4lIGGnJ3aaeWVyQ1Lh6b641GHLZFsmOqQSIeOlZWhDOMa8YaXn
	JFsAIyTmbl/+skXFuOIKxlKKdKC2F01eXGaggPZf/yc8MfGTvIY+x2inlSUfNmDzCeDvxYFs8VKE/
	tAZWcPkqyzmTLlyvWpukJSVYLJ7ZArhccGou/2fEtYSjKou7Vt92KCE3D4sppDQbVwH9R6cijyr+S
	6F40+6HrWnyvqNXrf//ACyK1D1ZtjsaKFnh3oSLet5RtaLOdTW9nUgVxebSdED5LZS5Yg/X0G3YRK
	Dse+pFPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inRaw-0000Mo-Uz; Fri, 03 Jan 2020 18:22:46 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inRY0-0004Kd-QJ
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 18:19:47 +0000
Received: by mail-pf1-x441.google.com with SMTP id x184so23874880pfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 10:19:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wS4OYwLXLEvBtINm/7GwVk3W/9nI5ZzRdQ3AYe/w/RE=;
 b=vB48KKzajgF0TdWQFeNgtIHOSjWfmrSCxxblLZl9BdQYP7K7bDNHn/pvbTxZ0XEyuA
 a1P28pDCd2An1QLxjD4z2AoGtK+buld4Ddw76w+9I6BzMmXICtdYtBw8ANmUkJF94v2y
 eBHJk5eR7N+9d1q+mefG478YaydsRUEVLA72oe8zzqhxx1VUX9D8/S19iwLo/J8o2zKw
 liRG7dx5PHCxK0+9lBH7eOgXGwEDHgum2zxUc1OsyYbbBV0Qrwhax6VzXF7hpCaeMlNb
 9wNYAZ7k4bmbLfDIffpzPBA84JyBzuSRodAGeI21S5pJKibERgB5IBettK/GN1soPrRS
 wnjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wS4OYwLXLEvBtINm/7GwVk3W/9nI5ZzRdQ3AYe/w/RE=;
 b=aZm2AfhBU659/20kF722VxXuj6wBSNd8UNln9Yy3lpEq5O63r5Uqvglk1Tr+b6ajHp
 51KUkoRh41B+2N3FKNLFK6uicjgVFjcos/ugiKtY47HgENbYuCVmJv73njcAvkZ8fBR7
 nkZm6dfe5DXqHxctRikSmI6NJsIBptYx9Qve1KJW0rtGJozmVxANee9HlcUKQUIfcjNK
 JYC3f21OfsrQ6X5MTcyCOgexDN4WCYBCq0Mq3vGjL3ZwoBycdZdd3d4k11fKCuVv7UBU
 TnPuGrnCx4nn2WRqEkIMt7oIv5pGlvm1bGyHjymdS8OgHgBpFnAQOILNBOgBw1tyj7ar
 NFfg==
X-Gm-Message-State: APjAAAXC7PPSY0i5u1jue1xM5O32OSmEjbMKSYnEuhNVZDrDPXcNi1zd
 0gLCX5/Dkk3c93DVngCudV4=
X-Google-Smtp-Source: APXvYqxnOuW+7U6eGKXIMR0ijUF5NkCQefanxaJ3IyaESoBBixKe2pCIAFqqvJqbCksTyWdPcOxPdQ==
X-Received: by 2002:a63:31cf:: with SMTP id
 x198mr96136045pgx.272.1578075583530; 
 Fri, 03 Jan 2020 10:19:43 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id j8sm41783602pfe.182.2020.01.03.10.19.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 10:19:43 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 12/13] phy: usb: USB driver is crashing during S3 resume on
 7216
Date: Fri,  3 Jan 2020 13:18:10 -0500
Message-Id: <20200103181811.22939-13-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103181811.22939-1-alcooperx@gmail.com>
References: <20200103181811.22939-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_101944_946831_9D6868AE 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Al Cooper <alcooperx@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
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
