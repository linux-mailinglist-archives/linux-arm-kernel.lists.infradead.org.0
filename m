Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCE311899C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4EEHcZOcpUbt3lNsUtTN5ACloVZ0SbyM2aPU426IlM8=; b=NlwBHEGAlLQlvvGiTtNhxNKKAZ
	hmFcI1SYL3LXMZhW2XWC0lUd2ZIyiQlHdY6SZDii0+MzbLq2f0nELRt0ukAwmGCogfpHOlsb1yjb4
	Z5e0l39KBKLAHZ6558gkgBv6rmzRqxEFduapo0/HhDLigWcUnjZOcsMvVIUPLXLzCH+OL1rfLaNaw
	gA/k9PCR7k7k/wF/agV+2GPx5OPVXQKvoYfW+P3snLGBahdNw1iBLVbMfRLe3Y1hE6e2m5GTONxFZ
	UtZpmh73y4ll9dRwBDZHrssvh5FhZXnSUelSdv45IfKV3IsfvglsRxbPT89Wsd88y3tfgWnJZY68g
	1RsYDMlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefVE-0001zY-FQ; Tue, 10 Dec 2019 13:24:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefUF-0001KE-Nm
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:23:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id f129so3186082wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 05:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H4+FLclhdhCw74jAzeAwHm0BVOBLEFDsMtURbkkNBZU=;
 b=T3WH5XqfLetiRgJBy6bGiL857tumh3t0aFWaqjQBigz1b4hiy5q6+MPfBTdlR2deaY
 3vEUap4VQO8vWsJ8/pt3CaMMxqt2jo/i5LrozOqJ3Acd9OzRxCl5XcrSloYesxdWqUHb
 Y8rES7Z6Gc82Nj2abcYYHPeCMB9X7ogpZ/9h0p7dt4VdWenICy0mLuuRdYxCR+3END9Y
 jjFaPcUjznVi0d2RmnmLssCIQ6PuwaOV6lg0Pipkg+lGRK0+mJo4ddwIj+TkHaxMeUIz
 IWgrjmQIvjHVUYj2sQB2kbwlLLHRW8kscQlNVbbNjYHfq9goJ/8XIIkBDQpEpNCNitil
 Zn1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=H4+FLclhdhCw74jAzeAwHm0BVOBLEFDsMtURbkkNBZU=;
 b=SQydUliE6Tk+oGp7JoQTr6wOcmWx7rxAQa4PSCcCvIyl4bDCCTxYiBwKJq3jR6E6dc
 mkcXFlt7YG/2M4UFGKx63i/v5PgCx14m8aslgnOP4ejdg/KJoJc896F0bS0sfWFS8HZV
 thPewcwzyLee1qhmV220+6iJCBv3PISia60Z66LhfYZdNd8V4RAx75xUGcg+bsJeuKPJ
 fc2/0pEQZpolQx/rRG09YEg6Ug4bbsaZU2IjzV/OtKXCPdvQUkMQ50OosaZcs5SwKLYt
 VmYryxnSiAYC5OzijX4jy3FdnJ8CR3x/Q0jKJJIuJ5TRF+AgYGztDwstSaY0bmzxqYy/
 rdag==
X-Gm-Message-State: APjAAAUIxpotXIfpk/B81BHwimYHmiI/t6J5AX3/iqhixsJPSBLlD2i6
 uWGpndbeCBRDN1nhw8aToxA=
X-Google-Smtp-Source: APXvYqwRKREd+dTcyz/cmUO5OP+/NQ+62nTATaIIK9TjFJFfl/x1evrju2D3rlM1KG1gHPjAkpeR7w==
X-Received: by 2002:a7b:c750:: with SMTP id w16mr5536056wmk.46.1575984213983; 
 Tue, 10 Dec 2019 05:23:33 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s82sm3101680wms.28.2019.12.10.05.23.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 05:23:33 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 03/13] phy: usb: Put USB phys into IDDQ on suspend to save
 power in S2 mode
Date: Tue, 10 Dec 2019 08:21:22 -0500
Message-Id: <20191210132132.41509-4-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210132132.41509-1-alcooperx@gmail.com>
References: <20191210132132.41509-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052335_871682_967D002A 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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
