Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9656FE2C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 17:29:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tf8IW1Wl4iwZds/cjtEnUJUwyWKrYVybtE43fQFJjc0=; b=rWt
	KAMzmzwAh1s7EDTbe1zB8LwPkQFnA4iY3MX7jCG2uklPziDkX4vlYsnoj942uxiyGubwyYo0G9whg
	zlhTvBY2soAWbjFknP7dxBjhkNcLMHIkeqqelp1q2M5S4aMlLklGNFkxNRfwN8pgtb98W7J2IoECp
	DVnjl98p5eNR8ugNWOGM64pFtZ0aFoeOd/0zFDM2M14twhVUIMIRmi259+ioBWqmInxzLwjgDdV9w
	RBIm3MMHDx9fQ7p/V7OIYV0BtJSQju5GCWH/hrHmApkp9pJb3sIDjvmesn/pGoUA5NZVTZmyPphwk
	/+v0jzXKeS51Waj6uTF+ariLZ2ZAmUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVeTK-0006M1-JS; Fri, 15 Nov 2019 16:29:22 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVeTC-0006L2-HH
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 16:29:16 +0000
Received: by mail-pl1-x641.google.com with SMTP id az9so4989304plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 08:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=3XT/nLG3xpNr361wlgEfm3508OHRkJv7ggspM9qj6fM=;
 b=tj5frAAfuA+MTShJ5+0l80OMXjtbw082FDfq/rA8bY1A3dWturu5e1zJmLDWbnvrXJ
 iGSNJqubAcqELVVZo2SfEw2GnW4MVCEZP5t8bjMdRr3tEgEfyyybafB+MSiK+aRVINq7
 cgR60rt2GtCGEt/ffaVAEExBI5o0ce/+pVQ0q2dd6q6G/gWkBt9cfQHLlsHMC6Oqkq1F
 i5r7gP0+yfqLVsI4ssLVVB/9JN4HQ/Kn93r2pNfCeftl4gWIOIxkyo6y/YU04dpu6j7l
 hICTbb4ORXJF2tZs879Y5IjGD62IZkpDfYhHyTJ1822+CR4O+6xpPmRMpisnAEuK/Mmw
 GXcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3XT/nLG3xpNr361wlgEfm3508OHRkJv7ggspM9qj6fM=;
 b=Qx/E6JnQEgqPLACnAEJk3v559xY7tW6wYXZvRo+oPqlyTmflpAGQkzK8MlSEJBagZo
 pejl0u7gz62O6pafvFnn+wyTH1A+k/6v3kY6C2ZtAu2QMJGkT39OUmmpzswRSZWd34C3
 8y15x8tWQpkwMZB/INkWr5aeuKN7cR9msYWGmzjlGoBmvSD+bxlK353hNQj+s1JOggbl
 REOKtKUqkReynwO6aKgap2TzzHT7Mlf2RydNoxpXYt0GgKiK8aVppzSoOn7RqwDx0Qhe
 0OQF8tRPKLHuXbRyq69YPJdUlMfRpdEcv14SOcWM2HgoxPdVQU1dOhIlGm6QL0MjOj4l
 JisA==
X-Gm-Message-State: APjAAAV1gGEuAXEBtlpeuvs5qoOTQjY4ybkA9XQC7MHlB4JiIs7/7r7i
 y1e2WI523meTdMx0T79JlTyy
X-Google-Smtp-Source: APXvYqwimP7JI1pnz9yCWsM+bKNEZAPTI0UZ1+a3yXspAKR7FXS9hRU58T4IQjJ/o7Dc92EJdHGhbA==
X-Received: by 2002:a17:902:744b:: with SMTP id
 e11mr15625825plt.208.1573835351821; 
 Fri, 15 Nov 2019 08:29:11 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:6183:6d55:8418:2bbc:e6d8:2b4])
 by smtp.gmail.com with ESMTPSA id y24sm12295288pfr.116.2019.11.15.08.29.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 08:29:11 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v7 0/7] Add Bitmain BM1880 clock driver
Date: Fri, 15 Nov 2019 21:58:54 +0530
Message-Id: <20191115162901.17456-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_082914_700673_9F72234E 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes in v7:

* Fixed the do_div() issue detected by kbuild test bot

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
 drivers/clk/clk-bm1880.c                      | 969 ++++++++++++++++++
 drivers/clk/clk-composite.c                   |  13 +-
 drivers/clk/clk-divider.c                     |   2 +-
 drivers/clk/clk-fixed-rate.c                  |   2 +-
 drivers/clk/clk-gate.c                        |   2 +-
 drivers/clk/clk-mux.c                         |   2 +-
 include/dt-bindings/clock/bm1880-clock.h      |  82 ++
 13 files changed, 1181 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 create mode 100644 drivers/clk/clk-bm1880.c
 create mode 100644 include/dt-bindings/clock/bm1880-clock.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
