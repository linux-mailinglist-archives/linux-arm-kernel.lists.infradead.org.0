Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEBFE59BD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 13:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+HP9AphFu4ihjreSWTB76G8elxzx0oK9RhTb4g5Ho5Y=; b=XV8
	wKDRRFc/spOrgkgTF6+tGT753FaRynx9VC6LPLiaWO9ZvDf3tWESUZK6bfMxkiqRqUw6tJQofYhKE
	wOkQPv2PklkpM0gkb9htQc+JlxiVTng0eRSzSsH/HEfmYz+v0Jqdxuz/iRhKJuRDmguzCOtqOpMNJ
	p7okwULWWYm71wR3wcnXEvEP+89zyOlLBGESU7Qtti+LSX+o/GWMp2holQ/tMTlhXIS2N8RFvkj3/
	FWKDqMPLi2kyztappJ9jKZryCqbGklWz1sXhlW6poocvtbseTjlHFysCb7tWzvjC7EQJG4pC2r3Ra
	R1zXPrlQMPrPSu75LRhif8Gmhi3atXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOJqr-0000nG-BZ; Sat, 26 Oct 2019 11:03:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOJqf-0000m1-7W
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 11:03:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id c7so2262806pfo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 26 Oct 2019 04:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Te4hyUs2iDsjEynBEc6A/BW85RL88H97jpqUudpii6I=;
 b=iPDj2tUUcSqxzeAd1AA4UPcWCZpHzzSTmcnD9iA05zOFGSiCosWfBLv1fmxWovoSMw
 Nooo/XuJbVLk8w6WwvZ+jWeTiIOg05F6cKI/E9CnrNgLLz9uwIxUqCntUImQc4FM8PoW
 VtML6ovmFJaV+l9XTRE+kZzmDBPce+peIbQ6b8wp86y1wSm7Bx7gT3aBHDwcrVLoqq7t
 KnpOINJC14zjypzmA+g+6ApnJLpLnpd7JY6+/46p6YoE89XWvkON5Ne5u6fsEUohM12r
 JcJ6P1AQnez0NSaWXAxNTzSvwyaX/eMzNWcHqN+n4k/tbuQDfqXkyE+Ll92JNUjWuy/Y
 qq8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Te4hyUs2iDsjEynBEc6A/BW85RL88H97jpqUudpii6I=;
 b=YLGOzQ+CxS9otAVDjfNMcprwEDJSeq+bH0x7//4371bjwm6qwQFqA5+2W2L4ocSKMF
 H3s0Bn8OAwlauGR90we7xGR5nIiwV1pRhds0/TWPJycjVQepwPABOd8E7SLVMRMMjsNC
 GSudUKxxzRtiqE4xlYLMOOdfuLvM2cugX+qzljW4jBKLEKDADnUC40gmX1v1Jy+ZoAC7
 oEyZtXaFrIlKDCDikj4hmSjkTDeVZdaVyQFQe3E3iIlybj/He8FqaCA0c6UhoJbMDHGY
 XINTZcH7VGFGTh6vdDz2dY9RpZsrWa16doyHyN1VOaxJ7zvPuVNdWQLQxeukoWRiWjE0
 9W9w==
X-Gm-Message-State: APjAAAXrwlBcA6smlAAleSknxfZbyiD5cHdJnB24DHdg94fNVXPBYKnG
 KClCMn6Ggzxb23s+19bZXg4e
X-Google-Smtp-Source: APXvYqwi9UuyH6qOR0ST53cx0b0o8jH7bWLugr7dpfuSwN3/kjsaS2qDW6cv9pykg240BdvrugOaAA==
X-Received: by 2002:a17:90a:9b85:: with SMTP id
 g5mr10179772pjp.95.1572087785228; 
 Sat, 26 Oct 2019 04:03:05 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6214:69c4:49ad:ba3c:6f9:2d8a])
 by smtp.gmail.com with ESMTPSA id x129sm5543379pfx.14.2019.10.26.04.02.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 04:03:03 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v6 0/7] Add Bitmain BM1880 clock driver
Date: Sat, 26 Oct 2019 16:32:46 +0530
Message-Id: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_040309_302170_858B5449 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Changes in v6:

* Dropped 'clk: Warn if clk_init_data is not zero initialized' patch
* Added fixes tag to the patch adding 'clk_hw_unregister_composite'
  definition
* Reworked the use of CLK_IS_CTITICAL flag from clk driver
* Removed the use of CLK_DIVIDER_HIWORD_MASK flag from driver
* Some misc cleanups to the driver
* Added Rob's reviewed tag for the binding

Changes in v5:

* Incorporated review comments from Rob on dt binding

Changes in v4:

* Fixed devicetree binding issue
* Added ARCH_BITMAIN as the default for the clk driver

Changes in v3:

* Switched to clk_hw_{register/unregister} APIs
* Returned clk_hw from the in-driver registration helpers

Changes in v2:

* Converted the dt binding to YAML
* Incorporated review comments from Stephen (majority of change is switching
  to new way of specifying clk parents)

Manivannan Sadhasivam (7):
  clk: Zero init clk_init_data in helpers
  clk: Add clk_hw_unregister_composite helper function definition
  dt-bindings: clock: Add devicetree binding for BM1880 SoC
  arm64: dts: bitmain: Add clock controller support for BM1880 SoC
  arm64: dts: bitmain: Source common clock for UART controllers
  clk: Add common clock driver for BM1880 SoC
  MAINTAINERS: Add entry for BM1880 SoC clock driver

 .../bindings/clock/bitmain,bm1880-clk.yaml    |  76 ++
 MAINTAINERS                                   |   2 +
 .../boot/dts/bitmain/bm1880-sophon-edge.dts   |   9 -
 arch/arm64/boot/dts/bitmain/bm1880.dtsi       |  28 +
 drivers/clk/Kconfig                           |   7 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/clk-bm1880.c                      | 970 ++++++++++++++++++
 drivers/clk/clk-composite.c                   |  13 +-
 drivers/clk/clk-divider.c                     |   2 +-
 drivers/clk/clk-fixed-rate.c                  |   2 +-
 drivers/clk/clk-gate.c                        |   2 +-
 drivers/clk/clk-mux.c                         |   2 +-
 include/dt-bindings/clock/bm1880-clock.h      |  82 ++
 13 files changed, 1182 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 create mode 100644 drivers/clk/clk-bm1880.c
 create mode 100644 include/dt-bindings/clock/bm1880-clock.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
