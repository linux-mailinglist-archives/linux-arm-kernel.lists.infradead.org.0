Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED5612FC50
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 19:20:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4EEHcZOcpUbt3lNsUtTN5ACloVZ0SbyM2aPU426IlM8=; b=CA18uQzf/Y+UtzjIQlRiyDkD4f
	6IO5VdVTYtIpNQK6XGVmy6ZOrjj/M8y5N3FPqKh8JuVpOFii/tosQLjPbASocOj76UVI/rhMVZwtw
	2Z7V2xkvoVSvL+1OAGTFHr9r25CJ9xVPObEQLwRXVDo5vnBe0L4wCyy//14Nta5jJz2UrEnRCX1YY
	rCTp4MvWg35xTss3Cju/Mq854f6f83sTIla70IhUPxZGOHB4Wf+aPpIXCb9oPszuc5qUCdTY2xyPy
	fohrgc2+2nO9esMaq8ifyhDA1lEncXCtwXLiHKcdsM/4XYRvquuUxemHERw2gKsDtu+e3bwiFztEQ
	QkaU2Gbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inRYu-0006Q1-Gb; Fri, 03 Jan 2020 18:20:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inRXk-00042c-3h
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 18:19:30 +0000
Received: by mail-pf1-x441.google.com with SMTP id i23so18448362pfo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 10:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H4+FLclhdhCw74jAzeAwHm0BVOBLEFDsMtURbkkNBZU=;
 b=b7fPgsM5mGk6z83c9LDyzId6ez04NMpL7DEQSyIYFibdR8sd2Nzz8y+Te0H8CTeU/x
 iIQ93+fzPhDaXpUfkIFlJIp41Q5ziTuok9fC6iKeeFcJcDp8y4PYLo2n7aqaCLv65QHW
 E+XccHokjIAdeS7NFMtosBhbiMbcBjFIgGAhcCkZF+Za+qwzMzt4VyAZ8FWIYa1A0v1J
 OJA0xDmuvxojgCcuSzlrgvjS77AJwoDzrpnViq0evwa4kjljuUNMIPxuJXo0PXPn5Xpl
 ZFQL3/5qBICsJcUkbK3WXaE0JvCyJja2yA3SQtNbsgUSXbd67LKOLJK9jtB/vnXQrNHW
 avBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=H4+FLclhdhCw74jAzeAwHm0BVOBLEFDsMtURbkkNBZU=;
 b=BylgEOmkWwR0F3qn5NWRYSL+tvynZjG5puzhL3hNX8rjqPqg4Q0goPY4OABCyJQEdX
 KhD5BnHUmOWV6t5nJeL/hAitiEbHXHFmpu9E+TVP7JZ3QocZAWjCXZqPX1ebxjyHRTaO
 gKRjRqqSPTdZHxh8zGlG6LsYBO7DIgxhSXV2wuvUKK/CLFOUt+qfxr9l9lQvbBFR7H40
 hds7SpAm1aYLns+d4T0b96wBQP/CnQWdrKuoi2D72X7shOyde79XxMu3g//rPFqCt5A9
 MJz3nXGHxLdv/PwTLBYfmc13bBZfJFZyjVh3WqwzZMIiCL8sF0MdKzzGh0Z/5JVr0IzJ
 vVEA==
X-Gm-Message-State: APjAAAW6VcAKHbeILG4dwlhU82REh3GunH2M9m5MDVtPCpjIt7fp7c0p
 gPXOBBLsZXN/JvubTfwh1Ec=
X-Google-Smtp-Source: APXvYqyd9ZHb8lCT1ZWjePB2OcU+bgS2tg+bAz2UTydf83b69xa442arcEs1Sf5vavhuFPSKav2a+g==
X-Received: by 2002:a62:158c:: with SMTP id 134mr94582731pfv.81.1578075567622; 
 Fri, 03 Jan 2020 10:19:27 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id j8sm41783602pfe.182.2020.01.03.10.19.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 10:19:27 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 03/13] phy: usb: Put USB phys into IDDQ on suspend to save
 power in S2 mode
Date: Fri,  3 Jan 2020 13:18:01 -0500
Message-Id: <20200103181811.22939-4-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103181811.22939-1-alcooperx@gmail.com>
References: <20200103181811.22939-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_101928_179714_C768DA1C 
X-CRM114-Status: GOOD (  14.23  )
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
index bd473d12ab28..ac7f7995c11f 100644
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
