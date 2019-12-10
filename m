Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662E4118988
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:24:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q2cnrskEvnvLQcKd1cANbugoxAWmj+cX9PrtNCpe85I=; b=ZIjjpupaSDMK8kqzYLT4NrCteZ
	NxzfNCyJeRTZFoyS5dnOMHarfgXaqsUXZkOSIU3yF6+udxUQLwqn/Vhu4GmI3ZYiXE0Xd0o8AJeu/
	UXH8K0ilHfofjrI/ScWT1aUYEM0Xbi5ARv5xzOi5N6p0NmIwaqNVgHr+Xs+Aj0KkoMF5YcedBweyD
	7VAbsoGxXNo31/labd8M+QVSKCrgGJvh1qaG8LW81YNqSVC3GaWABpMWk7PPe4GABYqdyc+KlK0X2
	mgJeWEsLsExqqOpswQuOFAHNdIe8GAw9NhWoB5rOsYkYoWkNcVzYIxAr/9irLoB/UOpVC1RSewsK0
	aowvbofg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefUi-0001Oa-02; Tue, 10 Dec 2019 13:24:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefUB-0001Ey-Gk
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:23:33 +0000
Received: by mail-wr1-x441.google.com with SMTP id b6so20116713wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 05:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tYlVqZ98Bu0+Zyby+yVvjjOxtu1K1h5EceYqcDfe5rc=;
 b=jZzB5gqPUI3Hj70GjZNHqyyRNK9JThh41oK5NzYRbAVSm2j+Dd6sheZHpPU/n3jCS5
 ZfUKfNC8F8C3S82L/y5j825tPX504MV8WMZbd6mL6UJzvXwsPllBSXBXT//9yc+qaT05
 imcx3vmWIlQ/YZyYqZwK5Oztyyebp+3d4tC6MgEYX1Ki5Uqc1+rrR3p6qEE0BbCZk2YS
 Ua+n+g87LCAwOqF95+/Y0u4hGFGmVYLt+7HUS07/UA9bXNlSPL7FkEoPKhudv0oj5HS7
 WR3ur9BLlE0fjKWJTBRMdJj/Vn9TL5HRTKfvLRFraqgoiMdlSCVGtgVrtWcIalyly6gs
 A6HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tYlVqZ98Bu0+Zyby+yVvjjOxtu1K1h5EceYqcDfe5rc=;
 b=BFAdW+7sc/c6kPdoUEoY/l5hGm87+9zusQdoMMLnzdJaxZxRcZzV7+HaJspSp1AeDG
 3eHJyMg7Vk+O2/GXQSNTzEcaywUT9fcE1xOD/9WXSdpPu8AlVFpWjLNsQYZhsQKBBZgU
 KkJ8s9+MTW88Xje5QDU1Dvu6UcJXP3SFxpDTEOiHS4pgAIc0wscBIQ9ZJcGuiBA1Egqr
 ieaK9YcBIvu/ShTPw5DY0DG2Ui54f5c+/fly9kTIIL/B9VFP4IpmDMVMWiYzOqeZOZTC
 7a5MzlUkq37MGg/qlK+5T5j6qKZz6JePIqyFsDfDL63p1rKhXGyt09tNJnLoFas/Thio
 ng2g==
X-Gm-Message-State: APjAAAV35D7aaLQ2FuaZJB+mDD3XzOcwIhxGBXO8wiw0GGTcBBU+jn+W
 ySiSzaytgWE60Pux1kYentE=
X-Google-Smtp-Source: APXvYqzbQ8Wi3DrflQJbTS3u95A5D/ncezIkztrhiNUWCvQkJLQhSRJ0R34HfCtKe90L+9ShlzV4KA==
X-Received: by 2002:a5d:5491:: with SMTP id h17mr3409334wrv.374.1575984209868; 
 Tue, 10 Dec 2019 05:23:29 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s82sm3101680wms.28.2019.12.10.05.23.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 05:23:29 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 01/13] phy: usb: EHCI DMA may lose a burst of DMA data for
 7255xA0 family
Date: Tue, 10 Dec 2019 08:21:20 -0500
Message-Id: <20191210132132.41509-2-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210132132.41509-1-alcooperx@gmail.com>
References: <20191210132132.41509-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052331_574171_6A73FC71 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
