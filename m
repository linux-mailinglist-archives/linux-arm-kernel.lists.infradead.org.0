Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E65A9CA3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:26:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dLWQGLOgwXU2MAPssqDBmkzAsyleu9V8WCIKuUnY8FA=; b=It5ML4FWq1U4GT
	iDxJyFPH4xMk6k9U6BNMRQ9XbT4rQIblRCHWxM9kUrsmXPTlgZlKMQntG7DEzYd9hFKoLkcuus/Le
	QkGWosWWEJ+U8bo5Xc432HDxG4Zkz9WtvARs0WIufYmdNQ/nSiaTZTpPqkbTPVBjUjOsQMvBcyhDj
	tB1K1XmoUhb9vQobNvIKkLK7mMF8FWb56NDyCRbNz7QUtrCRxenhcrat9dNuQari9AQXNzCuzzKxJ
	DbKJqy0LFdw5pz2OriYOl/gJijkuFEz5TAVTuzS6Jrc4d+ZXF+Sqjo3IpaMumFChWqbyZJPBsfX6Z
	rhVEyk+4jjufaHQdmM6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29OG-00010p-MK; Mon, 26 Aug 2019 07:26:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29Np-0000yK-IE
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:25:47 +0000
Received: by mail-wr1-x441.google.com with SMTP id y8so14212230wrn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 00:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vi+5MAs5YPmzj2/dMi2vTYN5J12g6DXwnBkbqOyuq8o=;
 b=PSbBqb6XZgEn2SRTKyC47UhqHnWOTSu2ER6bJb/T9wDwAMRSL/t+cR1GbxWep4zY8t
 bcDEPF+1mpeK6UFcBaLHyp4WK/oe0ow2VML4rHRfZHPw4lekBr+yRp04oU1Jum/Z4fNT
 BePoai6t+Y+ZHNeGEOfKmafXAPXOWjUtyzzoQuu3fA6+iXkrrA8/5z+RFcGTDbt96erC
 z9/RSt2NpYdJkaYkPYmHL5fYtMjKd2GadjZ3gco6SCSnGLp1YlkDecMWBpiG0ywgiqLB
 vbSnRwRVCMz3cLYImyKRaIrWA82ddWcF9IXn7mj3DrbJN7XCW7+iLLz8O2oOa1L7Gfp0
 uqQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vi+5MAs5YPmzj2/dMi2vTYN5J12g6DXwnBkbqOyuq8o=;
 b=TOdq86iC7a0SpZvxdFMc1rtsEa3ld8tvjA+9en/SHC5ZNwXn+RpYC0Q8tzxJVwLfQE
 HT9xl3dgttq0Gn/a809nDNsZXhO67UCIoDAje9ZBuaLaLMGlwI6DQwi8xN6lR/LLtwXh
 JS4ZajVqDsSOCz0LoRQrHgI98JkbNe4OX3I4iUPADu/7uo5agKn0WftVPOaGrjoRb6u+
 cPPBk2FksTpIKSqNpGJwlW6WJChb4Lr7kLXXWxp7zzI4bkAwAAX9Sn1tFUx2GXR/1aPN
 /5FoqhtsblwAxru0q0xEAjeZkQVuB4nU+pbISO5CptsbNefV0Q67K6riDGe3Xle9vGeK
 NWHw==
X-Gm-Message-State: APjAAAXc/pb3kaKLLGaTBFTwYST/24eftIaq0M9GiQUmCEh/YOYZraVB
 CPTZNubH80GMFXCPJ3tz1OJBUg==
X-Google-Smtp-Source: APXvYqybtZYW+ukLWrnL9K43ubqngTyIbj8VraKPg6F0WHgGq8IMkM07gENqA5Th9n+bokqLsYeLPQ==
X-Received: by 2002:adf:d4c6:: with SMTP id w6mr20804133wrk.98.1566804343185; 
 Mon, 26 Aug 2019 00:25:43 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm10821324wmg.45.2019.08.26.00.25.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 00:25:42 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	jbrunet@baylibre.com
Subject: [PATCH v2 0/5] 0/6] arm64: meson-sm1: add support for DVFS
Date: Mon, 26 Aug 2019 09:25:34 +0200
Message-Id: <20190826072539.27725-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_002545_655360_AF4E3421 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Following DVFS support for the Amlogic G12A and G12B SoCs, this serie
enables DVFS on the SM1 SoC for the SEI610 board.

The SM1 Clock structure is slightly different because of the Cortex-A55
core used, having the capability for each core of a same cluster to run
at a different frequency thanks to the newly used DynamIQ Shared Unit.

This is why SM1 has a CPU clock tree for each core and for DynamIQ Shared Unit,
with a bypass mux to use the CPU0 instead of the dedicated trees.

The DSU uses a new GP1 PLL as default clock, thus GP1 is added as read-only.

The SM1 OPPs has been taken from the Amlogic Vendor tree, and unlike
G12A only a single version of the SoC is available.

Dependencies:
- patch 6 is based on the "arm64: meson: add support for SM1 Power Domains" serie,
	but is not a strong dependency, it will work without

Changes since v1:
- exposed GP1, DSU and CPU 1,2,3 clock in patch 1

Neil Armstrong (5):
  dt-bindings: clk: meson: add sm1 periph clock controller bindings
  clk: meson: g12a: add support for SM1 GP1 PLL
  clk: meson: g12a: add support for SM1 DynamIQ Shared Unit clock
  clk: meson: g12a: add support for SM1 CPU 1, 2 & 3 clocks
  arm64: dts: meson-sm1-sei610: enable DVFS

 .../bindings/clock/amlogic,gxbb-clkc.txt      |   1 +
 .../boot/dts/amlogic/meson-sm1-sei610.dts     |  59 +-
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  69 +++
 drivers/clk/meson/g12a.c                      | 544 ++++++++++++++++++
 drivers/clk/meson/g12a.h                      |  24 +-
 include/dt-bindings/clock/g12a-clkc.h         |   5 +
 6 files changed, 697 insertions(+), 5 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
