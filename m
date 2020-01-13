Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A782139B32
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F1bbzR4mc53xuqj+jE6ljxX3WUCudgxN/PMSzuBzrsE=; b=MToojv0uNevbT/+VA2jVHCEjnN
	YJMXTTZUpzRIwERdoI3tARHnBk8axUZLu61WdQLkymVorczG1Xbx+b+iygJ3c18PfbGjOWzXgro+I
	Y26dARBtjJWi+9OaUCnN+2RbIF+EsPlWqP+AzompW3vujtUXYeoG2PLewwXHeVJvzUy9qvdJkcL5u
	jWKubh+HTiuU6fBeo/Rgzdk89inoQG8Yl64IO0L1h1iKMC8gD1rBW5MHO/TYUMzmF6i1uz+nQBNNH
	kUm2bbsKnsyY2ALR3QFqBKul5qnixjZ4IT/oyW1+NYjNhi3eMOKYEyqaAWLdmQmMAgabR+d4FTZ5B
	wSNnXCrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6wi-0007H0-M5; Mon, 13 Jan 2020 21:08:24 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6wA-0006uQ-0C
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:07:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay11so4315911plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:07:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LyQkYDM/KZKONjplFnyoxpxnLT5IGwQv8MiMr7YPN3I=;
 b=utfA3alrv7tHpghnKdkmJ3E0IqLvR/zXbdnViKLkrLfW8ko7gw7GTfXLrgEkbIqSJe
 OmHci07hmtJ8jlSGaF8s1zDVjPIzQbipUsLUzcvg4+SmZNpGatNqyPmtr4yXj5HXue9w
 v+le4kOlRgwDbA7LBe4l6BQhXCP+r7kjMT7xUiEmxzx6IYN+SGFsaTbYx6zfeKDTOSE3
 QtJB3IIApfjxmV/26ONJgL9AMVrAS5+lJNBUc25L8k0i0m0dkVyHBKAeM9wZkok2+SRZ
 bp1R7RwtXcAXMCWfGMM4Ej4kts9WxU5aHmRNFNAidPjM9ZZjSZVaBdYTKjYI9xzrHzX4
 LKGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LyQkYDM/KZKONjplFnyoxpxnLT5IGwQv8MiMr7YPN3I=;
 b=mNd/6NrHdxyaojO0bPgrsLxCuYQ5ycYVu6hcxftV5jJNGx/fauDkvdEpqboHMvu4/Q
 Hf+Y8y3FJ+PBURWAQG6HeC613Lory0j/IWhblnTRBsuS84VGEI09pAwT46zfya9G30oR
 Pu7ge9D0cXav/E7biVTCxKNJpEKwSGAWIzq95GPgUgSZ+QtScFGJSMrM9AT2WnyWGbGf
 6EmgeALsOEbJcHrudUETkPgczTyABAbfKL1dEuUpvrMKGr4M5R3r5y7ptlCvs+ay2q/w
 gHFlcrF7EbafyNECozOxouPslQLZVelQsNckIXq5IO+33UiNx8cm0dgjGFJDZCJ0h6NA
 2kGQ==
X-Gm-Message-State: APjAAAVuUcD/KNjdPnWoJcnj8xt14y/d+oTddZBCiiUhtvFDrXwN8VK1
 WK5pQmWaOkux2LsmPyF0G/Sf0Cays+kjCg==
X-Google-Smtp-Source: APXvYqzliCyBk9qFpUk4+wdWthbVhifyZvXlrNnXV9vrs6fPOu67hIWB75V3MJEl+WkyzYcNilvw3g==
X-Received: by 2002:a17:90a:9b88:: with SMTP id
 g8mr24522340pjp.72.1578949669444; 
 Mon, 13 Jan 2020 13:07:49 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s1sm14195827pgv.87.2020.01.13.13.07.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:07:49 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] dt-bindings: mmc: brcm,
 sdhci-brcmstb: Add support for 7216b0
Date: Mon, 13 Jan 2020 16:07:01 -0500
Message-Id: <20200113210706.11972-2-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113210706.11972-1-alcooperx@gmail.com>
References: <20200113210706.11972-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_130750_039904_24CA6BD6 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Takao Orito <orito.takao@socionext.com>, Andrew Jeffery <andrew@aj.id.au>,
 YueHaibing <yuehaibing@huawei.com>, Al Cooper <alcooperx@gmail.com>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Faiz Abbas <faiz_abbas@ti.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Sowjanya Komatineni <skomatineni@nvidia.com>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add 7216b0 with supports CQE, HS400, HS400-ES and SDR104.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 .../bindings/mmc/brcm,sdhci-brcmstb.txt       | 41 +++++++++++++------
 1 file changed, 28 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.txt b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.txt
index 733b64a4d8eb..ae2074184528 100644
--- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.txt
+++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.txt
@@ -11,28 +11,43 @@ Required properties:
 - compatible: should be one of the following
   - "brcm,bcm7425-sdhci"
   - "brcm,bcm7445-sdhci"
+  - "brcm,bcm7216-sdhci"
 
 Refer to clocks/clock-bindings.txt for generic clock consumer properties.
 
 Example:
 
-	sdhci@f03e0100 {
-		compatible = "brcm,bcm7425-sdhci";
-		reg = <0xf03e0000 0x100>;
-		interrupts = <0x0 0x26 0x0>;
-		sdhci,auto-cmd12;
-		clocks = <&sw_sdio>;
+	sdhci@84b0000 {
 		sd-uhs-sdr50;
 		sd-uhs-ddr50;
+		sd-uhs-sdr104;
+		sdhci,auto-cmd12;
+		compatible = "brcm,bcm7216-sdhci",
+			   "brcm,bcm7445-sdhci",
+			   "brcm,sdhci-brcmstb";
+		reg = <0x84b0000 0x260 0x84b0300 0x200>;
+		reg-names = "host", "cfg";
+		interrupts = <0x0 0x26 0x4>;
+		interrupt-names = "sdio0_0";
+		clocks = <&scmi_clk 245>;
+		clock-names = "sw_sdio";
 	};
 
-	sdhci@f03e0300 {
+	sdhci@84b1000 {
+		mmc-ddr-1_8v;
+		mmc-hs200-1_8v;
+		mmc-hs400-1_8v;
+		mmc-hs400-enhanced-strobe;
+		supports-cqe;
 		non-removable;
 		bus-width = <0x8>;
-		compatible = "brcm,bcm7425-sdhci";
-		reg = <0xf03e0200 0x100>;
-		interrupts = <0x0 0x27 0x0>;
-		sdhci,auto-cmd12;
-		clocks = <sw_sdio>;
-		mmc-hs200-1_8v;
+		compatible = "brcm,bcm7216-sdhci",
+			   "brcm,bcm7445-sdhci",
+			   "brcm,sdhci-brcmstb";
+		reg = <0x84b1000 0x260 0x84b1300 0x200>;
+		reg-names = "host", "cfg";
+		interrupts = <0x0 0x27 0x4>;
+		interrupt-names = "sdio1_0";
+		clocks = <&scmi_clk 245>;
+		clock-names = "sw_sdio";
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
