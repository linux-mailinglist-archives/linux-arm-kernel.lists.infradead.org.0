Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C18DC60718
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TIx2QTa+BpUX+iP9A0EZgcwkkU1BWsmCG382GeEan+8=; b=t1O0w7utNNXShi
	vsy4MoSgPxGuPOnDn7rSycYGkyo84qZEM++ZxiO3gEJsRK22vBp3pcQ4Q149nfisDwMUAawKtJF4g
	5Ew6f10676U/LzrE8g0XSYMP74oexHnAoHXzAne01Haci2kqgxknAXLQB/UpxxCxDIHeSmD8tPM0R
	ezNNHiIer3FiV9dut1lAcfBpxje8h33WIBwSxxw84hxT1biExRv8Fin6e+DEEyn7tLfoft6kj37rF
	10qNvx8zRKV23Wplt3V+0WCWt0XrgibYnJEpGF6JFS0Imkhr3X6TS9S2obuaGZGZa057kCXZtXJRG
	FFcVV7DAc4GWtb+1ErOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOmu-0005xz-Fr; Fri, 05 Jul 2019 14:02:08 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOff-0004wM-3b
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 13:54:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jfb8N34fRP1vMCo/Q4EmvhjgMM4QUZHFL/DkTTJzvfw=; b=FdxldRfVzo8UAx4qyf3ltE2eUE
 OAtX4+Uo6IYQXSM2VA2WZrRyLJ/ghyuQvqgRoaEL3xunUWgt6Zk1kzzj4DDk3liInI/1JN3683FD9
 txzcxDEaSW/usTLhMqRsd9Kl+xSIWIi2Cu/l4wq1f7KhUmhd/6gimolg/vInEyedgKcvdcabbOB3y
 C7S3gaUeNVDLxvjCEjO78cNJcxwtLqeACc8CWBtz/QBXd+erXowBZa8CyadU3N2mxWsz3AewRrEtz
 vEKokgdZ5v8iNLw46rn6jr6TcRkwQ5BuV9BzUbpaNVo7XCiULd+ImQ6Ikd6e3BGpT+xHMXW5NTUPz
 m9GWNqTQ==;
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL0R-0001MB-Sr
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:01:56 +0000
Received: by mail-lf1-x144.google.com with SMTP id h28so1608756lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 02:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jfb8N34fRP1vMCo/Q4EmvhjgMM4QUZHFL/DkTTJzvfw=;
 b=iV/bDXXGIF2SCjKP+mvbagzIEpJnRgeHAciZAGW4BAO+x7mUbVcnb6ujCII0qEIvag
 B+9nuDksqPI0mCEFf75sXKlOCwbGaD06VAJKLym1HR6+vEmcMdSgMufD1qQ/UigCRXAc
 ptdXpUj40ht00oZMamy9VwDHzoqUG68PoDxL4ROV3wu5aCujWyY/WunfDhJQCaz9ynJl
 N/1kQdYUCXSx9Fm84Zt8RYZkiAtS9DpsG2O3kzNO9PkNVw3QFS+N6aIUajmN8tWvEanV
 HZ6NUpwwyn1yxwN8ZDmnb1hLDsHVF3pcTl+e2zwIfycP/z9LpD7+CsDS58kkqjo2//QY
 wm1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jfb8N34fRP1vMCo/Q4EmvhjgMM4QUZHFL/DkTTJzvfw=;
 b=dACcqIfNyyJF4PO3HnN7JiFTC01p7PEL53DLab0nrbypBV5bamXCSk7Tiv4o/xgItp
 oNH0psJaM8QBuTF15Cw987NzSr2cmQaBfssLyrx6OPONK6o2igq/OhaHWvRWt81qOgzy
 SnV3xpH/QR5pgGvk5G42W265WptKrtJXnHs0flupFLz4WQdxHjIwmH8PVcU12o/G2hU9
 gn0uJfSEm2aPtpmjtzxBrR1PC9BWgm3EGHxvNY0jJ/UQ8mUtgmhPdKVr8rGA0Lwu40fC
 yIa4xMqyXqQUFUOyQorOfDRSKf5uwykjO805hRdD06Ben1fqEQBaMQKHLBzcAljXbFnY
 JSyw==
X-Gm-Message-State: APjAAAUlvSZJqa0sAbaQ3v1CKj24vtKXaihxosmI+ccxGENHO0q5ZDS4
 S6DOu+c6Uj7ll4An+J7T87DWMg==
X-Google-Smtp-Source: APXvYqx9EhPfIFQ2thFYyWS7eAeKd9dHNJjeDKHsaKcMgIIIDNLz6k1LLpbOBztfQBHbBqX0PbK42g==
X-Received: by 2002:a19:9111:: with SMTP id t17mr1532125lfd.113.1562320664397; 
 Fri, 05 Jul 2019 02:57:44 -0700 (PDT)
Received: from localhost.localdomain (ua-83-226-34-119.bbcust.telenor.se.
 [83.226.34.119])
 by smtp.gmail.com with ESMTPSA id q2sm1298364lfj.25.2019.07.05.02.57.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 02:57:43 -0700 (PDT)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH 00/13] Add support for QCOM Core Power Reduction
Date: Fri,  5 Jul 2019 11:57:11 +0200
Message-Id: <20190705095726.21433-1-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_110152_002515_C462095A 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Jorge Ramirez-Ortiz (1):
  cpufreq: Add qcs404 to cpufreq-dt-platdev blacklist

Niklas Cassel (10):
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
 arch/arm64/boot/dts/qcom/qcs404.dtsi          |  145 +-
 arch/arm64/configs/defconfig                  |    2 +
 drivers/cpufreq/Kconfig.arm                   |    4 +-
 drivers/cpufreq/Makefile                      |    2 +-
 drivers/cpufreq/cpufreq-dt-platdev.c          |    1 +
 drivers/cpufreq/qcom-cpufreq-kryo.c           |  249 ---
 drivers/cpufreq/qcom-cpufreq-nvmem.c          |  351 ++++
 drivers/power/avs/Kconfig                     |   15 +
 drivers/power/avs/Makefile                    |    1 +
 drivers/power/avs/qcom-cpr.c                  | 1839 +++++++++++++++++
 14 files changed, 2692 insertions(+), 267 deletions(-)
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
