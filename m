Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA691F7DEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 22:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qjDOM1I9tjk76ORVx6JIBoChZ6vtH0Nh+vMixugvXCE=; b=FeZTIDdTeuZU8g
	E+LgZCu0rjmZC64QQcJ1eDpczCAiXcckRRg0gG96IHbrMDTVJldJBbXcvY881lCz4QSsVHmoMsIgI
	sBUka2fKZT/QrNs2Ibt+Orla0hTkJR6e+9zcSi1mDKH25I9OtR0YcFZ7kSWKZj2CET7fSfUsBcM3k
	JmffW8gKu5Ie1aLyCpHmPoMFR2PqFZiPPZgMOhaKwux8ljsj3V6FVPOBy5mVWINNyD8YdFW/kkiVv
	EV4OMP88/pTBgpbLXfjCDBE/4bCThO9pImkiOA/hK6VpDHBUaN5Vdo2sxEuz1ly7VMH0/GBQFRb3P
	mJWELW8aGMzsfTh2kcJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjptL-0004zE-Cf; Fri, 12 Jun 2020 20:03:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjptA-0004xs-5m
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 20:02:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id b5so3654339pgm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 13:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6uGSExpyps+wiw7uOwP+l2H0cv+SpFFWTmb8dRKkt6U=;
 b=h7u6dR4B19jQUlPQPyqjXka9J3KhpwDNlIcPUaI2++siCsOQzCELypYC05rGhkBGfK
 g6A0zotR7FceCE016nrOeQktoGXFoxfPsVMkwkGm2ZK8vzxnm9PHYfuf86mrONiRQW2Z
 Zw4dDBZtjL34Gk9sshcTJuMJRBFPMalZqIERo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6uGSExpyps+wiw7uOwP+l2H0cv+SpFFWTmb8dRKkt6U=;
 b=DHiWkO1X9pJ6JYLc9EHJp3jmsJpOwhnOaJ05LbWgPaKcrC13XPN+JLc+ey5XAKKLfS
 HYNvGR6kMu6gVZ/iz1HYIhoUh07Dbp0On+V8JrD+z5RTvDbOPOydmUz8nO7ilnK/5TnW
 2jKAoayqcbynMhOyMtQe0k+lWCgDXII1v8D8hy61UKsNajesPvuLhCIKQVqIk3VcLaNj
 t3jxGyJx0S4gYdquLG3OnYJmmvWcoHD7K2rt7vFd/Mj+ZCN0pyLTHmD3IN0b2/DLwVwo
 Dem9HYmGCwvsPhTn0bwccDMYkRjY9XiT2oxQxMkc+QZrFhphGo88UStNqhdmpuI5zqlt
 vsHA==
X-Gm-Message-State: AOAM533I6DLHZ93J0TvH1/Kdkic21GMVweOiyANnvM2GbLqxYL04TE/o
 RACMieUWxfqDpDrQScelVE8KXw==
X-Google-Smtp-Source: ABdhPJz0sMFDiDA11ABe5kT1o/km+Y+ock0L+fTuGu64VLLvv2xzyZOb5s8slfiJArkBbrcCb8SSjA==
X-Received: by 2002:a63:1617:: with SMTP id w23mr12597286pgl.248.1591992175014; 
 Fri, 12 Jun 2020 13:02:55 -0700 (PDT)
Received: from apsdesk.mtv.corp.google.com
 ([2620:15c:202:1:e09a:8d06:a338:aafb])
 by smtp.gmail.com with ESMTPSA id f7sm6544851pje.1.2020.06.12.13.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 13:02:54 -0700 (PDT)
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To: heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2] ARM: dts: rockchip: Add marvell BT irq config
Date: Fri, 12 Jun 2020 13:02:48 -0700
Message-Id: <20200612130219.v2.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
X-Mailer: git-send-email 2.27.0.290.gba653c62da-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_130256_238531_A13F48C1 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, chromeos-bluetooth-upstreaming@chromium.org,
 dianders@chromium.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 mka@chromium.org, Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Veyron Jaq and Mighty both use the Marvel 8897 WiFi+BT chip. Add wakeup
and pinctrl block to devicetree so the btmrvl driver can correctly
configure the wakeup interrupt.

Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Reviewed-by: Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
The Veyron Mighty Chromebook (rk3288 based board) is missing the wake
configuration for Bluetooth. Without this change, the wake irq was not
configurable and wake on Bluetooth was broken.

I verified this change with additional changes in the Bluetooth driver
(the series is at https://patchwork.kernel.org/cover/11599101/). The
driver changes are not necessary for this dts change and shouldn't block
it.


Changes in v2:
- Move sdio0 ahead of sdmmc

 arch/arm/boot/dts/rk3288-veyron-jaq.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index 171ba6185b6d39..c15d6865f5a390 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -44,6 +44,21 @@ regulator-state-mem {
 	};
 };
 
+&sdio0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	btmrvl: btmrvl@2 {
+		compatible = "marvell,sd8897-bt";
+		reg = <2>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PD7 IRQ_TYPE_LEVEL_LOW>;
+		marvell,wakeup-pin = /bits/ 16 <13>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l>;
+	};
+};
+
 &sdmmc {
 	disable-wp;
 	pinctrl-names = "default";
-- 
2.27.0.290.gba653c62da-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
