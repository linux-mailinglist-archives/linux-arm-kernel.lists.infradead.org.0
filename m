Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F176B212BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 06:07:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/tzwyzwekflP9CZXyc4TY+4+GdkxRMTXlWmx9fZFNps=; b=XnWSWbKurJp+GgxG7BjwsoNuh4
	BXejE4b1HlLfJy7T83CEwbGpviC0FkgikfQBS/SWS5B3MsdzqHjOHEdVOnedrVEu2BqCum6ChBRYV
	QI4JqEB8GQcr0mBXDLmwzTlEDC4b3rxJs0Nw6TKm9A6p1pRkIdJH5MCieT1CMOWciptJd8jYvUDsm
	KsJdR8UpQ15wLhnSWE8lUr+ftrAnD7Qt109e/sdAwL1iSEkUJ5hSHhSq9tVpkvDCAmuzrci4JRZXd
	wdTI7f62fTq9ApZtpGc82voKNIZV4FyCt2Kru5RE/om+s6poaSRSz7Dec2B3DOXi5BM0koNBmiYWa
	osWJQ54w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRU94-0005XM-QQ; Fri, 17 May 2019 04:06:58 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRU8r-0005Nq-1K
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 04:06:48 +0000
Received: by mail-pf1-x443.google.com with SMTP id g9so2969049pfo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 21:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6yVenyf0a0qIZedfKSCtttpa0WMwEDTZq8Yud/8Uytg=;
 b=kCiLjC1owHy+UsjeF60cBtcatNacrggyR9r2TuoTOmaWEe3JT5GGpL6NQCaDV36Umb
 y/uBj3UO2rVyb7LmO0nPT1LDJ13jKkSjsa+1zBQ8ueyJ9FmLUfe5S/lk0Om0Rfr0OqhB
 udBzRgih+ZPFfi/pgEjD43225Heo+dB1r0fyB8XDYOUslZvLWhrEHS68MQPN4itx5QCF
 5G2Si0cxb+SIySRKcJ89o6NK+bzeiKjUPq+YcDJWlujIPilrDaYpFLTrbyPSXFh2hj+S
 mx9VVpsW1bVQZmZ2Ze6IzHvT3dT9kfO2aRLIUQ1PQFdbLc/kn+Ctg79zCJGwc4LhM4IF
 pBvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6yVenyf0a0qIZedfKSCtttpa0WMwEDTZq8Yud/8Uytg=;
 b=OVXS2HRQck4kC9xy4HLy5KOSj4yJCyZdoHVQrKZC2Gh1gIgFMGyuaYAKy9THYNJ39T
 PMSwVoJaTa5ytoAVZ8Z6lahnUaKqjUGZS85wWtDU9cFnvMwN0jbyT50mj4uhErruITTg
 hwVXIHiSXzgdDAMid40akAJY5n+kCFjis2woev3NHl98pW3urn/OfNMN0CZ0Q+P7K0vl
 KeB6gMr0QCYJgLKXf+oW73deDMb0DB2M4CyEXtEn4pSBP2wP2jG7TmRGDCEXhgYJc7jf
 043/fvF1h87afsih+Zwia6SEBnza7Fhg7KsAOxsHELCqRtSkKUFEXsTNvly7MIwIb7S5
 +Q8w==
X-Gm-Message-State: APjAAAUYgT9wiTLVOWptYYbyHJB77tJ3/L0wJPsbS0DoakAuuO5EASxX
 KdV5Ww7Dl9/spLXPDOSM2hyAd+dzRg==
X-Google-Smtp-Source: APXvYqyVaMd+FX1grTr8/UOs0JxoMs+1pdWe8hTBQCYVIxmgR63mOxmsGCZ0sfjQ08bGQHR+ZiNFjw==
X-Received: by 2002:a62:e718:: with SMTP id s24mr58695777pfh.247.1558066004331; 
 Thu, 16 May 2019 21:06:44 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6390:5018:b478:7b0e:49e:16a3])
 by smtp.gmail.com with ESMTPSA id d3sm8628927pfn.113.2019.05.16.21.06.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 21:06:43 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: heiko@sntech.de
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Enable SPI1 on Ficus
Date: Fri, 17 May 2019 09:36:25 +0530
Message-Id: <20190517040625.14607-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190517040625.14607-1-manivannan.sadhasivam@linaro.org>
References: <20190517040625.14607-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_210645_356642_DD445317 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tom@vamrs.com, linux-kernel@vger.kernel.org, dev@vamrs.com,
 linux-rockchip@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable SPI1 exposed on both Low and High speed expansion connectors
of Ficus. SPI1 has 3 different chip selects wired as below:

CS0 - Serial Flash (unpopulated)
CS1 - Low Speed expansion
CS2 - High Speed expansion

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---

Changes in v2:

* Used pin constants instead of hardcoding cs-gpios

 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
index 027d428917b8..9af02d859dcd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
@@ -146,6 +146,12 @@
 	};
 };
 
+&spi1 {
+	/* On both Low speed and High speed expansion */
+	cs-gpios = <0>, <&gpio4 RK_PA6 0>, <&gpio4 RK_PA7 0>;
+	status = "okay";
+};
+
 &usbdrd_dwc3_0 {
 	dr_mode = "host";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
