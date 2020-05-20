Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D27411DB1B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hho/ltpZv7kKtVnoskEf1ZEKHqjKGdFkF53HiNLs8gA=; b=XhPNLfsx8/Cq4m
	LAm/Sp/DIR13B6mDZ/X61dmcPEkPzZPQcMhYENrmpFcLLBFizYlhj6VMxjkhFB8tjsfD51XIUT6kE
	tv+voeoYbKkdWzCjLZgbM/xHQ9EHgPmsgujPhNiuK6340O+ySqqFVi3W7hTZXJHmxlXhgyV2U8Pul
	6xcRbkPekaOYkG8h4Uv3yycYqW+Mbtd6/9Z7Q5VKyLnBR112QVCiaou5Ug8rZKRZE+7FmzXRrIE6P
	QQVaK9ekE3UzjJ0NMdSVX3SdA/yZ6bzMOkSeo1sPO9Bz6Q9VLT8IRQv2EV3Fmaqt1oodXW2Y+8fPw
	9P/MvX05m8EOUuvtTn8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMtX-0000Xk-Mx; Wed, 20 May 2020 11:28:19 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMr1-00070P-Pq
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:25:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id i15so2718841wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=jJl7EHkSHE5L7ug2e+7FfE+evIqe8FKm47gAqTsQFBuvFJOM8IIH5d9Fr2EtT/MaCB
 5KT//LxD+XfnIEQReE/Kr7rJOmeWFP88We0dpLukbXgBAFcGzypmoSX88T/OJQOaIGEv
 2SC9e4wIybK+5hpkTyAcUIRjX2eRhmH9wd6W75ENaIsw0+hhonRpNAAeGFMGY8iY9U3W
 3d4urm5PcTJ2zwCp3VXAFL0IJd7ShIZAOntvZ+RRFTSJAfIQ/FAzOGPVN0f7qUnrbVSU
 I01DyocLppKyZ5eYXdc8QXZahAujUNoTgzmT7MSB6jzqf1RiwRNb9+CAj0Sw0iktkKBZ
 teHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=dD299KrX2OEk1ydMt+s/rkGRVfDtaIliuUlArns/MxQrgz9sBfOpeAotAMiQZojNXB
 WkSJ8hf+wHCeWHGG58ydBQXKktbWwOao7r8rgndbkWknGAyYfg/SQmMdqcnxI1qyHVOC
 5OcfcPnPugaGBz/Cnl5nQkzTJpB42V8OammUKQMBSGt8EzqqSWQm822InyNL7ACQLr1o
 uqh5qKOv3yo5eb0Adz854MymLxyFBOvra+n/FqTMDlSO7xFYEfbOnC78Kg66IcG5+apv
 4sQEC33FgTu+h997UlYy7UXW42uNJRoqelSFn6GYG5EPD/e/3Za8p5GYyuwuDKJZLIDU
 cMdA==
X-Gm-Message-State: AOAM533zRTkQ+Xnbwt9kkyB/04CZq/xMi0yvsZ+gCcSJrTe9SL7FM+PF
 VIrbNV0MtWBsdS3OM83EE/sL9A==
X-Google-Smtp-Source: ABdhPJxslAZNVwy7HZ5hGhld1CSn0uUyQGP3dufDHtakdC9Fg9OluxTSArW0nOyzO5SoIp0Y/JM9eg==
X-Received: by 2002:adf:e5c6:: with SMTP id a6mr4058394wrn.180.1589973942051; 
 Wed, 20 May 2020 04:25:42 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id v22sm2729265wml.21.2020.05.20.04.25.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:25:41 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v4 07/11] ARM64: dts: mediatek: add pericfg syscon to
 mt8516.dtsi
Date: Wed, 20 May 2020 13:25:19 +0200
Message-Id: <20200520112523.30995-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520112523.30995-1-brgl@bgdev.pl>
References: <20200520112523.30995-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_042543_894593_E575710F 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds support for the PERICFG register range as a syscon. This will
soon be used by the MediaTek Ethernet MAC driver for NIC configuration.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index 2f8adf042195..8cedaf74ae86 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -191,6 +191,11 @@ infracfg: infracfg@10001000 {
 			#clock-cells = <1>;
 		};
 
+		pericfg: pericfg@10003050 {
+			compatible = "mediatek,mt8516-pericfg", "syscon";
+			reg = <0 0x10003050 0 0x1000>;
+		};
+
 		apmixedsys: apmixedsys@10018000 {
 			compatible = "mediatek,mt8516-apmixedsys", "syscon";
 			reg = <0 0x10018000 0 0x710>;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
