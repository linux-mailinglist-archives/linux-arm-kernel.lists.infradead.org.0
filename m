Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A92298CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3a3aBUvmmscm1hADukMzX7IstcXXAHnpRdzPg85b0XY=; b=WInyXBWWbpnzai2Yikh//jOk5G
	vNkFvvm3ojQSYcC/c3wTUTWIpBYFSXkd86PZkot9v9jiMnymebFLNyfVRvS87bwR3v1q9XT5C5Cor
	yCUiOBNc6H9kss5s5Bzrc2NNEoiEAy/ZNrcugOYAplWNvIZBUVFrCrPbA9IDK/UMzpGNU16/15Xb5
	MKNjfKSM4AtILK6MGJGyG56K1lF8HmqI2Jhyzj16QIrMnwJdl9QyBPVFhskiUZigObulkIerLbg34
	e0B5pMboUvmCjdkQjzHTl9UkJKtSOFEb0ybSoO63rzLAtT03hdrcUufatSLR2o3QcltwnmuI/Xrse
	sX7Dc68Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUA82-00060m-43; Fri, 24 May 2019 13:20:58 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUA7I-00048A-6E
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:20:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1558704004; x=1561296004;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Sv8dItRbnhS5+Z1A8o49huaEXdoFdM+ZLa46oIqO270=;
 b=LKDA3EnK8eTxrvD0OPQmGv7BNtaTToL8eJH9UO355Pm6PzkYZLCLFK943MCgB9mS
 iKhPdg0eCSIZT0dFInTGkUwcpzgb8AAkwft2KyySm3uUA1y8ditm4M5vv/lFuqzr
 etLi9ZbhV632gOCb/2pjm+ToP2ZCEkrYFdzrHhAGGjM=;
X-AuditID: c39127d2-6bdff70000000df6-bc-5ce7ef843bc0
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 0B.81.03574.48FE7EC5;
 Fri, 24 May 2019 15:20:04 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019052415200396-20934 ;
 Fri, 24 May 2019 15:20:03 +0200 
From: Teresa Remmet <t.remmet@phytec.de>
To: linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/7] ARM: dts: am335x phytec boards: Remove regulator node
Date: Fri, 24 May 2019 15:19:58 +0200
Message-Id: <1558704003-393769-3-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558704003-393769-1-git-send-email-t.remmet@phytec.de>
References: <1558704003-393769-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 24.05.2019 15:20:04,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 24.05.2019 15:20:04, Serialize complete at 24.05.2019 15:20:04
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHLMWRmVeSWpSXmKPExsWyRoCBS7fl/fMYg7nfZCzuzP/LajH/yDlW
 i02Pr7FazF7Sz2Kx9PpFJovWvUfYLfZf8XJg91gzbw2jx7evk1g83t9oZffYtKqTzWPzknqP
 z5vkAtiiuGxSUnMyy1KL9O0SuDIevTjFWNDHX/F95THGBsa9PF2MnBwSAiYSBxvfsoPYQgI7
 GCV+PzbqYuQCsi8wSpw4tZQVJMEmoCHxdMVppi5GDg4RgQSJWy+FQGqYBc4wStztX8YGEhcW
 8JJ43RYMUs4ioCpx6EMDC4jNK+As0XziCRvELjmJm+c6mUFsTgEXid+Hn7FC7HWWeLr+KCtE
 TSOTxM1PERC2kMTpxWeZJzDyLWBkWMUolJuZnJ1alJmtV5BRWZKarJeSuokRGGqHJ6pf2sHY
 N8fjEKMAB6MSD2/C5ecxQqyJZcWVuYcYJTiYlUR4Y/c/ixHiTUmsrEotyo8vKs1JLT7EKM3B
 oiTOu4G3JExIID2xJDU7NbUgtQgmy8TBKdXAyBhWz3er5cTSTXrv1dXdVVP4r16/xuWlbWV5
 ky9fib0yvJ5RbBmHnOdbI72MK9WpHC5rjCT2S3DnXpzQyOS+47hToVhUxsobOeKt7Mke1lPN
 /0n6m9wpvBN2uIl73dQgad44Gfuri+fcnpl64lxRuVrr7jKjqEDeMNlDzfaN/Dm1eTaev5RY
 ijMSDbWYi4oTAVvf9PUxAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_062012_918214_7853A3F4 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tony Lindgren <tony@atomide.com>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Daniel Schultz <d.schultz@phytec.de>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move regulators directly to the root node like most am335x boards do.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boot/dts/am335x-phycore-som.dtsi | 18 +++++++-----------
 arch/arm/boot/dts/am335x-wega.dtsi        | 16 ++++++----------
 2 files changed, 13 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boot/dts/am335x-phycore-som.dtsi b/arch/arm/boot/dts/am335x-phycore-som.dtsi
index 23c3039c567e..f5b53d30e9a9 100644
--- a/arch/arm/boot/dts/am335x-phycore-som.dtsi
+++ b/arch/arm/boot/dts/am335x-phycore-som.dtsi
@@ -30,17 +30,13 @@
 		reg = <0x80000000 0x10000000>; /* 256 MB */
 	};
 
-	regulators {
-		compatible = "simple-bus";
-
-		vcc5v: fixedregulator0 {
-			compatible = "regulator-fixed";
-			regulator-name = "vcc5v";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-boot-on;
-			regulator-always-on;
-		};
+	vcc5v: fixedregulator0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
 	};
 };
 
diff --git a/arch/arm/boot/dts/am335x-wega.dtsi b/arch/arm/boot/dts/am335x-wega.dtsi
index 84581fed3d06..d91ff3e99470 100644
--- a/arch/arm/boot/dts/am335x-wega.dtsi
+++ b/arch/arm/boot/dts/am335x-wega.dtsi
@@ -15,16 +15,12 @@
 		compatible = "ti,da830-evm-audio";
 	};
 
-	regulators {
-		compatible = "simple-bus";
-
-		vcc3v3: fixedregulator1 {
-			compatible = "regulator-fixed";
-			regulator-name = "vcc3v3";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-boot-on;
-		};
+	vcc3v3: fixedregulator1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
 	};
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
