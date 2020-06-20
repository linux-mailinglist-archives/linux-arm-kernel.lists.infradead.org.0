Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EEB202041
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 05:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZT9qZwHshvTYKMECfCa8IZ2sgtjpZJLsVu1DTPOG3Yg=; b=jx8KSOYI09Y6anKZGXPj+dsprT
	e6M0+fCR2Pp67TXZhnnP3RXPiEgqzmRHSyq5gHk3BG5MqN14VGRE8usysPeXhEjyKYyOkYFOM2siT
	7KnUDteYAKy+ZABLXheqiKzlT/2PIlgd5PtjiuIb5YCoTOGfL+HHDFmAoY7kiPHw9gjm8P02S68mX
	NlU5tCv1GgpmoYtVc8FglrAaq6eng3w+rHFfK+8bv0g5EElvjjIKBmC21Y7tfud+IyZireVcqcuWp
	dVR/kF7A1UsA/AuqV3OlnZ8H1uj48ABNdsqJqyL4M8+KfleF+W1QXPgmCzcHpz8XWRtnYth+0qw9T
	rcdHrFpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUBR-0000ET-Hi; Sat, 20 Jun 2020 03:28:45 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUBI-0000Dn-CL
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 03:28:38 +0000
Received: by mail-pj1-x1043.google.com with SMTP id h22so5293370pjf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 20:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wEs1bwDB/TtDfJTP+rfPS/eV3OYFDhVkY2AGM1gTF5E=;
 b=pK8cqQB0iaxFCQTro5VYTVkbeMbmlffBMiXp4BLcWkJ+Hi7VYupgMvngrbaIMZ23DE
 T+sYQDXM46cA+pIckwp9yhK7KHfNEC/LyhVnBh7tSDZndbi7OQ5Bl1ZQvOTPhd3H4LrN
 8qqoaH12Q0DH4IzoR7TTDzAyeBqduNOJLKUq8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wEs1bwDB/TtDfJTP+rfPS/eV3OYFDhVkY2AGM1gTF5E=;
 b=kNe/aydXru2xGBz2pBoBb5QgjVdI0LK7frP8hL7rh2r0S/QqugQYQ8sWVxZWsk/RFs
 wPaLmiturLd5/xe7V10myDdSjflgbJn13eAtcRbUn4YpDAtlpsRHPg73D3LYt45wCyCL
 o/jFrLkD145bMl8T30MSzrDnr3oBGEmSfpdWbT9fzqlV0jINgSb2bl8SKfgC869GyaVX
 onUP0ZfVBBh1v2Ryh+rykBpsUbxs2mfCrcgboLTpxCFfFz3aAJ4OgQD5hrGfHmtKCk4s
 15WPuq35aC63rp133NG6PMeAoRaqGxiKpeRnXHUTJ75E6uJv0AhsVjki1RjqW48qmUl4
 98NA==
X-Gm-Message-State: AOAM531Bkxw0QG/PwZukgGyz2ma+xMMmHm8Ds4ELlkSUXSkeJvzMLFlY
 9KOiuOCWDWV9hwk123mHjDF4Rg==
X-Google-Smtp-Source: ABdhPJzyfQElYK0QcW79S/OVQnqqlVKouBZCgo8zhKaHIx8bCkDGQavnty0ung243w0p9t0m9hE+KQ==
X-Received: by 2002:a17:902:6a83:: with SMTP id
 n3mr10826477plk.42.1592623714598; 
 Fri, 19 Jun 2020 20:28:34 -0700 (PDT)
Received: from localhost.localdomain ([42.111.160.67])
 by smtp.gmail.com with ESMTPSA id 67sm6182262pga.44.2020.06.19.20.28.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jun 2020 20:28:34 -0700 (PDT)
From: Suniel Mahesh <sunil@amarulasolutions.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, sashal@kernel.org
Subject: [PATCH v2] arch: arm: imx6qdl-icore: Fix OTG_ID pin and sdcard detect
Date: Sat, 20 Jun 2020 08:58:16 +0530
Message-Id: <1592623696-21485-1-git-send-email-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <CAOf5uwkrjj98+_8Hn40ujn2bLz_oYb7FCWcuO8yNn2y0ewMehg@mail.gmail.com>
References: <CAOf5uwkrjj98+_8Hn40ujn2bLz_oYb7FCWcuO8yNn2y0ewMehg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_202836_554271_4C6CE0BA 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
 jagan@amarulasolutions.com, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Michael Trimarchi <michael@amarulasolutions.com>

The current pin muxing scheme muxes GPIO_1 pad for USB_OTG_ID
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

The TRM mentions GPIO_1 pad should be muxed/assigned for card detect
and ENET_RX_ER pad for USB_OTG_ID for proper operation.

This patch fixes pin muxing as per TRM and is tested on a
i.Core 1.5 MX6 DL SOM.

[   22.449165] mmc0: host does not support reading read-only switch, assuming write-enable
[   22.459992] mmc0: new high speed SDHC card at address 0001
[   22.469725] mmcblk0: mmc0:0001 EB1QT 29.8 GiB
[   22.478856]  mmcblk0: p1 p2

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
Changes for v2:
- Changed patch description as suggested by Michael Trimarchi to make it
  more readable/understandable.
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
