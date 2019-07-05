Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 207A0608F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FurLh36utX2tZlvf0QtI4LzuRrBj/PPdAY9KMp9ftJ4=; b=B3z
	sjObx0A7RMqdaARC6YRxAg9Xu36ZCEpLSGwQibd5DloR/orOzkhdMINBXC8rFq2e3GskwyaD2o7Qm
	lFQtwpc7boj3v3vT53dolx5oqKenOOJU9fQ8zzeS93FXrJ76Bdn1P2hNmQP2BnV3eoKWbCrcgwJo8
	kb1Ab+VuKX6rgbkVWeWzoQM7l0g9cYvi5r3Q+2CHRRU+Mr5TUFwOCECMGk4Url4paXfUWKBqc5yA1
	WS54h1kyhWDYPS0IXZCESWwnFzlVN6WlxdSHNn2c0h5hmpR5iXpoqhMX2/Y/z6wT1t+J/1rmQEmDV
	W+DFki2n2VOpc0YG28K4LjH5Yhuf/pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPve-0000jS-Kw; Fri, 05 Jul 2019 15:15:14 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPvK-0000hF-IY
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:14:55 +0000
Received: by mail-pl1-x641.google.com with SMTP id k8so4762350plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 08:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=LG/wQK5eDhZO2JkmChNMhmQOYOK1XGmyw1rFFuxqroU=;
 b=fc5wkPe+dcpEqURdBxoMZHkCu7ruRwywX8u94KSlg4PtNUUKv1XNQ2h+hPrPex7hXK
 VD2FrV3QrNPFHljlLp9iA3TAwyCJpbQfIZMu6IeYhFFbqVNCG+4dRcpTTex9MIDA8isg
 MFmW4PlzYaU+rHd8q7Ml+nbonIDBGxC7smUnWlWgqx65ULvaH0VoOPEpDYz/AlfiLjSP
 cas8EcLbYQ59WCanZWRNFY1apouJ4wbEn9R7Px2mQNL9hTgQbIqhPKx99nOoihYL2EXK
 o64Bn2pewcsOvDIoscJDs8Pw2X+wWGYA4h5uX7U+sSA6S495hfr2tgBdrTazwNhv1WYd
 NN9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LG/wQK5eDhZO2JkmChNMhmQOYOK1XGmyw1rFFuxqroU=;
 b=osowYar8Q+n4GZlMkcX303KutOog81c9oS2QRA87ESPkIyWN6gzF4bDocv0qJaSY7q
 6zw+221Z9Oei1+E3ZnKMcG9xp5rw28J/IX+Xl6ykdTTWBPqq8VeGtXFEnpU9FQx4kGz8
 fKmgxtooxsqNWrLHdbZxPqQINMNv+RB1YbbJGugdTnDbD2ZMD5g+qTqoK3kEp44ZaGYI
 uv7ABuRYhh4ReWzk23Pis4NDyBTMJ/AhVsRodHpRngXfl/FxNoknEXn0Yc6hZLcRRi9O
 ACRpyE/LhX2fKcelb2U9bqovUB4D+bCg/0deaoM/GavD+8wHARwMUzH5qZy3C9lYzrJ6
 uZxQ==
X-Gm-Message-State: APjAAAVNDTnwgx3EIYG+0857azxF5VhXA3ejETiZ3HlHiM38ysvt086P
 6HWRwk34UFeecRxHmRY7njdj
X-Google-Smtp-Source: APXvYqyuyWM051xgjkop2EkbkL9HbE7ns7a3MbZMkVaSgI+NVgtU3F46u+LXPNsBGqLnjeIMdq97bg==
X-Received: by 2002:a17:902:16f:: with SMTP id
 102mr6040122plb.94.1562339693237; 
 Fri, 05 Jul 2019 08:14:53 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:916:7317:a59d:72b6:ef7f:a938])
 by smtp.gmail.com with ESMTPSA id w3sm8248778pgl.31.2019.07.05.08.14.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 08:14:52 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH 0/5] Add Bitmain BM1880 clock driver
Date: Fri,  5 Jul 2019 20:44:35 +0530
Message-Id: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_081454_614922_16F5DB76 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds common clock driver for Bitmain BM1880 SoC clock
controller. The clock controller consists of gate, divider, mux
and pll clocks with different compositions. Hence, the driver uses
composite clock structure in place where multiple clocking units are
combined together.

This patchset also removes UART fixed clock and sources clocks from clock
controller for Sophon Edge board where the driver has been validated.

Thanks,
Mani

Manivannan Sadhasivam (5):
  dt-bindings: clock: Add Bitmain BM1880 SoC clock controller binding
  arm64: dts: bitmain: Add clock controller support for BM1880 SoC
  arm64: dts: bitmain: Source common clock for UART controllers
  clk: Add driver for Bitmain BM1880 SoC clock controller
  MAINTAINERS: Add entry for Bitmain BM1880 SoC clock driver

 .../bindings/clock/bitmain,bm1880-clk.txt     |  47 +
 MAINTAINERS                                   |   2 +
 .../boot/dts/bitmain/bm1880-sophon-edge.dts   |   9 -
 arch/arm64/boot/dts/bitmain/bm1880.dtsi       |  27 +
 drivers/clk/Kconfig                           |   6 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/clk-bm1880.c                      | 947 ++++++++++++++++++
 include/dt-bindings/clock/bm1880-clock.h      |  82 ++
 8 files changed, 1112 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt
 create mode 100644 drivers/clk/clk-bm1880.c
 create mode 100644 include/dt-bindings/clock/bm1880-clock.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
