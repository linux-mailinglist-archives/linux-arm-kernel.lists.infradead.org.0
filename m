Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39098F3120
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R5Luxcf9R0QGgZYntjF6eBaK+H9UR1LmiziKC43uf0Y=; b=ujz5tBwuSTaTvFezNsJnujHtZH
	zuItL7ADE226TD36ZBYxpXASvVql6EfIZIbLCxXnnig4J8DGYoaAijWcwBheZ6K0eJt8Eu+O9imbM
	6ONTmh3RxRzerMwRnUe9OpB25C7PBAFos1soYs3OD9uJWm05mhiMF2nM0XqQT3OPnajEyA4UbTllZ
	2pl0wO0AZGiELCISiwZfZoyVskp021tBa4ulDX5vFU6Vzy5/p1OonW+7OzXCaERufiV/5QR1FG1zc
	i6WWsL+KJxn9TIgK3UTe6HLV0j9JkfGSMB20KRYZoNAbX9yhdGabNhBEL4m17j41JMWSckMR5GKVP
	PtGAzzRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSia3-0001BP-Fi; Thu, 07 Nov 2019 14:16:11 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSiYX-0007Mo-S9
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:14:39 +0000
Received: by mail-wm1-x342.google.com with SMTP id q130so2608760wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 06:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=n5G8vs80VS3sA4MhM4cgPCr2IxsX3rpduYhIhTGIkuI=;
 b=hSXTmXuHLBpu0zD9e0xuixf1ulbCGQgSBils56wZxFuyFWeSclmE0yfm9xX7fcVfCN
 sQ36TeuKN6hjIL32f3xyqSNt1KItt7V9JbKno91ivs1ZCTzVmPzCmEbUdfpe7vM0PVSE
 +XsbCyTu/7FmCNL/1c/CfiZ3+9sxOI+pw3XrzafsLR+jpMntev0YfHxiaKtn63poWRp+
 uHDGIWcBKA7ywWhXwLkb2IZDc+QL3SO8F4cABQkyztWiBQ/pjHoU4YM2oKE22goz655i
 2PWuZ1kPi0v0JqEhnlxmHMbfmbg+PnrzpATP7DbudA8kgZKzipJESKGIsyFx1lKAlNjo
 rTHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=n5G8vs80VS3sA4MhM4cgPCr2IxsX3rpduYhIhTGIkuI=;
 b=GusbjwT519BwAyfTQxouY+cCPjI9qS3Q8qqVsIgYnHQhx6oXcuf0MQ5PmfhFVLYsZv
 Dsvdx2C9hCWGXVn+FM/Zn0g3d2t0jUxn98dR74JwIfGlenMh1pJtUdnMceWXPn/Ziwvi
 TkCxKp4bW7sCIsAbfGQjpcatIwjC0N0FlHk3PyXjjn1nofyFQsBj6ISUo8ih8EBqA5wP
 Jo+EZy0wJJ7st0Zt7eKVX9vnwKB+6iJ32tKY2+skpnkTm14NH2RpveL1gOGk8Aa7cDDk
 /QCdHGeuo2yM2bN09NwQxQtRmdqArFSxRlFWqkmEHlyJ9A5r/VTIGv0SpoDBclL4ekBS
 phAA==
X-Gm-Message-State: APjAAAUUYmwcWrZxxYXpgyFykQ5HA1Tcuwv3IS6FheRmn5BVbATMFF3a
 bz6gSEKaHIHai7XYbvXkYHk=
X-Google-Smtp-Source: APXvYqzwZkg2at7weMm3Xi5poNNvKbkzcGIacFWSIDTP2hLy32lCioKV70ZSpYSIOo4umHUp5HZ4xg==
X-Received: by 2002:a1c:44b:: with SMTP id 72mr3041762wme.72.1573136074144;
 Thu, 07 Nov 2019 06:14:34 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id b1sm2453888wrw.77.2019.11.07.06.14.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 06:14:33 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 03/13] phy: usb: Put USB phys into IDDQ on suspend to save
 power in S2 mode
Date: Thu,  7 Nov 2019 09:13:29 -0500
Message-Id: <20191107141339.6079-4-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107141339.6079-1-alcooperx@gmail.com>
References: <20191107141339.6079-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_061437_947653_13C12E8A 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
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

Currently the Phy driver will put the USB phys into the max
power saving mode (IDDQ) when there is no corresponding XHCI, EHCI
or OHCI client (through rmmod, unbind or if the driver is not
builtin). This change will also put the Phys into IDDQ mode
on suspend so that S2 will get the additional power savings.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init.c |  2 --
 drivers/phy/broadcom/phy-brcm-usb.c      | 11 +++++++++--
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
index 56d9b314a8d0..0e6b921072be 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
@@ -1002,8 +1002,6 @@ void brcm_usb_uninit_common(struct brcm_usb_init_params *params)
 
 void brcm_usb_uninit_eohci(struct brcm_usb_init_params *params)
 {
-	if (USB_CTRL_MASK_FAMILY(params, USB_PM, USB20_HC_RESETB))
-		USB_CTRL_UNSET_FAMILY(params, USB_PM, USB20_HC_RESETB);
 }
 
 void brcm_usb_uninit_xhci(struct brcm_usb_init_params *params)
diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 217e3702ef4e..634afc803778 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -381,8 +381,15 @@ static int brcm_usb_phy_suspend(struct device *dev)
 	struct brcm_usb_phy_data *priv = dev_get_drvdata(dev);
 
 	if (priv->init_count) {
-		clk_disable_unprepare(priv->usb_20_clk);
-		clk_disable_unprepare(priv->usb_30_clk);
+		if (priv->phys[BRCM_USB_PHY_3_0].inited)
+			brcm_usb_uninit_xhci(&priv->ini);
+		if (priv->phys[BRCM_USB_PHY_2_0].inited)
+			brcm_usb_uninit_eohci(&priv->ini);
+		brcm_usb_uninit_common(&priv->ini);
+		if (priv->phys[BRCM_USB_PHY_3_0].inited)
+			clk_disable_unprepare(priv->usb_30_clk);
+		if (priv->phys[BRCM_USB_PHY_2_0].inited)
+			clk_disable_unprepare(priv->usb_20_clk);
 	}
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
