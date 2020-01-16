Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700CF13EAFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:47:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGcQXrO4t/WjhDdAnunQ55DVIa+B8r+abpUUBgp0ipQ=; b=isyJex+G6AzUDV
	O6VT9y4FaxN8WrxioWpRATavUbugFIbp5AEgXZVGbrv2sKug6HF08TGiOXmNywCNuIv+Ma8Po6H/S
	16PzcoRzUXsZHPGz4K0CA4jb/Lt/mKsrtc05Z/Zi4TgEwsRgsdxIO7kCqzVlWPrCJLHAWpgiTB3cf
	pjrJbg+KxY8Eitpjywmq97g0tt+1oibtvCvsWkKmec5+cVo8l7eWPYluwxgFe9KZ6rrE+zkbbchIV
	RQ6gsWgrLz17gPqBoHWQ1HxfvW8i3XnC6ABmU3xrkjV5/cUICYbJ7GRDmeB1oFFLfGOm05l3wYQaW
	MkxaQIiFqT9l8t3+Md8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9Ex-0007Ak-8W; Thu, 16 Jan 2020 17:47:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8ic-0007aq-8i
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:14:10 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55B65246B8;
 Thu, 16 Jan 2020 17:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194845;
 bh=uuGNeJ84tj3vKL1hOiXrjSINcWLgGHxFYDVBn4t2+3A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UYgEdbjuAnjKzCukJwtEqmFa1qOmv6E7qbiYeOxQb4MYhJOMWQ28zjx1s4iUxUm6/
 4i/S96Q57fYLBZxCA4YnfH6n1zAU81Mn13r2ZenSio8W0sdSxVireRvqf3s5DwWlaM
 ULH1TWqdfH7MNLbSdr2+lsNfig2EEwJPtwSovYDs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 643/671] i2c: stm32f7: report dma error during
 probe
Date: Thu, 16 Jan 2020 12:04:41 -0500
Message-Id: <20200116170509.12787-380-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_091407_166206_D54747C0 
X-CRM114-Status: GOOD (  13.52  )
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
Cc: Sasha Levin <sashal@kernel.org>, Wolfram Sang <wsa@the-dreams.de>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Alain Volmat <alain.volmat@st.com>, linux-i2c@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alain Volmat <alain.volmat@st.com>

[ Upstream commit d77eceb2de99f5d7e0c645bad15511fe1af59e09 ]

Distinguish between the case where dma information is not provided
within the DT and the case of an error during the dma init.
Exit the probe with error in case of an error during dma init.

Fixes: bb8822cbbc53 ("i2c: i2c-stm32: Add generic DMA API")
Signed-off-by: Alain Volmat <alain.volmat@st.com>
Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/i2c/busses/i2c-stm32.c   | 16 ++++++++--------
 drivers/i2c/busses/i2c-stm32f7.c |  9 +++++++++
 2 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
index d75fbcbf02ef..667f8032f8ef 100644
--- a/drivers/i2c/busses/i2c-stm32.c
+++ b/drivers/i2c/busses/i2c-stm32.c
@@ -21,13 +21,13 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
 
 	dma = devm_kzalloc(dev, sizeof(*dma), GFP_KERNEL);
 	if (!dma)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	/* Request and configure I2C TX dma channel */
-	dma->chan_tx = dma_request_slave_channel(dev, "tx");
-	if (!dma->chan_tx) {
+	dma->chan_tx = dma_request_chan(dev, "tx");
+	if (IS_ERR(dma->chan_tx)) {
 		dev_dbg(dev, "can't request DMA tx channel\n");
-		ret = -EINVAL;
+		ret = PTR_ERR(dma->chan_tx);
 		goto fail_al;
 	}
 
@@ -43,10 +43,10 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
 	}
 
 	/* Request and configure I2C RX dma channel */
-	dma->chan_rx = dma_request_slave_channel(dev, "rx");
-	if (!dma->chan_rx) {
+	dma->chan_rx = dma_request_chan(dev, "rx");
+	if (IS_ERR(dma->chan_rx)) {
 		dev_err(dev, "can't request DMA rx channel\n");
-		ret = -EINVAL;
+		ret = PTR_ERR(dma->chan_rx);
 		goto fail_tx;
 	}
 
@@ -76,7 +76,7 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
 	devm_kfree(dev, dma);
 	dev_info(dev, "can't use DMA\n");
 
-	return NULL;
+	return ERR_PTR(ret);
 }
 
 void stm32_i2c_dma_free(struct stm32_i2c_dma *dma)
diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index f4e3613f9361..af32a14550de 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -1914,6 +1914,15 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 	i2c_dev->dma = stm32_i2c_dma_request(i2c_dev->dev, phy_addr,
 					     STM32F7_I2C_TXDR,
 					     STM32F7_I2C_RXDR);
+	if (PTR_ERR(i2c_dev->dma) == -ENODEV)
+		i2c_dev->dma = NULL;
+	else if (IS_ERR(i2c_dev->dma)) {
+		ret = PTR_ERR(i2c_dev->dma);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev,
+				"Failed to request dma error %i\n", ret);
+		goto clk_free;
+	}
 
 	ret = i2c_add_adapter(adap);
 	if (ret)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
