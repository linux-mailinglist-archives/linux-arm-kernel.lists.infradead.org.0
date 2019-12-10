Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2201197A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:34:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mu5fS/A2hMrn2ngbZ5ChCCHKf0X+EQgxmyl3+hnUgLQ=; b=oHBUFwrIf9CwcG
	CJjjVh18Eu/uJLAELpK1qQzgUrvuT/U6vGWMqXW18fHB0ir7Sz4rptlLp/vBfSWC/evSLXJ7CBPkm
	b6pEJn9jZbdKvS8E9ny6QJMiIyUMlramh+eBd6lNsiDXuZiUhn0SM++k2oWFNvDVlacf4prnO60O9
	25iVmO90QkSwgYmV7E2c9eSQzZJyBu0lhz13xLL/Mg0rTgXfHxIMX56/vWvj/c26iBVBakJSaI91p
	q9Jf4icm3LpcxBPwPKe4RKT288gxw0lWlPKAbEpGpF1jeG2lWlh5jBJkhp/WKQzVVDAa1RWdJB1Jn
	mUoSkWPs5UyMRgcwQsPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ien9U-0002qC-9W; Tue, 10 Dec 2019 21:34:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ien9F-0002jn-Gc
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:34:27 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A09C22464;
 Tue, 10 Dec 2019 21:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576013665;
 bh=BaOJLlsaJCuwyylSLKMNeU454E8WKcHKVG/Ej1RBeow=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=et2Ys//IG+GzwStFn7P/tad0zhDqBmKUZjpwfveO4NTs8Lzp/Cx0WCHbWY5ATWNF+
 5LrxVnJG4eli+LX4lkSRHp1M/NYptX0Fmu8qNtdnTousvlYkkpVM1MO5cOj5qPq9Nn
 SM3N1ZPGXi2tWtPt3untK0DW8yWCJpMW2Q6HVBYs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 102/177] nvmem: imx-ocotp: reset error status on
 probe
Date: Tue, 10 Dec 2019 16:31:06 -0500
Message-Id: <20191210213221.11921-102-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210213221.11921-1-sashal@kernel.org>
References: <20191210213221.11921-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_133425_593583_0660217D 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

[ Upstream commit c33c585f1b3a99d53920bdac614aca461d8db06f ]

If software running before the OCOTP driver is loaded left the
controller with the error status pending, the driver will never
be able to complete the read timing setup. Reset the error status
on probe to make sure the controller is in usable state.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Link: https://lore.kernel.org/r/20191029114240.14905-6-srinivas.kandagatla@linaro.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvmem/imx-ocotp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index afb429a417fe0..926d9cc080cf4 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -466,6 +466,10 @@ static int imx_ocotp_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
 
+	clk_prepare_enable(priv->clk);
+	imx_ocotp_clr_err_if_set(priv->base);
+	clk_disable_unprepare(priv->clk);
+
 	priv->params = of_device_get_match_data(&pdev->dev);
 	imx_ocotp_nvmem_config.size = 4 * priv->params->nregs;
 	imx_ocotp_nvmem_config.dev = dev;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
