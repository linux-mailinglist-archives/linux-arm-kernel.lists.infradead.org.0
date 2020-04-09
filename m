Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 677681A395D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AU1Yt8W2fx2NLG2pl6y8ECklooPhvcEna4oBRIQXGrI=; b=cRcMC40sRCC2bf
	EsPWz/quOSgRIalhadLqvL9ApLibq8F3qkZCQ11JhG9mn3UFxlHrPYR/csbtNbQXkvp+jjcuE12Tw
	fMTjG0HEi6VTzmOWOAZvNHZuTx/uxM76NlqTHbcsV2bl/Uq9KvUchP045nkDGHNdd0fzH0sYB9KWx
	sMqy7TjCyp0yJsvx+AJaGMYYpyZmwW21V9jnztX9beDEGX8rKtu+oD1E3d4Dskdhh/CkmWS2TV8yZ
	1DsevwMok4AYMMDwM2ehCqe+VfTeJFckffngckMlMFqGlpcIS7WOknzWpk9Lb1HpVogRh+2tdq6Xv
	TOIjz1BSDmDpoQmoLOmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbNP-0006pA-NH; Thu, 09 Apr 2020 17:54:07 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbMD-0005qf-NV
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:52:55 +0000
Received: by mail-wm1-x331.google.com with SMTP id v8so3072286wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JXbS4Svzqk1Z8bCDsWfX5K++fFmOKh7LOIAzqa7Oph4=;
 b=gwzJ4sCsFraPFBysmE88o+9ELSdwCXwGYyJx6m+SUAQiGeW/xmYk5E9kiaw/9Za3iK
 mb9C6J5IcI087eLCLmRCVaLffbIoOcAMm6sWykYmhU8vwTVMVESkmfcGg7mIXtaDJLoq
 wCnew9R+ynIxydvnyMINFn20RCYTgxfvvRDgCVDGfLhO1k4GLMBZiqMT+6s+ESPi5+PU
 gk+9CeRXeJzqGxLEFtT7V8R83kYUwBaMIIy27EVTHq4LUgz/DXAaMCV7m6s6pfTpJ88t
 taAHVf6/DHetqXQNNNnXXmwKfwxcWsfp2MAK8BlxDKWmquf5A+ypZRB7zFWbmJWZuv2U
 fr4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JXbS4Svzqk1Z8bCDsWfX5K++fFmOKh7LOIAzqa7Oph4=;
 b=Xu1q5tPYrmEvhWJKO/0spRFyfxyH9BIzC6vLbsCms/+3coJryxJ8vDBwTSgONIhgfJ
 qWzJAbPvQ3rgA5bkj+bdjdqqHcR/EgxyV+idSIRTGUxjcAGB0scidNOGBUaqjpF11FjR
 fMFL5SM0h9VJy7dHa7vm/4WVVufk5ZfI6yY6u7b4UOVjMX3mUoUHmaABWt2DgeGNPc7z
 bYUGyAmbQ9lg7PLzeCUraXU3WcYKMb3ZFQPdsZmh28KEFxsSS7yyCjHkgdXao4kJZb7C
 NR1wdt5BeHREUhMzTPdAK7mGXv7wYC9UdGan9J0PwmXgDngEaDM7QEZLb+Aa4gRPIGsY
 w1xQ==
X-Gm-Message-State: AGi0PuYY9e/65ZUWO7ni1FbpDVKTMFsY+6roYoXWgwabNs1icD7IzuWz
 +n+w0CU6LizrHxxzyCKU2Rs=
X-Google-Smtp-Source: APiQypIOlJqf4MQPaE8pJ7IsdKAGi+rLG4dEYSpvHJFqoqxHl4SenXqyD0xjfN7zAWjMB9yvQpvNMA==
X-Received: by 2002:a1c:6503:: with SMTP id z3mr1079964wmb.92.1586454772182;
 Thu, 09 Apr 2020 10:52:52 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id 68sm3200213wrm.65.2020.04.09.10.52.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:52:51 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 04/14] clk: tegra: Rename Tegra124 EMC clock source file
Date: Thu,  9 Apr 2020 19:52:28 +0200
Message-Id: <20200409175238.3586487-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409175238.3586487-1-thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105253_802834_157219A8 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

This code is only used on Tegra124, so rename it accordingly to make it
more consistent with other file names.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/clk/tegra/Makefile                          | 2 +-
 drivers/clk/tegra/{clk-emc.c => clk-tegra124-emc.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename drivers/clk/tegra/{clk-emc.c => clk-tegra124-emc.c} (100%)

diff --git a/drivers/clk/tegra/Makefile b/drivers/clk/tegra/Makefile
index 1f7c30f87ece..dec508ef2ada 100644
--- a/drivers/clk/tegra/Makefile
+++ b/drivers/clk/tegra/Makefile
@@ -14,7 +14,6 @@ obj-y					+= clk-tegra-audio.o
 obj-y					+= clk-tegra-periph.o
 obj-y					+= clk-tegra-fixed.o
 obj-y					+= clk-tegra-super-gen4.o
-obj-$(CONFIG_TEGRA_CLK_EMC)		+= clk-emc.o
 obj-$(CONFIG_ARCH_TEGRA_2x_SOC)         += clk-tegra20.o
 obj-$(CONFIG_ARCH_TEGRA_2x_SOC)		+= clk-tegra20-emc.o
 obj-$(CONFIG_ARCH_TEGRA_3x_SOC)         += clk-tegra30.o
@@ -22,6 +21,7 @@ obj-$(CONFIG_ARCH_TEGRA_3x_SOC)		+= clk-tegra20-emc.o
 obj-$(CONFIG_ARCH_TEGRA_114_SOC)	+= clk-tegra114.o
 obj-$(CONFIG_ARCH_TEGRA_124_SOC)	+= clk-tegra124.o
 obj-$(CONFIG_TEGRA_CLK_DFLL)		+= clk-tegra124-dfll-fcpu.o
+obj-$(CONFIG_TEGRA_CLK_EMC)		+= clk-tegra124-emc.o
 obj-$(CONFIG_ARCH_TEGRA_132_SOC)	+= clk-tegra124.o
 obj-y					+= cvb.o
 obj-$(CONFIG_ARCH_TEGRA_210_SOC)	+= clk-tegra210.o
diff --git a/drivers/clk/tegra/clk-emc.c b/drivers/clk/tegra/clk-tegra124-emc.c
similarity index 100%
rename from drivers/clk/tegra/clk-emc.c
rename to drivers/clk/tegra/clk-tegra124-emc.c
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
