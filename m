Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 410C91C581D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwCwnIxjALBS1xBEhnW+bAE9NDhVvrQgxetQWQuKyr4=; b=N0VjHoK9Jp1B3Z
	RxKHyDZ261Lrx7acgWPUoDazAxOZvt66EQiwUwwHTubWZ5p9K8FgCA1QicV27kUQyUUaDUsVuaPbA
	uG+UORpXMnbktzWwYAismWuFDzY3kM/JRBoVzUSxxW2yqOrk5v/TbTeJh/sy/2caJtY07OCrNrOko
	tz0x2Ouk1M3DxMcLa6aOnxjLyp6RlmrJST+vq7QiOoBhzJmPHbJ5cxAcTnUKXPwiOB0q2fsCtSYbe
	6t++MQjVVMx6Q74gTig/Ri/eCwcrUftMpbUtD2US88iY3LCGuq5zKEPh+srXdazNwwPUhWG5XDcFK
	zmRIR/NOi049vEU/+kog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyDB-0007Yv-TX; Tue, 05 May 2020 14:06:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyAL-0002Rq-L6
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:03:23 +0000
Received: by mail-wr1-x442.google.com with SMTP id f13so2856694wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=b1g+w8BbUfw1KBw5K5flqcpokPuwWxqpurh2OtOPaunuRCeznQpZQlwP/WmuzoQgod
 CFSP4OiPt1lnEwVmBbNmoJbW8Lp9A94lN6aZgEgid2Id63oLBylgAseWNbdxn6jtSsYR
 E/Fc3NnZWPVr75Zc4iI18RNGT0JBcgshtWeyJ7ygIa2DncTH6eFWRlYLO+juQ1IJuzRg
 qq/R2tbLKwU0DYSzilgyEMuOgD9YzdMBKR7ZxLdG9s7DBdX+mipCe+CicuEcioBHW8Pl
 SLJzfUoWzzS0YBpfZIcrkuLP4G1MO1KO2GPMW7SFg0Od6O4NZwujxJubuNCjSksjEPFg
 B38Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=LLVurhf+QXzUWXTtMiitOnGyqiXt6AvbhqlEPiWl03d3nDDkIjPkpYJ4cFT1kfvEej
 yf1asbQR3N7pwq6BVYMDW18va3K8CvDBrgAAIFdZI7dMfcJbysAREWs496HPOr88/95l
 kn3QvHXaJPV926TjwmAm89t+dtVpOSYRh2ljJ6XHSkM26NHUQHaAqIiry6A7jpGXvyVH
 szKKYTpFi6Lf8i8N8cMD/51znMLplgovrw9lY4wvNdWfpcIjTAEZkNebh1C+nQOn6RJp
 50KuLG9OtifvSOYtuBn/DJOXEbaowCHF1TlDueMN0rwASX+Aka42ykcvAEsms7cTGC7m
 Xthw==
X-Gm-Message-State: AGi0PuYZajf0hLMZbZwRLF3754ghlPOjno33l0fPmdWyYeiIZzZrNy8/
 ljjSpo2Pp2n/rqi+MqMuwzOcUg==
X-Google-Smtp-Source: APiQypKSn8NhwYdJ0V9/oJPNixCPyhQzeTO3N+zmykXTaq3hm8BpCPa3gRNfEdcvq21s3N2xigB8/Q==
X-Received: by 2002:adf:e905:: with SMTP id f5mr3949344wrm.409.1588687400189; 
 Tue, 05 May 2020 07:03:20 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:19 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 11/11] ARM64: dts: mediatek: enable ethernet on pumpkin boards
Date: Tue,  5 May 2020 16:02:31 +0200
Message-Id: <20200505140231.16600-12-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070321_826546_69948377 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Add remaining properties to the ethernet node and enable it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../boot/dts/mediatek/pumpkin-common.dtsi      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
index 4b1d5f69aba6..dfceffe6950a 100644
--- a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -167,6 +167,24 @@ &uart0 {
 	status = "okay";
 };
 
+&ethernet {
+	pinctrl-names = "default";
+	pinctrl-0 = <&ethernet_pins_default>;
+	phy-handle = <&eth_phy>;
+	phy-mode = "rmii";
+	mac-address = [00 00 00 00 00 00];
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		eth_phy: ethernet-phy@0 {
+			reg = <0>;
+		};
+	};
+};
+
 &usb0 {
 	status = "okay";
 	dr_mode = "peripheral";
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
