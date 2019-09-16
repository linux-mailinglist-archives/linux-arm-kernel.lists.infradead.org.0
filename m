Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FDDB3E99
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 18:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Qv4F7e4T+fiPm7TtcJhHTAiY0tzaoI7trSZ2fB6PKsk=; b=p1q
	qQHyobpw+KsS8F+Zxc49xTqx7n/w5ZDCdsB6c90xM26ekquRXEi9KJzOkdJmMGzMht5UkQ/3HwDMx
	EukqvzVXP/MxuRBLYAk8WFOGJ5R5q89RZd+IHxoQtkvhrUynK7DNOqMsoAdiEQVWotZv/mTH/FtQ6
	McuThw1S+9cT0yapnlDuVDdwZdI6W5TRtEQKKb3Y5aRcUtpsCOaxmUKm5SJiSUKWDHIHL1OCI3JR1
	JSM9HbrZStXVYdRcWXOtyvQPeP0KCwH4wGgtpSwXht7WJb+eFJ2f7OAzaMDZ4W+JOD7TolNI3bfaU
	zEL6MSPlzXIR7PuCn+AEoSeo+jrPAxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9teq-0002jO-5t; Mon, 16 Sep 2019 16:15:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9teY-0002Ht-4w
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 16:15:03 +0000
Received: by mail-pf1-x442.google.com with SMTP id y5so190259pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 09:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=YqI202SP9Uvm6lQD97H4g3P2DuY2a7DQ+cgjEVc1iKE=;
 b=TCFJ+T5VQp/PBhYSSCAmY4rWCPO61OkcTmlcfwPeLEQxWoNSKi4+kdpTZ3KgLao1bP
 78YuAjmnc+fuu15yyj9WuXavFLo8vmEeWx9qRJzt2m4tH4E88ZFkNAIUws8SNjvV334h
 ZuPxKFcj8jmDVbVXdIPSxRMx/rCG8AD6PQ8BL784ZjC1LzJKMv4fCABTrrpjSBnufWpR
 ab8VVXa7At+aYgWye6PRjYBlah4HDNfLX/FlQRlnybwD/nSvKQB+0yTYJCVPvOACTUnJ
 Sjjwkj38yDCfOyKJfB+vFJuVLkxtLsVxSuLrzVyu4hFFuOkAkQM87YzArntp+bofj1Ef
 XhAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YqI202SP9Uvm6lQD97H4g3P2DuY2a7DQ+cgjEVc1iKE=;
 b=uOHVVOO7I3svmp64yTYYn6G1q0dDYzFLWF9yVCdDtU6F6vi/+CFrJ4vStQn4LV/vpj
 W2MLc4dgZynIl2GDsAWBxa+dnP59Vl9QHEzBk5tBfxvWPDV7V4BRKBgCplCqQkakdz6T
 EyRWbGN/E1wYTBOkCifpgew86NyJeFc7S5pQlWNHwZC9EgZm6A84o6kzPST7HgxC/1W2
 FlrGx0FnwEjh5PDpBciADeuaPfs5SSxINCF4cogEMHFhbBhbr7DDaxZZn+zHOA96feyT
 SDr+hxd1c95t7etK494/ik13w5WjNYtku5rPNGsODEJ/whIjUhFvI6mIWydpkoslB11R
 YDgQ==
X-Gm-Message-State: APjAAAWBgMqv9IpT//Cgq22u+tgEvfbIkyF0Z4xjop0vSrtG9xtskDEQ
 GzmQ0v1G5PqqWkROYpFGBVif
X-Google-Smtp-Source: APXvYqz3wknvxuDQCjKwVjta//PKTOY6hHZ8/aiT+AGaASzY6TDIDhkjaGXnLFFiW8AbLhsQ+RIWlw==
X-Received: by 2002:a63:221f:: with SMTP id i31mr13278538pgi.251.1568650501307; 
 Mon, 16 Sep 2019 09:15:01 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 h66sm614134pjb.0.2019.09.16.09.14.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 09:15:00 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v5 0/8] Add Bitmain BM1880 clock driver
Date: Mon, 16 Sep 2019 21:44:39 +0530
Message-Id: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_091502_208501_0B19A1A1 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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


Manivannan Sadhasivam (8):
  clk: Zero init clk_init_data in helpers
  clk: Warn if clk_init_data is not zero initialized
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
 drivers/clk/clk-bm1880.c                      | 966 ++++++++++++++++++
 drivers/clk/clk-composite.c                   |  13 +-
 drivers/clk/clk-divider.c                     |   2 +-
 drivers/clk/clk-fixed-rate.c                  |   2 +-
 drivers/clk/clk-gate.c                        |   2 +-
 drivers/clk/clk-mux.c                         |   2 +-
 drivers/clk/clk.c                             |   8 +
 include/dt-bindings/clock/bm1880-clock.h      |  82 ++
 14 files changed, 1186 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 create mode 100644 drivers/clk/clk-bm1880.c
 create mode 100644 include/dt-bindings/clock/bm1880-clock.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
