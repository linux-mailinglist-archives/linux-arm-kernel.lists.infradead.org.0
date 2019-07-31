Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FB57CE97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CoMcA9nI1rXnFAAHjKSdW4OhoOUmpUbjbzj2cETaSmI=; b=DLhgeOKXv0+Sve
	c9lbLX6REEu6OsxeXWuy5htPMnyfttAp3RTL24dfdoWqxvfoPqi68T6j5Ze2PzEdMb4lG4GYfxjQt
	5k/E3U8TXlRIri8rm9U8LxzuSTij5ZUkn2FnZBTUa8ZKUlynTTL2b9ytrPjSkTXHd43pCHA4yEidz
	WCVrx+NDNtv7O5h3bpQOXO3SFQuwh2szv6ypzPXJCoImwyF97hIbWgZX50slcUow5yJLVOokRBHGf
	qW38d98TDxO5AmsCaUSzPu23WKJxbXbCazyOTh3xR10bDBN202MYHIG7be3uTwmtJQihw7/GUrh1g
	TFnroNWC817EHZmEQhrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvFp-0005nB-QD; Wed, 31 Jul 2019 20:31:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvEM-00033g-P1
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:29:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id h19so2071382wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AduWeROQMDkKls+kl/fLswGL+rHZfEiqcyM0mR/LCMQ=;
 b=k/M0HVfeNBuPo+VT6LzsO154/layPjQ0BQjQ1FFLye6ZzLKSs9A3C1xWB1r1myjpdq
 VsGHmcwTky6N2aoUIcOBvHs3Dr0Hq+Df+PFt33LCiPqEU7s/m3/C4bW8Sdd0qYvdjyvL
 6cX+bIGf0Nkuhy1V84m5xfa/Cqm+S9MwUgxShE72HrcBEuvo0tGCt/aw23hRAgtNwH7a
 zI2PhMl2zV9kX8z9UVzHuNDJlXQ5VjZaBkhKiqmUGqTCguZkYX/DmsRhFlRG6YrSUTnC
 bXz4oKCCe71Q2ifNJard7uAi+9PPyrbCFYcz+XmGnXz6htC3D0vHb6qNDUa6NJBINyiO
 r4Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AduWeROQMDkKls+kl/fLswGL+rHZfEiqcyM0mR/LCMQ=;
 b=SbXtNS9TkUmK3WnNppPofYeDJWyNyyJWi0Rn85ps7ox5PBQs7eBVXsWLEx3d2wl7Be
 fjVyNhxVFsR7ot1RYFZjC8Af185fackDZbOnuW3XA1XfYo4DiGdYUkHaRyMbGPmAJHum
 lkQVd6cPkwF1ZNwjW1CloVHSdcWBbFZGZkSSwHbNb9tHDtuxJbMJvMLmNlPxSC/bo0cT
 dXX+YCpXlTTIwoqJpA6+P8MtsuBTIYin6niBIgx0rQIGNViwRlPpDwFyA/EwhpWGQSuk
 2A5CVhtjh9KP4rR4wAtfObkugx6yCaSQEt+6HLeWhHS8oO3qEiSbpDceO5Ys3XQz4Ui6
 ztAg==
X-Gm-Message-State: APjAAAUiYGaf/vomBeLfdnpbOzbRxwhfKw1nWAfvMURHmYUtdzsWzS7u
 RK929EaP6O22B/1c/Ch5/W1hGA==
X-Google-Smtp-Source: APXvYqw/ot9U03TpeI7X60P6SYKQcEDn5iziVJjTikkQkab39pGBlt5kTQ3vo31YrhMRUB4IxxUwaw==
X-Received: by 2002:a1c:cb0a:: with SMTP id b10mr110875853wmg.41.1564604989405; 
 Wed, 31 Jul 2019 13:29:49 -0700 (PDT)
Received: from localhost.localdomain
 (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
 by smtp.gmail.com with ESMTPSA id i18sm91905591wrp.91.2019.07.31.13.29.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 31 Jul 2019 13:29:48 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
 sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
 mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
 will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
 heiko@sntech.de, sibis@codeaurora.org, enric.balletbo@collabora.com,
 jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v4 08/13] clk: qcom: hfpll: CLK_IGNORE_UNUSED
Date: Wed, 31 Jul 2019 22:29:24 +0200
Message-Id: <20190731202929.16443-9-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
References: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132950_944549_D6ECFC03 
X-CRM114-Status: GOOD (  14.81  )
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
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
