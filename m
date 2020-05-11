Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F841CDE86
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwCwnIxjALBS1xBEhnW+bAE9NDhVvrQgxetQWQuKyr4=; b=MwlMOuY34k8DYj
	a1WmG2EJs9RS1cH1nt0iQUMEwa1jBIX7F6dOfa9rZ3zrKsQN0T/+VMtRTtAjWW6M6apxqlwRAzoGC
	xiAOvpmadH7FqQpB3Xp27Ql2f5KjoeCGzpWIMS40iUZZu1BSPQMku+LWjbJpDHoVdD/frgSFPcFuA
	WeUjQm8u58uPR7rGJev2WtM1RaWd8DdykuwJ++c3JnTlGBsVee4YbCVv+M+PPRCZJtGrnrGAys95w
	0Vp/BKSf6fvyX2GwwGZv3dU8aM6lzVbzd08GpuzDH2Cw9/2qQD6/OnC0PBVfw9WJzYcNUhkwy5pbW
	Slw1eryTwMDlFIIY3ukA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA70-0000jU-Tr; Mon, 11 May 2020 15:12:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA2r-0002lH-Iv
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:08:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id h4so18398811wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=seBpYegPZMs/leR6JMfg7RpttvfOQmjhwYGL5XqCrl0ivqZ8SgNJfl5MrK6SNZU0x7
 s+P+5zxeVYMfWsvU+TruIPRs58u2N7gNKpF12dehHxew8uZn0wyQlXvRs81sH/cUAU/A
 kDiLytEcupQFinP/tSVSDYeJHqjKGk/S/swcSaT9uPiZDBURaYvEzFY1KQfq187G//Gn
 fP7p4AVjZ9rbwczBJGBw15zMRSFOqPTKu+IA1dWJoqAajrlxLUjrFo00xOd0Oskl6NXS
 vFI181kFNL42vS94eYWzxhtiRzUpW9BwFO6iLc+Bp3c1tgfqYpiA57PqAjvUSUmXKZ85
 b5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=en0hiz83J93JANDD84ueAh/fUICuvsXdI4WUnL7byzk8RJVFD0BSu0TP4NwOaVKUT8
 u4nb3yOnkQcxAVTXu5NZAX+0RiYt9cIurrP5xjdzPn0r8rOMrUISurkZG4bpNiMNpqeY
 9W3lEzsHv99qprxcygChW7nHiJMUQBwTDk6wSenj2oy3vS+LS6Nealk7SevvpyJ4Oz9F
 yn9KnWUDxSrotKwedK18UHp/1iLZop3kPyUoyASByD3c90MSFFek5ECnzgTe0AAd0jwW
 qtfP14/FEUmd50XTKAxqESmcKy80q5PCKv6FQEiR47FJHNT2h89IKo+WKoifM950UMCl
 g0Xg==
X-Gm-Message-State: AGi0PubWaTmK/xv2QmwcOISD3Kmu/IHSRH2hw8plTds/NbQh0NDErkWn
 M8A4e52/mI/Q+84R/I9qx2rOTw==
X-Google-Smtp-Source: APiQypIPr9fJcUgRNwzXEgdam3rXk6Or+HXAPoKGbi/pvrOEjCYCARRhvNo55PBWgkqCWw6ysRwOhw==
X-Received: by 2002:a1c:2e91:: with SMTP id u139mr31309130wmu.18.1589209720425; 
 Mon, 11 May 2020 08:08:40 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 94sm3514792wrf.74.2020.05.11.08.08.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:08:39 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 14/14] ARM64: dts: mediatek: enable ethernet on pumpkin
 boards
Date: Mon, 11 May 2020 17:07:59 +0200
Message-Id: <20200511150759.18766-15-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200511150759.18766-1-brgl@bgdev.pl>
References: <20200511150759.18766-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080842_005851_70BD57E8 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
