Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCB91FF34A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mmAHYxV5JuSihUL/fI8g97NyRnDTeyg/ymrJGI4PeOM=; b=RSqOctST51rBiD
	c6tewlYBBrlN4W+TyIDVn3vgDMkHM0zwmMn2v8Aec8uLsWQjxITRaNNJlB6PftER70Xzj7RMOZoE2
	Ca1TGnBDsc1AXGM7QxCIQN/wjDrzhPtgeIM4j3EnU7NwozEEV7/EsfzLMAVDAI+h9GLIfxf255To7
	/Equf4mLH7D4L39bbFVNJgAssTgll8SEG/+9Q1GqIUQZC9IJQOMA+2obseUSs9VaXFKzGw9CBY5CC
	yuAJGxBLH3yBSFjl7/yxV8D6c8IORHppPOe8CSIWWr1xtf1WwqAhmUt2+7M0Sky8L1UTJ0MZXjZuU
	2P+0O303r8xEYyBkSI7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluks-0008PC-O6; Thu, 18 Jun 2020 13:38:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlukK-000887-A8
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:38:27 +0000
Received: by mail-wm1-x341.google.com with SMTP id t194so5681902wmt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 06:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YwhiK4RhjFtcOdjK6HryhHeUuPTC4xHkMOd8pTbbj6k=;
 b=hIGjX7h4Ed1aDRIN8UX7il9ILTJaATXT2LwE1e9A+0Ttl1p93wik5BtfFvtdvm58Iy
 A4VRKDcRzoev7Krg3Cc+TpN1ZPcwQR1ahuc7rE7qJMYKav6VGORhEcNYUNtgiJ8htn0a
 2MjtDZSe4HhO9uH02//oio7CVGAV3FCf3Qr2fipRHVL7M5YXT/O8p774+V3c3iKfm78K
 cQhd1YkMZAzZ3bMtoxWCMFDXp5vtiXza1///NKM30bIftKHZ7s3M7WmMeKGW0cw4z7Wu
 WfsajUcRsp6vCocvj6gm8VHUrrMIhsTSB/hq3epoobz/wf15csEEEudniOiC6pG6A4OP
 fxKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YwhiK4RhjFtcOdjK6HryhHeUuPTC4xHkMOd8pTbbj6k=;
 b=mjJ3xLW17oXXM7GKilBYfosNeoe5r8ZBB6Qz1LJjnfYokLM0SyUbwINV9PaHrxpZkD
 9+5W5gb/qTgVKfjSRpE4kT0WGryNeKnF7fEJFJ/lYejFgRgTIZ4gxUDnk88FF5KvxkTm
 Vu0oj72zzqKspJ/ZJj9Kg8Xz4xhd/lRChI72QR5DQVca32c7N3XLcgqkUgqBC+n9c4ue
 Iw55W0k9C7IQIYAqR5YwgDfrg3CpMcdShR1LhPa7ft/KE5guhmdtXvaLAisAAyXsWhlQ
 tAfeVPzoJJ3h/U1A6hZUOewoR8Krpe0CF3OJdPt8K2KcB/+Hd2ulKhtrtrYP74Eb5gPK
 +P3A==
X-Gm-Message-State: AOAM531jSbJCDkNaxAAeO57Qw4USTqmCVQQUTVwQVeUapjXyo7LAs626
 qYGVUAwj1eNAXacd7giVeuXo6g==
X-Google-Smtp-Source: ABdhPJxM1M3oFBMHiRXgEOIQ+T9TXk+NQLLWwxlZklKGkaqQUZVzMOTHIzXFfi0wTEV5dRjIqEAhdQ==
X-Received: by 2002:a7b:c8d6:: with SMTP id f22mr4157067wml.188.1592487502207; 
 Thu, 18 Jun 2020 06:38:22 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:9902:c1f0:76c7:9dbc])
 by smtp.gmail.com with ESMTPSA id o82sm3707956wmo.40.2020.06.18.06.38.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 06:38:21 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	lee.jones@linaro.org
Subject: [PATCH v4 0/2] mfd: Add support for Khadas Microcontroller
Date: Thu, 18 Jun 2020 15:38:16 +0200
Message-Id: <20200618133818.15857-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_063824_399634_57568FF9 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: amit.kucheria@verdurent.com, daniel.lezcano@linaro.org,
 linux-pm@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new Khadas VIM2, VIM3 and Edge boards embeds an on-board microcontroller
connected via I2C.

This Microcontroller is present on the Khadas VIM1, VIM2, VIM3 and Edge
boards.

It has multiple boot control features like password check, power-on
options, power-off control and system FAN control on recent boards.

Thie serie adds :
- the Thermal Cooling cell driver
- add support into the Khadas VIM3/VIM3L DT

Changes since v3 at [4]:
- Removed Applied patches 1, 2 & 4
- Added reviewed-by tags for patch 3 & 5

Changes since v2 at [3]:
- Removed NVMEM driver for separate submission
- fixed MFD driver, header and Kconfig
- fixed Thermal Kconfig
- fixed MAINTAINERS files and path

Changes since RFC v1 at [2]:
- moved hwmon driver to thermal-only
- moved the SM1 thermal nodes in a separate serie
- added the bindings review tag from rob

[1] http://lore.kernel.org/r/20200512093916.19676-1-narmstrong@baylibre.com
[2] http://lore.kernel.org/r/20200421080102.22796-1-narmstrong@baylibre.com
[3] http://lore.kernel.org/r/20200512132613.31507-1-narmstrong@baylibre.com
[4] http://lore.kernel.org/r/20200608091739.2368-1-narmstrong@baylibre.com

Neil Armstrong (2):
  thermal: add support for the MCU controlled FAN on Khadas boards
  arm64: dts: meson-khadas-vim3: add Khadas MCU nodes

 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   |  23 +++
 drivers/thermal/Kconfig                       |  11 ++
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/khadas_mcu_fan.c              | 174 ++++++++++++++++++
 4 files changed, 209 insertions(+)
 create mode 100644 drivers/thermal/khadas_mcu_fan.c

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
