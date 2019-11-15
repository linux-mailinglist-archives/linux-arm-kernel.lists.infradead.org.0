Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BD4FDD33
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 13:17:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4s4uGDfoqSjEcr1HjLnTF7F8VT6bva4B88HF7SkQhlM=; b=HbcfkHmHBy+W7k
	UuQCTOQSFxf1HNfp7OFhTjSCV+hVL9iAWaDSK7kU383XV3rzxM6iFDRW2p82lfFw0/4uejylGPLs9
	zOkYQzNIWcipJ5fWd+OQvXgJbxSVoGCcqFW/TRdr1yGUhkoFO3kkBkK5kwo9g6cPMtAgC+8e2c2sq
	SXwOGPxSJiNGYfT9UZDAbaH2qMz6IrxFMOFKG0rAddEY7/3u/zl4lnB8OlRR+PcSJuwJhAHKkZgtx
	3PPNmDqjkhd/8LW8pwxXpxRzyBg31KPwNmJu/eTKeyey1TA3yxuGvXm5ptMaKdAqJFou68jamvmg4
	Pj8EeiG9N8a1GnLnd8/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVaXt-0006vh-Cx; Fri, 15 Nov 2019 12:17:49 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVaXl-0006un-0I
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 12:17:42 +0000
Received: by mail-lf1-x141.google.com with SMTP id z188so7819804lfa.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 04:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zwPMwB2RiSUmNRM4skEo53AFmHsnpLdRklqrJ7M1CGM=;
 b=R/IeUVq5jtooBozJfg6+vEOzIjVyKvh8ynV9jDhQlqMMrafkBHAo9kMd1uOsX/2V8p
 Pkr8FRF4tISl0WyhLaYSn0aMjMS5mYul2MGQtCK/kcZ5lqD8IvaNBjBJG9SRCrZ8Pgku
 DQOAvCi0qK8sMpttXEY21rDRg4GLYIKzZnHPRmSd9z4t7pWzNtH/TeGA/+ixM/T/dwhU
 H44oJZBrBFx7nLUxam9Oj3M+pTkxSS6Gs+YvEMKh4kdjMWl278P8ROhCU/r7c7FpR13d
 iycN9Ma2jf0rlvPDGTQgfJGrEW+2O/jInKuYeVVGZDTUmN2lCXbcvZj6UIMoCGb00M0s
 66pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zwPMwB2RiSUmNRM4skEo53AFmHsnpLdRklqrJ7M1CGM=;
 b=uYEO3cEeKEriLvJcoL/Nc4UpGf7/XimCC2juvTmlidOy1WkvReZ/005eU0fqPa3CUm
 kjoxym5eUvjAjdnBy9Y7s20Upw/thwmpSBGGMn8NYH+J967PIuzGoZ67uYoGWbtw1KkE
 qzxM70l0S4VoaSiK10xnAlHUpVKqIfT6vAWeuFdi+/0HjqZ80ujRuBpOIrFVfd+NZW3f
 +19CFPeX80tKEcA0ro385zi9ukuYqqXksXZAnZvuPOANDYX90QM70dM/cOqq/zuPEgFf
 9yilRtgW228sitH/WxXBk+oBQcIHEdG2SLavV5uEzc4ocdaOEObJX1PSHPxugX8qX3RT
 NRNA==
X-Gm-Message-State: APjAAAUZC8HajrfUYg0T+3s1aVuyUtX+O50ekirGJ7WhAU8SmpJSU9Dp
 4tBYTyiayyV6xknIgn/yFBj8NA==
X-Google-Smtp-Source: APXvYqzdc5fuKqfou46ifmV2Mw6UXjuQyNPexWnBdQPEUi4aFQIDIPm0q0tNU5Y3xbZP1CVo6yViyg==
X-Received: by 2002:a19:c514:: with SMTP id w20mr11215839lfe.143.1573820258087; 
 Fri, 15 Nov 2019 04:17:38 -0800 (PST)
Received: from centauri.lan (ua-84-217-220-205.bbcust.telenor.se.
 [84.217.220.205])
 by smtp.gmail.com with ESMTPSA id y18sm4107961lja.12.2019.11.15.04.17.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 04:17:37 -0800 (PST)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v5 0/5] Add support for QCOM Core Power Reduction
Date: Fri, 15 Nov 2019 13:15:37 +0100
Message-Id: <20191115121544.2339036-1-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_041741_058087_6B1911BF 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Changes since V4:
Implemented review comments from Stephen Boyd.
Removed suspend()/resume(), since they did the same things as ->power_on()/
->power_off() genpd callbacks.

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
 drivers/power/avs/qcom-cpr.c                  | 1755 +++++++++++++++++
 7 files changed, 2035 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/avs/qcom,cpr.txt
 create mode 100644 drivers/power/avs/qcom-cpr.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
