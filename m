Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C4AFE516
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VunCCt8Wrlr68WTjwEEM4SQEYTNd2nhGXi313G3SOKs=; b=kTY/TUWGOs9+JN3wpcaPOoXXYZ
	X3adyUQ/esdG2CFAJ4dNMV40HLq9puQwuG5rirejHRFJMgo6R3PoOK7mYEnMHxw//qeeXqozsHlgk
	vBUEp4nMngPIlI/SRtj4KfVE2gWlDKbCqv5nN3cO+lWpS5X3w64uRIMaBvLBIs9ppOpaZIVR15x86
	me6Lj2+bKcBd7R4/3ntnsdielqeQOq0tZzxT/+H1E2QrZwMYcqteIGp3eUsFn953fj/SeBb+cN9W6
	toiiQJsublEyntQIwxjtMwKXO17vnn0FpgaJfzCSyoLS+b7HdAPjr9mP36EQ7lHDIPrxPRAmAf/TK
	rJxkkgIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVgZi-0003gL-9k; Fri, 15 Nov 2019 18:44:06 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVgZC-0003TW-6N
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:43:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id s5so12069469wrw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 10:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=z4v4wVl3s1hArrGKDQlCf3SAy+2jZtyPSY8RHpRjW/c=;
 b=oJyyZRy5EXzkcQq3r2IC4zfXoQLCh1o4QQleaHojeFxcrNSrx3byV0e6gSDEZIYwe/
 MssPxJ+9G6DF44CaOrNyRZyjyN8Da73LyY8SEh9RGDSzOLKR4AkSKQQoDSVxgdYUxqBj
 3bnpa0wkNnYplEgViPNUKhpwwtZbpBgdV08n+oImk0a8q637fcLWaywnIoQrt/3EhRa3
 sItgCcV5Zqm5J9PydN/h5w4f03vZ52TVCdA0IriGrrmVa5gFXmp9e+teu0kVXRKi6pAH
 M0EJs6nMxRGdipijRvnmN0E5jJKyKd+SgoHAFbIu1aVKLOl/nBJ85flVsF+5uHzFARs0
 E4kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=z4v4wVl3s1hArrGKDQlCf3SAy+2jZtyPSY8RHpRjW/c=;
 b=hdBTjDaxGAJi27gDlaPcIyguZf4IDdL6VsY1Fz/kTwPsqOOBa91JqM+5zUp9kl5oGJ
 0TL9xRHlxVrWUKT7FJigWrd+rsk6a0qpCP2pWY2sajg7rdIMsZvDHSjzgJ0aYT1la6b+
 W9zU4iB5OmAa11jTD4qeMltim3VPomIlvVt4BtymUPiUn5GSF5wDnX4o3Yz7B99IPHxl
 j16TNjNFTtY0IPQslXQVR8tLkKrGD2/TsM/bow0ATvpxu2kqIJXKVGKppp46nDcs4tUn
 Vk/VFtR3MTv5kwndKKiztVRzmg2O6oGLtHjbctRPXlOsaNXKWIBe1YcMrYIKL+dUJGC4
 2Weg==
X-Gm-Message-State: APjAAAVutswoBPX4JzNC8ifMJUx3olqBhrZC70cnn/SdRMYaBrPu0Utw
 k1bR1JZt9FBjcrF3AE0+ErQ=
X-Google-Smtp-Source: APXvYqypblj+WoRCfg8ok56bDPdDYClw6eGKjG7CX6ktYZwwTyMpcN2qvlPf5Eli0dUJmUmAifJA0w==
X-Received: by 2002:a5d:6412:: with SMTP id z18mr16823980wru.30.1573843412929; 
 Fri, 15 Nov 2019 10:43:32 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id g138sm2620989wmg.11.2019.11.15.10.43.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 10:43:32 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/13] phy: usb: EHCI DMA may lose a burst of DMA data for
 7255xA0 family
Date: Fri, 15 Nov 2019 13:42:11 -0500
Message-Id: <20191115184223.41504-2-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115184223.41504-1-alcooperx@gmail.com>
References: <20191115184223.41504-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_104334_243176_7382022F 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
