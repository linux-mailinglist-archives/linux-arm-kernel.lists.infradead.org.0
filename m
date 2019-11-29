Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43A310DB33
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 22:39:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LxryO2lMERP9F82Whmpal3g5vm2ci90xJyegVLgp3mw=; b=PqV6egLnW1upCe
	VDi2wSf24PXpr46VYjg3pAXfYNEvpLMPHHNU9gk3b4hXCtOg4ByUWEgZEtaEIVdTqPw7c/Kqi4r39
	V4KlPDjS//yeVF1bZfrgiiPxdCAwTkE1n0G+xqCg87iuaKAxM5dFo6Om6qWkTDiFwwHi3q5/avUMG
	EJxh5DNgDsMmwUWx2wdUmV9qlO0aQE94pNFnAHIj9i/ByEc6Y/q/FKNHXGVrdhdd9yHZVLMb39JGW
	B5/SRFY15A25yRezrkJjBZnLepQEz9o29DV1+ow/RJwaWhOrGrTp2FTYfno+G22xxmd/5KNUo8vW9
	nGCYYE98ozzx0RgecTjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ianzI-00087f-4S; Fri, 29 Nov 2019 21:39:40 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ianz7-00086X-HU
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 21:39:31 +0000
Received: by mail-lj1-x243.google.com with SMTP id d20so3530403ljc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 13:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HoCIkfIpHUEqxrpa5VNin8a9xzNcml7RJzBZOqUbMCI=;
 b=XhymOJiD3Z2aYsBi1GtNTmqv4cD8lZuV3n18svaQOYIQckWoHxOiES3GCLPpqqi9xF
 ElUzyTYZ/VPe8tY/gh9Fc7J0JDEg7fGZDsQji6Gy+g9cPS7yVWGpavdASwkXBmAJDo9M
 6DcZDgXVWSJDqEztf2bZcl8ELnuyOlYW7n1Jk8FnLYoK03OBlPNvo6Ycbn3HBeGzBtHm
 7r5nNgT4uFYwy6SdusagmXvIC8XfXg2xFDBtKfsLYtVnFoSblrT1l8DZD9NgPZNUGTpB
 7XNcVK1xyUEjbSFuaQUFZ2T/bWzgDCdIlWlzBqhDIOGiS/yhprw/RB1CRSLOHSV9KDgP
 Y6Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HoCIkfIpHUEqxrpa5VNin8a9xzNcml7RJzBZOqUbMCI=;
 b=dTdDvg0eeGZM0hWtcIaB5Zx+Pp0J7NaPLlMKVDXhWtekN1EME35Y7ro67BpKIq5abb
 QtM/g123RBKOxlSsYlN82OLZfUoZ68JIAaCCNU0X1xx/FUWpYyD33Fd0CKdoW3y+w/wl
 zmAtmu4m5azZoEBOTxl1fm005dBx7sA0JX7CjyK/AMDB1zJ0UeTXcrGqsU+9e6bOyxYy
 AfT0O5wtNvtnZgLZ+3gC2KiKOQbTxNMB2E1cnp7dXPPODHjWyRjQa/O9ZtdfZVJXvovk
 55tip8UklETW28JKR+AN/vvZxl2CAlzbdkD8vLiKahBOgYKIo7qWOuMC+r+TQvlfl6vN
 N7kg==
X-Gm-Message-State: APjAAAWQWcVIPOZlSYQo6FbUsf05F3rgpPUvfsfsH0p+mg54VbtZytns
 30MUwWCLqyvx7LFkTJ7PpchYVA==
X-Google-Smtp-Source: APXvYqzNEPzDYPTg7B0zYEoaYUWO6O51RXUBdgXRZrq4wpucNmLYPHPSkvc02v5pkenXgOWZn5z0ng==
X-Received: by 2002:a2e:9549:: with SMTP id t9mr2600851ljh.148.1575063560250; 
 Fri, 29 Nov 2019 13:39:20 -0800 (PST)
Received: from centauri.lan (ua-84-217-220-205.bbcust.telenor.se.
 [84.217.220.205])
 by smtp.gmail.com with ESMTPSA id b190sm10742234lfd.39.2019.11.29.13.39.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 13:39:19 -0800 (PST)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v7 0/5] Add support for QCOM Core Power Reduction
Date: Fri, 29 Nov 2019 22:39:10 +0100
Message-Id: <20191129213917.1301110-1-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_133929_583641_8FE82A95 
X-CRM114-Status: GOOD (  13.83  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
https://patchwork.kernel.org/project/linux-arm-msm/list/?series=207821
as well as that series' matching device tree changes:
https://patchwork.kernel.org/project/linux-arm-msm/list/?series=207831

For testing purposes, this patch series, including the dependencies
listed above, is available on the following git tag:
https://git.linaro.org/people/niklas.cassel/kernel.git/log/?h=cpr-v7

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

Changes since v6:
(Addressed comments from Ulf Hansson)
-Initialize mutex later.
-Take the mutex in cpr_pd_attach_dev(), in case we ever
implement async attach in the future.
-Add comment regarding why we get the cpu clock rate.
-Add comment how we handle unlisted frequencies.
-Clarify comment regarding why things related to virtual corners
are performed in cpr_pd_attach_dev().
-Removed the internal performance_state variable, the performance
state is instead calculated using the current corner pointer.
-Save a pointer to the first genpd dev that gets attached,
and use that rather than get_cpu_device(0), when getting the CPU
OPP table.

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
 drivers/power/avs/qcom-cpr.c                  | 1792 +++++++++++++++++
 7 files changed, 2072 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/avs/qcom,cpr.txt
 create mode 100644 drivers/power/avs/qcom-cpr.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
