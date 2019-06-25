Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 971AA5552D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKFzl5nxZAUGf17I2cr5v8Ra6Oafl6qUsLM7493c9yw=; b=WEWWxEwAFrjIqV
	LQzqdy1z9C1gSSB65ioTLGsZYYkxNskURx80Lyrim5fodhrqsEq+cNwREuiCqaEFyO71LwP3UREqQ
	2aT4l+gcnOxuC1TPzcidmmUCZ9YVtdDR/g+h52zVAde+w7/a0W0M9APEMV0cYbk48ZhqEQAOlD69X
	v+LVZen6VsVezfnsZ2+XYxZbDjRF5hLle0tsxQeNaALgJb/hoFyPhq/WNriwN1mFB3QyHDgoYOq9D
	Sglzi1U44nh5TkbjRpXzDFWJVeYYv//Syc0pbvraH/iE5JmfGqj2M9Af7yDG/VdOcdW01jLzYDf5R
	K76e90bbwalpMeqPVxPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfogk-0007K0-En; Tue, 25 Jun 2019 16:52:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobv-0002NT-C7
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:48:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id x15so3549331wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YWv+ENYtDt9ayygv5AeNhTcINipts+nB0V2FRLcgbPQ=;
 b=Dxdi6ZD33iGpwH42tE/qn+Iq4qpd9Q6uWsQShpkmqZS8uMNtMk4VAEgSDHLFGUcEzc
 ESZloIWaRMy4AJgVcjFwGdZr5oL6Am2doHYp6EgXjBsFk/LbQnE2C4BKTkD4Zm+L7ONr
 csb95VD80/aDbOBTm8p3fUFh6w81NVLCvmVOZNhhxQsy2NOWkzTk3rGeaCHXA632fA8c
 RHakhy/AjDBjOZog1iWpRlFe9YY6J2eJOuW31Rkow0QeTClcSAtUATkhipMh/KqVUzg+
 fw/hS8ts7UhwtDQ8OEeWIV5B1kXaTutTxgEBFcpE/chiQeD+kuwPB/cH90Ywhxr3sRlw
 BwRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YWv+ENYtDt9ayygv5AeNhTcINipts+nB0V2FRLcgbPQ=;
 b=psuWULb57wLX6Koqx+gc3mmGMMvwdRyGKtOmcTtMPhI6Q/U323O7kb4KLpbnC9LYOZ
 tINJ2phS4+nEbl0gBrDToY79LAF301qohK05c6tQOM5M7bmj4y4zWhrAuQ2pF8c+WtPX
 vgiQ0iT2WPXqwKWSImBwrbcjFzCV2JHuVm8DlwtG/k7taPqM7tCeZCn4l2vfBmB9ea48
 kwXJHwhY9lPqVD6OJYsQDnbn75wC/kXSa7rDfPk5O+4S1e8xnCWNiI94mLCsf8PkHA1d
 7SAVf5aOFfyzqFMzR5921sBGYrJgb3xa3Gb2bqgkBQx2DinPlgSeCvgx4k7Jb17cN78E
 Bqfg==
X-Gm-Message-State: APjAAAWMcQPzvajeAZM063OAY0E6ALEoRvzqtjZuhFYLjRQGFH8B4ImI
 KpW8hmhphvvbB/F+00MivMvvvg==
X-Google-Smtp-Source: APXvYqyctq0fJwYMqXovLwVH+Rv/g41oIdZlbNT5SBNXiqMQk4fgjk1F1lSz3e94rDFGPxFy/vVOuQ==
X-Received: by 2002:a1c:f102:: with SMTP id p2mr19064644wmh.60.1561481278013; 
 Tue, 25 Jun 2019 09:47:58 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:57 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 12/14] arm64: dts: qcom: qcs404: Add the clocks for APCS
 mux/divider
Date: Tue, 25 Jun 2019 18:47:31 +0200
Message-Id: <20190625164733.11091-13-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094759_487533_2D1834C7 
X-CRM114-Status: GOOD (  11.03  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 94471aa31979..9569686dbc41 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -850,6 +850,9 @@
 			compatible = "qcom,qcs404-apcs-apps-global", "syscon";
 			reg = <0x0b011000 0x1000>;
 			#mbox-cells = <1>;
+			clocks = <&gcc GCC_GPLL0_AO_OUT_MAIN>, <&apcs_hfpll>;
+			clock-names = "aux", "pll";
+			#clock-cells = <0>;
 		};
 
 		apcs_hfpll: clock-controller@b016000 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
