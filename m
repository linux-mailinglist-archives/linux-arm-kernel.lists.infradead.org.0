Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62141AE345
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 19:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/bjeoRwDq6lilg78Trtrn9UdgyYUg5KJe+wSc9hwZU=; b=tkZRUywRiOSGJQ
	YztR/10MJnXeb06vufJ+3Zf8uEn8HFA+i/H5J0gNRl5lB5AG8BZhbKuPbhRqnkTwX/Xa7f0UdytUf
	7OeHgQFem3juBbvjOekf9dhtlz04/YTaODIFVcFVhkkmoD2Gocj5v+MoDNNiTFv2K85Rz5fdd5qoO
	OQPjnq2Wi9JCXuYtTVTfxePT9XnTkC4wOcaABnDwJHun4bohKKOenD5tr6ilcQAvOauq/qcooAafW
	+qLJeX9Pfv+JXSDvMAYisJPm8BcoofhxnuQPiMD9vJOnuQMCqUNXjDcKHHT4VxkLLedMgt0P1vKj/
	rXfra5OHbULLKFOdlK8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUWo-0001rt-60; Fri, 17 Apr 2020 17:11:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUWT-0001jI-GL
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 17:11:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id b11so3905900wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 10:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=djzvG6XaGhdYeLytN4z7/I2dAr4mdJr3iEf2jKXsxZI=;
 b=oAB38V466n9u/hH5DZQ+vkvHG7UZW4JmOaoSj+6gJTlpKc2JzmmNd6Y4AW/me6g9EK
 JMoaUMHdIuFVnkRdICPbPzIC8/71ix6u9MuNsZsmuRcPLYZZ8kTQin1mmNS/4P5UyPtL
 7nZnmQNBLMiw0McBwUt509NilnZ4wWAgvZQOigs7TjBQtZGptsaAjojSTSVNDF9v2xIl
 s68GQQzwhxPn4e87DaWiAi2K5BSJidJzkQPOXewQBSy7lSO7A+YjXqj9HR5plwhiqXAE
 NfLPR1hjsiGlV5wkR6morj/8X1/dco3zcQ4nwU2JZa/leuW6L3rcGaHf3w9d4NmMcJpd
 HXfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=djzvG6XaGhdYeLytN4z7/I2dAr4mdJr3iEf2jKXsxZI=;
 b=hGXrFm4xdweQCmov6AtlkhYZ78+BEyrBQ79l57nqxDAQw6chKbhsJNJKm4FhPxyheG
 cZR43sarRBZtFJP49z9+jZr/Swh/QacqIxMvkx6TNAacKSrMOn6OyWHuFWNZS14JNqLo
 jxWkTveHvdQW3EOoC2HHkgMpfBA/iEnLsEciw0F7pIIMh2ubrkX6e0801wXkCW6dqL+P
 TTyLE+pmW90/78DSc5QBZwlqvQH1fanTxpXeLniM5Kp9HrWLMET5Dq3N332VjvO0JQE5
 X09v+28A0awluam9HyiYOG9UINbHpQNSxvncgpXK97BdTf1SWDzOTB+pZsPl1GHEl6uP
 cELQ==
X-Gm-Message-State: AGi0PuYxrHjPuN85XHUkp5ysnf/+Kg6UKdfcg23zlVpCvCLCHHktu8L3
 ZgufbV9EldXl8Y0LNxtiF6g=
X-Google-Smtp-Source: APiQypJ1hzIsBxZXdPGvU2K3Qy/KAiMo3ErE/EvNDI89dOBXBA7eUV3bLRT0sp4Ki0DRJSz8uxO+uQ==
X-Received: by 2002:adf:f986:: with SMTP id f6mr4875873wrr.221.1587143482005; 
 Fri, 17 Apr 2020 10:11:22 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id w6sm29487997wrm.86.2020.04.17.10.11.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 10:11:20 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 2/2] arm64: tegra: Make the RTC a wakeup source on Jetson TX2
Date: Fri, 17 Apr 2020 19:11:17 +0200
Message-Id: <20200417171117.2556374-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200417171117.2556374-1-thierry.reding@gmail.com>
References: <20200417171117.2556374-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_101125_537381_58B3F0A1 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The RTC found on the MAX77620 PMIC can be used as a wakeup source on
Jetson TX2, which is useful to wake the system from suspend at a given
time.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
index da96de04d003..7a0fa157f48c 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
@@ -221,7 +221,8 @@ pmic: pmic@3c {
 				compatible = "maxim,max77620";
 				reg = <0x3c>;
 
-				interrupts = <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-parent = <&pmc>;
+				interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
 				#interrupt-cells = <2>;
 				interrupt-controller;
 
@@ -379,6 +380,10 @@ vdd_pex: ldo8 {
 						regulator-max-microvolt = <1050000>;
 					};
 				};
+
+				rtc {
+					wakeup-source;
+				};
 			};
 		};
 	};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
