Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12D699B30
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fiIV1zEmVOHLoZs7hdd4L6fsVHRYrGiRGSBY94FmcP8=; b=UCh
	a2FV4sCK86iVSeaxTM0IUzO1oMLc+dKuB7VUOU5MTtja6+Wh+FhwiJ6NkWF+sdbuB6xoObmdi8DH4
	WzZpJsyNMfZtB4VgQjON29AUB9RQiN6qnE26/Jolq5uopA7LdFClRlqDKmc7ZbiiKOixGnBts+ArV
	hQQigLT3WXd1THHEqCiIPuoi1nuPcqfAVPJj232bbM5BadPEaEqtql3lCY20MsUgYxLzS2tJcD8su
	rwOUvz2cxjOdxy0dQKWC8+XNla6KhRJOfBFqSO6Fwqim5CuZYv4Z9QqFaGKSq909c70Qcy7k/QAeY
	YF3jWV/VVWWfbes/KC7YJ0w2ROZ9+kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0qpU-0004KN-Ht; Thu, 22 Aug 2019 17:24:56 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0qpH-0004JZ-JW
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:24:44 +0000
Received: by mail-pg1-x543.google.com with SMTP id x15so4042834pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 10:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=MF3rEeHYTUUv66jVOAxgim3ss6TORCYiUQPquvwjq/w=;
 b=T9ASLZ5H74R8EU3DNbNPmIhAyCpFblFUW358Ua0N6C7yqOpNGuiNzAsJYkCUeO7nRP
 rHGVPRqBC44PjSsFCVQnOQXOehBDh4tH5gwlPTBab4mK0uz3FBobBeUH/JAkt5rf9Gdk
 kcgjpC1QmqDSpll1BIIr+bXpTVQxLwJ+2lOu+jI8kdf4AULzH7GFRIUbQHB9mJQ+VVDP
 Dl3lwHnVuvseHJlOePUKuh95yuihDeaqoS9QOKCHvXOAm5E1HIxaOH15jKFCj4neDd9c
 lj64achj6Q3F+xMUqPrkExrblamN3MX4s92m9ky46WzHfGtbfdA9EDVi6kZ1fQsUgbQr
 fEFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MF3rEeHYTUUv66jVOAxgim3ss6TORCYiUQPquvwjq/w=;
 b=JpkE5ItO+b3ZWJZ4fsYvr9bLNwDfMW5XLyRhDfN3wX3Nkvjb8+Mpfj69BfqExlQlO3
 3RORcDPH6e6GVKcpOg0uVd+GFlq4567ccqdfmCBWBRVKzJy4ZbV71xNMG6q8LIzoZzGd
 IUqDvoORKBcbgje+a1hmlQUYShGJ/KGcRwc2uGwH/RA6jq/cLl0TWSS2cyzHHdPyg7sN
 Jkcg/Yv34aFhnf2U/V84IBvqosxTc/L7spFmfRjnwRfTilMbWbBoQ6ZCazI1GQQCgq6O
 CpEcr4y1/EUoocO4aGT1kmTOQsWkL5giizfq2Ala0C3omzTLn1diIJOXV3Mt9ijzIFUX
 vtnw==
X-Gm-Message-State: APjAAAWne4jkHUlxUSasOTswaX+ySVpyreNlHJJZfgndnnuVmrzpAOSd
 q6pzamDUtBQFrCWJYc8gN/Hs
X-Google-Smtp-Source: APXvYqx7kYtYjdmxnhOrl1gFD7IsOVakbGUR1RKgLNPTbutbHQR9wpV3+h7cJenEiWUeTrvSKOZxWA==
X-Received: by 2002:a65:6406:: with SMTP id a6mr256662pgv.393.1566494681681;
 Thu, 22 Aug 2019 10:24:41 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:71cc:5738:24ad:193e:4b59:8a76])
 by smtp.gmail.com with ESMTPSA id r12sm31705798pgb.73.2019.08.22.10.24.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 10:24:40 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v4 0/8] Add Bitmain BM1880 clock driver
Date: Thu, 22 Aug 2019 22:54:18 +0530
Message-Id: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_102443_647853_19CC1119 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Manivannan Sadhasivam (8):
  clk: Zero init clk_init_data in helpers
  clk: Warn if clk_init_data is not zero initialized
  clk: Add clk_hw_unregister_composite helper function definition
  dt-bindings: clock: Add devicetree binding for BM1880 SoC
  arm64: dts: bitmain: Add clock controller support for BM1880 SoC
  arm64: dts: bitmain: Source common clock for UART controllers
  clk: Add common clock driver for BM1880 SoC
  MAINTAINERS: Add entry for BM1880 SoC clock driver

 .../bindings/clock/bitmain,bm1880-clk.yaml    |  74 ++
 MAINTAINERS                                   |   2 +
 .../boot/dts/bitmain/bm1880-sophon-edge.dts   |   9 -
 arch/arm64/boot/dts/bitmain/bm1880.dtsi       |  28 +
 drivers/clk/Kconfig                           |   7 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/clk-bm1880.c                      | 966 ++++++++++++++++++
 drivers/clk/clk-composite.c                   |  13 +-
 drivers/clk/clk-divider.c                     |   2 +-
 drivers/clk/clk-fixed-rate.c                  |   2 +-
 drivers/clk/clk-gate.c                        |   2 +-
 drivers/clk/clk-mux.c                         |   2 +-
 drivers/clk/clk.c                             |   8 +
 include/dt-bindings/clock/bm1880-clock.h      |  82 ++
 14 files changed, 1184 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 create mode 100644 drivers/clk/clk-bm1880.c
 create mode 100644 include/dt-bindings/clock/bm1880-clock.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
