Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0278D12FC36
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 19:19:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q2cnrskEvnvLQcKd1cANbugoxAWmj+cX9PrtNCpe85I=; b=OC3ZTVviCNR40sCIFqsrhRMG7j
	tIcMTDio/7Pvd97bYDBfdvGtE2gWLJm0m6ALCTzKHbdT4HTCOThd3ZG6J9UlXwcH6t0hnRzvDfmXE
	1UEyYWVSdpmZr3OZZWkNYoGzcG6PmuhKG/hxNwi23W3WVrxbHSjIHa4T+0jQ9WXsy50z3eaztKptS
	otaMYs4RAm2pt8dEq75TGmJsmdAeC2HnwgGJfU+u3XZ8FaWoQgXvoo5hndme7xuJBTBzWDHLejCCU
	8JBUpU6An8w4p/YHq53iGnADq7ioe7+cSVhEu7V8Q2aECMExBgGpxLzVoMTouu0vxgYuQe8hG2jjr
	z/bQPEPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inRYB-0004CU-DE; Fri, 03 Jan 2020 18:19:55 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inRXi-0003zZ-1z
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 18:19:27 +0000
Received: by mail-pf1-x441.google.com with SMTP id 4so23860650pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 10:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tYlVqZ98Bu0+Zyby+yVvjjOxtu1K1h5EceYqcDfe5rc=;
 b=lvn8VQQPryslAlAHQl3hUtYuJXvZ9Y1WILN0Zz+1vsgCXscv5EucXwDjK8aaqf6Ypo
 WklVZ/WY2JlhyF+W1raJUzIGT84DRNJHQWiywq6zzdr7LYNThIIk8o/4NU/38gIllC6S
 /H2fGrY2rqDbMow1oe9kF+WghEViQBDvEGAS3Kf1Vd9hBfj4JSjpHKeJT4yA5+S1uWe3
 3Kzh84p4KLeE6gObffByyJLZ+mZkeddWvOHgZ3FQZnhxEfPODedMbnbe1JhEoPo58KuC
 kg8hQowUYQj38KhtDFZc3/48d7fbiZ8OG5fIfnbDF86fXS3fb5yHr4rpLsCSHY6XBD2P
 PAhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tYlVqZ98Bu0+Zyby+yVvjjOxtu1K1h5EceYqcDfe5rc=;
 b=U7AuJxmtl5V2pNL+GyVzU5lQ2WsAXGiwliCVUrbdJW5/GeRaZb7kgoUXvcjiMu+Ilf
 a+cjtnefiCxaFAFcrIpX2QFm4YlZaFxiEwQKs8OylTIzS2PTJtl+d02iEMC02Y1GSLrI
 QRZsUK48hQp+AcJ7K4CUNwsg3Tw17HiZfUXEdOFbrnm03Zs8zLLUfbOxguLKtJ8+fbh6
 7UUmzbja1X985QFPHk93/mOybYQXc5GAIdF40J3ome31moCCrwclkDgA9RtqpkW0gJ+7
 o7Rc3zohnxw7PoviUzcSyGWIciUwIE2NbmOY7N0XHDWXobevFDBg7m9jb9EUo5mOYEoU
 GfXw==
X-Gm-Message-State: APjAAAXh4Pb9gPWHGZsBWeoVEe5vsIYgkZi+cIxaj43iut+d8a6IMo9s
 2hfcpy0mbWlc+vbuRUuj3gI=
X-Google-Smtp-Source: APXvYqziYoHS89wTJewUzgzZaqX8iJKL/Zjafxp+UgLnpYBcRz0TG/9E6onzqbJFwBDyQss9P38a4w==
X-Received: by 2002:a63:b64a:: with SMTP id v10mr99872698pgt.145.1578075564094; 
 Fri, 03 Jan 2020 10:19:24 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id j8sm41783602pfe.182.2020.01.03.10.19.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 10:19:23 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 01/13] phy: usb: EHCI DMA may lose a burst of DMA data for
 7255xA0 family
Date: Fri,  3 Jan 2020 13:17:59 -0500
Message-Id: <20200103181811.22939-2-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103181811.22939-1-alcooperx@gmail.com>
References: <20200103181811.22939-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_101926_110118_1EE773FF 
X-CRM114-Status: GOOD (  14.03  )
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
index 91b5b09589d6..bd473d12ab28 100644
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
