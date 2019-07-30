Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4197AF63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+aWEXpSTadJ/1dGLMlv/YBRZuwAGoTvqQnPOpBUGR8=; b=a3ADcSggRJtYSz
	dAG9lnAZyivkBVNYtXBzOvjsQseIeGLMRkWsiiQL2S8Ra7yS8mONP21BZNKWPURONu9+S7bQCvq7I
	TnimiRtSlcMznnvkIfZnIkoZgRUdR/Tc8/jlTdKRhHPsvJhroJKarw/pDyM8qG5rFZGVDYaijx7P9
	STP79yyNS4eSNEouEx/L/v0tSzKA+vXyZQfbQhXuSVQoNUYcCSxRy8qsQMtj6irIMJQvaNoRnaGm9
	4T5MqAwuQB3SRmZiPop8SUXmPuGcDa6B7/7fMfPS7ZgpOs1y9ulT+kfXxCaCNPtS9cIuYaU6abSVj
	EuyKsUuBllm4Oq17vMaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVh5-00077U-Ji; Tue, 30 Jul 2019 17:13:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVdn-000453-0i
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:10:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id 31so66643279wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 10:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oG72JYs8D99uhUm5H/8cmgUmTEFAp8bLzuwQQLvaPEc=;
 b=msT8UaDPxHL7k4vTcFYH8UmTrtZtTqnDR8sc/6k7qxtO9OxBJEJOwctfdst/feUBs2
 Iwb/dF+1zXd2fEn/AH1+r5qmcZ4RnmZNJJLJbzaO1Am0n6RctRjOjRreHrZnEvRWVGDc
 zlqL0ao8eGz1wujhYT/MrsExCoSjLzQOc5UWXDry1QKdQmwJNw7Rr3uNf/NtCEYbbuq2
 SwSCNk88DUiV/50mMCEG1a3pi6quU9G6imI7HZYdwE9YqE9sNiP2SEveESwcuMILu/Kb
 19pDUpaSnB4Vl02ygD80NLsHq8BX7oeMEtZ/f79aaOwXk+29rub2oE3FOL16eZFgpFi3
 jKvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oG72JYs8D99uhUm5H/8cmgUmTEFAp8bLzuwQQLvaPEc=;
 b=uOQPw1WGL8ajP/mJyAt3VH3dfo+oNABsQvRAwA6TYUYNHHFJzA33zzaUW96rBjHfbC
 a9BY+M1Nw0O6SB1CSgq6xyvqoP9RPAYym3k6sLEwa/EPxRIoXz6L2YbaxeycC8E70jGG
 Svr9rh5UeUVElNIqWK/tEQEeE6gvPshJs5QCJf2MgI86zI63gFwswDVLV72RR4q4g2Zh
 nsTw097GByzGEYh4ZBzxc9LFKhnSP6l7TsxJCEtYnB60clfhRFqk1klDIPZp62tJ1OEu
 MQk5/4VnQfq4XXgwDC2IJb602jy9b0mI/ieX3MnA87alqiJLBL6afQTUfiUHWpb0iHbP
 eHwg==
X-Gm-Message-State: APjAAAVko95s9HjTZ1zpF/GvsK2hFsXf0h5F4+BFAO/W8AwRLKMDl8Cg
 nXeaoMaslexecmNbRjCrIDtU9Vvm
X-Google-Smtp-Source: APXvYqyH7w4AEuh5fJ+nXr1bskVAySZyQBcPNIxwxziZapMpcFYxnTTVwEx/VIdl06Z/AfvNqT4b1A==
X-Received: by 2002:adf:eb4e:: with SMTP id
 u14mr128554493wrn.168.1564506621515; 
 Tue, 30 Jul 2019 10:10:21 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-220-99.pppoe.mtu-net.ru.
 [91.78.220.99])
 by smtp.gmail.com with ESMTPSA id i13sm58897736wrr.73.2019.07.30.10.10.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 10:10:21 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v4 12/13] ARM: multi_v7_defconfig: Enable Tegra cpuidle driver
Date: Tue, 30 Jul 2019 20:09:54 +0300
Message-Id: <20190730170955.11987-13-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730170955.11987-1-digetx@gmail.com>
References: <20190730170955.11987-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_101023_335206_49874D0D 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Tegra CPU Idle driver was moved out into driver/cpuidle/ directory and
it is now a proper platform driver.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index b0a05683f17a..e07c138453ab 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -108,6 +108,7 @@ CONFIG_CPU_IDLE=y
 CONFIG_ARM_CPUIDLE=y
 CONFIG_ARM_ZYNQ_CPUIDLE=y
 CONFIG_ARM_EXYNOS_CPUIDLE=y
+CONFIG_ARM_TEGRA_CPUIDLE=y
 CONFIG_KERNEL_MODE_NEON=y
 CONFIG_RASPBERRYPI_FIRMWARE=y
 CONFIG_TRUSTED_FOUNDATIONS=y
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
