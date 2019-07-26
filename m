Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 760DF76354
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6NZZjY37x7Nv0Rvi/oYvHqFii7yv+oC7J2dOdX+ofc=; b=mOs7IGRZL2xbuL
	KZ/kugcOEGWE965kaOz/EA/eLWvN8Bfxb31Y++kBf2IGGffII3T3DQuhT4ozzOjiBcbtty2UhkIze
	vy8Bd4pwP8lxuTrzfGBcE39sbEYRIATFOmsQBNWJ/XQkDwP44caUzPpgVawCTD00lj6JkWVBTfLtC
	NZnc+OuOnfUQgcdGBef1n1OdZczh02wOsMkrxg+FkogpxYATWY40En/nnEVg0VlEk6otYtUmh6Ub4
	AVp8CKAIVTStMa+k+vwIqXuEXVX2UwaWpD2B0JwixLrzdZX6PPXG2UoEXTwXDpF85jiglVOErVCD6
	b71ZRcWd39g3VtdV/aDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxHr-0000UV-B5; Fri, 26 Jul 2019 10:17:19 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxGy-0008Vh-1N
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:16:25 +0000
Received: by mail-ed1-x544.google.com with SMTP id k8so52780940edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 03:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9U7aLUhu7q2hmNB7NVIfHk7D5uXAalLJc3qmTryceV8=;
 b=gIs5aCEnJ4GoDCIMhtaTUnCC/xnMvZ8k74UMMMJkBkrLwAbXOcuWzYU1kl98ylot6T
 GA+f3QsvW4tYgmIjYj1JmB2tKewFZVa4JPsW7WxU8m847kKQWB1Fwbi6hyK8GleKRrjA
 t1kdW0Rmg4owuKUZ8K3OqiwnnBp3RHcQy7tBkJyCQgxFscnwuuiEjHdtZXMKOB5YU3Qd
 u3qTvNrVyy/ukLv4UdGA7DT1Ymf+ke4/AlrZMdnXj2FY2r7rpYDwgrDxY2I8g4ntmEmO
 wNB29KkvsT0lGw5368G3SyLyb1no920bNe8Jfn9QIv7PyBxCcc4HKajs7m5jJheHLHgU
 cyKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9U7aLUhu7q2hmNB7NVIfHk7D5uXAalLJc3qmTryceV8=;
 b=GRuIw6HTpYlp/dvvQwXEi51uXWAGEs7FaiNgdvOnpwHIs/fhEA2fWTlkNlCf2D1h1u
 dKtjiZAepA8mXFYWCNAZEPlUsS7ARxUeZ8FTDej/0KpZTtmifyl0Y1mq9bVncUdpwp5V
 xpqylIzjb6JPvThxgksroQU4oV65E8L0Dfnx1wVin7Yd+d3sbjmhAvnsXkm0m4FwDc9p
 aI35EUplsSTP5+1bS4lyg+RsivtZqwXzU9bT9KbpzyDV4p+SVTSv+IzXXfcLkLLwpLJz
 e2g7Dx3CYNXEJcbokZDALYmLow4sqUrxagfQCWSHe5SmstkAzTYwCat1SeDb/xBKc+f8
 X/Ag==
X-Gm-Message-State: APjAAAVE7cHzFCTRYqzN8Pxm2dRxStMhWTEfQSXcpqv1ChPEOVmMXiFz
 t+pCew4qKe6bXalWdnh2qD8=
X-Google-Smtp-Source: APXvYqwhfafbmXg6ETfXwcYL7EgWTTS6t2R6//XcGuILgEg3WeDOP3AQeYyYn8RDYH1okzbrETgg2A==
X-Received: by 2002:a50:a48a:: with SMTP id w10mr83076541edb.1.1564136182662; 
 Fri, 26 Jul 2019 03:16:22 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id s47sm14138905edd.40.2019.07.26.03.16.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 03:16:22 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 3/3] arm64: tegra: Fix base address for SOR1 on Tegra194
Date: Fri, 26 Jul 2019 12:16:18 +0200
Message-Id: <20190726101618.26896-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726101618.26896-1-thierry.reding@gmail.com>
References: <20190726101618.26896-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_031624_167756_D354DC79 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The SOR1 hardware block's registers start at physical address 0x15b40000
as correctly specified by the unit-address, but the reg property lists a
wrong value, likely because it was copy-and-pasted from SOR0 but not
correctly updated.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 923415fd72a4..ca5ffbc79e2f 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -1045,7 +1045,7 @@
 
 			sor1: sor@15b40000 {
 				compatible = "nvidia,tegra194-sor";
-				reg = <0x155c0000 0x40000>;
+				reg = <0x15b40000 0x40000>;
 				interrupts = <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&bpmp TEGRA194_CLK_SOR1_REF>,
 					 <&bpmp TEGRA194_CLK_SOR1_OUT>,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
