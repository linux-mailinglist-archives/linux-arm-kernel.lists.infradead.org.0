Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EFE201B11
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 21:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=C5yyu07XIuoz0r6UQPbF8S5AFKQbvaYGGpwXlwfKlXw=; b=OkF
	Hx3OLCXZ3nBuHtQcgVw2/S45E7vOzS1yVk/Ir9bC+swqe5wY+npxSm7xbe54LRRt9zfFxkExXTGHc
	jb4yd8DBGLUH+hNep7x6Ik3qt5oulJTkyLuRznXo/z2odMRZkMY4hxhdlpFXRnDRDCiWGFStEVAwj
	No/ZR6uhKz4bHb2OqR3LJnWfqBovx+PF183gPG98A2Wfmu16ZAHBJ8YJNhqGTOegk2Bm8ZrMPCXDl
	WKtWadiX99TGKT+HElVVt2ArVYKvP/qkf0akcy+F8im66e/2ai+8gtb8rxgy5O8E2Lq3gT8FzysWa
	oLyc3e6s2Q3cDBNmH+1o99hoaRuyBSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmMVE-0004B0-18; Fri, 19 Jun 2020 19:16:40 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmMV6-0004AS-32
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 19:16:33 +0000
Received: by mail-pl1-x642.google.com with SMTP id n9so4293239plk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 12:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=QpjsOQ81m2+7Vf1tKhbI0NPMb57wPuYHIHejUZfeOx0=;
 b=W+x4CClX3BaHnLSt/1xtF5HA5oIJlM8A+EGmUOOouefvbHiG6YC0Wsg8b7CB6Pp8f5
 pEyFrNb9aZk1QdlliapBCUCIem9PZnRIF1pNDG541eEWKTNagxIBWk/a5ThEjdUHubXI
 O2fstgpGQQrTlufuHR2nutPWOwG7k0KKO0UPw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QpjsOQ81m2+7Vf1tKhbI0NPMb57wPuYHIHejUZfeOx0=;
 b=kNIAx6yG7XLNxt13OrXA8WAk8ncAADzMrChpWH45MW88tYYXMItmdFPCdxc10929FI
 vo7EbnpW5pEY1p+Pdwj8NCOSG6gVvpjen+HB97oWnE0ypUsDdN8TPiPXBRQGfk9dajWZ
 WMcsWF6tSAojyGFm8SFIszLWLZw2I5xAfJEbRCoOxGNNN0mf9uc03BFwcYEhnjuAakuF
 2m+fwwW6ZoI+y/Xb126nIDpaRbE5QMLsSPo4JtHygNuyIVx3BbJpf/j9bycT/vBX8VzO
 U3F/dAoM9HHiSkpSUwwBAxzWLT03nXuJUuV1yKcpCJRpxSw8a1TVU+Nnb7MH8kScvT0T
 6wWw==
X-Gm-Message-State: AOAM531jsJbnPj33BSkUjzyD1DVgUlVntwzqZOQcVWuClL98uL4PLmAg
 /WHHz2j4F2ZuymDM18vc0egZMQ==
X-Google-Smtp-Source: ABdhPJwNurzM+LygEC0YiX0wuysnxgJPszpw0mtEo9Y7176XsIpQNBKYeTFSdYlDE/YRvgnE/WhMHg==
X-Received: by 2002:a17:90b:50d:: with SMTP id
 r13mr4895894pjz.94.1592594190698; 
 Fri, 19 Jun 2020 12:16:30 -0700 (PDT)
Received: from localhost.localdomain ([42.111.138.30])
 by smtp.gmail.com with ESMTPSA id 12sm6482743pfj.149.2020.06.19.12.16.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jun 2020 12:16:30 -0700 (PDT)
From: Suniel Mahesh <sunil@amarulasolutions.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, sashal@kernel.org
Subject: [PATCH] arch: arm: imx6qdl-icore: Fix OTG_ID pin and sdcard detect
Date: Sat, 20 Jun 2020 00:46:13 +0530
Message-Id: <1592594173-13497-1-git-send-email-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_121632_559782_F3F3CBE9 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, jagan@amarulasolutions.com,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Michael Trimarchi <michael@amarulasolutions.com>

The current pin muxing scheme muxes GPIO_1 pad for USB_OTG_ID
but the TRM mentions GPIO_1 pad is muxed for card detetcion,
because of which when card is inserted, usb otg is enumerated
and the card is never detected.

[   64.492645] cfg80211: failed to load regulatory.db
[   64.492657] imx-sdma 20ec000.sdma: external firmware not found, using ROM firmware
[   76.343711] ci_hdrc ci_hdrc.0: EHCI Host Controller
[   76.349742] ci_hdrc ci_hdrc.0: new USB bus registered, assigned bus number 2
[   76.388862] ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00
[   76.396650] usb usb2: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 5.08
[   76.405412] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[   76.412763] usb usb2: Product: EHCI Host Controller
[   76.417666] usb usb2: Manufacturer: Linux 5.8.0-rc1-next-20200618 ehci_hcd
[   76.424623] usb usb2: SerialNumber: ci_hdrc.0
[   76.431755] hub 2-0:1.0: USB hub found
[   76.435862] hub 2-0:1.0: 1 port detected

Fix the pin muxing as per TRM by muxing ENET_RX_ER pad for USB_OTG_ID
and GPIO_1 pad for card detect.

[   22.449165] mmc0: host does not support reading read-only switch, assuming write-enable
[   22.459992] mmc0: new high speed SDHC card at address 0001
[   22.469725] mmcblk0: mmc0:0001 EB1QT 29.8 GiB
[   22.478856]  mmcblk0: p1 p2

Cc: stable@vger.kernel.org
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
NOTE:
- patch tested on i.Core 1.5 MX6 DL
---
 arch/arm/boot/dts/imx6qdl-icore.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-icore.dtsi b/arch/arm/boot/dts/imx6qdl-icore.dtsi
index 756f3a9..12997da 100644
--- a/arch/arm/boot/dts/imx6qdl-icore.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-icore.dtsi
@@ -397,7 +397,7 @@
 
 	pinctrl_usbotg: usbotggrp {
 		fsl,pins = <
-			MX6QDL_PAD_GPIO_1__USB_OTG_ID 0x17059
+			MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID 0x17059
 		>;
 	};
 
@@ -409,6 +409,7 @@
 			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x17070
 			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x17070
 			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x17070
+			MX6QDL_PAD_GPIO_1__GPIO1_IO01  0x1b0b0
 		>;
 	};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
