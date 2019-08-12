Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EC28A4EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 19:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4SADmPgBricBJe6tJnZdv2Bajp1Ky9Qu+Jp21pshIs=; b=Yq/WL7cBu+E+Mw
	BBrWZ1UJ+h7xrqn+anwuikdpl5CN6UrO2F2FaX9IpKDewVm/DLIODNm96wffh/moAq9SZzSLRpBpU
	Szpi7llPB5hRvppDLXz32QCbYvxVG47N7xt1ZOOTftRMw3YSeF4W7Ln/J8lT3xaMQ1iZHTH9gXfuf
	1NqJFczMorVukmFtKBJtmitnJ2lbMlxDPAxMBSCuIFqut+wQcWWjaFtqMnGxM+wA7WUofeWT6FhR+
	qdfKhOaOqgr2DKHWayD64+QMCr9OPna9uOXRuK0kHgQEEo0AYCFs7/rhC9rUrKZEtrLjyVmKXf+4T
	aEGP+g3/q0OQLLfEQZ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxETB-0007oi-5h; Mon, 12 Aug 2019 17:50:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxESi-0007Xb-FQ; Mon, 12 Aug 2019 17:50:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id r1so6246528wrl.7;
 Mon, 12 Aug 2019 10:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rYFGvb7oXPg06EB4hMkcpx/M0H50/uoG4GdzYeuMMDQ=;
 b=gzhvT3Y31bmaJgXF9bJ1bBvQrLxKqF5bIvlL1gIfFRH4sN4vFcSizEsc4gk8uVVa+a
 E5Ddrfy9r2Dp95i6Z0TaqRdjFP1hm++W8xQLTPimXf1oJg/eDVaDuFnNIofx5WRZsX6y
 GBrRnNMTDLNQckra2ycTiYjs/ArMlsZSY/ez8uqa91OCt7VkXlydXef1j6x8k8dZg+Cx
 Wu7xk1IHXJSugjBI/yBA2PA4ymO6MoRcArCOzYv7daBnX3pZ0u4bHNM0xoeiPqDlWQ1J
 +a2imMYHv7it3o9mYkq7RF0SzHqmbBUsco7ZIY76ouQWdxVrG0IZAjoXPAW9wjdKFvyr
 8cKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rYFGvb7oXPg06EB4hMkcpx/M0H50/uoG4GdzYeuMMDQ=;
 b=L9UVRA3LwjoX77hbp8pxrJ9hithFptTbJ0MOhv7+n9S1qJGjcCtPKKXKOdanO9GIqV
 ZWAsF+tfttmPKpBeXdIo/lYZtDY4D3frR0RKrFSDRDuDa+ZvKmbmi0aND1+8uU0GFL2s
 FhVMI3IZZuMYd/afCTb805zJDpPvlZef/cA02Xk26FhKGZOE7o5oMRl6nZIV1/SqVx52
 IPtU0PChCDYXJ2cNY/mzaQ2S7NrIei7e3VWTv6Wz0R0/FtvvnLaOIMd3Br6Wjnfkt+VH
 lfcU6IDwoUZyJsMMmKvsmaUb/i4L8FVfgOrOOo+WLtFEGTa7CvD/OT69GJ1e2ZfxTh1p
 kQ1w==
X-Gm-Message-State: APjAAAVaG2gmjoB5dNtU6oV4nYwGrAXCgeznLeBUYnsO8u4wpkbYVoiR
 Xm4wKBo/6bPfwmiQ5sB+uLRV/wDV
X-Google-Smtp-Source: APXvYqxWnv0ITEtR3W0OiUar6RwPSC+dvO5i525YNm4PyQOdB40LxzasVZGae86n5vj7QVJ+kOecxQ==
X-Received: by 2002:a05:6000:1189:: with SMTP id
 g9mr45051993wrx.51.1565632226276; 
 Mon, 12 Aug 2019 10:50:26 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C1F600059A26DE113A463E.dip0.t-ipconnect.de.
 [2003:f1:33c1:f600:59a:26de:113a:463e])
 by smtp.googlemail.com with ESMTPSA id u7sm4084858wrp.96.2019.08.12.10.50.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 10:50:24 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 1/1] ARM: dts: meson8b: odroidc1: use the MAC address stored
 in the eFuse
Date: Mon, 12 Aug 2019 19:50:04 +0200
Message-Id: <20190812175004.24943-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190812175004.24943-1-martin.blumenstingl@googlemail.com>
References: <20190812175004.24943-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_105028_513254_B304DF3E 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: narmstrong@baylibre.com, ottuzzi@gmail.com, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Odroid-C1 uses the MAC address stored in eFuse at offset 0x1b4 (which is
defined as a "standard" offset for all Meson8 and Meson8b boards, but
testing shows that MXQ doesn't have the eFuse values programmed and
EC-100 stores it's MAC address in eMMC).

Add the nvmem cell which points to the MAC address and asssign it to the
Ethernet controller as "mac-address".
As result of this the MAC address which is stored in the eFuse is now
assigned to the Ethernet controller and consistent across reboots.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b-odroidc1.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/meson8b-odroidc1.dts b/arch/arm/boot/dts/meson8b-odroidc1.dts
index 90f66dc45115..a24eccc354b9 100644
--- a/arch/arm/boot/dts/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/meson8b-odroidc1.dts
@@ -190,6 +190,12 @@
 	cpu-supply = <&vcck>;
 };
 
+&efuse {
+	ethernet_mac_address: mac@1b4 {
+		reg = <0x1b4 0x6>;
+	};
+};
+
 &ethmac {
 	status = "okay";
 
@@ -200,6 +206,9 @@
 	phy-handle = <&eth_phy>;
 	amlogic,tx-delay-ns = <4>;
 
+	nvmem-cells = <&ethernet_mac_address>;
+	nvmem-cell-names = "mac-address";
+
 	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
