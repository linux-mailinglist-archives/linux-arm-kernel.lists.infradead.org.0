Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBAC178B87
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 08:41:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0ETd8cSrmQhG9hZX4P+NseOYcezobJP7ERwA/1ZlWOY=; b=Y4m
	JcVDdthiNmGNCSLWjovCFmHu5093oXIcnFWW7KCivLwjGAFkzuwaM2FAuuFvM35n7P8ktFECR8jcG
	VfirKfhJ8D4rYyjIX2y5j9NAy9nCLEg++onek30B6qR6K9BKD/qT+/fHMnbH/RQ6L245uYM8eFG7x
	UQGC0dC1LdCFwKPtCKtdGKak3OoYKVxqKj2FZNlmi4LOiLm3xrRmbUZCEn9p9gYUSzxurvCDw4NNb
	QcDOAnM8i1Tmkywl7OMaaQpqh8PQGbP1nVUlL7kc+ZaWeCU4xrIUSYRMIHB+fvAUcSByrZG0bbNod
	CwQ+YFK76VefNit/4encel5zaMP6SvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9OeV-0003qc-Bh; Wed, 04 Mar 2020 07:41:11 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9OeM-0003pR-0p; Wed, 04 Mar 2020 07:41:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id q8so1076872wrm.4;
 Tue, 03 Mar 2020 23:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=CrHAGg7xO0NT1A0T82S72pHlkMFHuRzLgTSmN7ed1nE=;
 b=ipv6JMiDw6jP42BqOvDDy9Yh3RXYzZGPYyDcU9jXEqL4JxdqaTmfpcYntDy+H33beR
 2f0GsEhs7IsntUPTAfnYI33ifPrYDREXuxlsb3vVIEOu/NhxBcW14ekLXlN1tn3uRxEQ
 rfG14QpPV2D07MSU0WGqQV0A9EpuwEzueZF/uIBBK6FQTvQPCYYB+vVBGAgt7GoKJsOr
 qf/8dgdyaoCc4cHLCTFG5CFuWSCbhQP0H0R6mE5k/N2ahBwO1tBdxSPqHaBUGzGz6iqp
 JfAlYBFJaoyPJ0EkhHQDoawMGHk657Jnl4ifI2eGN3IkzFC65H1mQfCKcRoH5v1VTjbg
 SxKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CrHAGg7xO0NT1A0T82S72pHlkMFHuRzLgTSmN7ed1nE=;
 b=JPBSyV+hlggxwdVrrWAAFBR3XZC637cqFVambYVS4ftaBFVA76tBpIXi7bys6JIgE7
 Rg9CvmHMs58RKstCUPpzym57XWQO+5UnNvhBwfo5e/snWgy/b8NVFnnxGPAkkwAY2Nfz
 XyJEX0crFz174TBgRPWNpkNsu7mhT/QZyfnwtvKkE3XTg27cNH3TacBqtmA/wHGwK6Kl
 DbjMEg3/ZjdS0aJFmbQKJL/r+N5UzchPL3e8cDtCzGtryxQkn9884OL7Hey3/nUhq5VZ
 aTup3ZBiPWl4FIZWaEa4pxWi5nDLGS6OJxR0d9+Ubeu61BloZT/Nfw+Wli1V6WCkla8z
 pyHw==
X-Gm-Message-State: ANhLgQ24OVoU/HYAaX61SUEFuXuGQW2j2P4QOoODtochS9FXg/XWxCt9
 YX2ZfvxVyv5IMw3nNhempF41epkT
X-Google-Smtp-Source: ADFU+vs1bZk9bnffIwK2hnQ7f7/N9rjAEGy/0M/3YUa4nM2yYGwzhot/uOrj5R/5NG1RttDv7QCOWw==
X-Received: by 2002:a5d:410f:: with SMTP id l15mr2638334wrp.245.1583307660517; 
 Tue, 03 Mar 2020 23:41:00 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id m16sm6410530wrs.67.2020.03.03.23.40.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Mar 2020 23:40:59 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/3] ARM: dts: rockchip: add missing model properties
Date: Wed,  4 Mar 2020 08:40:49 +0100
Message-Id: <20200304074051.8742-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_234102_085942_305CAE34 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives these errors:

arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: /: 'model'
is a required property
arch/arm/boot/dts/rk3288-evb-rk808.dt.yaml: /: 'model'
is a required property
arch/arm/boot/dts/rk3288-r89.dt.yaml: /: 'model'
is a required property

Fix this error by adding the missing model properties to
the involved dts files.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/root-node.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288-evb-act8846.dts | 1 +
 arch/arm/boot/dts/rk3288-evb-rk808.dts   | 1 +
 arch/arm/boot/dts/rk3288-r89.dts         | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-evb-act8846.dts b/arch/arm/boot/dts/rk3288-evb-act8846.dts
index 80080767c..be695b8c1 100644
--- a/arch/arm/boot/dts/rk3288-evb-act8846.dts
+++ b/arch/arm/boot/dts/rk3288-evb-act8846.dts
@@ -4,6 +4,7 @@
 #include "rk3288-evb.dtsi"
 
 / {
+	model = "Rockchip RK3288 EVB ACT8846";
 	compatible = "rockchip,rk3288-evb-act8846", "rockchip,rk3288";
 
 	vcc_lcd: vcc-lcd {
diff --git a/arch/arm/boot/dts/rk3288-evb-rk808.dts b/arch/arm/boot/dts/rk3288-evb-rk808.dts
index 167882096..42384ea4c 100644
--- a/arch/arm/boot/dts/rk3288-evb-rk808.dts
+++ b/arch/arm/boot/dts/rk3288-evb-rk808.dts
@@ -4,6 +4,7 @@
 #include "rk3288-evb.dtsi"
 
 / {
+	model = "Rockchip RK3288 EVB RK808";
 	compatible = "rockchip,rk3288-evb-rk808", "rockchip,rk3288";
 };
 
diff --git a/arch/arm/boot/dts/rk3288-r89.dts b/arch/arm/boot/dts/rk3288-r89.dts
index a6ffc381a..a258c7ae5 100644
--- a/arch/arm/boot/dts/rk3288-r89.dts
+++ b/arch/arm/boot/dts/rk3288-r89.dts
@@ -9,6 +9,7 @@
 #include "rk3288.dtsi"
 
 / {
+	model = "Netxeon R89";
 	compatible = "netxeon,r89", "rockchip,rk3288";
 
 	memory@0 {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
