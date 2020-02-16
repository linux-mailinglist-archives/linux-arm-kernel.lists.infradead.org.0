Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7890E16064F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 21:21:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lrW47pmHUT2dhNQl2DN+EfPJ4495aAFfw1IN3fglaHE=; b=VltZK1LcpWzwwB
	VuVUfKo1IEpzIj7z+ePlkr4GbueS9ZEOzO/dz2S75BZfLI/xwi7NGI8hqAMY9nUfOrezNGVQnvMha
	sgZxWcLx10i0gR7Z5O28WUhd8elDxwguL5sTa0ehTmeNKXpYL6SzjaJw55y7nn+TjsayUR8KP9nsO
	IA8PF4kyY7PzNR7x6FsI5g+ga9CB/EVkpGzyLAzCTdTM8mbg5cwshwB2lgwfIQ2LzjK546S3Cu4/+
	wVEU5R1dpm7LlJwJZcYWZ3sYXGnnmFuedi2e1FBhVekVW9DTryut3+Q2lBrFa68+3NzCpldlOym9Q
	kuB2RGbKDrje+qC0xqEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3QQ4-000828-Gi; Sun, 16 Feb 2020 20:21:36 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3QPv-00081H-5S; Sun, 16 Feb 2020 20:21:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id 4so7721015pfz.9;
 Sun, 16 Feb 2020 12:21:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z3zfUADPk/oUyuzJ7VgI1Juwrp+2x57KXXaZ+inluLQ=;
 b=FfX3pzUBHrAj8jkxvad38rERLbzrfN6+fcK0HplUj8CLnl7DtX87kPUDbcoasbyS82
 pQ9uEpb/xIrz/MpMfylFu9z6L8g6whgnCiUxq23GL/a6EihKQsLBTMhTmqA3SR80+h3C
 TOvZGwwM3Ko2e3npVE/d9dI4cNkAaL7Qxbt8OrLFDQIX/f+OmLSd0W5/RWKSV4VcC9Wv
 vXPCJGyEPhvzo8tY6cuI+5EwhTPJxkYVb0HlES2oO/AUQ9Y5ytzRHlLfZX8frnnwgg1N
 gYKdezI67yJAV59FQoRuM3NVQtL6Fp6/jKR2Wuin3KONqeeE4YATVM6KqbQBaSRCOdJQ
 hb2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z3zfUADPk/oUyuzJ7VgI1Juwrp+2x57KXXaZ+inluLQ=;
 b=IdlxL7btW8AZrAzHzRDiPpTL+pGq8/zZbWplT30eBGxYNqrezGnUTgxHXrGROUhpKs
 2ZxS+W+9FHujD3sdWCL6CzZofCrAV2WWj57OTW1WBQxTOa9vofXWBtzr0RFn5HOOtLZF
 dPnto+1OI+fB1ogbIFMifn7N8vEm53zHvMFGo632NlvhARDJxO9pmPZvq1OCg+W20Tds
 +b8bI2pGTs9FDvQIcRLUe4aziOOtG18EOvIFAFjjVtVEAsH/g2142NBN/FQK1ThjWujV
 b6yjVHiXa6sUPXja7yZ96Qu1yWnac9q4S/puYSlkgD3X8h8qIpeQjlGHhiPYnL+0mBHQ
 /CEw==
X-Gm-Message-State: APjAAAUgtj8fq38RIq9BejnNG6EPYkYdL5Cej0tzglDM8yQ4I084orTa
 g6CUVIt4BcFOgBCptzhWn6Y=
X-Google-Smtp-Source: APXvYqyt1ki5Ed6SRzWgLcOn7teb9PcdZLafsaTmcNNnAg3NTxCIsHfcmSjKmDh3o1T8Dzjfc5dRxA==
X-Received: by 2002:a63:9dcd:: with SMTP id i196mr14159101pgd.93.1581884485869; 
 Sun, 16 Feb 2020 12:21:25 -0800 (PST)
Received: from localhost.localdomain ([103.51.74.127])
 by smtp.gmail.com with ESMTPSA id l69sm14424750pgd.1.2020.02.16.12.21.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 12:21:25 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH] arm64: dts: amlogic: odroid-n2: set usb-pwr-en regulator
 always on
Date: Sun, 16 Feb 2020 20:21:01 +0000
Message-Id: <20200216202101.2810-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_122127_235563_8A74BB4B 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

usb-pwr-en regulator is getting disable after booting, setting
regulator-alway-on help enable the regulator after booting.

[   31.766097] USB_PWR_EN: disabling

Fixes: c35f6dc5c377 (arm64: dts: meson: Add minimal support for Odroid-N2)
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Patch generated on top of my earier patch.
[0] https://patchwork.kernel.org/patch/11384531/
[1] https://patchwork.kernel.org/patch/11384533/

Before
[root@alarm ~]# cat /sys/kernel/debug/regulator/regulator_summary | grep USB
       USB_PWR_EN                 0    1      0 unknown  5000mV     0mA  5000mV  5000mV
After
[root@alarm ~]# cat /sys/kernel/debug/regulator/regulator_summary | grep USB
       USB_PWR_EN                 1    1      0 unknown  5000mV     0mA  5000mV  5000mV
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 23eddff85fe5..938a9e15adfc 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -177,6 +177,7 @@ usb_pwr_en: regulator-usb_pwr_en {
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 		vin-supply = <&vcc_5v>;
+		regulator-always-on;
 
 		/* Connected to the microUSB port power enable */
 		gpio = <&gpio GPIOH_6 GPIO_ACTIVE_HIGH>;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
