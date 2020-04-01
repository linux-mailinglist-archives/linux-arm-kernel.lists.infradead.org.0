Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0869219A65A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 09:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SUQOeW18wma2gqXTe1kAEJbGtON2j2IXel7owhacZUI=; b=haX
	zCwe6ryZ85T2yAYab79L/AEVhzueiZDkySXIN7g1fTiaRUq5QlvAtpVuWC/T6LHrNy7SUz5NSDGBy
	fUl0HX38EBBRhulhCU0SE2Tb0fI8Mw5fInPAkmPcpfMlXvthSJvcUINn76e2rLGQVp7/i+aAu2hNA
	R5T8ZQbB2wTUZq8v7eeUnU+DM/vPnLn9Bm2MHPN1Z1mRlE2s3MdXiBQVaf1cCSVPSvA4+9WadtlFW
	fyKwRGyq28/SZGsVL+ROV1d7jJfcz4JNGNZ0SAIxsN8jXVxCPXitCp6L9B+dZgv25scg10YMQfMZR
	N57lFp6AID8P+b5Z7U5wOhDu+7vxtPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJXwU-0006PD-OK; Wed, 01 Apr 2020 07:37:42 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXwO-0006OL-Ta; Wed, 01 Apr 2020 07:37:38 +0000
Received: by mail-wr1-x444.google.com with SMTP id w10so29365167wrm.4;
 Wed, 01 Apr 2020 00:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UL9L/CyBrVCzEQgwvr+OzrzI0iM1qlY+IPc8B3d54Uk=;
 b=F4xGsdFAsV/TIjXPGAqXfSqlyGmZ30mfw39njgikMjE0/4qVNARRKCUhFTNcvs5HTH
 T+5J2BSmhrESB3sIoug/Kk/Lli0CDqNb5OIY8Pd5dDr6u1eoZ77RASNtvfEdxMKsV9iy
 cdXc0U/K7p1q07UqMx1aYS7oC4w0sh+XExOKCFBNaA7LshlaKCgIk1RZAOYTFGae5ibD
 dPtgg7Y4itEheuRdbUSPwWfS+/dQJ8qVC/BkFPKEoGHPENaPDtSjfSIFwTlHRgUk9ZXL
 r28d/c/wmK8UhrOP42pbzm3SA8mOV7J2bR8O0O/DX52LrxT+uuNX7iEEg9OmP8Q3JU0h
 oyBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UL9L/CyBrVCzEQgwvr+OzrzI0iM1qlY+IPc8B3d54Uk=;
 b=L0TGogxawR6ZI1pwqYg9sxruuwTS8RDjcaWt7iCY9aOALzRO/npYYznmxfQrZPXYxx
 KDHXUIwYLWpanNk1UywNJaIFVEUOA75zovxPVtP6lUCCRiJ7w2POCvfV6TRwaZ9FNXXE
 xpCAKRzRAjrnVYBg/Uwq4SZUVGdulVFeO2LsGQef7pC05IrYD/Ls74pH50D+VHhvWw8y
 aKVraHDViZJq0Gjvgm82RWCVqd92dNDVLf5zNU/WpHU7zM/IfQrZraS3VlS8BLHEHkuJ
 FUFgVzGpr2cjps/6LKRDu0iTt6F7S2FFl7hS4qluXanAlK8ScHtKEvzv4x9a4swkoNnU
 ikWw==
X-Gm-Message-State: ANhLgQ2v5rnDZmzbMURhgqtHc9l24H9guuYnFcOMKAkF413MEAzndX0l
 fq5x2mUwJNg9A9Wpuy2S10s=
X-Google-Smtp-Source: ADFU+vtwdLJ3roDKyKh7gH+Nq4Ettv7bI9BNPrDCjycpvqCdmWj6VAchRJw+IPzp8foaVLPgtOHruQ==
X-Received: by 2002:adf:decf:: with SMTP id i15mr25756408wrn.277.1585726654815; 
 Wed, 01 Apr 2020 00:37:34 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g3sm1793431wrm.66.2020.04.01.00.37.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 Apr 2020 00:37:33 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 1/2] ARM: dts: rockchip: add #phy-cells to all usb2-phy
 nodes
Date: Wed,  1 Apr 2020 09:37:24 +0200
Message-Id: <20200401073725.6063-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_003736_953386_ABF8B3F0 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files for Rockchip with 'usb2-phy' subnodes
are manually verified. In order to automate this process
phy-rockchip-inno-usb2.txt has been converted to yaml.
'usb2-phy' nodes are now checked by:
'phy-rockchip-inno-usb2.yaml' and 'phy-provider.yaml'.
'#phy-cells' is now required for all usb2-phy nodes,
so add them.

make -k ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/
phy/phy-rockchip-inno-usb2.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 2 ++
 arch/arm/boot/dts/rv1108.dtsi | 3 ++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 06172ebbf..9ad32651a 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -214,6 +214,7 @@
 			clock-names = "phyclk";
 			clock-output-names = "usb480m_phy0";
 			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy0_otg: otg-port {
@@ -241,6 +242,7 @@
 			clock-names = "phyclk";
 			clock-output-names = "usb480m_phy1";
 			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy1_otg: otg-port {
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index f9cfe2c80..b453f8d0f 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -269,9 +269,10 @@
 			reg = <0x100 0x0c>;
 			clocks = <&cru SCLK_USBPHY>;
 			clock-names = "phyclk";
-			#clock-cells = <0>;
 			clock-output-names = "usbphy";
 			rockchip,usbgrf = <&usbgrf>;
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy_otg: otg-port {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
