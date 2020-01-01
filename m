Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AA212DF81
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 17:31:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ysm/FdGS1RniyEZIjmZmXEQiv4Az1QGlLt8eeGJoNQs=; b=gDdGC882mcNuo2mxZMrIIMq2La
	oth629ESipp7qZIF0yxVsBsKon+FsDB4PPy+UPHVrpmefKfx/7y10rmubldgLwdKQnkgL5yOOkt9U
	sSm/FPWxYlaPTA3R9zDy5gPKLhB7qRFqx3+PNE7O9M0YTEyfIhopBR7eCXab1dxVrYFM7liH4oEjI
	KKqT75ga038dP9/RawRv3z1lWw34CXi2eP+KG1EfwJQv3XoeH36GojDjHC6rgqWwxps7pZJv6mHy2
	286JhxF4Jld53W1EqLCoZ9ZNObOj29thZpy09yHRYC47+SsijiTkOVhYzBICgDyGrk0KAladduqkl
	TSzcINoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imgua-00025S-PM; Wed, 01 Jan 2020 16:31:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imguM-0001yc-4o
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 16:31:44 +0000
Received: by mail-wm1-x344.google.com with SMTP id a5so3797035wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 08:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gYZKhe3uyN0VpRDDzaRxilm8f5Lw+XJVpBkexHfk67g=;
 b=HTgpjlTEb7MsRiJ+qHdkhSPVvdCn6qLEjnqyz4BdrafRQwVHY+GaYYyU+kOLy3NTOR
 BIwpcedApB+WNiOwqXDqHUHSzfOVDlqbpSK+lmUIZkhr7TW87OiUaISAhQGwHVY3s8rI
 jp0cCO/s5+0VXfeBr8W6ZnGPucqnqJsNXB7OY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gYZKhe3uyN0VpRDDzaRxilm8f5Lw+XJVpBkexHfk67g=;
 b=I4BRQko1YS/BVORoLs1pRw43MSLgKOCje5xEc8D939FBbWIaR2WBNFZZk2aynNnVTb
 AMRMXNHyPl+QHdSNQDdrd0LiDrIcDdDA+2RaBGbL+/2FWcpgnh43DECpQa3s+e1bmqRH
 irNbA5xGxLnD1H4G3BKkexyxK6NcYDkoWwkFWZl0ju6qKawdtqQU9MtX1U99Daa6WYmD
 +NW7zVI4+ghpcYfok7hE7LTTzn/LYFPxzpF52MOEB6xCOBnHhYEVMjL+WncLuWuFkJ3A
 /ahXdyl/U9unRdq2rA6pqPNw+NiskXjSiw8MvqN+r5XI3vaC8xQwibUHuFGiyxNoUqbk
 qefg==
X-Gm-Message-State: APjAAAX5S4u09z9ZrzKtJtigXKxcOMKUqpuTeFgOW4hXr2LJI1UBxlV+
 EaT2R/qmiRiXxPk5hfMY9yJ4ng==
X-Google-Smtp-Source: APXvYqxt5dEadYXCv/It36ubk7YpAZY/xQe4KFKf52CDIseKqJeFsEQbjh/Hb96WxX0BKATCEdzUDg==
X-Received: by 2002:a7b:c5d8:: with SMTP id n24mr9904376wmk.124.1577896300553; 
 Wed, 01 Jan 2020 08:31:40 -0800 (PST)
Received: from panicking.lan (93-46-124-24.ip107.fastwebnet.it. [93.46.124.24])
 by smtp.gmail.com with ESMTPSA id u13sm6108580wmd.36.2020.01.01.08.31.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 08:31:40 -0800 (PST)
From: Michael Trimarchi <michael@amarulasolutions.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 2/3] irqchip/irq-imx-gpcv2: Add IRQCHIP_DECLARE for i.MX8MM
 compatible
Date: Wed,  1 Jan 2020 17:31:35 +0100
Message-Id: <20200101163136.1586-3-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200101163136.1586-1-michael@amarulasolutions.com>
References: <20200101163136.1586-1-michael@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_083142_276247_C43445D0 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-amarula@amarulasolutions.com,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GPC node on i.MX8MM can not claim to be compatible with the i.MX8MQ
GPC, as the power gating part has some significant differences. Thus we
can not rely on the irqchip being probed with the old compatible.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 drivers/irqchip/irq-imx-gpcv2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/irqchip/irq-imx-gpcv2.c b/drivers/irqchip/irq-imx-gpcv2.c
index 4f74c15c4755..80855f15539c 100644
--- a/drivers/irqchip/irq-imx-gpcv2.c
+++ b/drivers/irqchip/irq-imx-gpcv2.c
@@ -196,6 +196,7 @@ static const struct irq_domain_ops gpcv2_irqchip_data_domain_ops = {
 static const struct of_device_id gpcv2_of_match[] = {
 	{ .compatible = "fsl,imx7d-gpc",  .data = (const void *) 2 },
 	{ .compatible = "fsl,imx8mq-gpc", .data = (const void *) 4 },
+	{ .compatible = "fsl,imx8mm-gpc", .data = (const void *) 4 },
 	{ /* END */ }
 };
 
@@ -290,3 +291,4 @@ static int __init imx_gpcv2_irqchip_init(struct device_node *node,
 
 IRQCHIP_DECLARE(imx_gpcv2_imx7d, "fsl,imx7d-gpc", imx_gpcv2_irqchip_init);
 IRQCHIP_DECLARE(imx_gpcv2_imx8mq, "fsl,imx8mq-gpc", imx_gpcv2_irqchip_init);
+IRQCHIP_DECLARE(imx_gpcv2_imx8mm, "fsl,imx8mm-gpc", imx_gpcv2_irqchip_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
