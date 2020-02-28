Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5407173637
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 12:40:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zIWhpjrFQGO4Ss6CmfrCSa11Z5zUF07F5nLnmsMPGMY=; b=vBo1MvQv0/USxQzdy8A+YGG9u8
	7UmsWR8cGIvIv0Z94jZ28N5aD3mCmwAmUzVo5PxIDWVut9PWyUVWIVxWzPJRMDy0ui3i5UXLT1DX9
	4u3hLdvjhc5BX4GT3EY0g7pg8VoRRsqMbSdA2MaEpPMKWqJBdbMa1U/gKef9dCsunTggVqRa0DAAT
	LgCF931tCLiOmHq+QRF5QjwSR9cWlOrlq2NI3r2gw6BXGO0DycCorb321vjjVC6C+nCcnbRIRICG0
	7tOgqmgKXL2XhACa2YJz8P/OjKGRa4GAck6mjNo3kA2GPjj4f8w4Kskgs3Lx3kdzTzmQpfrhYPEMZ
	tSYJ4zrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7e00-0006K0-3j; Fri, 28 Feb 2020 11:40:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7dzS-000625-Of; Fri, 28 Feb 2020 11:39:36 +0000
Received: by mail-wm1-x342.google.com with SMTP id z12so2842805wmi.4;
 Fri, 28 Feb 2020 03:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HmPLXJpOCywpZeq5lAD4FjaTX4sOpZWVoDemtjk5yXw=;
 b=sWmxNJ2/LfZPrwNbIlrcBLLDjCgorHwi+uDe9ivm0XmvKzs3C7A+9/OX45MvkFI1NY
 bMh+KV5Zjy1uXcPIFddnKJ4wWmJrWMnI70QLnh1N7NumFw098Vi9w3qgONutUWmgrqbc
 Dk5M5RO6rBey+OqWzVdOIOG/Ew4s2SPI+ksKGgFjPyqV/3gvtCrYi85af+lVDQzpKU9J
 i42QqVVi9cYS39pTZZLPz1PGUe+ZXJG7qBbq4HFyLE7+8BYlfyeDUxHkzGAGfo3LMC40
 0K1jQhu5R7QGRDM20zW4pPaM5tBLkwPSx3VdopFhDvFuz5px2CNVk6hFBVopHMBV/O/c
 EkoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HmPLXJpOCywpZeq5lAD4FjaTX4sOpZWVoDemtjk5yXw=;
 b=GymNoswLE8kzNbnXCJ3mZU2HL0NeNZ6KSZr6Z3qYNzj7mcX/WuBr4Bb7vs3xDjbZ/9
 sAILMkjRPtP4q/M7DPjw1amyYDn+QKn8AoH5Ncifhgjo7Jit5SdaLAeEsTnqOq5lSp1K
 7AXnvivA02RsDtV+H/qM1jzcqRkN0W6GYe5jgF9mlUHLMya9o1HoF1ycK7eUk5eotHq0
 5Z5L3R6hzjKOmB82EN926kNeRrSJ28xxeJPMhTukSswy2yyzPzj1YGq9RxKL9iF5ehDS
 Vudi454QjvSfMF+lDn580KrJpAULalodafWQP37nIiF+Q+oAPRuuCHKtUxaLdmOJKp7x
 jz6Q==
X-Gm-Message-State: APjAAAWhNYGAY3T/I7a5Dh/uZJaHCh9/PAsYZAwK4JkGCvCCxc/UPeqN
 pqoUlJ/NhR4rSHm4NHj/uyM=
X-Google-Smtp-Source: APXvYqybX1CYwMeuUYbdLHcAbibwv6Xf3qhi54cLwS/IJwbBOzV5j6W4y3iXzUnZoGBvUYIPlYnYxQ==
X-Received: by 2002:a05:600c:20c6:: with SMTP id
 y6mr4515359wmm.95.1582889971316; 
 Fri, 28 Feb 2020 03:39:31 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q1sm11554294wrw.5.2020.02.28.03.39.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 03:39:30 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] arm64: dts: remove g-use-dma from rockchip usb nodes
Date: Fri, 28 Feb 2020 12:39:22 +0100
Message-Id: <20200228113922.20266-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200228113922.20266-1-jbx6244@gmail.com>
References: <20200228113922.20266-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_033934_798741_BEC35472 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives these errors:

arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: usb@ff300000:
'g-use-dma', 'power-domains' do not match any of the regexes:
'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml: usb@ff580000:
'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: usb@ff580000:
'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml: usb@ff580000:
'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml: usb@ff580000:
'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'

'g-use-dma' is not a valid option in dwc2.yaml, so remove it
from all Rockchip dtsi files.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 1 -
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 75908c587..4f484119f 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -870,7 +870,6 @@
 		g-np-tx-fifo-size = <16>;
 		g-rx-fifo-size = <280>;
 		g-tx-fifo-size = <256 128 128 64 32 16>;
-		g-use-dma;
 		phys = <&u2phy_otg>;
 		phy-names = "usb2-phy";
 		power-domains = <&power PX30_PD_USB>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 1f53ead52..bad41bc6f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -957,7 +957,6 @@
 		g-np-tx-fifo-size = <16>;
 		g-rx-fifo-size = <280>;
 		g-tx-fifo-size = <256 128 128 64 32 16>;
-		g-use-dma;
 		phys = <&u2phy_otg>;
 		phy-names = "usb2-phy";
 		status = "disabled";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
