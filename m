Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA6D9D7A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 22:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bf9E9Kto6Ul+dtvpz/Zp4W6uYQ3OkPNkDZMrqoVmA5k=; b=fqZSURaUDBG0ga+Cp5k19cO2Rm
	XcZ+q+OF1VDbmU02fYCqdg+FsZCI9N7+acOsO4VwGq5K9/5HBmEbUeliY9b5WtUZ2vUV6ptFbo7mu
	qMnSu1vMu1bKz19r9f5W7lmjfeeiwXy6TXJgVeVr7D9d1EY1lX1QOcKtDJ42xerZDlmgCAUQkiUkp
	Hyc8SzwdGb5JPLPcXdfd14HL3RRBmcTBOradOI+n4JFBroOoJlNSQhn3xYdNjdSmS2HiSyEkXKsoP
	T6HanKMWWvN1tjgETUkCHTrJbI3J2Q9IPI7VL1NrHVMgFTgOLQ+33Ru4M1ddCw2cLKAQS5gwgOfyV
	ntidqpeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Lu2-0005ih-Sd; Mon, 26 Aug 2019 20:47:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2LrB-0002nM-Iv
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 20:44:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id k2so16604925wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 13:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OboacTrzgAOa6X4jkuvUHc+l7jAME1gqmIpY2bzkzqY=;
 b=PyD+LfjU7OVquXNkhIpuu1n1a7Ab8iOnkoR+6jLIXYZZWBcjBT2NqMthIH6UklpW1s
 QbETODPNNIdMcOEFvYqkj9YryteX7MuLgjyT1j8a4JT5YMxdSwxqYhJ6m4pmw8uawZeo
 Jd2zQQFBws2rVZG/K7HCAGMX0veGaqCnnEisfHTqKu8/czwwnnnupRnnH2CfhAAh6E/L
 abwUbQ5mnY/Yx5qJZOIEglK2RhU7+b81wd4Sn83SqSNMehTm5xH1FC4f0wc5ZkD2H/Q6
 prmV2kpcdp+tWoMM/ru37JKd6+fUBlk3ZUqYBtDTktare9gDoW+NhxNRfsX9k1bgsBAR
 H0WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OboacTrzgAOa6X4jkuvUHc+l7jAME1gqmIpY2bzkzqY=;
 b=uIjX1EarFfpLoUvfxbz9PBMnwvJNSOi/sHwLfbmHpTXDxuz6t6gSFUBdRA3V7KhuXN
 qRzOtK+dXcH/4mzsuQ3vfcECHHSlk+NlIKQb7TqydUW3AQ0gq9OVxzFnP1hsOUN2FPug
 6V9Ys9cWs0YkQRS4bh3+8r2haO4YOFdAaiCTJpt+5TdBAePwwmB+kCqM1pphzuhtlVKR
 x52ZeTvvy2Nzq59X1B6hcUyPMwhHSZpRf251kS0Hps/pF1QFs4ctTKn7zMoO78ojJz/f
 gnO9q3l+w4XqZ10FUXm2Vm68ajdsC9dAejWhsooZ7fMJlUhxSZU83dZpxwnYLKecoLz4
 JCPg==
X-Gm-Message-State: APjAAAXMsedsHYRQ8WKySQXD6rvulBTngmSQaj/5OK55iHkCAGEC/96C
 j+ZqatX6gemlx94gJVuQcdASWA==
X-Google-Smtp-Source: APXvYqwDbuatKmkruPgKaQhGuiQoijDAgy8zV07L44qgXLBO/6UFizDsG2B3QdLPnz3pzfySmZSCDg==
X-Received: by 2002:a5d:4448:: with SMTP id x8mr25331881wrr.119.1566852292217; 
 Mon, 26 Aug 2019 13:44:52 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:f881:f5ed:b15d:96ab])
 by smtp.gmail.com with ESMTPSA id 20sm549557wmk.34.2019.08.26.13.44.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 13:44:51 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 07/20] clocksource/drivers/imx-sysctr: Add internal clock
 divider handle
Date: Mon, 26 Aug 2019 22:43:54 +0200
Message-Id: <20190826204407.17759-7-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826204407.17759-1-daniel.lezcano@linaro.org>
References: <df27caba-d9f8-e64d-0563-609f8785ecb3@linaro.org>
 <20190826204407.17759-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_134453_825068_1CC8C6CC 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The system counter block guide states that the base clock is
internally divided by 3 before use, that means the clock input of
system counter defined in DT should be base clock which is normally
from OSC, and then internally divided by 3 before use.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/timer-imx-sysctr.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/clocksource/timer-imx-sysctr.c b/drivers/clocksource/timer-imx-sysctr.c
index fd7d68066efb..b7c80a368a1b 100644
--- a/drivers/clocksource/timer-imx-sysctr.c
+++ b/drivers/clocksource/timer-imx-sysctr.c
@@ -20,6 +20,8 @@
 #define SYS_CTR_EN		0x1
 #define SYS_CTR_IRQ_MASK	0x2
 
+#define SYS_CTR_CLK_DIV		0x3
+
 static void __iomem *sys_ctr_base;
 static u32 cmpcr;
 
@@ -134,6 +136,9 @@ static int __init sysctr_timer_init(struct device_node *np)
 	if (ret)
 		return ret;
 
+	/* system counter clock is divided by 3 internally */
+	to_sysctr.of_clk.rate /= SYS_CTR_CLK_DIV;
+
 	sys_ctr_base = timer_of_base(&to_sysctr);
 	cmpcr = readl(sys_ctr_base + CMPCR);
 	cmpcr &= ~SYS_CTR_EN;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
