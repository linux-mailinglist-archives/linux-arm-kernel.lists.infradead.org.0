Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB7855525
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MCpm3I6gUmG0hfMDB69w/QucCAw8mT2/M7WCVLELZw=; b=oVJwFgtCQv+PI1
	0V9e569k/dUHbATEr+oHuPQWQe2EQSxboRfAt6Lvjrpy/NQdwclzW8+1+vbG0bnsiAeKA1xJnhXy/
	BsG2NyvUvleKS96zN1TiN2gj0cAvgMX3DU+pdNpaZSWWTXM7W2UPFqhz+znWlNxcKrc/h23hpsMru
	b+uq8wqrJJq6f4aXNuDEgZY7bldgQMsoAd8XVhsK+A+Al0ToU9JpivkBGfMCSGCyNHZXgzv9LH3s3
	f8o8xHX53Pj9css0Y1j54M2cqmZ61R/3Y3r/JS7PJRqKX24UoB7ZPXr4tedIpQvkIYUrjAS7eDMQB
	mfdy3eyWCl9XhSTXbVYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfofr-0006Zb-7d; Tue, 25 Jun 2019 16:52:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobq-0002K6-3Z
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:47:55 +0000
Received: by mail-wr1-x442.google.com with SMTP id x17so18646703wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oKGLSmgisRO2Nmb0wB40LqsaDficvDLdoxm6cO408zE=;
 b=jY2/AWowAS6G+jRVmNv+y8BiYzhIt/RwfEmwSQlOnP1M7xgKx2duEfwCXzEbp79MUm
 HORhBMcl+LdI616MEYj/rjmZO6lywFy6CNbUIc4cs6zy9OwoFI24Jx//abCXlxz98rCU
 i5q1biTMevsMS3u1LnlQXfL5f7XGHeHTI2QAVU4B1HdB1zmVplLZtKe8327ZhiW71peI
 z7Nf7lVk1fdGvJA3Fx1Nu2BYIv/faT9mwmCA+Oo8BLyQ4ByCn8GCfSSGUa21td5D33Rc
 6K5yR8rL3LQZsN7nHJFeEqOHDKamNXhUesE1mXZYR44nHlsZrdCo9C9N/htchBYsH34w
 QGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oKGLSmgisRO2Nmb0wB40LqsaDficvDLdoxm6cO408zE=;
 b=EzVEauk1bGjIGfZgovuW8D/Gh7iT3K6GaZs/maAZMpl7xd+qOHkGew2z5yT8DAze66
 k6Xli1JsJE7L3Ioe4U45PBskBMpSadvxMMQ/mxSclhzLTERyRXikM1FJvHvGRK4XvWM3
 VA4reNvjXntIEhjb4uIviTZcozaB05hbtH9gQ6qfg9mY3wiTTeWNO/5iWkVn3D3r//Ze
 KFlXZ+fpRwlo7hq/ooJBxb9U7xIezxy0KLIRN20UCO9P2NY9Dlypt051M85AEAbEM7L3
 BCN0MZh96Ro9mE1opS0PO44ds0dpGbZLviQKyIUAIUuNvX6paFJe9uAk+4kphnUWA8WJ
 OTQw==
X-Gm-Message-State: APjAAAUTyDTC+zU7KCvEcvsS3ELLUD1+iwYu2VBY57fSSENbpCcbHnr6
 2QK1XA+ECdxGBcdftOJ5875TWQ==
X-Google-Smtp-Source: APXvYqw+ITnXXrhjAcfOWEotCFY+bkWsQz+aEVksguE1mMHz7rXtZpCo/wyL1bmjHCUy7fRC8W94Mw==
X-Received: by 2002:adf:f186:: with SMTP id h6mr24857872wro.274.1561481272938; 
 Tue, 25 Jun 2019 09:47:52 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:52 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 09/14] arm64: dts: qcom: msm8916: Add the clocks for the
 APCS mux/divider
Date: Tue, 25 Jun 2019 18:47:28 +0200
Message-Id: <20190625164733.11091-10-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094754_213235_FAA5B817 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

The driver still supports the previous bindings; however with this
update it we allow the msm8916 to access the parent clock names
required by the driver operation using the device tree node.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
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
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
