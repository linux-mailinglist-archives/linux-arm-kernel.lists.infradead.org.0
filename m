Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D101571AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 10:28:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMCFL8YI0fo1DiOe5EMfO9s9xUzoyAYsnevi4o1nUe0=; b=GtAfk5XDn9Z67V
	qDYSvWzDuVLtI/J6Qcza5hcorp/pHa2dXHaBDnj7v6S/NH3720hqTyzda310Zi9XjD9BNUHs67hD4
	7M/hCLfuk6lj6EPslgIXHIikTiIhuTrdlKm1txQqb+NKaYMwHyUB08LaHcYGyh7JSgYupkOQtZPjP
	WbXaNnvi+uHL31YYGpCH+0ZRwm7P9uJ5T8513GV7ht5QDwLg9mB7bKgH5UhmFf75Bj50Eh9KHJz5F
	aCYB+OlMu21j7tQXPfvaFXqhAoD6AHk7OrV6C4t1BLN6y9miCIEazFjKPI0ygV0xx+sKxA8O7Tyxr
	FiFsq0PHHng1VSSETVMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15MK-0006kw-7Z; Mon, 10 Feb 2020 09:28:04 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15Ll-0006Nk-QE
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 09:27:31 +0000
Received: by mail-lj1-x241.google.com with SMTP id r19so6305758ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 01:27:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4oCdw4EMcaGAIMom3SqVsEVPDCH2z9QogNcbqKHn9HA=;
 b=bLihywFBQK+ePz5zj1fPsXKJBLg7P9wboAA8mgZ3VdNdSmak04q5ZP0tPgv6V+6pa3
 SoawWsfbaara39EiZAG2R//onU8d8D6iIen3Lg7kAr2GawMZTkRpZWwwn2Wnte8oT3BK
 t4964MhRRirXgJKIinZuWKs0RrSkcPTRvl3r/9gTwIoTMH7vnY9XhWsFhyDvV7yOQWiU
 s5Hr7h4M0Uz9VIxeJ3uJBOFaXMBM1ZUIKDK89i/EsiJd9yfLZTfWiK9fOKS4YXJUypYz
 BR5RoH9sIETPLSJryIivZH854wmhEbIlHcFhAFSHdXWdFH/jKChC2ogjXTMlH8RIhd14
 7/mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4oCdw4EMcaGAIMom3SqVsEVPDCH2z9QogNcbqKHn9HA=;
 b=hJZGp2kNf4ScQiEwJhac0OljXG9mZVNZS8fYrbboIX/hyi5pFbuB3fnjhOpK81WAHs
 j69t+mGu5U9FsWWo9y+4ZWTNc6RfPbgWafsNYIDSdiIGpUFFYa8VP+VZq5/LNum2SYut
 ZutN6Zxr6J6ymTtfGHLKTMfg/+o5HhNXbH7frsSJQIbMK+Boap1SOCIr4pE4aPsJOBMH
 UqlDwj+J8VLIsOlRVSW7oTO2kml6rVQJxzDsNbzx5aMQOIyak4XlO6QVkf6T52kYWnnD
 hbIaOb6fRp7bnYIWgG3TyNCsR15q2HPlJw9kDMUuqSw8yxgvdaPkEgPDi3n+YxD3CZev
 Kneg==
X-Gm-Message-State: APjAAAWTopLDDppE1P8LuGL/QI87oRyb6fabZn4sOiL3cs4gs82mC5vc
 BaAIgDRwci3jAwor0I0k/rKa+Q==
X-Google-Smtp-Source: APXvYqw8Clis7LKjtsbN5b28CUHEdrIEMz1FGxo+GUKChtaWk9hU99hGrQBgmd3+rYqfim9tHtn1Hg==
X-Received: by 2002:a2e:8e2a:: with SMTP id r10mr281487ljk.219.1581326848014; 
 Mon, 10 Feb 2020 01:27:28 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id d9sm5989882lja.73.2020.02.10.01.27.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 01:27:27 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/7] ARM: dts: RealView: Fix the name of the SoC node
Date: Mon, 10 Feb 2020 10:27:08 +0100
Message-Id: <20200210092713.279105-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200210092713.279105-1-linus.walleij@linaro.org>
References: <20200210092713.279105-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_012729_882847_0D99863D 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop the surplus @0 on the soc node making the devicetree
conform strictly to the schema.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/arm-realview-pbx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/arm-realview-pbx.dtsi b/arch/arm/boot/dts/arm-realview-pbx.dtsi
index 09f3f544f3a7..f61bd59ae5ba 100644
--- a/arch/arm/boot/dts/arm-realview-pbx.dtsi
+++ b/arch/arm/boot/dts/arm-realview-pbx.dtsi
@@ -210,7 +210,7 @@
 		};
 	};
 
-	soc: soc@0 {
+	soc: soc {
 		compatible = "arm,realview-pbx-soc", "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
