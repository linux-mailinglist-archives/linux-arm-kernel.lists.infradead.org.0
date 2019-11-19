Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8E310286C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 16:46:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GQvfxImwe2ILpA19JKQ+eMBsYhOySZ6prTnZ+WAs4uk=; b=JYb/lUaBRnIUpa
	XFsbGhciydV3XqqZQLyuXy8G97IeDxSgMU9j82TZVvyCShC32HPQs68ktiubJWEZvKwxQjGORnwAE
	gvQ3e5DSlmtk76n9KTT9toFirB9nZXjDRyZr/glvI8Si759klsPmNrhu6eF4FUL5Y28YgWc45Hdkx
	BhDLwuKuVNWkwqC7Z+JVuePlt5Hj6eSa1jDIApSryoYLfoecdqSV19qrTYgIBvoA2qGP/Eg0EXSuc
	MNrsrOsHMe+zLElcJ3fKKh9W8mhbjAOgkCSLvkQ3TmmCTYYt6DqBzJ9/l+6XcOuq7dNOOw/lsyN/k
	pkjHzrdvPqTB0mg/Kaxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX5i6-0006vq-4t; Tue, 19 Nov 2019 15:46:34 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX5hx-0006v4-Ii
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 15:46:27 +0000
Received: by mail-lj1-x242.google.com with SMTP id n5so23873418ljc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 07:46:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DWp/HKd8UEdzTcxXP25jTpL5m1vRpEu2EqbwctS2S6I=;
 b=dk9px5cDIJKORtjtml2SFVPhx29HNXcnTjWw5g4IITK1vBKPnebecnOHG3g9V8AjUw
 mlK9NvT1b6J7KHm86tfHghnF+aDHWyIlit7kros33Q2zdmPgnl09wM+DFKxzvCcRVhBC
 ErnWukGq/A+cqaWWM24Ll7wRo65fbmSi+yRPbC2V/q5/EuLGmzOAQJd/dk2tzJLvytmR
 S5pacexLX9HtHmThejcLL2n0WfhI0pySAzkJT3pGS2ng5eu76U++lGCMV4vdJMoiVLZr
 929X0NRtCAKxeXFhMjx4ntq/XAFqnuPLO9Gcf8KwVc/KY5TBdSssqwz2sWVt/Rb7+txj
 Skvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DWp/HKd8UEdzTcxXP25jTpL5m1vRpEu2EqbwctS2S6I=;
 b=Tll6DEA9V1n/XZhA8+bekVi61A4M3/Hymd67mIGokSfr7XF65yTBMOkI7mtmyNS0dq
 fUzYCit9DwLP//EzuNytfCYDD/2pE187TsEM16wAnLFqz8YcHpbePmdsTx0ztZnnSkFw
 venj/BKy1Mw85TAGdZ9109mNyUkhVkary8Av35vdutYhPdBqISn0kikVOAlD0y5zw9oa
 6pI/dtNH3Gcwz1Q7gvuuNwyeGdAlMb0Fc1e7ur4j0EYZp5bjJcVdRYTa1Cfh53myHjua
 q8TJrxiZEpnQ7w86eg3K4bvUkvZtKtmvOU3vhJPJJgUcC/Z0TeCvwYy/drekFyhCIQzT
 Mv+A==
X-Gm-Message-State: APjAAAWGCOcYA+KwDISgmB1E3RvrG5en0yLxRq8phOe4YHYPxqYSdf4w
 BUOWwo8HOMTgpNuFVlf4O4aC7g==
X-Google-Smtp-Source: APXvYqwsRAXzKKHohtayBA+twXWFwp1l6AdR8CirrZJeOWMtDwJ6LiQB/ogskDkybNlY4Mj4S/fPQw==
X-Received: by 2002:a2e:9156:: with SMTP id q22mr4390127ljg.166.1574178383838; 
 Tue, 19 Nov 2019 07:46:23 -0800 (PST)
Received: from centauri.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id v10sm9886281ljc.6.2019.11.19.07.46.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 07:46:23 -0800 (PST)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v6 0/5] Add support for QCOM Core Power Reduction
Date: Tue, 19 Nov 2019 16:46:15 +0100
Message-Id: <20191119154621.55341-1-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_074625_635052_183D0D3F 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, sboyd@kernel.org,
 vireshk@kernel.org, linux-kernel@vger.kernel.org, amit.kucheria@linaro.org,
 bjorn.andersson@linaro.org, Niklas Cassel <niklas.cassel@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for Core Power Reduction (CPR), a form of
Adaptive Voltage Scaling (AVS), found on certain Qualcomm SoCs.

This series is based on top of the qcs404 cpufreq patch series that
hasn't landed yet:
https://patchwork.kernel.org/project/linux-arm-msm/list/?series=173423
as well as that series' matching device tree changes:
https://patchwork.kernel.org/project/linux-arm-msm/list/?series=165457

For testing purposes, this patch series, including the dependencies
listed above, is available on the following git tag:
https://git.linaro.org/people/niklas.cassel/kernel.git/log/?h=cpr-v6

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
[2] https://source.codeaurora.org/quic/la/kernel/msm-4.14/tree/drivers/regulator/cpr-regulator.c?h=msm-4.14

Changes since v5:
-Removed pm_ops from platform_driver struct.
 (This was embarrassingly not properly removed in previous patch revision.)

Niklas Cassel (5):
  dt-bindings: power: avs: Add support for CPR (Core Power Reduction)
  power: avs: Add support for CPR (Core Power Reduction)
  arm64: dts: qcom: qcs404: Add CPR and populate OPP table
  arm64: defconfig: enable CONFIG_QCOM_CPR
  arm64: defconfig: enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM

 .../bindings/power/avs/qcom,cpr.txt           |  130 ++
 MAINTAINERS                                   |    8 +
 arch/arm64/boot/dts/qcom/qcs404.dtsi          |  132 +-
 arch/arm64/configs/defconfig                  |    2 +
 drivers/power/avs/Kconfig                     |   15 +
 drivers/power/avs/Makefile                    |    1 +
 drivers/power/avs/qcom-cpr.c                  | 1754 +++++++++++++++++
 7 files changed, 2034 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/avs/qcom,cpr.txt
 create mode 100644 drivers/power/avs/qcom-cpr.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
