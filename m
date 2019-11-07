Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AA2F3128
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:17:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UjkT7ZE1BwTwpdl3Le/m+Rmg5iI6Yjhiwhq5d2HQUpo=; b=GVTBKUF1+1PCFseH7MnRVfRPoN
	BWSCB94XJwGEMQn2JZhOEiqgSc1MFfjk0vc1q9jfrFVGs4Pc/BH5o1W0alL0I8agQwkeV2m+zuq5w
	B5xJiajB+pUUcceYDu0f7s5vb+wY7v14lz6A0t2WUCrttW261YtmXPC7mwOXwOAyVg3XN+9nYhua6
	+hblSxYvS0TTn7y1NKAYH4547GZT9gn9BT63HfUrvajDQfimuSOl2euUOSLmojeDwLBNAHgUOTkHe
	9KnuL3JHCYGOLearPsHhCMAmY8PhJpS+aKHBoYbMGwN7UXDINNrfBQl5auvzewWeC0eYGc4+HcpeD
	JUP0k1iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSibU-0002RN-1S; Thu, 07 Nov 2019 14:17:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSiYk-0007aJ-EP
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:14:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id p4so3188090wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 06:14:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OEEUPqR6ZmaXELpR8fTPNLPL8vVK/Y5WocC4nRZMSg0=;
 b=PF/x+ahslGcwz4+3/pXPHI3OljZewQieR+OmQ5QnBu4FL9PDfi5Ts6ZxGn0mMUN4PU
 YuFrpNJ7f2uzY9pfLVg0OEZW57+09f3jZdHyVEyv+2MGw6Z7amQMPZLBlPHJxttsSrmr
 kTUoTB3XwPCgHKNdh1BQsJ4sjlqI0MfllF2jq5dmZ2UoyP1L0Ryi5asPp2hfKVZgRZ/f
 PhsAugyIik4pHBT6wguQGdN1o3IRKAYw5qTwX+KjqoVGcfoDuTane9kKg9SOhekZP73V
 E8SpAJiys/hF6Rvq5gNti0slr5xfCDhlwXQCTfe5yBcN6NOyvIA7h3twLUq7WzTB+ywk
 2Gfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OEEUPqR6ZmaXELpR8fTPNLPL8vVK/Y5WocC4nRZMSg0=;
 b=LuoOSRlIEefGKMeSK+nY+WWmV0MONtkRdbQDjEV50Ko73SyFdMiE8ZdYKhvfLL85xb
 yuRrWNnwUVNeCoMsVG4b6CIjFLNfszxljTw8/ydTMN5uBheZu/TkIgtUIr8FNprXJMZE
 Og3BfX9uLP3zBzGoR/Axo0YaP10NemlEAnUgigizMoR7rdf8/tEE7ZxdwL56CKUkdzIP
 A+X1AG0yA49Ufk/dtuO1jBxHjeqs6EvqKl0tCENa2bdkBdhBWuAk+nqRsEdy7gLK0JXz
 OWRqAJnwI4243sSpMYA+Qy108qaQxNoy/fFarZeL+I6PPbq/j6g9eh0Jv/3Kc2FRSHi5
 twlQ==
X-Gm-Message-State: APjAAAWcJQs3FR7qKMaBdP822xtjCRfUfP8HktylnxwGpZGj1cK8SlP8
 +0ggO/uN7g2o+1BKm+95AJU=
X-Google-Smtp-Source: APXvYqzVyIPOB8hfZJ6sxbs/sRJhJX3NiNTuvhtY5ovDYJCljQ2LK/8eEIk4LCPosK+XyKNYj4GuCA==
X-Received: by 2002:adf:fd91:: with SMTP id d17mr3045375wrr.214.1573136086761; 
 Thu, 07 Nov 2019 06:14:46 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id b1sm2453888wrw.77.2019.11.07.06.14.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 06:14:46 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 09/13] phy: usb: fix driver to defer on clk_get defer
Date: Thu,  7 Nov 2019 09:13:35 -0500
Message-Id: <20191107141339.6079-10-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107141339.6079-1-alcooperx@gmail.com>
References: <20191107141339.6079-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_061450_584529_42641759 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Handle defer on clk_get because the new SCMI clock driver comes
up after this driver.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index b16b72a04eb4..9ae31fa184df 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -341,6 +341,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 	priv->usb_20_clk = of_clk_get_by_name(dn, "sw_usb");
 	if (IS_ERR(priv->usb_20_clk)) {
+		if (PTR_ERR(priv->usb_20_clk) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
 		dev_info(dev, "Clock not found in Device Tree\n");
 		priv->usb_20_clk = NULL;
 	}
@@ -371,6 +373,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 		priv->usb_30_clk = of_clk_get_by_name(dn, "sw_usb3");
 		if (IS_ERR(priv->usb_30_clk)) {
+			if (PTR_ERR(priv->usb_30_clk) == -EPROBE_DEFER)
+				return -EPROBE_DEFER;
 			dev_info(dev,
 				 "USB3.0 clock not found in Device Tree\n");
 			priv->usb_30_clk = NULL;
@@ -382,6 +386,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 	priv->suspend_clk = clk_get(dev, "usb0_freerun");
 	if (IS_ERR(priv->suspend_clk)) {
+		if (PTR_ERR(priv->suspend_clk) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
 		dev_err(dev, "Suspend Clock not found in Device Tree\n");
 		priv->suspend_clk = NULL;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
