Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3E05B7C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQKpdkN9svK5CN3xh1C/Bkqzy+MIeA/YMn64Gbpl0uw=; b=GbTTsQArSSi46V
	qS3/Q7BhbRdYqhWJW2Z0Y1EE40qkILxFLEcLtkuTfiHS6KTRda6Zkdb5DJn42FGB0QVSTYxEAnNgY
	sNYGTi5nTrySvK9WTeDoeVvIvejSGhrGR8sY+742gsvJ1rvc6ftTeMzmPe/y0MfPmnX/ZevEY/1gN
	YoLMn29CbBhh93gb5acm3nHy6rwY76VT4DxU0M9Ygrr/i0sg3xZk8SAyUBwll4Xy8NaKeRisNil3p
	S8ODMzf5yzyd0BlU2TRJdDydR8u8hw3+J91l535tD0gLURCW7ADjzvpsPruIlJcjexyc2vBhOWbN6
	+sldrOtl2ey5F5jLk7hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsPn-0006UE-HP; Mon, 01 Jul 2019 09:15:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsND-0003II-2Y
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:13:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id u18so4751973wru.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 02:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f/zYZrOrlfrcoTvw7mvtGdakqdn7f0Uy5ZLJztZMxJc=;
 b=jRzfrZu54oaHH9lzNLfyY2wrp+Pq4BxLB4iB1oIRVg2Ay5S0iUzODpbgfVQflutwZV
 sqiN/g0BukVBNkx/N10FPPLHfpgw1BxgaJkJCKbp+aiW+M+FQV1035udymDkdHQJBIYo
 jCzg4WWh9xAuL7MT9BD+Ep/OiajKsKphOX+6OouSNa0tlXellYT82BaB912w8mZQ2yVL
 ZfqRIG1FUamlLELYDb80kOC+J37SDrv6iF6MxRywtYDBKdohz+rQeOmBE0ADwpkuquau
 lj6OLV+SwVbBNOtBGifq0R/fn/CAMBFAuV2LZY7Yvk5xKQrJhRRu2h2ZSwcnaxnN1Wt7
 79Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f/zYZrOrlfrcoTvw7mvtGdakqdn7f0Uy5ZLJztZMxJc=;
 b=ncJ+GU48b73BGhMDqkErLkzxfLQ7M1MLT/XJxea/+pSSacf6AFn5/E8o8gGd7lTVWe
 zZ1WRDDwDPa/7LzjgQXCjeL2g9tE25UO2moJCgeHwTl42Hs6ir0YsnuUdy8NW0e++Xhl
 PJ44ub2Yzhh2pKJcnRnFwg4GvhbLd0vscMcbURqCOfN3zEVVRYIbuqNRhPWa2N0mCzpc
 N+Hout63b3snifXaIJ9ur41zQq/+di8gBR8N+2KZJXj/D9rSznYACHhAuoYTu3N12DyO
 vfnbg9W0565n+9Kr1Hw9voiVEK1M3gOCkBGs2k9zSrljrRmA2V++DDd0TqHa9pBHMGri
 UvsA==
X-Gm-Message-State: APjAAAVwsnTsxWJ4NjPNsR0vTEqCkq374WJziLtfUsGuRcWnLtlVbM6R
 yp4AqCKsPEsl7yeB6Zs9Qvqlog==
X-Google-Smtp-Source: APXvYqyT0fpf4ZW2lN6qRHzI9//R+u71j9/hU2ekwUjUyuAJAi3E756tCjzYWkYWKgweFITAkrBOag==
X-Received: by 2002:adf:f706:: with SMTP id r6mr9088993wrp.23.1561972396951;
 Mon, 01 Jul 2019 02:13:16 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id i16sm6305659wrm.37.2019.07.01.02.13.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 02:13:16 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v3 06/14] soc: amlogic: meson-clk-measure: add G12B second
 cluster cpu clk
Date: Mon,  1 Jul 2019 11:12:50 +0200
Message-Id: <20190701091258.3870-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701091258.3870-1-narmstrong@baylibre.com>
References: <20190701091258.3870-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_021319_163710_7F078A36 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the G12B second CPU cluster CPU and SYS_PLL measure IDs.

These IDs returns 0Hz on G12A.

Reviewed-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/soc/amlogic/meson-clk-measure.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/amlogic/meson-clk-measure.c b/drivers/soc/amlogic/meson-clk-measure.c
index c470e24f1dfa..f09b404b39d3 100644
--- a/drivers/soc/amlogic/meson-clk-measure.c
+++ b/drivers/soc/amlogic/meson-clk-measure.c
@@ -324,6 +324,8 @@ static struct meson_msr_id clk_msr_g12a[CLK_MSR_MAX] = {
 	CLK_MSR_ID(84, "co_tx"),
 	CLK_MSR_ID(89, "hdmi_todig"),
 	CLK_MSR_ID(90, "hdmitx_sys"),
+	CLK_MSR_ID(91, "sys_cpub_div16"),
+	CLK_MSR_ID(92, "sys_pll_cpub_div16"),
 	CLK_MSR_ID(94, "eth_phy_rx"),
 	CLK_MSR_ID(95, "eth_phy_pll"),
 	CLK_MSR_ID(96, "vpu_b"),
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
