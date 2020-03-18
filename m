Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D138518A1D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 18:43:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GHx+wXpgaCooBUrorDL9pvTBd1YP7JU7y8CznnUtTl0=; b=asdKXg7e/wvXuzlKQrDFarSO/N
	3YCFOA/UpTRYPquAmop1TcguuO+eGSNzIje3EgL8pVvp9f7PVQPP8oCv4XPmJT4expg1zMDkarg+T
	1nrxnFYcbD8mzN4+GTD31R8RVmZy9OmfgH3hYLZlHD0B0pt8lxB3LpBS9oSeabMzJmGEGvjJqeR7D
	jxEB9KOIdFCV1iluKCi6BNBggPg+ArJwUrencSIzy20+h5iBexiWC2eGL3Q1gNtNadFdiTVsAcaOH
	VWV6K7cfU1iZhQSiHvY0yN+OR3sdcmxdVUk6aD1iaIv8/6JXnibg/Qigow4PkK7kOFuXJ9blm09Nn
	A2fgw6Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEcj4-0006Fq-Ct; Wed, 18 Mar 2020 17:43:30 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEcif-0006AM-SZ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 17:43:07 +0000
Received: by mail-wr1-x443.google.com with SMTP id h9so2737528wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 10:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OLEdaXjtX2QvHFSvAxOKprkBjwmITNNowmzF7dtiz/s=;
 b=mQjz/15GRRq88EJYvE0kMHybmWXH8Xj60dhiU5eD9Rfk0AhEh0M7o+nfRndV3f+nYd
 WF8dK4Bn6fmO+5rHWJhEwVHtZsTV0GHiTDAiJn7LeZXRamhfrcJWkelHRxC18mzJasG8
 8+kH9GfE4DgRVTONcCxAZAstaX1EAEPdCCjAhRBD/qi5jKTsba2kZh6zShA2DzkxonvO
 xoNJoU2AClEKAqOEa5gRCRrqISdUI5LJFoNrq5PXSDRQi+DGE0EygM5ofOGAeqk8juNL
 Vk30bQT4JnEvODf2k6Il9U2G6Ed+7YkQaKoNeA3aBNMYY3Xs9Qd3s4Fs4qUoQOVpgwsP
 PwRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OLEdaXjtX2QvHFSvAxOKprkBjwmITNNowmzF7dtiz/s=;
 b=ppCwMb3mUkARgs3zvcW8lnYbkoqLT2InFqBQwEHf0polIoAyk+gG6SqXSXgmSg8Npf
 QUDIWMfKSAZgiPJH9nGbp5rvlD7EO5P1j2UNXYlmSxhN0ncX5b1/N0LOLksvCqZ9JZGP
 Rv+xxXL88NIyB8jpwSrRdgWauAcIPna6LKX1SNKp/NMPdDPHpwqYrRi997kQutDcrQAd
 8+3TQ3xS3sCuXw3XKZ91Ebeqi5eSnk/CD/LL3k6mJ7mXa3v0Pcwpe+dZ7vQwTAUCY0/Y
 tTN8C+rR/A/W6/fiXF96No8H+nUUVSPHQ0wI4X9gnWIzkqGtvuHxbAI5ApExE36pJY5h
 akmQ==
X-Gm-Message-State: ANhLgQ0cMTB2kINO0r3kgjTxrplt3w44sppZPIU2f4Y3XisszjwVu7rL
 RXxsyO3GXDrkEpqQjkpSGNoJ2g==
X-Google-Smtp-Source: ADFU+vtrXDCNxqZAb1paHCpQ+8ecsai5Blo9z2pHfrC1Pris7MF8wb9y6tQKc9tzR2XpIF3JHbEHag==
X-Received: by 2002:a5d:6a8d:: with SMTP id s13mr6677670wru.11.1584553384489; 
 Wed, 18 Mar 2020 10:43:04 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:5d64:ea6:49bd:69d7])
 by smtp.gmail.com with ESMTPSA id r3sm3787212wrm.35.2020.03.18.10.43.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 10:43:03 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 19/21] clocksource/drivers/imx-tpm: Remove unused includes
Date: Wed, 18 Mar 2020 18:41:29 +0100
Message-Id: <20200318174131.20582-19-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318174131.20582-1-daniel.lezcano@linaro.org>
References: <e6cd8adf-60df-437a-003f-58e3403e4697@linaro.org>
 <20200318174131.20582-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_104305_953773_4E69D2AF 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Anson Huang <Anson.Huang@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

There is nothing in use from of_address.h/of_irq.h, remove them.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Link: https://lore.kernel.org/r/1584412549-18354-1-git-send-email-Anson.Huang@nxp.com
---
 drivers/clocksource/timer-imx-tpm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/clocksource/timer-imx-tpm.c b/drivers/clocksource/timer-imx-tpm.c
index c1d52d5264c2..6334a35fdc2f 100644
--- a/drivers/clocksource/timer-imx-tpm.c
+++ b/drivers/clocksource/timer-imx-tpm.c
@@ -8,8 +8,6 @@
 #include <linux/clocksource.h>
 #include <linux/delay.h>
 #include <linux/interrupt.h>
-#include <linux/of_address.h>
-#include <linux/of_irq.h>
 #include <linux/sched_clock.h>
 
 #include "timer-of.h"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
