Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FD07CE5A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gnPaWfZ87IjyqaG6CoUC8UMeNpf1XaBE+NTifCdpXAs=; b=CJgvH5+U0J9pCC
	o8S3+db5QxuQK7iAXt6Qm7Cg2ioCWLiCtB3mCSB7+l7bgUGuc8y8qY/FdDHzYndsmHLtSdKwUoKhN
	ymLQeqA0wsYtollBLAsg5DCiVgr3EGZla7giRk8TpcRb//A1az/yBnuryczPrcCx7KAGTZMmCfpcO
	pzxNszJIuWY7M4frjCuepw2NbDHsotzGC6A5Okwtyf5ZNLMzKdXpQKH82LDHFbFX9Jfs6O3vIY6mQ
	5cbTt/q5ZPSkSKWynzsCLNehP2osjsMfxKa5IK9n754ike17nydk3awhTskzhyZOTZ1Q5CWNr0coR
	1UTMPVxnFscP6Ppy787w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvEH-0002ou-JQ; Wed, 31 Jul 2019 20:29:45 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvE8-0002oA-EJ
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:29:37 +0000
Received: by mail-wm1-x332.google.com with SMTP id f17so60978652wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J6ze2YAQiFMQcX08HvMMVBLcUCeG0njel810asmfh74=;
 b=A66eZ8wtZbNn3nsqtM7suQXkzBLl5zZ2enyjLbB1erWuNMARvWzGxmTkO0XuWMebS1
 1rrgocfWUtim/FHLitbJqyMTvJ0vH53EyYZGOq5A9uOfBGnIdK+ns5iFkpdrIvzFE/QC
 vxJa3zNO0ZGn3o+A4bMXPwxWZm0R+N6tX36UuDsxL8p3SP4d/HtT6X9glTrNCzjVG8ON
 zvo5NCiPTKZckQcenmPz/xqmj0F14Oj4f9++YheC9PPG3vjIjfIgPCwNIYvSXbU4+ICV
 iqtt2KtDC2yUoZpoaQ88sMaI5wbBYlCVgSG808PZBRXr8ba0mXzMpJg2PYtvjUbU1TbT
 eyfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J6ze2YAQiFMQcX08HvMMVBLcUCeG0njel810asmfh74=;
 b=LhVSkArNdCLJT1gfoaObeHZchF1U3strug5FvIe2OXNaeu+4gp0YUs0jfbO1VtPCgb
 Yr6wPul1FuAbvH+IfZQkEvkdCJrDTNFcXyZe/8jXIqJR2uWrC2U792SG3h7f3W70cQXS
 JDgZp/AkSQd02D0jFZN4A0nURxf2FssrrUgNleUFCi0YuigVL+eM78DcjIWK8DVgKTzA
 bqBpSCXSpBATJCoPJ0Sbk5rFjy6tZhmaNTRkdQ9wzSBsy72R/wPxTA/BNtkrycE1qBe3
 2kYYgBt8GrUaZgxcso1KmyR9kVIFDyr695S4o6S5NHkpNOKSlhegOAFvMAqh0wwH07ew
 araA==
X-Gm-Message-State: APjAAAVbk415kCXZwOH6RFHyzUkWctosPRm4P4qJuWPvhgFzxe03XACz
 JtmM/gdfYhbCIhhgAmUDOV2vHg==
X-Google-Smtp-Source: APXvYqwlUrEDjH//rXtg1eVUY1CgRd0ZuDM1zafwJtzOhlHIQBzrAFHo/nx6y2h1NSrLpNDjGpkieQ==
X-Received: by 2002:a05:600c:204c:: with SMTP id
 p12mr111863989wmg.121.1564604974820; 
 Wed, 31 Jul 2019 13:29:34 -0700 (PDT)
Received: from localhost.localdomain
 (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
 by smtp.gmail.com with ESMTPSA id i18sm91905591wrp.91.2019.07.31.13.29.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 31 Jul 2019 13:29:34 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
 sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
 mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
 will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
 heiko@sntech.de, sibis@codeaurora.org, enric.balletbo@collabora.com,
 jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v4 00/13] Support CPU frequency scaling on QCS404
Date: Wed, 31 Jul 2019 22:29:16 +0200
Message-Id: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132936_507887_CC66C3F5 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
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

It is important to notice that this functionality will be superseded
by Core Power Reduction (CPR), a more accurate form of AVS found on
certain Qualcomm SoCs.

Some of the changes required to support CPR do conflict with the
configuration required for CPUFreq.

In particular, the following commit for CPR - already merged - will
need to be reverted in order to enable CPUFreq.

   Author: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
   Date:   Thu Jul 25 12:41:36 2019 +0200
       cpufreq: Add qcs404 to cpufreq-dt-platdev blacklist
    
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

v4:
 - squash OPP definition and DVFS enablement in dts
   (patches 10 and 13 in previous version)
   
 - qcom-apcs-ipc-mailbox
   replace return condition for readability
   
 - answer one question on CLK_IGNORE_UNUSED in mailing list

Jorge Ramirez-Ortiz, Niklas Cassel (13):
  clk: qcom: gcc: limit GPLL0_AO_OUT operating frequency
  mbox: qcom: add APCS child device for QCS404
  mbox: qcom: replace integer with valid macro
  dt-bindings: mailbox: qcom: Add clock-name optional property
  clk: qcom: apcs-msm8916: get parent clock names from DT
  clk: qcom: hfpll: get parent clock names from DT
  clk: qcom: hfpll: register as clock provider
  clk: qcom: hfpll: CLK_IGNORE_UNUSED
  arm64: dts: qcom: msm8916: Add the clocks for the APCS mux/divider
  arm64: dts: qcom: qcs404: Add HFPLL node
  arm64: dts: qcom: qcs404: Add the clocks for APCS mux/divider
  arm64: dts: qcom: qcs404: Add DVFS support
  arm64: defconfig: Enable HFPLL

 .../mailbox/qcom,apcs-kpss-global.txt         | 24 +++++++++--
 arch/arm64/boot/dts/qcom/msm8916.dtsi         |  3 +-
 arch/arm64/boot/dts/qcom/qcs404.dtsi          | 43 +++++++++++++++++++
 arch/arm64/configs/defconfig                  |  1 +
 drivers/clk/qcom/apcs-msm8916.c               | 23 ++++++++--
 drivers/clk/qcom/clk-alpha-pll.c              |  8 ++++
 drivers/clk/qcom/clk-alpha-pll.h              |  1 +
 drivers/clk/qcom/gcc-qcs404.c                 |  2 +-
 drivers/clk/qcom/hfpll.c                      | 25 ++++++++++-
 drivers/mailbox/qcom-apcs-ipc-mailbox.c       | 11 +++--
 10 files changed, 128 insertions(+), 13 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
