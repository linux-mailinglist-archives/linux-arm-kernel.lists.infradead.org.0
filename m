Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD6C116F11
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:36:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SRuKKTnEs+PfjwqjbeQxzLbWzHwn4cKe4iRZ/TGdz+s=; b=h7NaNtDx0I5BBZ
	awYtvJq2f06nedt9u41b1afTQ3XshHn86J+mjs3De0FbFIpr5vsFjEskyGqRiGZPw3H2yrwOQU2VW
	ZoEGlQCDWsZ65deBuyq4+/HcFkArtFIa+Oty8cSFXj9fl1gBovfFL+a3mSZCPaHlv26XdpV5wSaBH
	oeA1/oH8NCWM8PZNlDaVCNOHNKfaDq9Kji7otk8E8yIYB4cRD3H5Y9a/bvL39dWLDj9rPkv59KySH
	fCFskrtWKgiOzf8k+BybFuUxtt2qeONIbRlqK7k9imwhFoQr1bT2QSM1eenM1nTx+Wsp7iC/mtPLT
	KKeJB350EZNk+gRTn5wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieK90-0000vM-2g; Mon, 09 Dec 2019 14:36:14 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieK8I-0000G5-IU
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:35:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id c14so16448141wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 06:35:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ttm9JDpQfFdaivyu5BbcV+zimIykT6JMxYV6nznS1UA=;
 b=gCjs4EjhPSHYsAW88CXORy+zE44wsE1lTpQx0OWcgaWmqOXLNvziJCiN58M091OZDV
 yO00e7ux0J89OhF3MXEF7m36zVfOajSaxdedZKJ7CpT2aSj+MULxVucYhvARR23lpOYg
 T41N0lk4apBmJEvmAjP45oCVT3GfA8D+K4gGz7Ht+Sk39r9W9nRy5YuTlariruguAi9A
 zGSL0oEAEOwOkw8VWuF+iH+pQcaLrVL1vL/SpMhI2IM2rptnNBvgVd0z+fT5ZFuHTPeG
 gRMuc+rO/EqDnYee1TYVZZpd9IYaTBFv9q45wAbZOlj0bFykM+4AHk1FV55kqP45DS/y
 yDqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ttm9JDpQfFdaivyu5BbcV+zimIykT6JMxYV6nznS1UA=;
 b=MVcb7K1dGkU650VNOGf13WnZZ434CQp1jAPjJHrxbAIoPXhdhJ6DJsx9si8HMX9NwX
 EdyRg5qvLY0Mq9n7w78oi5yMUKkaCzufDb/wOYxy6zqZWeJbwfrZ6myTlXswPBirbZv1
 xPTLu3KxUA87Sz41LqEUAZEu++am2rqgQovK1e0iNdxerpsjUSuST7biIjoAvQbUG2iG
 hhR+cRByle3HBlbbXaBO7ftsmz6pOTWGokDmlpwTf2SeX8LQqu+0CK2qJ+KUfpCzkHtg
 zFY3kIN/sCzTIUvdHc/u5VeS/LVhgflEk6XVmK11CyGHF39UAURUizBz4SGVz1kwXp9n
 9mFQ==
X-Gm-Message-State: APjAAAUXH5XwUDYEdbFHH3ZDnz3RZOn5JZ4bOyoGubH/ak3h0XKY09Cc
 ucNaIZmQB57EBg9Vnp01vnQ=
X-Google-Smtp-Source: APXvYqxEVg1sv/FHoGnDe5fHFym5HGmdl2utN2KLxOQtPTp1zpgBVVbM7HzmeOIkpx8OV4eNkdzDmg==
X-Received: by 2002:a05:6000:cf:: with SMTP id
 q15mr2417471wrx.393.1575902129270; 
 Mon, 09 Dec 2019 06:35:29 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id a186sm14283943wmd.41.2019.12.09.06.35.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 06:35:28 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 4/4] memory: tegra: Add system sleep support
Date: Mon,  9 Dec 2019 15:35:21 +0100
Message-Id: <20191209143521.2357178-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209143521.2357178-1-thierry.reding@gmail.com>
References: <20191209143521.2357178-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_063530_627907_856A3C2C 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Add system suspend/resume support for the memory controller found on
Tegra186 and later. This is required so that the SID registers can be
reprogrammed after their content was lost during system sleep.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/memory/tegra/tegra186.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/memory/tegra/tegra186.c b/drivers/memory/tegra/tegra186.c
index 57895116c8e5..77a313f1bf0e 100644
--- a/drivers/memory/tegra/tegra186.c
+++ b/drivers/memory/tegra/tegra186.c
@@ -602,10 +602,29 @@ static const struct of_device_id tegra186_mc_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, tegra186_mc_of_match);
 
+static int tegra186_mc_suspend(struct device *dev)
+{
+	return 0;
+}
+
+static int tegra186_mc_resume(struct device *dev)
+{
+	struct tegra186_mc *mc = dev_get_drvdata(dev);
+
+	tegra186_mc_program_sid(mc);
+
+	return 0;
+}
+
+static const struct dev_pm_ops tegra186_mc_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(tegra186_mc_suspend, tegra186_mc_resume)
+};
+
 static struct platform_driver tegra186_mc_driver = {
 	.driver = {
 		.name = "tegra186-mc",
 		.of_match_table = tegra186_mc_of_match,
+		.pm = &tegra186_mc_pm_ops,
 		.suppress_bind_attrs = true,
 	},
 	.prevent_deferred_probe = true,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
