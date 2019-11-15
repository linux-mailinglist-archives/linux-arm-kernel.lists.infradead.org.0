Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3525AFE532
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:46:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RBeNdZ5HoXtmHiw9zl+hzoiz17QmI2lc1nH2yc4I0gs=; b=byruiEoSdIkOrThsk0or4Np0RA
	J1uucoZRx2Gt0XlSbFlqDo40kR284po5bZxnF1V2BCfjgW3NXrQIltdOlGLPKFDiEajHK8HRlUQa0
	4Jzzksg8ZXSqyYXSLQ5mYKk4Xnwbgaf5F4e7Rf8Msm5v/Qy+pHmcoRkJXfvlSgAMStpzvbm6L+uTF
	bhRH1I9RkTBZrY5I29KE/L98U7729qlsuQDUERc8LfA55L2aWo7VDdgu1lvyiHgYAH6wCY2375eTh
	KWwCTbIQdteIBVKimH8laZ1tbFvuewKKzYvfhH0oxijPXbFyhmyQvSkGVexfyjvF6cWZTeUxIaZoS
	ywNC/IzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVgc3-0007eD-Ho; Fri, 15 Nov 2019 18:46:31 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVgZV-0003kb-0a
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:43:55 +0000
Received: by mail-wm1-x343.google.com with SMTP id u18so10655680wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 10:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=44lDiZC/HyWHizJUTFlT+jmrIvxAJf5o2GDXJq7Fi20=;
 b=AUJy6L0FiPANesawRIslnabTIItR6XMOS4WHYQ3D6pc8miNDb/Z5X11gNI1eTl9q5q
 n3GmIiY8X9Nr7Lk5icpkz585MPqmz9RqdiCLJ+JJBHr9Yfk9/vSAAugoXB1FA5L7dSqi
 2AO3pQaBc65xkk/eh4X21dXAGMs0Nls620cHZyeBymyKKUUjHI/E+zU/NFppB9oTvxt3
 5jyhjIxeYtTiYjsC6NiptPWC8kjJRQBCIg2oiqPBsr8M0YOQlhj3CjhgSHI4ZWL4tWyK
 /EPJEkyZQSoNIel0I+TSbq8m8cRC/Q1U3lboURLdfxOxeVrtMYWNI5m420a24NxJGUS1
 G9Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=44lDiZC/HyWHizJUTFlT+jmrIvxAJf5o2GDXJq7Fi20=;
 b=PNbOHWUTq8fjBbQA9DnVqcZohE44YOD+2U3LZZ3rW86WykwKaIWALJ1T6DTaEbSBVz
 zeobg/0cFqcVWAATWQHU95wp/bNITrLVhFmJA8N/mMghCW5eMvX/RGUkG/lghLQ//S4c
 fqAV0MuIRdHN+AaqRa2t2EjRy7Jwgznk4tHv9dE1y20LsdQ1z3+dclp9+70SbH4ipxJp
 6Zfbx8q7g4rHSlgPbkLZEl9nMdgOQwLesmHB5+vJWeVNm1etENEHPu5tJP92TwmDCOHj
 ISTQgo8Y5EJzwfjNCenl1V6cWw4erQ8dzufnLsMfi2zu1dgWLW/IZ9IBOSVlxJFv2vw9
 5EyQ==
X-Gm-Message-State: APjAAAWjZ014fcUE3N3bk8DZoLjC8m8BT1jUwCTc1zxzvPTfjRYO8d9O
 CxEkfG26/v/3UYaQ1nm+vO0=
X-Google-Smtp-Source: APXvYqwsBuwArKC2zsEagHcuDz0VELwiJxoMPPhcSFoPYDNRSb2qkuibjkIOivEmh4xMhP4E639SOg==
X-Received: by 2002:a05:600c:2041:: with SMTP id
 p1mr15806760wmg.11.1573843431625; 
 Fri, 15 Nov 2019 10:43:51 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id g138sm2620989wmg.11.2019.11.15.10.43.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 10:43:51 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/13] phy: usb: PHY's MDIO registers not accessible
 without device installed
Date: Fri, 15 Nov 2019 13:42:20 -0500
Message-Id: <20191115184223.41504-11-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115184223.41504-1-alcooperx@gmail.com>
References: <20191115184223.41504-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_104353_096798_014B87B2 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

When there is no device connected and FSM is enabled, the XHCI puts
the PHY into suspend mode.  When the PHY is put into suspend mode
the USB LDO powers down the PHY. This causes the MDIO to be
inaccessible and its registers reset to default. The fix is to
disable FSM.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
index bf138867efb1..fe3f653c64a7 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
@@ -56,6 +56,7 @@
 #define USB_PHY_PLL_LDO_CTL		0x08
 #define   USB_PHY_PLL_LDO_CTL_AFE_CORERDY_MASK		0x00000004
 #define USB_PHY_UTMI_CTL_1		0x04
+#define   USB_PHY_UTMI_CTL_1_POWER_UP_FSM_EN_MASK	0x00000800
 #define   USB_PHY_UTMI_CTL_1_PHY_MODE_MASK		0x0000000c
 #define   USB_PHY_UTMI_CTL_1_PHY_MODE_SHIFT		2
 #define USB_PHY_STATUS			0x20
@@ -229,6 +230,14 @@ static void usb_init_common_7211b0(struct brcm_usb_init_params *params)
 
 	usb_init_common(params);
 
+	/*
+	 * Disable FSM, otherwise the PHY will auto suspend when no
+	 * device is connected and will be reset on resume.
+	 */
+	reg = brcm_usb_readl(usb_phy + USB_PHY_UTMI_CTL_1);
+	reg &= ~USB_PHY_UTMI_CTL_1_POWER_UP_FSM_EN_MASK;
+	brcm_usb_writel(reg, usb_phy + USB_PHY_UTMI_CTL_1);
+
 	usb2_eye_fix_7211b0(params);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
