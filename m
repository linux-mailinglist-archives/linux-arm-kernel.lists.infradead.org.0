Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C193C1178C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:45:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R5Luxcf9R0QGgZYntjF6eBaK+H9UR1LmiziKC43uf0Y=; b=o54HHmnmsTzqlEcVGuXgz621Dq
	LnlNWCb2laXcYstqsOdfSbAd1s2/OFzySorJQYzhyoBeCpOOzUye2eCii8ecbhpzVuURAAV6eH4zZ
	glnfGwWsV7NjbZUbh+OMXUqa/2Lc6Lwk7S9KgodjR1TRuGJ2F/Sv0NW+nKRNg2YqFxFLB/k3DSXxC
	FnaFyePgywKh10I1kMp4w/eGPVoGD3pRTLFq5KA8VFUTGr2nOT/sUIkwawHCO0gfwspTkNh4HMkef
	GfyL5ciFfhUV6AX6iXsqAb/uEXyXw1/WsTf9tFsMj6KjlKz76Qx4zBrYMQeHTRNEjL3E12VeE3MWs
	zeM2b+qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQq9-0000ND-Jp; Mon, 09 Dec 2019 21:45:13 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQoy-000812-Aa
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:44:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id p9so964863wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 13:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=n5G8vs80VS3sA4MhM4cgPCr2IxsX3rpduYhIhTGIkuI=;
 b=cWe12uclXhwcu3izBnCofTph9kxBd/6LXwa4QBGTN4n4LSo+2knEV3Wry8p7QgPiXu
 lYp0dhqziRpTdkloONIna+3gEoD04zY8TaL37bUlhZtzie6mxJ1KSumGwITx2829S/GS
 EtRL0ZDYDmMU1uGox/1zfr/qcx0h7jYve6Z03mrZ1FAXxdHt0HOQEjyIGx8gTE2F6Kyz
 59CeHgZRyjZw5qZfNr48P/rXFC2Fd6bEh+bzmA75kOqbZkFfMoy3gPiGx+9sG1sZtrmM
 FRGISjnDDxoUVdFxx19gkfkSAYOG0X7ki/ShXt2N9dEhIphEB4bYVyg46gx3DvOSeWC5
 zHdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=n5G8vs80VS3sA4MhM4cgPCr2IxsX3rpduYhIhTGIkuI=;
 b=EwV8Avc31qsk4hSCEUsBenD1hbG+CWxs0nVwuWZv9lkkA6egllNp8sAzo0m8naPMrN
 q368P30vT8Y36jtXDurHvxIchqsP+DKvhQmf152eOj+jlYf45Jb2sdo/Z/ZqerS3S1r/
 z/ZUrINodS133SjjKS/0VYsqhx64LS0zRyMY0nuFc9S2bCPtNQ4oH4xgQcc6bzjClUgF
 ueFwYD+H9/0EP5JaAiksHZJKFcnlKPAAo8RCpnGgylehVO+oL2M+q3y2MCO7UOXlbiQN
 vxYf/0L7+4s4PqXY+7N5H92/6eHlLZ5C2xA9vR2TnptFRK9FgA3ayUulm+jMbW0GQUFw
 16qw==
X-Gm-Message-State: APjAAAVNI/L9to2M0a2AF9YyiJ/Re4P3jjk4A/GbHZSVLPXbFF2qXo0i
 /74sqBYypHUkP2ibN5hRkKw=
X-Google-Smtp-Source: APXvYqz6nvbRQHUcQkd94oo1jyFxUVi3z7EmmJAivKLNh6IbCPG0rRcXL5ZxnEPtnXrT+u25NW5NrQ==
X-Received: by 2002:a05:600c:1007:: with SMTP id
 c7mr1267751wmc.158.1575927839077; 
 Mon, 09 Dec 2019 13:43:59 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id z6sm757714wmz.12.2019.12.09.13.43.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 13:43:58 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 resend 03/13] phy: usb: Put USB phys into IDDQ on suspend
 to save power in S2 mode
Date: Mon,  9 Dec 2019 16:42:39 -0500
Message-Id: <20191209214249.41137-4-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209214249.41137-1-alcooperx@gmail.com>
References: <20191209214249.41137-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_134400_382386_1631BCD5 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
