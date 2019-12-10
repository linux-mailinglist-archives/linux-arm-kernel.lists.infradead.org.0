Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB2B1188B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 13:45:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A1wfDT/YT7jOHbxlNxDqluqL8xNGRfmee4MTTB/zo3M=; b=M/KTf4Ek5HCulM
	JRawNeke3tGnZVQb21NQvnRWo4AtNoHJnJ/3Vz2rH2ZNoGXWfKaybxdu+0LQ7RUqbweAvpIh9M1Ay
	YlQgPOwCpd3owkTxvr+NsHMQUDRdCGC4GVNRMvMAUcsuYQU0jbBQ0shcyVWF+rKfmiXKCzJSTfYo6
	y+9GLUgL7gMeGbzqVoINl2gFIJCG5JZxL98aIwGzTkwKn+NNnc8/tCn3jfhtBHP7BdIObz3eV5ue2
	qR3XV/RBUWMWUkK1G5hyt7Sz7NaQSNWo6O5KXEtJDy2ojEsn8u5yDX/Gm/RMP2Qd1RfYBR4mrUyy3
	Z2kdM+SkRVkCdF+glyhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieesp-0002rm-Ny; Tue, 10 Dec 2019 12:44:55 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieesh-0002r5-HH; Tue, 10 Dec 2019 12:44:49 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1ieesZ-0004w5-Vj; Tue, 10 Dec 2019 13:44:40 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 xBACicTS005661
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Tue, 10 Dec 2019 13:44:38 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH 1/3] arm64: dts: rockchip: Remove always-on properties from
 regulator nodes on rk3399-roc-pc.
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Organization: five technologies GmbH
Message-ID: <f985665c-86c0-1657-14f8-f77e2ce5a3f7@fivetechno.de>
Date: Tue, 10 Dec 2019 13:44:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1575981887;
 6836b884; 
X-HE-SMSGID: 1ieesZ-0004w5-Vj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_044447_719252_A05154CF 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some regulators don't need the always-on property, remove it.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
  arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts | 2 --
  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 3 ---
  2 files changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
index 2c9c13a0fca9..2db9d32ad54a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
@@ -32,8 +32,6 @@ vcc3v3_pcie: vcc3v3-pcie {
  		gpio = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
  		pinctrl-names = "default";
  		pinctrl-0 = <&vcc3v3_pcie_en>;
-		regulator-always-on;
-		regulator-boot-on;
  		regulator-min-microvolt = <3300000>;
  		regulator-max-microvolt = <3300000>;
  		vin-supply = <&dc_12v>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 9a1ce3a4ae12..8e01b04144b7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -176,7 +176,6 @@ vcc5v0_host: vcc5v0-host-regulator {
  		pinctrl-names = "default";
  		pinctrl-0 = <&vcc5v0_host_en &hub_rst>;
  		regulator-name = "vcc5v0_host";
-		regulator-always-on;
  		vin-supply = <&vcc_sys>;
  	};
  
@@ -198,7 +197,6 @@ vcc_sys: vcc-sys {
  		pinctrl-names = "default";
  		pinctrl-0 = <&vcc_sys_en>;
  		regulator-name = "vcc_sys";
-		regulator-always-on;
  		regulator-boot-on;
  		regulator-min-microvolt = <5000000>;
  		regulator-max-microvolt = <5000000>;
@@ -392,7 +390,6 @@ regulator-state-mem {
  
  			vcc_sdio: LDO_REG4 {
  				regulator-name = "vcc_sdio";
-				regulator-always-on;
  				regulator-boot-on;
  				regulator-min-microvolt = <1800000>;
  				regulator-max-microvolt = <3000000>;
-- 
2.24.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
