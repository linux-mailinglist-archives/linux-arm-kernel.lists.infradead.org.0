Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D063DB3DF3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 17:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DJOpySYvAMPIh4a9vsnpW6vbGvrPHdRrf6p/6+hjXq0=; b=cAt
	Hv6wHEZ0s7apdSsJqsJFfx2VI005sNUssZrcxhtaEcdNko2iiVqD2ANM6HqD2aZoohqzmV0cZxykS
	0lsg30ubiYMCNn9/1dylK2+i3+V/5Y5kpULk0iYH6MLPMEpQP0hHFBauXDs2czB8I8oSli4CjB984
	RogkBhg0l0DISv10OURsNmG+zOcsPiRdOVoKKweEngLoXu0s+0DCMiYtc3iL6id8hqSVOZlMpUfeV
	eASf2hX7sEcsNYdGXOdXx4ZYGazSE666fZ3G+jxP4+L4Bnygj1EED0CJBogjj2ozu9wGgx3EddeGq
	TZTxpHW32Tus2GNR6v5WeRDkN8KEGnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tD4-0006cj-Is; Mon, 16 Sep 2019 15:46:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tCk-0006bx-Dm
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 15:46:19 +0000
Received: by mail-pl1-x641.google.com with SMTP id w10so65054plq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 08:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=A4sU7UOqqLDDD2RT3o3Y/vMwQW6JnCqfyCA4YeqCaoI=;
 b=IKvxlx+nu16eSsm9sL3A0k2aBI/C2r1rf9Yqhm/YfngGL8GNi2G8ltF+JPoKuYITmp
 vi8iMMiBXxItKSE3SjVowtWhTsQPzemF1+I4gAkg+yXKiaMymxzivYM1Ydm0esiqOMKo
 16loTJNenDz//rlIfBkCLd/BMUUdQcuJ4R8sCFuZ5y/mdNH1qSFoGXdgjh2CJcjoApXA
 DR88nhw1vYmi4+AICxXge47mAfJ0gYakuefwxcwhZfCF4duNZB6pJ7tNTnSHcsB7fmzL
 JoO0qvrD3wcL03dRDDNPUtmBr3J+MWWavDyPENpFGjWtjdaSDI53JzErfSAFzKlMBVEF
 aQDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=A4sU7UOqqLDDD2RT3o3Y/vMwQW6JnCqfyCA4YeqCaoI=;
 b=JPq4TA0u1GPXjGNVZXzUV7UH+2hLaKoHJTM4IAF5Wj8CaizJarayt5HYlVB+WnG38X
 9jZZRnZ2FWOKg+IDeNnPXmHbwejlqmQPoghGu2lJmtdpvuVs103ZixOfJT0HSqh1jRzR
 3WKnXhKfoBQ/eEJlslHP3JxtkInMgDyLO0KKKI6hhQ5cH6ZNmBzTP1iZnODhrAb1+knQ
 FImjEgfpMAz0iWnScb+sVrgmpHJjbNBQoko7fHmCwHcoFTv9cMcuJmS10SQQHLfH2J+W
 adXhfRFLRQrgLQIvZjs569k7tAnKI0ymVG/Au4NqNywW6jyq41TmxobhM5TmAS0ySLiA
 AdNQ==
X-Gm-Message-State: APjAAAWP+0Ud6BDS2c++nMRhl0eY+P1fyGeUZYkqk8E2KvAIEHQLWamU
 Xq8LFgkmRVb4z8Mh7MfK6M/J
X-Google-Smtp-Source: APXvYqxk5VLgwP3lklFM2rG/C+bvxjlT6Hptimo7FwML/QOQvdmeKrrB7LDz5ASrq59+SjzqZJfjqA==
X-Received: by 2002:a17:902:8e84:: with SMTP id
 bg4mr445925plb.43.1568648777356; 
 Mon, 16 Sep 2019 08:46:17 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 s5sm36227670pfe.52.2019.09.16.08.46.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 08:46:16 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v4 0/7] Add SD/MMC driver for Actions Semi S900 SoC
Date: Mon, 16 Sep 2019 21:15:39 +0530
Message-Id: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_084618_527741_F18F6DC8 
X-CRM114-Status: GOOD (  12.53  )
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds SD/MMC driver for Actions Semi S900 SoC from Owl
family SoCs. There are 4 SD/MMC controller present in this SoC but
only 2 are enabled currently for Bubblegum96 board to access uSD and
onboard eMMC. SDIO support for this driver is not currently implemented.

Note: Currently, driver uses 2 completion mechanisms for maintaining
the coherency between SDC and DMA interrupts and I know that it is not
efficient. Hence, I'd like to hear any suggestions for reimplementing
the logic if anyone has.

With this driver, this patchset also fixes one clk driver issue and enables
the Actions Semi platform in ARM64 defconfig.

Thanks,
Mani

Changes in v4:

* Incorporated review comments from Rob on dt binding

Changes in v3:

* Incorporated a review comment from Andreas on board dts patch
* Modified the MAINTAINERS entry for devicetree YAML binding

Changes in v2:

* Converted the devicetree bindings to YAML
* Misc changes to bubblegum devicetree as per the review from Andreas
* Dropped the read/write wrappers and renamed all functions to use owl-
  prefix as per the review from Ulf
* Renamed clk_val_best to owl_clk_val_best and added Reviewed-by tag
  from Stephen

Manivannan Sadhasivam (7):
  clk: actions: Fix factor clk struct member access
  dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO controller binding
  arm64: dts: actions: Add MMC controller support for S900
  arm64: dts: actions: Add uSD and eMMC support for Bubblegum96
  mmc: Add Actions Semi Owl SoCs SD/MMC driver
  MAINTAINERS: Add entry for Actions Semi SD/MMC driver and binding
  arm64: configs: Enable Actions Semi platform in defconfig

 .../devicetree/bindings/mmc/owl-mmc.yaml      |  59 ++
 MAINTAINERS                                   |   2 +
 .../boot/dts/actions/s900-bubblegum-96.dts    |  62 ++
 arch/arm64/boot/dts/actions/s900.dtsi         |  45 ++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/clk/actions/owl-factor.c              |   7 +-
 drivers/mmc/host/Kconfig                      |   8 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/owl-mmc.c                    | 696 ++++++++++++++++++
 9 files changed, 877 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.yaml
 create mode 100644 drivers/mmc/host/owl-mmc.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
