Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E0E7CE99
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mulk5ZrE4v4FxRKFPj5LAwZDGIEy+7R8E4/xOw4fuJg=; b=EEKcyFkJkAZwDC
	MtBfgMKAIIwjj2XW9a4MuPBdxSAXBbqFi/ovbNMGx+CfDjV9qgsboPv+SiOpPbjWHyMJjC4zKQRDI
	BR34RRB1+MRi4DJtXgX9PanNdj53T1Knls7zxpqyaaswibjtWUmXUoM0skItgHD+uh11jIY1ZUJa/
	CYhv9EQG7pZad9zA0jIvZo/RdkwykWfY23pgeZnoLjWKYRA6o6p2kamNhO8qkRKPOijchq5yDb7xm
	MTyW2OpWn7+8L4spIZWmKKKaR6oelq6ROY/rY0Crv3kbU2b/8ZSRpoTl8bPmNe5vom7SyoH+aPLQG
	wGmhQaUw3PhgZSxdsA6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvG8-0006Gm-MI; Wed, 31 Jul 2019 20:31:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvEO-00035W-Ee
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:29:54 +0000
Received: by mail-wm1-x344.google.com with SMTP id 207so62182534wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1eN7cVd81RI8zQ0Y9k2UD2x6CFiI8Tg5XhL9VySum/g=;
 b=YV/R5BSMFAh570iRGRBD+cQsWsJMFzQ9gG4bGL/RfB32IWA8XWQeNI5O0Thy2ZYp3D
 0R9pHt+GGiTfp0GJbd7ldKYk/cGLe4sDDFbAxLUywQ8JpeGf04r2+4aXtZvWA41ZNgOz
 Ga687vg1J/lEgYqb2BK7TqMePNgA5tMCBoqMtIiqAwNmUj2veS08uPt9qYWEw79ufpms
 AMsxqa5tQzIjPGAQZVtrImgh9ifM/d/sWBl+iDfNP3djoNjHT+3jg9gOeiztVzXdAMMR
 oLeGbEuGiUBJv17NIERP3qXzZA1aIXI6F5E9+wMnlf8vPQuU5shUVedUGy5fClF3LwLm
 V/+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1eN7cVd81RI8zQ0Y9k2UD2x6CFiI8Tg5XhL9VySum/g=;
 b=oPcv5eMbSSQuWQMeg4MlBgN3xcieUxKbcZWNv8hddZ93IpfYaHIXCS4mUwq87OiGzN
 XdBAUTh8+mYcdGZXma3HQTrvLNpDgNO3Pc8349eiLh//aSo7eHY1YWIqQTjCqnO78MDY
 day8gxG0eixPOrScB6N6Wn/kln6ppw4yR8yjIJhuqk4/sPJAMOpazOS9BL80k+J8HUXV
 1SeH4x0jnGSiLKT8uV9TzOeHXYOVCSeQtCnrX3FvOnTTq/7npHWaZ/Jie43Vgby0Fo0k
 ZnIQVzbzEoYiuhOpakl0uID4eiWyrOJhQyA5fzETBBIefXtqPXYBEv7XoARpZrIo7L7J
 ZXrA==
X-Gm-Message-State: APjAAAXvLLInEaYPgrWg1anLq2mQNuWUD+DRICOUG/3Y0zZIrQcF6f+5
 ZyWpH89oCknR1v2fawnsohxhKg==
X-Google-Smtp-Source: APXvYqzNwzPOT8ikRcH8Z10UCUrFJdD9U7xIkEr2QVEDWI8Dja3e2Osr7FtBYRKIc8wpPjGJiXNCVg==
X-Received: by 2002:a7b:c748:: with SMTP id w8mr37876401wmk.36.1564604991184; 
 Wed, 31 Jul 2019 13:29:51 -0700 (PDT)
Received: from localhost.localdomain
 (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
 by smtp.gmail.com with ESMTPSA id i18sm91905591wrp.91.2019.07.31.13.29.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 31 Jul 2019 13:29:50 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
 sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
 mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
 will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
 heiko@sntech.de, sibis@codeaurora.org, enric.balletbo@collabora.com,
 jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v4 09/13] arm64: dts: qcom: msm8916: Add the clocks for the
 APCS mux/divider
Date: Wed, 31 Jul 2019 22:29:25 +0200
Message-Id: <20190731202929.16443-10-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
References: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132952_524411_91265AB2 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Specify the clocks that feed the APCS mux/divider instead of using
default hardcoded values in the source code.

The driver still supports the previous bindings; however with this
update it we allow the msm8916 to access the parent clock names
required by the driver operation using the device tree node.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 5ea9fb8f2f87..96dc7a12aa94 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -429,7 +429,8 @@
 			compatible = "qcom,msm8916-apcs-kpss-global", "syscon";
 			reg = <0xb011000 0x1000>;
 			#mbox-cells = <1>;
-			clocks = <&a53pll>;
+			clocks = <&gcc GPLL0_VOTE>, <&a53pll>;
+			clock-names = "aux", "pll";
 			#clock-cells = <0>;
 		};
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
