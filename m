Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1BA74BD1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 12:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ezdhkIYAv6bsr06kOEs7aLyHIQUuELUcsRa9g3mBlQM=; b=DFmrLmoyJNXaUN
	zMWjy8QhQ7uWjWTpSl4SAXt/gHZVX3ofN1O1sgiTOPsOehRDcYV5d8ZBWCvPPD7sRjBSiAPBNC/G2
	Dj72oV/YVCykPA1hvk831kPvBgKZLOSkMHxXiRwRHkP4cv6ooNUp2SIbwyvSIeOCyN2+hoPhpAYU5
	Ilq5WcoPYofL/+lkMeJVvMb5YliH/W5eYBWf5D9fG6uCk6jfucOgJcUBNgN1GDCfKc+KCaRL4UI2k
	8Ef9HXCbE5pQ77BYs0TdZLQdb+d5myyvlw1O3rBXq89a0F9j3YsZxPapsnsqkszskcb0urcq6PDEs
	PT6bzto+GF7mDz4y4PxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqbCJ-0000RJ-Qf; Thu, 25 Jul 2019 10:42:07 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqbC9-0000QR-G3
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 10:41:59 +0000
Received: by mail-lj1-x243.google.com with SMTP id m23so47443185lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 03:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZvWgj2tLfjTT6ys9Fl+A1tAK7bl+2z+EbE4rGBPrBvM=;
 b=dCQj9qKvNrgCsTaCAhdLP6um5sOud+ExpIRz6VRmcDO8V16e6auaDMKTZ2tCSiSptU
 9hBUSdQkixtvhgOIgl9IEpDmuClhbvCh4PDL0JLajsCs9NL14NYe1SXF2p8TaXcg6OIu
 yW+prw+GeE5FMOMXKxJjUuSsrwKg1U3s6jVFIBvnbvsCHAGkMhyCEIRnh0YZ+qqU73Gf
 BHdPlBnaCbiLNsoPTDb32ZD1aPrtUTyqcozAZVbmfj+A3ebZSf1f3bWZPYsm00z1adXz
 3URRMKTGWPlfwo8U2OkWuW6BTctxVU0ia1guMGp7pQ/45KEo0Au6PxYhKbiewwRANjBp
 fSuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZvWgj2tLfjTT6ys9Fl+A1tAK7bl+2z+EbE4rGBPrBvM=;
 b=KaEZkEeRv4uC42GoSUfhETDPZcCeLOM6I0yI/wZ9BUVtp4ON6Wh+2ba8PwsHV/0hxS
 89VNsh61w1KFDdbD4x+CLXAapMKGVxcotN5NqizqGgVSrYkYlR9ONGTyqP8lEnE0CLla
 HC92lfN4FbKwGTX6FeCTA41LiVCm5yXmfkloAwTDbtc6jxXq77U074PWaVnrLDVDBrmd
 4m+AvWWsdayBZJU87d9gbVC4wXVzlXpiaeR1fd7RqAZyCjn7Q9sDR1wUks+aQSANsVxZ
 NnTIUZAhNR5U14M1juIwmVtDoFGz0FcNa0yvhlRMAw+cMVTdEHqpbEoHQAvKAM2zH5l1
 vq2A==
X-Gm-Message-State: APjAAAUPRO2ZI/sN6+UlkciJSmmk6ZDclOOZrRYfWAuNqQ6yrmMg+1Bi
 okCyPJlwLlqY9SohbH/n316N6A==
X-Google-Smtp-Source: APXvYqwWCfA7jP+bmTsKQhvE+1uuPlEWbOWBEvxvWHwvWdM81cldd8ufDXpg1y89e7Zdre+X6cVTfg==
X-Received: by 2002:a2e:8741:: with SMTP id q1mr45247025ljj.144.1564051314505; 
 Thu, 25 Jul 2019 03:41:54 -0700 (PDT)
Received: from localhost.localdomain (ua-83-226-44-230.bbcust.telenor.se.
 [83.226.44.230])
 by smtp.gmail.com with ESMTPSA id b6sm8268306lfa.54.2019.07.25.03.41.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 03:41:54 -0700 (PDT)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 00/14] Add support for QCOM Core Power Reduction
