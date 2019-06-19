Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9194C0EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 20:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pIQ90h3QvaBzru12ft6oS4Y7k9y3xczlVnFbb0TjutY=; b=AZy7QkH0W9kh3o
	W+Oasigy75Q9+4ndoB1d0G1nK+8BGjyYYWx0KuIbSv1w1aLHAdO3cN1OGYw4ISSXjyqrrjlxp+dMH
	vMD5Tjct8kNh4gqtPkVAlNZFwj70JU2XK/D8CHjWGBT3//aHB9MPC39/2se4LYVE/1JqXRCnKmctV
	bd3TFsKLGjsdGiNRcvso7gZBfe45Fk1SjmLaca+1gU3d+sPEpq4mF4hdj9UHzMLYZFx2gZDRI1r5X
	u1oIomXEcy+ExkiYyw8TJ3WOq/Yh5JwpVZ/9ytM9OI/vfRuyFZAl/Dfagxqd81tsi/P7/a4gSiLqb
	KXBu2j/tVvRoT1DRePug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdfTD-00062Q-9f; Wed, 19 Jun 2019 18:38:07 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdfSt-00060q-MI
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 18:37:48 +0000
Received: by mail-pl1-x641.google.com with SMTP id e5so155911pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 11:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2UHrTE7B5XpI1WvMqZiW3y+ZVgQqpXieqgBOuUL3YDY=;
 b=nXaidQykLu0h3v+pNAwd13wc4DhE5worNOflID9Mf2valzfpNLEoz/00pn7rrU7Dmn
 FxeUrAO5yA7lCOSKq1jd1jzQ4O1aY0TxEMX08ip6aEoG4HxpImTpVC6VSk+69Kpzm6Ys
 gmqahyhRmADeRLd6d+ldLEDrNFb2uHKhQjwM8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2UHrTE7B5XpI1WvMqZiW3y+ZVgQqpXieqgBOuUL3YDY=;
 b=NoFLcKQJkKVAKwfJ8cYelSWtGBWkhDDbNOuZm0QgU/45zwz3U41eNGQhpFQjx+5crk
 v7ge05g/No3WUSH0w6Jev1QZMkHRDaNLZXvtboZlOA/MdF6FVSGehCtSABRDtqloRRRn
 5TEyc9JHh8SILIaiwY4zcjLv5zwTicLSzsOVbja0b4AJ0YBByt1oGqzwIGU8FCg0nI3v
 gWEffKF/9TKD1D+zKe1p0upttE8X7NiqMxvFsGJzwxTRzSdGQ+yJmUPMEKDTDoiHw2xr
 r3AL83frHKCYZyFZpEZHEKuhct4A8C1zwFLDK5VaEtxutx4nlzUYOfWXd+CIuJTiECIl
 FKjA==
X-Gm-Message-State: APjAAAUlLyOfs39Wu9/iPZNLJzQ9FV9Bif/NSlsgOjPOuvfC2+vTWG8i
 EnTx/3aaD0pYVyZjNAMmSNfHCg==
X-Google-Smtp-Source: APXvYqw3w3u7xuqL2IUmlLYdr5iRpyNBWMi+c4rhFrkhqFLsCOFAK3UzXw/uPna24Mybo1ZWf+lnpA==
X-Received: by 2002:a17:902:7e0e:: with SMTP id
 b14mr96610234plm.257.1560969466479; 
 Wed, 19 Jun 2019 11:37:46 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j16sm2681463pjz.31.2019.06.19.11.37.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 11:37:46 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: Configure BT_DEV_WAKE in on rk3288-veyron
Date: Wed, 19 Jun 2019 11:34:25 -0700
Message-Id: <20190619183425.149470-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_113747_725055_D21960D0 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 mka@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the other half of the hacky solution from commit f497ab6b4bb8
("ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up signal on
veyron").  Specifically the LPM driver that the Broadcom Bluetooth
expects to have (but is missing in mainline) has two halves of the
equation: BT_HOST_WAKE and BT_DEV_WAKE.  The BT_HOST_WAKE (which was
handled in the previous commit) is the one that lets the Bluetooth
wake the system up.  The BT_DEV_WAKE (this patch) tells the Bluetooth
that it's OK to go into a low power mode.  That means we were burning
a bit of extra power in S3 without this patch.  Measurements are a bit
noisy, but it appears to be a few mA worth of difference.

NOTE: Though these pins don't do much on systems with Marvell
Bluetooth, downstream kernels set it on all veyron boards so we'll do
the same.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 .../boot/dts/rk3288-veyron-chromebook.dtsi    |  2 ++
 arch/arm/boot/dts/rk3288-veyron.dtsi          | 20 +++++++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
index 5727017f34b2..1cadb522fd0d 100644
--- a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
@@ -237,6 +237,7 @@
 
 		/* Wake only */
 		&suspend_l_wake
+		&bt_dev_wake_awake
 	>;
 	pinctrl-1 = <
 		/* Common for sleep and wake, but no owners */
@@ -246,6 +247,7 @@
 
 		/* Sleep only */
 		&suspend_l_sleep
+		&bt_dev_wake_sleep
 	>;
 
 	backlight {
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index e2635ad574e7..53d2f2452868 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -485,12 +485,18 @@
 		&ddr0_retention
 		&ddrio_pwroff
 		&global_pwroff
+
+		/* Wake only */
+		&bt_dev_wake_awake
 	>;
 	pinctrl-1 = <
 		/* Common for sleep and wake, but no owners */
 		&ddr0_retention
 		&ddrio_pwroff
 		&global_pwroff
+
+		/* Sleep only */
+		&bt_dev_wake_sleep
 	>;
 
 	pcfg_pull_none_drv_8ma: pcfg-pull-none-drv-8ma {
@@ -596,6 +602,20 @@
 		sdio0_clk: sdio0-clk {
 			rockchip,pins = <4 RK_PD1 1 &pcfg_pull_none_drv_8ma>;
 		};
+
+		/*
+		 * These pins are only present on very new veyron boards; on
+		 * older boards bt_dev_wake is simply always high.  Note that
+		 * gpio4_D2 is a NC on old veyron boards, so it doesn't hurt
+		 * to map this pin everywhere
+		 */
+		bt_dev_wake_sleep: bt-dev-wake-sleep {
+			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+
+		bt_dev_wake_awake: bt-dev-wake-awake {
+			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_output_high>;
+		};
 	};
 
 	tpm {
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
