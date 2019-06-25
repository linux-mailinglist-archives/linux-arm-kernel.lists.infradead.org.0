Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 026BC554F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nMH42KSOO23TgmATSGFhFgjP9gOgnWXdZXO6L0+lUqk=; b=tnro0Aze5IGSGM
	xCQd4IcjM/Mwe30agytJrY7cqq6PaRjH2VVcg96iTUalHtOUf2UeJuRL5pTYM5YGXtR/0FDmr31Tp
	enpR7sKalGD8Tr1pNOoUZbU7nex6MQNgb9Z4Yf+8fYVjbGNDeiv17N2p8DVPh2xWrDhhRewn+A984
	rffFsmYvS1xslOwVx5kS4TQYBRajVSfR4onZzAs6/aYLHdvYk41+VXnxq9/XB4zUYsQto0mwFHuyu
	yFhjFHwGXxYEoV69qDiOrZMahplrhRJhMT1DbHh0Iwh3RwRC5e1YmhL1ztFGpP9guS8NcakLDi8Qy
	b59KfdYENvZfXe9iyYTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfocB-0002FB-Jb; Tue, 25 Jun 2019 16:48:16 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobb-0002Cr-Uu
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:47:44 +0000
Received: by mail-wm1-x344.google.com with SMTP id v19so3657880wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ki+VzSGTFsj/B1hWzCc43szZIOhLClWHwnbSYjuQbx0=;
 b=OGyazNNBNrB+Oxr5H3SCK2W5gmDg7OCqH0BGr3evGykb7Z1cB00bHqRvu1QPmqiHao
 EZ2G2i57FL06K52n+NKyDHrDhGoW1tcVm34FHZGbPVuCuYnYL0WfqWdSNSdkISo/nNv3
 TQN8GoipgP5I8Fh9IJCj3B5AqqB6Z7plJ5SiJX+j7KcFVhu0PbmDVGZoA+8T91wbWlUQ
 mpohVIk5Ido1gMrrdufNxXBcUACcipO58yaC8eGizUbHwor6ucl/O66rmRXSm6sW8KvC
 hQU/EvTpNhqIIkHUij37+I7D2IMsPywgcTjf+oMf+tzJXn/3PvHXG0NJ+tIk1lGQ//sK
 6Hhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ki+VzSGTFsj/B1hWzCc43szZIOhLClWHwnbSYjuQbx0=;
 b=bvVcXaN/9GnyckILHc4lI01kF0v21smJCR0ot7tmWVyBxluNPTSWH1NTJkR/XY03qo
 5GrDtCLHDH3LZ8xA6IhHvVjkyZtZv3kbwqO0b4hMERi4ZMS1R8/JD02lGxctBlYkZ7GA
 PiI4esN5NaQGqDG62I0j6gDxWzuhTqCXpGTT5G/lyA/rORXx0r5o1IR7HLTtNFpTXokg
 Gy54UZtObBOMIJsOLHFLyBKpSbCjNOGrtIZhxRiM8bB8k2AaTISOOMdXurr8BcR/IGKC
 dShtC0hfm2RAJgiUQU/531iAn4V/lHi0IB5g29s7BktV/uy9rog/zr6RxK5A4qMt1SqU
 uXbQ==
X-Gm-Message-State: APjAAAV6Vu2CfAmH1MzvqMFci1sL6V8FCmuei3qftRRMivHwWFCqwXXf
 y6KrmNAJGGcRzgN7wvNNkgqmZA==
X-Google-Smtp-Source: APXvYqwtk11JIcLLQM6ZDLdonAWIlN0qcsSARfkrWxoExBaOvGl9oUIlARyhIXJM0RSZZegPcS6l3w==
X-Received: by 2002:a1c:39d6:: with SMTP id g205mr19367540wma.85.1561481257696; 
 Tue, 25 Jun 2019 09:47:37 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:37 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 00/14] Support CPU frequency scaling on QCS404
Date: Tue, 25 Jun 2019 18:47:19 +0200
Message-Id: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094740_288284_D118B4D7 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following patchset enables CPU frequency scaling support on the
QCS404 (with dynamic voltage scaling).

Patch 8 "clk: qcom: hfpll: CLK_IGNORE_UNUSED" is a bit controversial;
in this platform, this PLL provides the clock signal to a CPU
core. But in others it might not.

We opted for the minimal ammount of changes without affecting the
default functionality: simply bypassing the COMMON_CLK_DISABLE_UNUSED
framework and letting the firwmare chose whether to enable or disable
the clock at boot. However maybe a DT property and marking the clock
as critical would be more appropriate for this PLL. we'd appreciate the
maintainer's input on this topic.

v2:
   - dts: ms8916: apcs mux/divider: new bindings
     (the driver can still support the old bindings)
     
   - qcs404.dtsi
     fix apcs-hfpll definition
     fix cpu_opp_table definition
     
   - GPLL0_AO_OUT operating frequency
     define new alpha_pll_fixed_ops to limit the operating frequency

v3:
  - qcom-apcs-ipc-mailbox
    replace goto to ease readability
    
  - apcs-msm8916.c
    rework patch to use of_clk_parent_fill

  - hfpll.c
    add relevant comments to the code

  - qcs404.dtsi
    add voltage scaling support

Jorge Ramirez-Ortiz (14):
  clk: qcom: gcc: limit GPLL0_AO_OUT operating frequency
  mbox: qcom: add APCS child device for QCS404
  mbox: qcom: replace integer with valid macro
  dt-bindings: mailbox: qcom: Add clock-name optional property
  clk: qcom: apcs-msm8916: get parent clock names from DT
  clk: qcom: hfpll: get parent clock names from DT
  clk: qcom: hfpll: register as clock provider
  clk: qcom: hfpll: CLK_IGNORE_UNUSED
  arm64: dts: qcom: msm8916: Add the clocks for the APCS mux/divider
  arm64: dts: qcom: qcs404: Add OPP table
  arm64: dts: qcom: qcs404: Add HFPLL node
  arm64: dts: qcom: qcs404: Add the clocks for APCS mux/divider
  arm64: dts: qcom: qcs404: Add DVFS support
  arm64: defconfig: Enable HFPLL

 .../mailbox/qcom,apcs-kpss-global.txt         | 24 +++++++++--
 arch/arm64/boot/dts/qcom/msm8916.dtsi         |  3 +-
 arch/arm64/boot/dts/qcom/qcs404.dtsi          | 42 +++++++++++++++++++
 arch/arm64/configs/defconfig                  |  1 +
 drivers/clk/qcom/apcs-msm8916.c               | 23 ++++++++--
 drivers/clk/qcom/clk-alpha-pll.c              |  8 ++++
 drivers/clk/qcom/clk-alpha-pll.h              |  1 +
 drivers/clk/qcom/gcc-qcs404.c                 |  2 +-
 drivers/clk/qcom/hfpll.c                      | 25 ++++++++++-
 drivers/mailbox/qcom-apcs-ipc-mailbox.c       | 18 ++++----
 10 files changed, 130 insertions(+), 17 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
