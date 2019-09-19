Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62566B766B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijk8zphUq6ZxHcCXETHHFG7fPCE7xXJKS7rrpetHMuQ=; b=bS5yYqOrrQQGMQ
	Sv8tFeM5I5CtpTomJMcGxUBtCnHn+rIq9wJ2EwzojLsypeSlKRLPa+8czho3tqvj7zJxNOQGDtiau
	lSgN+HyF0VPZrQ/DTOvc0E2u48hrGvzkEMMx0ekAj/krdlh6Kcnyrx0MDhTEccYavArAvK8+jOchz
	pFTPPdnMWW3z1x9gGZpJ0V6ENZxnDH1toHxLkHLF1Xoe68hSeMKuclll9I1mGK/Y587O1zulRq9YY
	BSsFuR6jgkUbi7VbwWMDOUw5wV20or0p/IYipXzs2BUmz94l0mvx8gktn79aLmTyHKeiaRbw+1HvX
	jBxCsJ2XQQDWvy1CDlGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAsrq-0005sR-EE; Thu, 19 Sep 2019 09:36:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsrY-0005qY-Lh
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:36:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id n14so2307007wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 02:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HU8Y6pbxWWxRHBUPCakNxeD6oqUY5n5mmhoUaSAT3gk=;
 b=ZpxIQpFM42BVxOwOhk7rXeg7LiQ/OzWnqWklrcETy22L7NdwvJOg25CPHHr/9bBzA7
 yYeWiVE3oPtqE9Erb4DWeZ/tpghfcW9ioBBOioDqpw6G892y1x48m8xMPjmcy18Nry2o
 pw9WB4k9l0ZVsvVLUzhO7itF/vALzH+A5+u7WatGxEyn2WbEkNM7f+iinKkXxLrij3nR
 X8tXVIol/mse55uThB8RwHlSkQ1nypybZx9fynaYkSTUuvRmFID1CcA0+rCFTrRVlBCl
 KMjZIRs1sRY7Iur537wQ8DVFU9fuM+Yg/pHUEo9uqHvs7dUPEpEFnBAop33UTd/G+n80
 QpPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HU8Y6pbxWWxRHBUPCakNxeD6oqUY5n5mmhoUaSAT3gk=;
 b=J87U8GSJbIpjKmJq/tdwh8R6WvvM5ovFk0s9fbwHrQTz28BG0LJTOGQRT5RbRdjkrp
 Ch3IziU3Or060qshz5r1jF1a+799WjLo7DvH8QMHUxR2rKC5Kulk6tro/ZXmj4Ty9L1F
 NuMy3AP22Qz70ifEdVfrCZW/CPu3vaG8XIbJKE9z6vLdII1JBHVxhBixfaEXSoy5kXm0
 tUOeja8F+oucYcUWej3vwJS9RvrAKrZYeJwAN74BzNvKH+8ZkMf0PsyubM/mRDc+v9QG
 qruxOXOccHtzAxSvibLhr5fQ9Wcawx73a5nr3hZ/YhNUhSkxw2tYxDefEpz56qKLEJph
 UfeA==
X-Gm-Message-State: APjAAAVfViWGqtvT/XLZaezioLaRK8YCi41AyDlOnXdvmahv/SZ87ICc
 XTdrbkL4nphdHQC67cuhH8VrJw==
X-Google-Smtp-Source: APXvYqwcwTAoAq6ipI04IFWalCiIwGVkBNhcLNPZV6e9XreTF113hZ1ic9ciMzNKiT6P7nJFBGetVA==
X-Received: by 2002:adf:e48f:: with SMTP id i15mr6926414wrm.26.1568885790071; 
 Thu, 19 Sep 2019 02:36:30 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id q19sm16701186wra.89.2019.09.19.02.36.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 02:36:29 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 1/3] clk: meson: g12a: fix cpu clock rate setting
Date: Thu, 19 Sep 2019 11:36:25 +0200
Message-Id: <20190919093627.21245-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190919093627.21245-1-narmstrong@baylibre.com>
References: <20190919093627.21245-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_023632_772960_D2D873A1 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CLK_SET_RATE_NO_REPARENT is wrongly set on the g12a cpu premux0 clocks
flags, and CLK_SET_RATE_PARENT is required for the g12a cpu premux0 clock
and the g12b cpub premux0 clock, otherwise CCF always selects the SYS_PLL
clock to feed the cpu cluster.

Fixes: ffae8475b90c ("clk: meson: g12a: add notifiers to handle cpu clock change")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/g12a.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index ea4c791f106d..33c7e04b4a82 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -353,8 +353,7 @@ static struct clk_regmap g12a_cpu_clk_premux0 = {
 			{ .hw = &g12a_fclk_div3.hw },
 		},
 		.num_parents = 3,
-		/* This sub-tree is used a parking clock */
-		.flags = CLK_SET_RATE_NO_REPARENT,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -533,6 +532,7 @@ static struct clk_regmap g12b_cpub_clk_premux0 = {
 			{ .hw = &g12a_fclk_div3.hw },
 		},
 		.num_parents = 3,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
