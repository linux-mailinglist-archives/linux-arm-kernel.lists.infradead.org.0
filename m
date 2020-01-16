Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B1F13F104
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:26:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSqx3GCU837a/wF48hi5ScBm+ugupPRa+ihmom0/L3Y=; b=n8brDM314+SvT1
	x8puhrG9sXrjw03o22RTn1McAuQrBYfKBqov1Ph3YRZ33LbU6Tww+ICTMr3Xcg0hrexxm71DQbwhB
	dB0eG7vmm8YhFGUyAiUAc2PpQrUpJVNd8SMuVO34Gj0xr+9N6B8HWVVlAky0T9F3jsdHFZFzA0J29
	VaclEkRxgZ3OIwl1DW2WMF+6cBdiQVYSdw4wvi76OlVhvVH0V4SJXMOeSO+i8wOv5x4ZH+EVEhBWt
	8qjifHbUf/ODDeNPaGytHa/edVD/zxuzJPVQj3rRxm08cEATjjDBC/VlTCaUngQf8Xmo+6twBgeS+
	re3nhqn/fJ9iA8hLl/JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9ql-0003fS-Av; Thu, 16 Jan 2020 18:26:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is98k-0000bH-CZ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:41:10 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B83B22469B;
 Thu, 16 Jan 2020 17:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579196466;
 bh=wpw707HpFYDq89uTHid5xGLvMj+Vcf2BvVGilTsS0O0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2c1bIu+xGzssicJ8ozhA/mNgUq/3ZezXUknk7vGEkdXAGu9tPVR8KgCoUzjt0472y
 XCgv3h8WFoLjw5mpyUvOFmBjlF2Q/WzzfV58zu/zY24ZNglYuHfBzz6vzZIeG5QfCt
 yx3HhS3vAnfJBjiyUc1fBLAiX/o4JcWsyXUgfFis=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 218/251] dmaengine: imx-sdma: fix size check for
 sdma script_number
Date: Thu, 16 Jan 2020 12:36:07 -0500
Message-Id: <20200116173641.22137-178-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_094106_462402_89E87788 
X-CRM114-Status: GOOD (  12.14  )
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
Cc: Sasha Levin <sashal@kernel.org>, Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org, stable@vger.kernel,
 Robin Gong <yibin.gong@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Gong <yibin.gong@nxp.com>

[ Upstream commit bd73dfabdda280fc5f05bdec79b6721b4b2f035f ]

Illegal memory will be touch if SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3
(41) exceed the size of structure sdma_script_start_addrs(40),
thus cause memory corrupt such as slob block header so that kernel
trap into while() loop forever in slob_free(). Please refer to below
code piece in imx-sdma.c:
for (i = 0; i < sdma->script_number; i++)
	if (addr_arr[i] > 0)
		saddr_arr[i] = addr_arr[i]; /* memory corrupt here */
That issue was brought by commit a572460be9cf ("dmaengine: imx-sdma: Add
support for version 3 firmware") because SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3
(38->41 3 scripts added) not align with script number added in
sdma_script_start_addrs(2 scripts).

Fixes: a572460be9cf ("dmaengine: imx-sdma: Add support for version 3 firmware")
Cc: stable@vger.kernel
Link: https://www.spinics.net/lists/arm-kernel/msg754895.html
Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Reported-by: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>
Link: https://lore.kernel.org/r/1569347584-3478-1-git-send-email-yibin.gong@nxp.com
[vkoul: update the patch title]
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma/imx-sdma.c                     | 8 ++++++++
 include/linux/platform_data/dma-imx-sdma.h | 3 +++
 2 files changed, 11 insertions(+)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 9f240b2d85a5..558d509b7d85 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1441,6 +1441,14 @@ static void sdma_add_scripts(struct sdma_engine *sdma,
 	if (!sdma->script_number)
 		sdma->script_number = SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1;
 
+	if (sdma->script_number > sizeof(struct sdma_script_start_addrs)
+				  / sizeof(s32)) {
+		dev_err(sdma->dev,
+			"SDMA script number %d not match with firmware.\n",
+			sdma->script_number);
+		return;
+	}
+
 	for (i = 0; i < sdma->script_number; i++)
 		if (addr_arr[i] > 0)
 			saddr_arr[i] = addr_arr[i];
diff --git a/include/linux/platform_data/dma-imx-sdma.h b/include/linux/platform_data/dma-imx-sdma.h
index 2d08816720f6..5bb0a119f39a 100644
--- a/include/linux/platform_data/dma-imx-sdma.h
+++ b/include/linux/platform_data/dma-imx-sdma.h
@@ -50,7 +50,10 @@ struct sdma_script_start_addrs {
 	/* End of v2 array */
 	s32 zcanfd_2_mcu_addr;
 	s32 zqspi_2_mcu_addr;
+	s32 mcu_2_ecspi_addr;
 	/* End of v3 array */
+	s32 mcu_2_zqspi_addr;
+	/* End of v4 array */
 };
 
 /**
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
