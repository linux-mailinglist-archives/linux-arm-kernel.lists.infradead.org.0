Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9EE1DE665
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:11:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwCwnIxjALBS1xBEhnW+bAE9NDhVvrQgxetQWQuKyr4=; b=lx2dZwinBmPKJ1
	avC/HtaxSdBW6YYZhXahuduaEGZJqhDJHCVVCIwxVHOR+mo+8swdQNT2TsaeaDsf8/xeeE+7P3bck
	Idr10lA4CpGquhTLB+99MfAawI7M33u7i4mvuq7FN84/n8Hc3k1OHe6DnK+y6rqHhg3imrwBhqT2P
	CNhNyOgo/fII6nntHGBwHSbDD6tbknu5Jr5NSdhlIXxsU3rUtrcUFd5oQf+vb2Wg9pNQOGUqtRytY
	rg/zXCxhuqBvaOEk625Ct7mjKLiacXBxihSivOXV5bt4mAL1ygXik5dcixAbraCoVMSLd6dxQg0Xn
	OyBgncotgJkG06Dqd83A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6Vt-0000Gl-00; Fri, 22 May 2020 12:10:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6Sf-0003Wa-UY
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:07:42 +0000
Received: by mail-wr1-x442.google.com with SMTP id l17so9951379wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 05:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=w4oNVCj57ugEIKAorgiwr/6ZhMyAJS7/d21wbhVVREFgDobNnsPNnnl0wzfNPGIvcx
 iJsLaX/gM/6OJexLtHL+UEgWQ/Ie371efyRycyFoXc1owXFpLfN7trsim+yWQC8EHONE
 wl1bDzLXkJG502X4CQzRCO/pg8ANFX08KvuAYQqtybM5G33ioTSTwae0nnbCcYuBZmnf
 uXCwj7dSGhQY8fj0Xt+AjeTzbNFfuCjqTzVcG4Xb/CcRE4murxFQ+ORGDNOeANy68FdR
 4z953GHOUhZ3Mu10PtM6oFNTmDEbRv8nI2vWsi3AL7iMeAlfsOoqSoKKGRO6vlpvyYUw
 KYKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=UpG0DJOytYboNc+TVBA0L0md1qvDj/pWa6fKkxwGXof9qCT3jCID1pJ08ieudcpJL2
 RKl2HXkcF3wN0/uztOKmy14kl55b3ELh9cO7Ow5c98i4htkyJXxXUmPRt1PC6KdgtqUT
 gKobSkhtt3+d5LtccCeYaIxPReHsJX25aQ/2GmmgseZU2tRvKFvMjBJ4aykRCnh9dDli
 fUeSxFfZcT29zXjSzblNbHnM5nUzX6rih/OOXXHiu62cI3oWF6DCekCxePGyyCTM6P8S
 xqFRKNH3Zf9PWz8tOie7FSj6kfcfuEC08KTh+/1XYltWmZyI1eZyun8nOqGQTFnXYbsQ
 dA9w==
X-Gm-Message-State: AOAM530+3bPjk3q8qi2s0CfcKCADcmJaq4P0hDfOf6KJMdIyh5qQorxJ
 uCZNYhTa3kAej/7rf/BzNlFt+Cifw3w=
X-Google-Smtp-Source: ABdhPJzSAlF/xo0X4V7amcXkOuTqudFkmEG0Vyv0vxLP8Rs1EDgRp8NvMKPwUFcm1KhlXMSc0PUCRQ==
X-Received: by 2002:adf:fccd:: with SMTP id f13mr3320501wrs.386.1590149256443; 
 Fri, 22 May 2020 05:07:36 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:35 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 11/11] ARM64: dts: mediatek: enable ethernet on pumpkin
 boards
Date: Fri, 22 May 2020 14:07:00 +0200
Message-Id: <20200522120700.838-12-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050737_984855_F2F88183 
X-CRM114-Status: GOOD (  10.84  )
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
