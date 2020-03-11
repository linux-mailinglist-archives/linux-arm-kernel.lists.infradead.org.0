Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D74618182D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:36:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CD6PyrIdFFjKzEyCRG4xpHKvNWXbePwZegIfN//1jI=; b=dJ/gM3K4OfjpHE
	7UoD7+cL2y367F1jFlEh/Sn2LjB9lz1VIWfDtBuT/jipXEhfzyRS6pkWBjuVoDm1n+fsXT2lzr1kZ
	50dAa0fRWdOsEYCcf3hHnOXFJEqwriv7/gq79VapPhwHTM7gqR+NENu82AkAAwauYWfPjfUou2q+G
	NO+4U9KJJGrsjYjVXldSikASfrcJxwN6M0UXPaJ/g3rHXyrmmODwhsb0xfDix1W3Ahk3dcrA8mJ/M
	VSqHQA7xp9rAjVbm0QtPN6hlp0Y5BH4202TN19fON750sCF+jhY2l09B4xcuuXjNl4V2UR7f/a2eN
	HDvPYF3qvIAxXGykQEFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0b5-0003qE-DA; Wed, 11 Mar 2020 12:36:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0Zs-0002uC-Jr
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:35:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id x3so3079216wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0S8YiKSlFY8C2wfSnfYCKEk3w9krt/5PEihft8xMBGs=;
 b=iLwUXOrjXX1JgooKK4C1Ej7aG++N6vBTyANbdSesx4J5LANkA4rttAdfoN3Cl9OWKN
 MK8FbGS80ejPexHaTTEhYRZed+ckS3C6aTIXTWQoEcjAesHoSKfGdtfNIVffBZmNij0t
 +c2hNFirdEnegtp+oJcHVUXtcCiOFQ1TIXBLoKbywdKv2X4tr3zE+Jm0Jr6KfhgZ9Hdn
 FQwJX8RDzIZLP0muodqY9eAC77ehypRz/hCnqognQa2LPPREWDxA1l8jr+KkOTWZORaS
 +0M7U1ItFDSyfQdvkdvSylEi4p8LuqqNHh2RTBb26xVVV85ZQnPO8I3Gec63XEFl93md
 8W1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0S8YiKSlFY8C2wfSnfYCKEk3w9krt/5PEihft8xMBGs=;
 b=LhLVTbwmo6wAJwjmR5DHqWqubEaJgYHOUk5uNjS6SfRR64mROLnanB+rwvIUHgsm5W
 isXYAzEPZBpzzjOJx/RCLTfAaWocXyahQo11+8QXJ+VjaL1Rcfh8yBeyIc+QdxfvVw84
 8+4QRKPKCWW7FqCa4CQqXsVtSKBuktuzPNzjEJDQz5zr7SVmKUjpnhzqitgJY6bj+Nx0
 UsZ/HEDjBxHdLregzbxceMTLrPf0qpEsyvk5qlYAzoqA2UWuAjy6gQazP1w6ModAsEnv
 Hvp5WaT8hoCO6ZR8uGvK9252kN6XCN8A1/7r1vweOHjNv3YujlQw6nNfy0w4D9cbE+JH
 9eEQ==
X-Gm-Message-State: ANhLgQ3TcDROxT7+2hAu10r3SeiG3bz/tiPtYDg9dwJDrfvZgE0LxI/N
 1MFe41/TpsMavwjky4AvQsGCqQ==
X-Google-Smtp-Source: ADFU+vtnJUfH6dtY/lJKtuEbOdGr7AEex8lhT/SZQ0KZ7Kab7Njaq1yaVX/R+8xktDk/P5+P/+x86w==
X-Received: by 2002:a7b:c8d5:: with SMTP id f21mr3670765wml.60.1583930111399; 
 Wed, 11 Mar 2020 05:35:11 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:9087:3e80:4ebc:ae7b])
 by smtp.gmail.com with ESMTPSA id m25sm7822732wml.35.2020.03.11.05.35.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:35:10 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
 maxime@cerno.tech, leonard.crestez@nxp.com, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>
Subject: [v1 4/6] arm64: dts: sdm845-db845c: Add pm_8998 gpio names
Date: Wed, 11 Mar 2020 13:34:59 +0100
Message-Id: <20200311123501.18202-5-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311123501.18202-1-robert.foss@linaro.org>
References: <20200311123501.18202-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_053512_685627_7815B7A7 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add pm_8998 GPIO trace names. These names are defined in
the 96boards db845c mezzanine schematic.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 30 ++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index a6b6837c3d68..e8c056d02ace 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -584,6 +584,36 @@
 	};
 };
 
+&pm8998_gpio {
+	gpio-line-names =
+		"NC",
+		"NC",
+		"WLAN_SW_CTRL",
+		"NC",
+		"PM_GPIO5_BLUE_BT_LED",
+		"VOL_UP_N",
+		"NC",
+		"ADC_IN1",
+		"PM_GPIO9_YEL_WIFI_LED",
+		"CAM0_AVDD_EN",
+		"NC",
+		"CAM0_DVDD_EN",
+		"PM_GPIO13_GREEN_U4_LED",
+		"DIV_CLK2",
+		"NC",
+		"NC",
+		"NC",
+		"SMB_STAT",
+		"NC",
+		"NC",
+		"ADC_IN2",
+		"OPTION1",
+		"WCSS_PWR_REQ",
+		"PM845_GPIO24",
+		"OPTION2",
+		"PM845_SLB";
+};
+
 &cci {
 	status = "ok";
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
