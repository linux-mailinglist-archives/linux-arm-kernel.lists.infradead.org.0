Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25098F171E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 14:30:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eIJOYLoHM6LPboBalLeQKLvPtMNRTFzLHgRA+s4Xnrk=; b=OaiORN7OCig7t65XcnSZk6xnlH
	CblVvDC477lAbNhoiPO+QUwazn13dgO9UriEyfDdCbllePy6x5ccdM2rCj9U+oAvgjIrfRZ4iUiVk
	r42r3qUDuTbs96JHD6WB0pnc5JEe40m+EcHIjT1tOdeEMnhrJx8MJzAnSRc03PukajnPNrFfu6Eu1
	2PLk1VDPOckcpncBuobsAPMQaTyfBF91IWYFeMFzICsu1unPDJINDEUxn/1cSE8htXsC5EniW4eOL
	PHl/iW2wH/0LdKAwUhiXr5b/LoLHcr0qvh1C1QAotP4HDtpZi0Qmklh7+x4SgRcUruvcrfcXR8GD+
	4DZJ10CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLO7-0004Vo-HJ; Wed, 06 Nov 2019 13:30:19 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLNA-0003uH-LC
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 13:29:22 +0000
Received: by mail-pl1-x644.google.com with SMTP id g9so11442763plp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 05:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=ndl0P+VsTZD2v+P2v9bn/U9V2szmDcFpE9QaZn60GcY=;
 b=Jk++708LXyo/7ByqvgwlIhPiri1IenbjKc2cSae50LsdvVJ10VmxSRemddzrpMGYof
 ybKFnP4OZTKR+IWnxPv3rZ9SPmHwVgfII4zpEmSWVuBQrRmabm5c3d8DPoBhycjaN1E8
 wi1E4HvuUCTJKw0uZbJVmAD24BB6z6q6XQSkrwm6bh4+2zlfDBTWijbLLo+BwJ9Vgnlp
 lHWz+p3h9owUvqYFwwuS4MD/Emodoj4SNJ6y436+Vqyu2XrS8bkMQxSUvLOMM/jsVOIs
 KGo41pjh56vWYLWunJ2sIYBrwuf6HTjyenTCgPLhrmloOJzaCwR87IgyzvWh/5QJM4fm
 VeGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=ndl0P+VsTZD2v+P2v9bn/U9V2szmDcFpE9QaZn60GcY=;
 b=McQnSdDWuTiTrwTAOWuCC4+GSZIcF3wDoQkUcVDf1fkQGGVgJgh9hKMVUyO7yemK+o
 kfkkUXpZ1PnuZ4aJqU10wOyH2au/+xVIvta3TgikOqtJvLnh3a2xIh0QU+AYG3UbOZwM
 AIZjIIfAdpESSVeBzPeMy3+xR0a8fuqNZgRdjs1pGVm4qDQKIoxEMIwFUt7qDjT8XosP
 JO64JQwLaWhFMLC00f5Ixja6j+y+2F+fumMMMwDAwrBxGWSRQ1wkU9+/RAMCndH5gE57
 2f1LjdQ6hdewlYq//uzrUCIcultlCY+NPtbZ38dTpaNsg6nQIjQXHcpVsW1F0yD9kEdr
 5KHw==
X-Gm-Message-State: APjAAAUPLZrHAQPKEjMQgKIXL7uJCRybzFbQpOSoUz98B+VvrwOFd0Jz
 ulgR3pAG8qJCxi9YQfSHPfxIZg==
X-Google-Smtp-Source: APXvYqzXrRMY/E/IAnXs8Uf12RYzyqlGrByEWUa6Sj8R2R4qoSFZoC7S4GJxnvAfOPq5HOOXQ9Tv9Q==
X-Received: by 2002:a17:902:ac98:: with SMTP id
 h24mr688438plr.227.1573046959859; 
 Wed, 06 Nov 2019 05:29:19 -0800 (PST)
Received: from localhost ([49.248.202.230])
 by smtp.gmail.com with ESMTPSA id x20sm23088825pfa.186.2019.11.06.05.29.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 06 Nov 2019 05:29:19 -0800 (PST)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, edubezval@gmail.com,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, Javi Merino <javi.merino@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jun Nie <jun.nie@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Zhang Rui <rui.zhang@intel.com>
Subject: [PATCH 11/11] thermal: zx2967: Appease the kernel-doc deity
Date: Wed,  6 Nov 2019 18:58:27 +0530
Message-Id: <b8cca2b414eeb2db19f297571dd4654a733a2417.1573046440.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573046440.git.amit.kucheria@linaro.org>
References: <cover.1573046440.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1573046440.git.amit.kucheria@linaro.org>
References: <cover.1573046440.git.amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_052920_731023_D2165BF9 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [49.248.202.230 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up the following warning when compiled with make W=1:

linux.git/drivers/thermal/zx2967_thermal.c:57: warning: Function
parameter or member 'dev' not described in 'zx2967_thermal_priv'

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 drivers/thermal/zx2967_thermal.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/thermal/zx2967_thermal.c b/drivers/thermal/zx2967_thermal.c
index 7c8a82c8e1e92..8e3a2d3c2f9a3 100644
--- a/drivers/thermal/zx2967_thermal.c
+++ b/drivers/thermal/zx2967_thermal.c
@@ -45,6 +45,7 @@
  * @clk_topcrm: topcrm clk structure
  * @clk_apb: apb clk structure
  * @regs: pointer to base address of the thermal sensor
+ * @dev: struct device pointer
  */
 
 struct zx2967_thermal_priv {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
