Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841ECD04AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 02:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aBTi9MmM//3LySoZWridmctizkLImGIJ93HsQytzukc=; b=HWB
	kWl78HwwhdSBj9Hm1TLP66bZc+6+312tJ2Um4aYKECFun4dFhO14RszdKb8y+jdbobA13lyUGDMQ6
	f8Il2bklIWZu2alb6xetcUmO2kaox3HUZUrxwn80FW9KAbXCPldNY1nqTJpN+ckKOon762IeB/vTk
	bsLR55uigPC3fRsX9GP1O956btCXjKXWuCVWcP/Db6t7LGi0RZgiyzxt+XEzysAKp/5pM/I3CGsYu
	xArS9pRtqEqXJBTlIQs/ikSLMl9ruJVaPBALpk6XCaRhN3/cSedDMyPRKr1YnvpKg4COrIxyNkuex
	nhyUjwu4sz/zX+AR3hdqdcyKCsXp20A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHzd1-0004s0-TR; Wed, 09 Oct 2019 00:14:55 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHzcv-0004rX-CB
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 00:14:50 +0000
Received: by mail-pg1-x542.google.com with SMTP id x10so229930pgi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 17:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=2daljnqJ+TtRPEyYLJ4e1aRJCyE8bNHOU/f2G9I+p7o=;
 b=gzi+Iqn+b7UyW+Nn5p2dSIEhAAfOdFiPkN+vo4RpC07gdosWLT/KX3vesssNIs1Zi6
 cGPzjR1SNhZm5gov+c5mEkEb7yM3Ub1kxh7Oe3FJC3Pl3By1UgUY8sqqXuXi3lsOmI8m
 DQSd3Fdcpu8+qwy+tS0rVgU391WWmA6aLrcnJS9IPZBH4yVW3L+Dv/3Z1cgOe/YqQSnm
 Cyb82QPumv1lT9O2GRLn/u/Q/MMPvmS4mcDb0X+C6Z3r3O16dkUjJi+y8ot0f1poSCt/
 ZlriLBgN9QW/tXS563BQs3cTeI+MC7Lr55OlDBFudWzjcFij36DsUnPQogs0nxHuTe2L
 U26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2daljnqJ+TtRPEyYLJ4e1aRJCyE8bNHOU/f2G9I+p7o=;
 b=BQFr9EwjTdDAyHmWyXfZ0OItUgNblRfR12jRT3Y1KiGVzJtYyxAlTsY559Y8LgLAs8
 Vi5bTwgFR8JITFaBPocAYzRbDuwI9WVaJsllquqWmY8JYV6Ed/fVCO3is9IB+Cpumu+Y
 MtD7SHdjSXHQGafz2TTgRHY1PfQaKVsLZXxpHeySjL3fANSNtrMhA7s5N3ttvlJK32/Y
 mdiN93pnnvp40FWBdYYVgqFyDyGXmOmtKKbn5EK0hyk3vjEjnH03ZOvEVLYQrRWfTsyW
 0mWKTJUQNBGtOwBALhYhCaax6py3lCf/po7fi47Hv7xEVF67ImzwBgxklhz9x4AZ/uJV
 KCTA==
X-Gm-Message-State: APjAAAVTpcuHmlcNczDTxck9mHRZ20+EsopgfyECGx2tHANiQsml1Z0T
 0BCM20SyDMyslI+mauvoSFEViA==
X-Google-Smtp-Source: APXvYqxXp6F2cO1CIJ92gpJFgWmn49fZlqWDTCkmzg84veYWn8c3Rr5ldjJ0xnGY2Y06Ve/FVc+wWA==
X-Received: by 2002:a17:90a:2302:: with SMTP id
 f2mr661674pje.132.1570580087804; 
 Tue, 08 Oct 2019 17:14:47 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id v3sm241289pfn.18.2019.10.08.17.14.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 08 Oct 2019 17:14:47 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Olof Johansson <olof@lixom.net>,
 Maxime Ripard <mripard@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Anson Huang <Anson.Huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Dinh Nguyen <dinguyen@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH] arm64: defconfig: Enable Qualcomm remoteproc dependencies
Date: Tue,  8 Oct 2019 17:14:42 -0700
Message-Id: <20191009001442.15719-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_171449_417099_D4561727 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Alex Elder <elder@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the the power domains, reset controllers and remote block device
memory access drivers necessary to boot the Audio, Compute and Modem
DSPs on Qualcomm SDM845.

None of the power domains are system critical, but needs to be builtin
as the driver core prohibits probe deferal past late initcall.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c9a867ac32d4..42f042ba1039 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -732,10 +732,13 @@ CONFIG_RPMSG_QCOM_GLINK_SMEM=m
 CONFIG_RPMSG_QCOM_SMD=y
 CONFIG_RASPBERRYPI_POWER=y
 CONFIG_IMX_SCU_SOC=y
+CONFIG_QCOM_AOSS_QMP=y
 CONFIG_QCOM_COMMAND_DB=y
 CONFIG_QCOM_GENI_SE=y
 CONFIG_QCOM_GLINK_SSR=m
+CONFIG_QCOM_RMTFS_MEM=m
 CONFIG_QCOM_RPMH=y
+CONFIG_QCOM_RPMHPD=y
 CONFIG_QCOM_SMEM=y
 CONFIG_QCOM_SMD_RPM=y
 CONFIG_QCOM_SMP2P=y
@@ -780,6 +783,8 @@ CONFIG_PWM_ROCKCHIP=y
 CONFIG_PWM_SAMSUNG=y
 CONFIG_PWM_SUN4I=m
 CONFIG_PWM_TEGRA=m
+CONFIG_RESET_QCOM_AOSS=y
+CONFIG_RESET_QCOM_PDC=m
 CONFIG_RESET_TI_SCI=y
 CONFIG_PHY_XGENE=y
 CONFIG_PHY_SUN4I_USB=y
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
