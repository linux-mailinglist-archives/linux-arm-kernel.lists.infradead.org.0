Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DB6D4B20
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 01:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aWdtRoLcT7ypMzemLcxw7u51cqwltyeFi2O6MCUh+nQ=; b=ODvKa64Y/a5TsK
	tbgHS3AGsFb84mXiOs+6NhQ7O65FkoNAiPzY8fzCVMJCzXzXvBXEHnhjfwWYTIJqFi+rJJsVYZyM5
	5Op5VdM+6F9+3g1Fcwy7+Vd/MetwbhICTDyK+BjLWvh7ROg2pOBtNWwGFvTJ7a5fuupcX4jzYKPr8
	Of6IwlUx1LcZPiatYDvwR1a75IXvAFfUAh9vMK8ORCnZekfQEVIujDSRzvdURzzOolBOVnmH9wvDH
	vY14rgtUBTyjZPRKCg0TEtlVaIk3/Cp14VL0WCJs1qT3Y/Fd0s1JWTFCRl7Zn3iLK5UIJjylv7dAk
	qoemx3+9pesJv9hrHLGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ4a0-0008JZ-ST; Fri, 11 Oct 2019 23:44:16 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ4Zt-0008J1-LL
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 23:44:11 +0000
Received: by mail-pg1-x543.google.com with SMTP id i32so6635960pgl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 16:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8eY4wo42WtOKmlH068hhmD7B1nLmX1zbEw5wgAbsjlQ=;
 b=eLpfoF0wE61FQRBmPO00nr4+AnxnTlXQ2ao2dwJB9LOttMcQVHs9oWsivwHKUTPGly
 TPAXI9vZRGYzbtPRPD8PC45YeUKVaOuvrdQcpTzSGR/NvQNJT6/WCxv13ZGXgJ1frJyw
 NlBcYWTxskSfXttkB+f7Kv7+DeMqZujE1PZZysCyuAz4XRtnaffRWOXVI+TplbLfHImj
 BIZ08dOmjmuqiy3jA0XWeKcDMK6955aNInAVdxA50YLlmCWCEKb9U+b4gS57H2swLGKg
 FhkmTWTr/N8kZajZUIgdyxy1tofrw60zgHGwg7c5kEih+b0p/53FoYT5VATXI7fGuGAp
 NpCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8eY4wo42WtOKmlH068hhmD7B1nLmX1zbEw5wgAbsjlQ=;
 b=R2pA0VHSeVbJnWM9LAD2XopM9+ephvZGhsvX5lJF46wkUFmDzm+0T+r7aQVpNaY/tF
 qcp6c+tCGsivJe39E9Db1i0cCtJt0CKL8N+uC7FAjJQ0nNX9LDK8XWbsvBcXoVPOmvfS
 xU1CCPGIupuIkeCHYrhoerSdFyJgFVPTdfDtM/HQzMjZ6E55Pn4TzhSuJAX3scZ+Ll2M
 pz861HGD9vCkv54Ec1vH0jWKJqJa5sYkZiXly09maqq2vL9rY/X+FAP3xOv/pOg/5DIA
 1mCvxzlmv80r+X4qvDZlvt2DSxWB6yHfv4A9RB97a8a5Da9gzLGBvKtWmtzWKw/9qL/5
 8rFQ==
X-Gm-Message-State: APjAAAXJA/F7NjRnUZR9HYFDDecyPaFzbpCPzeyMxiyh+iuxehU4cFFb
 j3U1dYbI3L6S2B+2/PmV0kVO1Q==
X-Google-Smtp-Source: APXvYqzXusObm4NkLuSv7bqxR3WbrsWyP6ALbO3rVDrXKGNaw9fy9O32fAWsRG1xQpCh5bH97voZkg==
X-Received: by 2002:a63:8dc2:: with SMTP id
 z185mr19553539pgd.228.1570837447240; 
 Fri, 11 Oct 2019 16:44:07 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 62sm11011253pfg.164.2019.10.11.16.44.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 16:44:06 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Olof Johansson <olof@lixom.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Maxime Ripard <mripard@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Anson Huang <Anson.Huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Dinh Nguyen <dinguyen@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH] arm64: defconfig: Enable Qualcomm CPUfreq HW driver
Date: Fri, 11 Oct 2019 16:44:02 -0700
Message-Id: <20191011234402.374271-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_164409_727412_C4B09E6C 
X-CRM114-Status: GOOD (  10.45  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Qualcomm CPUfreq HW provides CPU voltage and frequency scaling on
many modern Qualcomm SoCs. Enable the driver for this hardware block to
enable this functionality on the SDM845 platform.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index dea051a64257..45e55dfe1ee4 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -85,6 +85,7 @@ CONFIG_ACPI_CPPC_CPUFREQ=m
 CONFIG_ARM_ARMADA_37XX_CPUFREQ=y
 CONFIG_ARM_SCPI_CPUFREQ=y
 CONFIG_ARM_IMX_CPUFREQ_DT=m
+CONFIG_ARM_QCOM_CPUFREQ_HW=y
 CONFIG_ARM_RASPBERRYPI_CPUFREQ=m
 CONFIG_ARM_TEGRA186_CPUFREQ=y
 CONFIG_ARM_SCPI_PROTOCOL=y
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
