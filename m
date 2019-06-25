Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A07A65551F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjKExkqgNYl8kXGH4bAfeZRA7apcBtio9Mzy1pS+Z+s=; b=YwJPIK2l1g7JJr
	e6ws6MajM0UQx5rQ3Ylupps9B6ud5lL4venzkUvPHJ+PX8IuY63c/vvkxS4h6EqjsyaWtu0Pm2wqj
	gqYXL0Y6prll0dzbgzgHbmInoHqL+DwW64PS7Y/e6PEfO48jZ6kK50TKmYkCRamuhtlD1JN+/QmD3
	3Iq2f4TQjEg0cmGZt/eRIICB22OM3E7kOfbtBS0LdGcF2fGJ7m9RkSIvprHWEcxLpqtxVqWjoeH6J
	yRVuNooWRQayf7FPY40LLxY3wAYz++rn9yE+mrJ6KqIruQonoOjfVkKiUgCB7DKFG94FtI+SYxCfH
	HJToqCpeUYzumazXFa7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoev-0005qQ-Rz; Tue, 25 Jun 2019 16:51:05 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobo-0002Ih-Gh
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:47:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id g135so3544601wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vx/+X3vW6hJ0UUO6xl7D37Dkvgf50ba92tNd21qhLhY=;
 b=KZCNsdmNk7fr6BtssB1l/nVXpWdNqpSJ17yuMZvs0iwZmznPE2I2mOYe64nOOkJKmT
 gmOTA980HH8aQQ4rKNBtqizvvIwxdBN5CFwNZC+P9muuWAm3s0pO+ZX6YviPklw9ZVDQ
 ESRUpR9S6teNWngx5x//WKH1YKQ/Dip0Pl+xpB3m6ZZGWX8Z7ZHY3glRn6Yv+IweM+fZ
 nWa7wcsPGrUVnfdi4g7uwSQ9qek27rtnC/pHiA2rwr1Pqh1IGatTCAH7nqANnOAMuvP8
 nCocUPBWvQlTd8xI9+Jpl/cxqko6zgosqSRJI2ADqYZWWjoQHL3H2wKM9/r5UQLHBulO
 EFSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vx/+X3vW6hJ0UUO6xl7D37Dkvgf50ba92tNd21qhLhY=;
 b=aI8y8QiInRtF6nEbn5siDzvBiB4C47frR9Z4iPdwBtFgBPaKcekFS0NduOnR92Q6bS
 vvuTRLhZDrAARQQMRAPi2D8GE/RcHx190p1TnrUVGCdugDkx9HPUKNuWIzsGj2/FcSUG
 Y96g59xVl3995wiRUmgByi2eCi2UDmatQustnQh8D3KpKdguyJE7hwpe+cLjo01rwYeb
 YyGpBOAtzEno/7PYBfH3mzyXTW7G/6UIKWgpyNMpWyBVOxpQuwnCfjZVllHvyFwpVhEV
 3XphJOaLRNdPy25zfuICdis5wJK/61FGvIFGpvcvy7DXlcDDQAdth9nsjBWIa0TRVawD
 GFzA==
X-Gm-Message-State: APjAAAW2iE4SpwqAqg6oVXvTtHO2DiJy9bkK04FtwTlHIr3yN39A3Z0Z
 SZD/Ew2jVHFyEVHW7yrtcLp+Nw==
X-Google-Smtp-Source: APXvYqyV1gu/I4EtxDw41R2+bbmPhZ3ozBjCCna7xrSe18ZqJS/Ruc5Yad+b7pkWtrjkSEOK4fwyPQ==
X-Received: by 2002:a1c:7f54:: with SMTP id a81mr20757954wmd.170.1561481271296; 
 Tue, 25 Jun 2019 09:47:51 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:50 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 08/14] clk: qcom: hfpll: CLK_IGNORE_UNUSED
Date: Tue, 25 Jun 2019 18:47:27 +0200
Message-Id: <20190625164733.11091-9-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094752_675182_DB28A47E 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

When COMMON_CLK_DISABLED_UNUSED is set, in an effort to save power and
to keep the software model of the clock in line with reality, the
framework transverses the clock tree and disables those clocks that
were enabled by the firmware but have not been enabled by any device
driver.

If CPUFREQ is enabled, early during the system boot, it might attempt
to change the CPU frequency ("set_rate"). If the HFPLL is selected as
a provider, it will then change the rate for this clock.

As boot continues, clk_disable_unused_subtree will run. Since it wont
find a valid counter (enable_count) for a clock that is actually
enabled it will attempt to disable it which will cause the CPU to
stop. Notice that in this driver, calls to check whether the clock is
enabled are routed via the is_enabled callback which queries the
hardware.

The following commit, rather than marking the clock critical and
forcing the clock to be always enabled, addresses the above scenario
making sure the clock is not disabled but it continues to rely on the
firmware to enable the clock.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
---
 drivers/clk/qcom/hfpll.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/clk/qcom/hfpll.c b/drivers/clk/qcom/hfpll.c
index 0ffed0d41c50..d5fd27938e7b 100644
--- a/drivers/clk/qcom/hfpll.c
+++ b/drivers/clk/qcom/hfpll.c
@@ -58,6 +58,13 @@ static int qcom_hfpll_probe(struct platform_device *pdev)
 		.parent_names = (const char *[]){ "xo" },
 		.num_parents = 1,
 		.ops = &clk_ops_hfpll,
+		/*
+		 * rather than marking the clock critical and forcing the clock
+		 * to be always enabled, we make sure that the clock is not
+		 * disabled: the firmware remains responsible of enabling this
+		 * clock (for more info check the commit log)
+		 */
+		.flags = CLK_IGNORE_UNUSED,
 	};
 
 	h = devm_kzalloc(dev, sizeof(*h), GFP_KERNEL);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
