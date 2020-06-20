Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F42202515
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USdamNfpHNskWYoaysO/4sLdDH2Lf8v4bdA30czjrrs=; b=LAl6uq5gBSaHrR
	u53JghmtKn82b7BN232m237k+7Rdqrk8JuUhGIVMKu0KgCzz/35fvoiktRLCz49BCDvmREbhXXCIX
	u9dXxbgKbfA7cDo2ILuorYZ2A3iXeqhNEGyOKp8MU8WMPa9RQ8dcHjX5+j85VE2SH0uYgGHbWIqdC
	iz5/DwwZNs9cC9oVIcsoCDrtTFQM2tjeOb1AcdXaiVGb3qsN2pE/gp59zFh9VsA6A1gti/WQ8B93S
	pGqr6AbExeIxI2N/JKosJxn7XxOw+CPa1USKUCFDyzLwzDMLANtsCLbv8fnYVIaNbmw5Ae95sEl33
	yJ6oKX4NeFRHGtcNnTww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmg5P-0008LR-Gh; Sat, 20 Jun 2020 16:11:19 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmg4U-0007jD-F3; Sat, 20 Jun 2020 16:10:24 +0000
Received: by mail-ej1-x643.google.com with SMTP id gl26so13539411ejb.11;
 Sat, 20 Jun 2020 09:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D5sGkeTgB7hG+3/+kop32buJfTUcIo0SVNUTekYvYHs=;
 b=KP8Hu6H+TKWt9icYwwel5BGCy7wG8KTCsCGoSAK+W9eUq7i/GXSA2q6DwPfwMedTUz
 11CcEr8qJFI1fGzQThuGQIBJgK4ZNsr2CQdeuSTpKZaQeeUQ0VSojBLOwvt+VTa8lN2h
 DTZdd72qL5C6hPcJo2AwwrZ7RnJRspjTDyJ7qGeiLh0P/1RlL+xNOSAQUVQQsCJUwl7D
 l44N4MyJWSzgMDJuJH+n3u4G654WojXsT1V52yZJzYzoyIbIRHtaAhuYMZLVCYn/CTwq
 2O2Cz+77lYvpywWEuQfF8IHn9jZGc4sIgY8J7IaCLRNmhzfInUQTCcwIfRqa91qucGWp
 kTQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D5sGkeTgB7hG+3/+kop32buJfTUcIo0SVNUTekYvYHs=;
 b=JKoOoN2jRva38hIMkdYek+qsRw+Ht/L/yQ5XVFYbjfhvb3hcu2twddeZnkhQEnsevG
 199RFkuT1ew06Gi0b900znTavbFwdx1RAHAA9avDDf6awU34fIDj36mSFtKGWB/rOFek
 TNXdVd8nxZ+HhZ3G2zNzhHpgcepTTdDDJsI8Y2TPzN05R9uaPTWH3n6xkKIbd2MqI0nO
 6phkky8jYm9paJAcJTSbgoYxVMQuMUqfZuvFU9lBC/pY+zwAfeXMycLdfJlR/EcAbXci
 fc3thC2P9Xs+eo4XmWoam5rhK/30shgW58/XBj9NKsSeuAgGi45wqWtPVoeepmmtbFwI
 fFZQ==
X-Gm-Message-State: AOAM530B8kinhjBZbrK7Phr46OV1ICsnQn679Sa9pDQtujnLFXD6Jn33
 HmG8I3uMd7S6jq7WTTltvjWvlIpy
X-Google-Smtp-Source: ABdhPJx4CvOmAO/aNMwlgPaw9yw/l476jL1k+DulhYLM1sPPaPtnarcJAAVfirTfPa+5CcP3cHzYpA==
X-Received: by 2002:a17:906:f2d9:: with SMTP id
 gz25mr9045554ejb.467.1592669420963; 
 Sat, 20 Jun 2020 09:10:20 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f1371df700428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:371d:f700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a62sm8033207edf.38.2020.06.20.09.10.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 09:10:20 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 2/3] ARM: dts: meson8m2: add resets for the power domain
 controller
Date: Sat, 20 Jun 2020 18:10:09 +0200
Message-Id: <20200620161010.23171-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200620161010.23171-1-martin.blumenstingl@googlemail.com>
References: <20200620161010.23171-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_091022_503595_1761DB53 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Meson8m2 SoCs has introduced additional reset lines for the VPU
compared to Meson8. Also it uses a slightly different VPU clock
frequency compared to Meson8 since it can now achieve 364MHz thanks to
the addition of the GP_PLL.
Add the reset lines, VPU clock configuration and update the compatible
string so the implementation differences can be managed.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8m2.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/boot/dts/meson8m2.dtsi b/arch/arm/boot/dts/meson8m2.dtsi
index 2397ba06d608..c7ddbb210366 100644
--- a/arch/arm/boot/dts/meson8m2.dtsi
+++ b/arch/arm/boot/dts/meson8m2.dtsi
@@ -61,6 +61,25 @@ mux {
 	};
 };
 
+&pwrc {
+	compatible = "amlogic,meson8m2-pwrc";
+	resets = <&reset RESET_DBLK>,
+		 <&reset RESET_PIC_DC>,
+		 <&reset RESET_HDMI_APB>,
+		 <&reset RESET_HDMI_SYSTEM_RESET>,
+		 <&reset RESET_VENCI>,
+		 <&reset RESET_VENCP>,
+		 <&reset RESET_VDAC_4>,
+		 <&reset RESET_VENCL>,
+		 <&reset RESET_VIU>,
+		 <&reset RESET_VENC>,
+		 <&reset RESET_RDMA>;
+	reset-names = "dblk", "pic_dc", "hdmi_apb", "hdmi_system", "venci",
+		      "vencp", "vdac", "vencl", "viu", "venc", "rdma";
+	assigned-clocks = <&clkc CLKID_VPU>;
+	assigned-clock-rates = <364000000>;
+};
+
 &saradc {
 	compatible = "amlogic,meson8m2-saradc", "amlogic,meson-saradc";
 };
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
