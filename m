Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E9E91242
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 20:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=frxsgI5mm2DwNjoEixwFMdKyuqtt9+VwjhEJuaKmSLo=; b=KB/
	DCBK5xncsDmp6L6pjtjg7rRXBnTlGBpl3fXNTKN1I7zn7X9DH7aFU7eHhuncsMaOvnH1B+a/gXV9X
	klhaFd2z8WLXor2DbWT3z/qH/wTJd7fp/hO1+mG5VUPbsPgKjH610BUNKdbn9x9ZtuXCHduChsRqk
	a0DE8A/GmDZMMAD8rajV8PKP876cCM/BY1dS+ZrtFkEyridpWcAPqfdN+0GXC9l8SuEKyNro2OGCd
	tCC26gqvfa4hpKuZhPSEYXIVPzed+z0YWcnLqPQa0fSjh8kJBdDXr21tsE/SzFrSIeiChCNLehA/+
	zGGdp4PHWTvpePyqvEQeayw2+9cA+SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz3ZG-0001Tw-CM; Sat, 17 Aug 2019 18:36:46 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz3Z2-0001TU-NU
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 18:36:34 +0000
Received: by mail-pg1-x543.google.com with SMTP id u17so4579668pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 17 Aug 2019 11:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=TYFN6M5tjjpbtaEM4uAxus9mFpMdmZ5s9oBsAJJfRNk=;
 b=W1q7I+UtSxvLCsOfP1ANnjofm861kfljn0ZDN8h266Yx8otiFUcWD3qKj3IUaUVGc4
 zO5HB8zAcP7rlWfCz4pxO0uRHaPBkXIJW0sGJTmrgseCNFp52AJSqAcWUIxBD0Ri4r/f
 Rmed6NdJNLP2rHqcda1rc/gPGJk9Hbh4wGHpmZfi3wjCzMKlndNOPUNOBts+srAwMXOZ
 lBBEzCvp06/JXFAs4HUwX4pC9srfWfVxruXFjpjw9dclWIyZ5hmh8R4fjerOLG9Xbh8C
 usnlSp0idwS/UBut8KxJHrSI9Ab8S6egQTVFGtpvpNkKHP5hPb6iNV/+ssCfQHDjKZSh
 OPuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TYFN6M5tjjpbtaEM4uAxus9mFpMdmZ5s9oBsAJJfRNk=;
 b=FNcb73f0cYVm0vFxo3lxSuxKWkw2/44WYsD8SZ9sRU+bg26p+WuCYFv4UIA6/gPak9
 ogaU4+8kKZ2QgLtzAm4IXIPWdAtJ1MNV6GPmnzr3lPjD0VJ+S4llTWBINW/4A4+oOgyb
 PnYr9zQfKuqA5eoPEpdMNIn4BowcC7CrNje/1pdii67DTcedf4989ewPOPg06tqBAdu1
 A4ULoEvi/wNZxH74r09FwyBHRH1U4j1ChcVHbdOSeedjchBnNxhmy1UNzpxvPOckRkFU
 dl2AGBN4V34M8KEx8MdawO9WvXF3A3IPEZ8XzmivrEY5Lu1JpV/UDXOWssE+3mlJaNUI
 A2/Q==
X-Gm-Message-State: APjAAAWMBPzJqr/94VtQj+jcj60+5f1F5G4s4rSvq/z4z/nD+qSFAs1a
 /aQto85+g28JkremDcf2PDjZ
X-Google-Smtp-Source: APXvYqzDyVwW24KFvVTD1hBgM9aPkOgx2uIUZcYoIGKzwdSiKZHulC0zXcLlrRvOoNGE+nork01H9g==
X-Received: by 2002:a17:90a:d149:: with SMTP id
 t9mr12202255pjw.58.1566066991360; 
 Sat, 17 Aug 2019 11:36:31 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:909:4559:9185:a772:a21d:70ac])
 by smtp.gmail.com with ESMTPSA id 33sm8588640pgy.22.2019.08.17.11.36.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 11:36:30 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v2 0/7] Add Bitmain BM1880 clock driver
Date: Sun, 18 Aug 2019 00:06:07 +0530
Message-Id: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_113632_776854_DA1FF6C7 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Changes in v2:

* Converted the dt binding to YAML
* Incorporated review comments from Stephen (majority of change is switching
  to new way of specifying clk parents)

Manivannan Sadhasivam (7):
  dt-bindings: clock: Add devicetree binding for BM1880 SoC
  arm64: dts: bitmain: Add clock controller support for BM1880 SoC
  arm64: dts: bitmain: Source common clock for UART controllers
  clk: Add common clock driver for BM1880 SoC
  MAINTAINERS: Add entry for BM1880 SoC clock driver
  clk: Warn if clk_init_data is not zero initialized
  clk: Zero init clk_init_data in helpers

 .../bindings/clock/bitmain,bm1880-clk.yaml    |  83 ++
 MAINTAINERS                                   |   2 +
 .../boot/dts/bitmain/bm1880-sophon-edge.dts   |   9 -
 arch/arm64/boot/dts/bitmain/bm1880.dtsi       |  28 +
 drivers/clk/Kconfig                           |   6 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/clk-bm1880.c                      | 970 ++++++++++++++++++
 drivers/clk/clk-composite.c                   |   2 +-
 drivers/clk/clk-divider.c                     |   2 +-
 drivers/clk/clk-fixed-rate.c                  |   2 +-
 drivers/clk/clk-gate.c                        |   2 +-
 drivers/clk/clk-mux.c                         |   2 +-
 drivers/clk/clk.c                             |   8 +
 include/dt-bindings/clock/bm1880-clock.h      |  82 ++
 14 files changed, 1185 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 create mode 100644 drivers/clk/clk-bm1880.c
 create mode 100644 include/dt-bindings/clock/bm1880-clock.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
