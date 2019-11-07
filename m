Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAAAF310C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:15:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VunCCt8Wrlr68WTjwEEM4SQEYTNd2nhGXi313G3SOKs=; b=T2RJaCpUsaZRaCl1HBnkFC0l6B
	IEaxMK0ulR8/+rsaPdyBWht6rHWYEMz/LV289JPB/UlyvZoNe1JoRbzI67Xcy7/gmkpjvyYtyaZD0
	43DYFv3/cX4UAHfGBjG9nkk7eBcxKWq4bEjXVR7CeOKCRWlbIZdR8o0mpirWd693CstC/kk5EpMEa
	tfeZvPplkl8Am9M+1uo9e+1smzWT373WiUrHoeZbuYERLu5SzbMoi09io59TEhGuGxnF59zN64yu6
	FttymYZNYvT2nXkRWOmoWLclxA3M9MeJGlwJ3eW87KdAsvXxJh0apM+jw7JZ4QPgX0Fp4QVwbaMBh
	33pHmDbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSiZA-0007SL-QC; Thu, 07 Nov 2019 14:15:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSiYS-0007Hv-4H
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:14:33 +0000
Received: by mail-wm1-x343.google.com with SMTP id q130so2608457wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 06:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=z4v4wVl3s1hArrGKDQlCf3SAy+2jZtyPSY8RHpRjW/c=;
 b=gS289DGLAlmjTsIrrI+HnfOBs+MFe6Z+dMKRM77pwCmaqmab3zS/UDr4LGAIccnnoj
 PYrHQNF5s4/Ih6zl2gbemqnAbWBI5KZ1/la/tOIjs7Z1mEm6RUTlmwSd10j4EvE1y6dW
 RsyplNNZnac1XgHliHIM29YvJlXckXAD80h4vAYw1R7utQbpsjeMZK5CO5C5q42vjLcZ
 ElJ16ZMLWl3a4pFdrMUJk8C0/A/Og+Td8uC0OmSWoVCviiPxMrNZhrK2IkPaxbaf/raj
 MgVpm6kSFTyXyj34AndF/Vv5M8JU1kxfeuPS6cD5OLrLD9yTmp2GcVmknxjmj+xqTnIP
 Msog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=z4v4wVl3s1hArrGKDQlCf3SAy+2jZtyPSY8RHpRjW/c=;
 b=HoZXeB9QM/JjKV5js+agDtqqDVOJRoNat9bE4LMUPo9LS/Zjyw4Xh8vTt83zaArdiT
 iN35nizwNrd5N6tG4YQ0XftFzQ92K1vjtwhhNPlY5y5Rn8zwIJCYNGcuy2g/x/QyT/QO
 3LCQ+mnXKuB634+YnB69oABFIs1KnHeszqoKkuwaN5qdVuD0ICL8cb0PQhLZgvFhvVbo
 +0RaobKA0/+OpJ+32b+TaDMSnKuWCw8y71dfq0QP8LiFfEKJ6JOj3cGBxX6V13oqzDxD
 UV7MhyKf54eUlUTjCRC0Z57mPXLEouUPo5pdp/HHu0a5yQH89skleEMLEURTYLCCtJhX
 9Vig==
X-Gm-Message-State: APjAAAUmonioThH8sFiRP6z8gxS1eVnzCIJMYv41KEoFgX+IbMLizMsR
 ekYwxKVFAREUfur/7eX5Mdc=
X-Google-Smtp-Source: APXvYqwYVZfRRrimnVJdMUO6UWxwQXvnQ3zdZ6Jzu5hsncWSH8RirMg9CVbBRICD2N/Qud6kBs4XGw==
X-Received: by 2002:a05:600c:20c9:: with SMTP id
 y9mr3019835wmm.72.1573136069870; 
 Thu, 07 Nov 2019 06:14:29 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id b1sm2453888wrw.77.2019.11.07.06.14.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 06:14:28 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 01/13] phy: usb: EHCI DMA may lose a burst of DMA data for
 7255xA0 family
Date: Thu,  7 Nov 2019 09:13:27 -0500
Message-Id: <20191107141339.6079-2-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107141339.6079-1-alcooperx@gmail.com>
References: <20191107141339.6079-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_061432_191373_FC6C13CB 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

When the EHCI controller received a 512 byte USB packet that
had to be broken into 2 256 byte bursts across the SCB bus AND
there was a following 512 byte USB packet, the second burst of
data from the first packet was sometimes being lost. If the
burst size was changed to 128 bytes via the EBR_SCB_SIZE field
in the USB_CTRL_EBRIDGE register we'd see the 4th 128 byte burst
of the first packet being lost. This problem became much worse
if other threads were running that accessed memory, like a memcpy
test. Setting the EBR_SCB_SIZE to 512, which prevents breaking
the EHCI USB packet (max size of 512 bytes) into bursts, fixed
the problem.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
index 3c53625f8bc2..56d9b314a8d0 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
@@ -42,6 +42,7 @@
 #define   USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK		0x80000000 /* option */
 #define USB_CTRL_EBRIDGE		0x0c
 #define   USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK		0x00020000 /* option */
+#define   USB_CTRL_EBRIDGE_EBR_SCB_SIZE_MASK		0x00000f80 /* option */
 #define USB_CTRL_OBRIDGE		0x10
 #define   USB_CTRL_OBRIDGE_LS_KEEP_ALIVE_MASK		0x08000000
 #define USB_CTRL_MDIO			0x14
@@ -176,6 +177,7 @@ static const struct id_to_type id_to_type_table[] = {
 	{ 0x33900000, BRCM_FAMILY_3390A0 },
 	{ 0x72500010, BRCM_FAMILY_7250B0 },
 	{ 0x72600000, BRCM_FAMILY_7260A0 },
+	{ 0x72550000, BRCM_FAMILY_7260A0 },
 	{ 0x72680000, BRCM_FAMILY_7271A0 },
 	{ 0x72710000, BRCM_FAMILY_7271A0 },
 	{ 0x73640000, BRCM_FAMILY_7364A0 },
@@ -948,6 +950,17 @@ void brcm_usb_init_eohci(struct brcm_usb_init_params *params)
 	if (params->selected_family == BRCM_FAMILY_7271A0)
 		/* Enable LS keep alive fix for certain keyboards */
 		USB_CTRL_SET(ctrl, OBRIDGE, LS_KEEP_ALIVE);
+
+	if (params->family_id == 0x72550000) {
+		/*
+		 * Make the burst size 512 bytes to fix a hardware bug
+		 * on the 7255a0. See HW7255-24.
+		 */
+		reg = brcmusb_readl(USB_CTRL_REG(ctrl, EBRIDGE));
+		reg &= ~USB_CTRL_MASK(EBRIDGE, EBR_SCB_SIZE);
+		reg |= 0x800;
+		brcmusb_writel(reg, USB_CTRL_REG(ctrl, EBRIDGE));
+	}
 }
 
 void brcm_usb_init_xhci(struct brcm_usb_init_params *params)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
