Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45347D7F9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9qHoIfbFd+IEJQIuCMZmmPNjDTQVnQSnRU1br0awob8=; b=nMW
	tDPvRKmL1RYClf8gVBFtqrzBfb4Z0jf10Fo71SJGu+qhLEZKaXOtZXP5mohtM7LoG8NGb18OP56xu
	sTa8418CjDuXtOczaU/fZUwAsYYDowrcd4LYgitdITtESH0o5zWUigUYc/E8qT+hUVrbNbrId5PIG
	CJ5p/ZtTlOAqq3DpcqE18SPJ/FQ77uQ1EeslVMlEc4pfqloPaR3WsRvKFjnyR/5JH8g/CBz6BbFa3
	9qSdcRRMmoFpQ7dqdzHGLdV1Dufw2hYS2brliqZjRiCgRw6jQqx0REmk2q2CUH6gxO0/Q/eXldP0I
	khfXg5yFERtOFSZnTviI7ACLm6hC7lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSDH-000707-Bi; Tue, 15 Oct 2019 19:10:31 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSD3-0006rf-HD; Tue, 15 Oct 2019 19:10:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id p7so230384wmp.4;
 Tue, 15 Oct 2019 12:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=q85wWT1Ntix0umS+jHesJR+Bc8njDJ95cdjzzQg8isg=;
 b=Qtue6CQgRcmNCCevDgHkx1nw6nwFmlUixidcjbgaIDm4CTFvf9nEgb5BaqJwTwk33t
 qDClhJVxShLHZtTLCcaqSqt1ubXo5CHnT1ckRwUGXiQb06xdXNw8cAWPvChjA/mQidDW
 3Xa6unKQyCYmR+lI0WDYtykal4JiuA690wKtJ8Kmclf0Ot8Lajas8/OG3zshPSp044Gd
 ZuUssuVp1oVhFQyWdfoCXOa5v6ofDAuiaou4inXUVvR/KbSVqwpwI4hAr9oDnrnJaCj6
 +PxyeVYecH51/ZEKinF324uy+IMrEfsgDT5hV3ha/+xaBnEGP22pQplalarGlqT19JF3
 vldA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=q85wWT1Ntix0umS+jHesJR+Bc8njDJ95cdjzzQg8isg=;
 b=gAXQE2EmqIfYcMyOHUEAYVL7DGxhZ840KKyHTHN528AdwuWY5H4yKkObqDPp9Hlsx0
 InxGUhj9oj8ssrT7HarTjqIQj1k8gHYCIgKgpAutS3NpKbL+Ym3sMAb2+e/Vh2Te0MHm
 pj32/tcLBQbrCT/2OrGr+M5Du2x+ntqDVWQxw42jneqzLmiXzyQ+Gsc873xPfi4lD2l8
 FRpnDTVmV+Gp8SOrtrnQ+U/JHAIhL/SWQxPOrNS0OLmGz7fhSifAZB9LJgB3r39GDZW4
 PshwmnuG4cMFHBowX0w2Sz84fhp1obzKrKmtkteR0UC/foaX3cq3hstnbtS67vuLVm73
 8aJQ==
X-Gm-Message-State: APjAAAX9AIi5w7TmcUgKf2vlQo++hrB0ywYKrwriGQfHB2ivL8e4kVu3
 15JMVdT3leR9VKE5qZPDtpI=
X-Google-Smtp-Source: APXvYqzKZdq6eLHh6x7PFZAJKQx0U0RnCiTFPg+KYwQ0VlKMan5QzmHnChRFPM30ZpQC7osTfYxqhA==
X-Received: by 2002:a7b:cd87:: with SMTP id y7mr61400wmj.93.1571166610784;
 Tue, 15 Oct 2019 12:10:10 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u26sm25089984wrd.87.2019.10.15.12.10.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 12:10:10 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] arm64: dts: rockchip: rk3399-rock-pi-4: restyle rockchip,
 pins
Date: Tue, 15 Oct 2019 21:09:59 +0200
Message-Id: <20191015191000.2890-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_121017_577357_86EA5BCA 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The define RK_FUNC_1 is no longer used,
so restyle the rockchip,pins definitions.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index 1ae1ebd4e..188d9dfc2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -486,21 +486,18 @@
 
 	sdio0 {
 		sdio0_bus4: sdio0-bus4 {
-			rockchip,pins =
-				<2 20 RK_FUNC_1 &pcfg_pull_up_20ma>,
-				<2 21 RK_FUNC_1 &pcfg_pull_up_20ma>,
-				<2 22 RK_FUNC_1 &pcfg_pull_up_20ma>,
-				<2 23 RK_FUNC_1 &pcfg_pull_up_20ma>;
+			rockchip,pins = <2 RK_PC4 1 &pcfg_pull_up_20ma>,
+					<2 RK_PC5 1 &pcfg_pull_up_20ma>,
+					<2 RK_PC6 1 &pcfg_pull_up_20ma>,
+					<2 RK_PC7 1 &pcfg_pull_up_20ma>;
 		};
 
 		sdio0_cmd: sdio0-cmd {
-			rockchip,pins =
-				<2 24 RK_FUNC_1 &pcfg_pull_up_20ma>;
+			rockchip,pins = <2 RK_PD0 1 &pcfg_pull_up_20ma>;
 		};
 
 		sdio0_clk: sdio0-clk {
-			rockchip,pins =
-				<2 25 RK_FUNC_1 &pcfg_pull_none_20ma>;
+			rockchip,pins = <2 RK_PD1 1 &pcfg_pull_none_20ma>;
 		};
 	};
 
@@ -532,8 +529,7 @@
 
 	wifi {
 		wifi_enable_h: wifi-enable-h {
-			rockchip,pins =
-				<0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
 		wifi_host_wake_l: wifi-host-wake-l {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