Date: Thu, 25 Jul 2019 12:41:28 +0200
Message-Id: <20190725104144.22924-1-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_034157_628403_E8E3E36C 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, sboyd@kernel.org,
 vireshk@kernel.org, linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 Niklas Cassel <niklas.cassel@linaro.org>, jorge.ramirez-ortiz@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for Core Power Reduction (CPR), a form of
Adaptive Voltage Scaling (AVS), found on certain Qualcomm SoCs.

This series is based on top of the qcs404 cpufreq patch series that
hasn't landed yet:
https://patchwork.kernel.org/project/linux-arm-msm/list/?series=137809

CPR is a technology that reduces core power on a CPU or on other device.
It reads voltage settings from efuses (that have been written in
production), it uses these voltage settings as initial values, for each
OPP.

After moving to a certain OPP, CPR monitors dynamic factors such as
temperature, etc. and adjusts the voltage for that frequency accordingly
to save power and meet silicon characteristic requirements.

This driver has been developed together with Jorge Ramirez-Ortiz, and
is based on an RFC by Stephen Boyd[1], which in turn is based on work
by others on codeaurora.org[2].

[1] https://lkml.org/lkml/2015/9/18/833
[2] https://www.codeaurora.org/cgit/quic/la/kernel/msm-3.10/tree/drivers/regulator/cpr-regulator.c?h=msm-3.10

Changes since V1:
Added a new patch implementing dev_pm_opp_find_level_exact() in order to
make the CPR OPP table in device tree cleaner.
For more detailed changes, check the "Changes since V1" as comments in
the individual patches, where applicable.

Jorge Ramirez-Ortiz (1):
  cpufreq: Add qcs404 to cpufreq-dt-platdev blacklist

Niklas Cassel (11):
  opp: Add dev_pm_opp_find_level_exact()
  dt-bindings: cpufreq: qcom-nvmem: Make speedbin related properties
    optional
  cpufreq: qcom: Refactor the driver to make it easier to extend
  dt-bindings: cpufreq: qcom-nvmem: Support pstates provided by a power
    domain
  cpufreq: qcom: Add support for qcs404 on nvmem driver
  dt-bindings: opp: Add qcom-opp bindings with properties needed for CPR
  dt-bindings: power: avs: Add support for CPR (Core Power Reduction)
  power: avs: Add support for CPR (Core Power Reduction)
  arm64: dts: qcom: qcs404: Add CPR and populate OPP table
  arm64: defconfig: enable CONFIG_QCOM_CPR
  arm64: defconfig: enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM

Sricharan R (2):
  dt-bindings: cpufreq: Re-organise kryo cpufreq to use it for other
    nvmem based qcom socs
  cpufreq: qcom: Re-organise kryo cpufreq to use it for other nvmem
    based qcom socs

 ...ryo-cpufreq.txt => qcom-nvmem-cpufreq.txt} |  125 +-
 .../devicetree/bindings/opp/qcom-opp.txt      |   19 +
 .../bindings/power/avs/qcom,cpr.txt           |  193 ++
 MAINTAINERS                                   |   13 +-
 arch/arm64/boot/dts/qcom/qcs404.dtsi          |  142 +-
 arch/arm64/configs/defconfig                  |    2 +
 drivers/cpufreq/Kconfig.arm                   |    4 +-
 drivers/cpufreq/Makefile                      |    2 +-
 drivers/cpufreq/cpufreq-dt-platdev.c          |    1 +
 drivers/cpufreq/qcom-cpufreq-kryo.c           |  249 ---
 drivers/cpufreq/qcom-cpufreq-nvmem.c          |  352 +++
 drivers/opp/core.c                            |   48 +
 drivers/power/avs/Kconfig                     |   15 +
 drivers/power/avs/Makefile                    |    1 +
 drivers/power/avs/qcom-cpr.c                  | 1885 +++++++++++++++++
 include/linux/pm_opp.h                        |    8 +
 16 files changed, 2792 insertions(+), 267 deletions(-)
 rename Documentation/devicetree/bindings/opp/{kryo-cpufreq.txt => qcom-nvmem-cpufreq.txt} (87%)
 create mode 100644 Documentation/devicetree/bindings/opp/qcom-opp.txt
 create mode 100644 Documentation/devicetree/bindings/power/avs/qcom,cpr.txt
 delete mode 100644 drivers/cpufreq/qcom-cpufreq-kryo.c
 create mode 100644 drivers/cpufreq/qcom-cpufreq-nvmem.c
 create mode 100644 drivers/power/avs/qcom-cpr.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
