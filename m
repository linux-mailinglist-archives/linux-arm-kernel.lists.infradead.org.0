Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E0534190
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M5sCbeu1JD9CSLboYKHL8DitJKLeEyy+QW4nJs8nJZs=; b=tmlaSH20oXwNq0jcxbjbMKFq1y
	IXIDX0NUnF9sP17yZT5hUyqjlj1smUjDer3mHymjyNYwHUJf4xC0jLK9pfk7kXB2YrtoMFZWEJzPe
	Y6KOHMI5g1S3poXXdwxeOOBVn1cKbrVrhTCborTQQANI5xE2yQdlxw53yunwZNpoXu4TT2ECGstnD
	Z4qYCbM2Aghap1tKLh+gytj9IhsWJZRm43jss60OYepjvLqVgDlKKUSXyTxyiXo2pMhO68vFPeVuc
	0z6NE8LyiKsKEKKlf7cSgshSruYMW6wEAAkr+9pjZ2DUdm4p6PAbr71J15pjiBwu3mf1S8FrNSZs7
	o/2zlqXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4cF-00037h-2I; Tue, 04 Jun 2019 08:16:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4bJ-00022H-A0
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:15:43 +0000
Received: by mail-pg1-x542.google.com with SMTP id v11so9896358pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=psGipp4xyvA6ITMw9MQePCESgWaNPblRsxWV83tCX+4=;
 b=Rk1RfYD3O1B47PXjsboBmdlUBgc8lREPnmsvxmlZ4K8tbkh9XtlFbnik9hg4P56Aue
 vqCyok4QonGQdHkxZSSuuFS6jhSm/NPbnnsrHIUNGu0BDi0lEwrpQqGPtV9+JT6czANw
 n6jjOqhPttUEOa8TtLKAQ9Eak8U0r9YB6rMRVZz+D4bWe6j738SSpVm3TR3OKtR/ICwX
 FtnPJSEFPw9flefbuW7WCJ+xLAqJTcCte3FVf3L/rqnX2mYXrYhElN0tb0xYCnYU//c2
 z1JGQfgT7b6nq/Z1fc3StiLbNMErzmcJ2zLaSjcx8Rswz5rPxDpQl1VFS2Oqjd5LnE6A
 4nwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=psGipp4xyvA6ITMw9MQePCESgWaNPblRsxWV83tCX+4=;
 b=RYn84AjR25ZYh0dDm1VbtaqVdC+MEqYdrCG9g93m72mHglkp8qiBn+zArfkGrhEbQI
 se8q2CXIQwOQF+2mxHK0sNKT22gK/qzw7PZJdl8ATAeK+snxH3oO9jBHACbQYfl21EhU
 TDoWRZYsihrZ9ip/sjIGsiUrxXh3FqeTCTsClPogdigIxM5eXBUMPjnzKU1bx2Y1dWyp
 /CRCbERiQxvzjHkt+vTvMNvmmw8RxAPfPBQEZ52ETNQrBuYPnvYH9vrrdkduGOIcgcgC
 yc4FoOB/dt/+lQvyiR5U7mf7k+oPXceTrq12tKnawzA0VGWBfB/LQiu9+w+G8P4D/v3f
 1KNg==
X-Gm-Message-State: APjAAAUCQEXHHJw05fb2ad0C75DHO0qlJ321r2Jxc7kAkkkG4/WYXtXj
 jt8oICZjdmE6/t7G94REG7kdtA==
X-Google-Smtp-Source: APXvYqw8S604f3AEfkc8EEZ0C+3dntoJhFVMgGRVMpVEZsSDNYKOAKmWI7L5sK+Tqxo8qYOOAAGJzg==
X-Received: by 2002:a63:70f:: with SMTP id 15mr17140238pgh.432.1559636120682; 
 Tue, 04 Jun 2019 01:15:20 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id j4sm14818804pgc.56.2019.06.04.01.15.16
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 04 Jun 2019 01:15:20 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH v2 7/9] dt-bindings: mmc: sprd: Add PHY DLL delay documentation
Date: Tue,  4 Jun 2019 16:14:27 +0800
Message-Id: <6caaa6afd1b69fc491c36c665a954becb50d616b.1559635435.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_011521_640458_A86E9C9B 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, baolin.wang@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce some PHY DLL delays properties to help to sample the PHY clock.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 .../devicetree/bindings/mmc/sdhci-sprd.txt         |   18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
index a285c77..e675397 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
+++ b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
@@ -20,6 +20,23 @@ Optional properties:
 - assigned-clocks: the same with "sdio" clock
 - assigned-clock-parents: the default parent of "sdio" clock
 
+PHY DLL delays are used to delay the data valid window, and align the window
+to sampling clock. PHY DLL delays can be configured by following properties,
+and each property contains 4 cells which are used to configure the clock data
+write line delay value, clock read command line delay value, clock read data
+positive edge delay value and clock read data negative edge delay value.
+Each cell's delay value unit is cycle of the PHY clock.
+
+- sprd,phy-delay-legacy: Delay value for legacy timing.
+- sprd,phy-delay-sd-highspeed: Delay value for SD high-speed timing.
+- sprd,phy-delay-sd-uhs-sdr50: Delay value for SD UHS SDR50 timing.
+- sprd,phy-delay-sd-uhs-sdr104: Delay value for SD UHS SDR50 timing.
+- sprd,phy-delay-mmc-highspeed: Delay value for MMC high-speed timing.
+- sprd,phy-delay-mmc-ddr52: Delay value for MMC DDR52 timing.
+- sprd,phy-delay-mmc-hs200: Delay value for MMC HS200 timing.
+- sprd,phy-delay-mmc-hs400: Delay value for MMC HS400 timing.
+- sprd,phy-delay-mmc-hs400es: Delay value for MMC HS400 enhanced strobe timing.
+
 Examples:
 
 sdio0: sdio@20600000 {
@@ -33,6 +50,7 @@ sdio0: sdio@20600000 {
 	assigned-clocks = <&ap_clk CLK_EMMC_2X>;
 	assigned-clock-parents = <&rpll CLK_RPLL_390M>;
 
+	sprd,phy-delay-sd-uhs-sdr104 = <0x3f 0x7f 0x2e 0x2e>;
 	bus-width = <8>;
 	non-removable;
 	no-sdio;
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
