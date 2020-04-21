Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EDD1B326F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 00:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GP4nNXrwsIht+MbLZGWJlPHsYghoeEwGgTf9OxsvHms=; b=L9+Tn6VRiKBVYQ
	tbdkSVh4hIKx8WuHoDHvWrPNLygQf3kPJ75SGA95rHj9ErMykSddBiTEIMl+MLnX3dWMIyUK7CXO3
	6G1z0VBUbqL1/cgl13SeAdQyLE1XF1v5Mz2kXNrPTFnhnfpR36rxTJtnwvROyG7u+lr7Fd6pfh5mN
	B9o/x3xZAVWH7LfV5Jde/lOpD9wNHSvEockrQ9j5Fc3tWuSk+9jIavCrN5kGNoNMGpW3miS2YM+ME
	hH8Ij0gicO5+MS48rC3QBZ3OoYixxtdZpun4v4XrlyGeYVWFvHnTXTdqwUyDPk5JDQW+vttAlD8yO
	dEXh6GhRBnWkYJP4H5Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR0x5-0005FW-RC; Tue, 21 Apr 2020 22:01:11 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR0wy-0005Df-Ak
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 22:01:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id v4so3409401wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 15:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6AyHLOTZao8epI2YFOeKhft6dXxmLHMbz1NBrxSQgIU=;
 b=DrJU+M4rLkdb8ASj/JJsH3Gh6B42FOHsIOYnm9QZ9q6Z4z5m5qewETOsHDnB56Jw5Y
 njqqrfHM9Mzq3LHVChjx54D5FqFtEnikIjaPBQSaLB3n09NI6VSybXZ86yWo9sjbfnzo
 9aTrtKj0aPf11+FZ0pWu3f99BeOuGlWUP9N6BcRsbYrw4FWKZ1CiVjzFkBea1R/xt5D/
 OP4By5NgzSn0R6buB37OWWV3pOlA05rf9ZlogWO+n5UIef+DP4wmg1eL1F3BCjX2koxY
 nPU2utw8XiRw3WR/PbF9jJIJdXhZpC3U+c47q6zO1BTNgt7QbjkS3AkyWA1hrDdyzZ49
 bs5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6AyHLOTZao8epI2YFOeKhft6dXxmLHMbz1NBrxSQgIU=;
 b=S8oYETIyWhN+3He9x09lIefQYw3usp2ZMIoFz7nsq7UBAKkAQ/slCMbfjb4icvHK2X
 dkVanY3Dy8nZfIWPOH922MRuxHIPg6Q2Wt73UXfRLIijOXJ9/chHRIwSN1jLvAuNEL8C
 hT/Hx6Pwa5IT68GY4WUfYg7M+FDDR7I+QarE3DUoiqr0/REYwRDgml0IISS26DGsafxM
 M/jbnUMClneQvW+Pmtt7TjsXXaFgaKPxbvyvqupV2Ffi73MYJeKPy9Eap5wD0bWsjERv
 t41TqIKmVXwZ6Voaf4WcGvKIbzqePe7GHMVWkaAbDIcPFKnAROUhNG8AeSoaGHrZRwlU
 UyHA==
X-Gm-Message-State: AGi0PuZCkJ0n5kQWbrK73igOepkjI3B2CfrZVlTcbDR1wz+VBAi5whMW
 qXhR0WWnGNrtCR11/4tUQbg=
X-Google-Smtp-Source: APiQypJGHMIeDkpwNvyI+qkhVGVIY4+32vcT29mvquU8eOzHfdr5ghoBLU3cBzaJzInvcOKVg82FNg==
X-Received: by 2002:a1c:770e:: with SMTP id t14mr6721404wmi.187.1587506459564; 
 Tue, 21 Apr 2020 15:00:59 -0700 (PDT)
Received: from localhost (p2E5BEDBA.dip0.t-ipconnect.de. [46.91.237.186])
 by smtp.gmail.com with ESMTPSA id h6sm5303447wmf.31.2020.04.21.15.00.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 15:00:58 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2] firmware: tegra: Make BPMP a regular driver
Date: Wed, 22 Apr 2020 00:00:53 +0200
Message-Id: <20200421220053.3442050-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_150104_393883_F072B275 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The Tegra BPMP driver typically ends up deferring probe because it wants
to attach to the SMMU, so there's little sense in registering it at the
core init-level.

One side-effect of this is that the driver will be probed later even if
it doesn't want to attach to an SMMU, which means that consumers will
end up deferring probe, which in turn takes care of ordering the suspend
and resume queue in the correct way. Currently since suspend/resume
order depends on instantiation order, and because BPMP is listed at the
very end of the device tree (after most of its consumers), the suspend
and resume queue is ordered wrongly, which can cause issues for drivers
(like I2C) which suspend after and resume before BPMP. In the case of
I2C this typically leads to the clock failing to enable.

Besides fixing this suspend/resume ordering issue, this also has the
added benefit of allowing the driver to be built as a loadable module,
which can help decrease the size of multiplatform kernel.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v2:
- make driver a builtin platform driver and suppress sysfs bind/unbind

 drivers/firmware/tegra/bpmp.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/firmware/tegra/bpmp.c b/drivers/firmware/tegra/bpmp.c
index 6741fcda0c37..fe6702df24bf 100644
--- a/drivers/firmware/tegra/bpmp.c
+++ b/drivers/firmware/tegra/bpmp.c
@@ -6,6 +6,7 @@
 #include <linux/clk/tegra.h>
 #include <linux/genalloc.h>
 #include <linux/mailbox_client.h>
+#include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
@@ -869,12 +870,8 @@ static struct platform_driver tegra_bpmp_driver = {
 		.name = "tegra-bpmp",
 		.of_match_table = tegra_bpmp_match,
 		.pm = &tegra_bpmp_pm_ops,
+		.suppress_bind_attrs = true,
 	},
 	.probe = tegra_bpmp_probe,
 };
-
-static int __init tegra_bpmp_init(void)
-{
-	return platform_driver_register(&tegra_bpmp_driver);
-}
-core_initcall(tegra_bpmp_init);
+builtin_platform_driver(tegra_bpmp_driver);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
