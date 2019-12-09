Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE4B117227
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FxIlmKMh2woD83rgLY+sZ2BCp7i4xfbJvF0X+KgSD8M=; b=luWlamk3CjVF4M
	yl0NXFOnSql+ZOjPx904rxx+9hYmJFOHZjma3dZV/EAqR+8JlCtzN1bUMEbQy4kwp/yQu4Coymkep
	4XSxLbnv6vHcwLAhI1UH1pgLWA5n+QqHNFt3Wz5Tca+8vW8dYXpUgyCGLPerOZNpjl7SwPPKJvLSl
	6Gn9EaP2NA7PtVjvPEKGY0uo5B3xjGhlpGHY/maNnLpDAEZLpcdTQCpoLwbhcrS8GH7CkZ9eO1y8d
	witdz0CJR91dDvakeqwlPGFm2Ob/M5WwZ3biaCKEEC8zbN39eeOvZzbR8HRLO5vL0Fd+N/KOZiU7z
	Yu+rS2Sv1NQnc5NGkVLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMFL-0005MG-Vh; Mon, 09 Dec 2019 16:50:55 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMFB-0005L1-Ao
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:50:46 +0000
Received: by mail-pj1-x1043.google.com with SMTP id w5so6129645pjh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 08:50:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HxjIDEX+7ZVeJgru8LvvR5BufYtC0NpT+WMH9OusOnY=;
 b=BQOeRUrPJ++Kti92Xgwb5MxAYTIorWD7rvCPzQY/cR2v608QtRkHwD6Y+ywHt8d84x
 rgCXVDZbeKRx0VBOH89NFymh5/jMPAGwo6yJRQxw+kYaDqfnU/wT2j+LuKiYyuD4HB/1
 KSQoGWEsuVMK+dqIKyDqffC/Rso/XGEvNcqwMlDfTdvCLktfCZb8UBzYTJVfI6qVb0Jp
 IQSqlBsZKlecpPyAvmS8q1uUEXAXK8kboyXwHwtBCbmVLM1kjKCX6OiMqcPpfMia9Izz
 ymwh5Bs2RWRMS7QyWzPxprJh0cWCJmmJ0TV+/alpNwSmkb1l658CP6Obv3KyezE0t2ds
 qnag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HxjIDEX+7ZVeJgru8LvvR5BufYtC0NpT+WMH9OusOnY=;
 b=HpkWP9d42pjQ4eSFugRHTPYoIkviU05xLFQeZJgyFlA8cnlq+AMs99iCur/XMTEkdf
 ITV8eR1dsaUGsIjRlSzFn9AmeQAzyoZavq2v/lGUbcdiVRHmsozSFvguMLSQfjUgpT3N
 y4f/hAQzzqm84R1HLnUu/pzf6vAIMwvX9X85JBL/Wbas+P7OP4Wo349c1MLyVODrzqo7
 lFmP8+WPcy9bfR6WMEP1hEwqwTJCCLQ77SnwVc1OsRO55S+ubTJ1ICS71b9b2iLGkopj
 VZLsSPbLWvjZnRSu8eZyQDSFzDpGs/POzQ0cICli0qL9z4UAShddl9p/cqmTDiEmRt7u
 gyEg==
X-Gm-Message-State: APjAAAWM8N+QQw3GbFQzn/40h+7ke9/eBbThFf+dKzOjQAIcLW98Pf6G
 TKGpmb+/wJYpW2hDYEWfoX81ZqAJUTM=
X-Google-Smtp-Source: APXvYqw7fxQZCJAJm1NIbn6GoldxdOhS8euDIKP37TXk4AquUSLIi3jNWpIgYBiJKeIf9lakrhXYmw==
X-Received: by 2002:a17:90a:cc16:: with SMTP id
 b22mr33101464pju.65.1575910243781; 
 Mon, 09 Dec 2019 08:50:43 -0800 (PST)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id c19sm18299294pfc.144.2019.12.09.08.50.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 08:50:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/3] ARM: dts: imx6: rdu2: Disable WP for USDHC2 and USDHC3
Date: Mon,  9 Dec 2019 08:50:17 -0800
Message-Id: <20191209165018.21794-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191209165018.21794-1-andrew.smirnov@gmail.com>
References: <20191209165018.21794-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_085045_366859_44C4ADAA 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RDU2 production units come with resistor connecting WP pin to
correpsonding GPIO DNPed for both SD card slots. Drop any WP related
configuration and mark both slots with "disable-wp".

Reported-by: Chris Healy <cphealy@gmail.com>
Reviewed-by: Chris Healy <cphealy@gmail.com>
Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index 7531f0595bd1..d062c86e0762 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -743,7 +743,7 @@
 	pinctrl-0 = <&pinctrl_usdhc2>;
 	bus-width = <4>;
 	cd-gpios = <&gpio2 2 GPIO_ACTIVE_LOW>;
-	wp-gpios = <&gpio2 3 GPIO_ACTIVE_HIGH>;
+	disable-wp;
 	vmmc-supply = <&reg_3p3v_sd>;
 	vqmmc-supply = <&reg_3p3v>;
 	no-1-8-v;
@@ -756,7 +756,7 @@
 	pinctrl-0 = <&pinctrl_usdhc3>;
 	bus-width = <4>;
 	cd-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
-	wp-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+	disable-wp;
 	vmmc-supply = <&reg_3p3v_sd>;
 	vqmmc-supply = <&reg_3p3v>;
 	no-1-8-v;
@@ -1180,7 +1180,6 @@
 			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17059
 			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17059
 			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17059
-			MX6QDL_PAD_NANDF_D3__GPIO2_IO03		0x40010040
 			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x40010040
 		>;
 	};
@@ -1193,7 +1192,6 @@
 			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
 			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
 			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
-			MX6QDL_PAD_NANDF_D1__GPIO2_IO01		0x40010040
 			MX6QDL_PAD_NANDF_D0__GPIO2_IO00		0x40010040
 
 		>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
