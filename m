Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 284B518A467
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 21:54:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9zr6X6wN+pHotz9WQ9gU9ewNK2I7ugevCLdn/KnPcY=; b=kcP/fP964jrZHy
	7nipuyZNDDrUGNfLIxUKUpwTz5CVRbQkszB2e2+sQ05SFlf+XCR8B2iqsFD8MgB3GFFfJhkhiajBu
	1r5/HJ1wyhFqJf3qiPOGF3tUVBHJahKthUhwuWjLLm0TQx0w4ms05VsCd+dh1x7vFkDphaXC5yk7c
	pUNL/DRrrn8/qLzOugiYL9C6vjVQB5Sg6A2dQEbIxmMv7drQ2O9EG628Z3CpmvuXfES0ltCr/kdty
	NxDYfFji5CLHLoooEObYu9Gn9ubvayY1Go5vw/2d2aYtBJbItm9kGb2wSwHMLuQJ9oj051qpeXJlv
	Ou1MseHsbbPvcOJCYA/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEfhX-0004qk-O5; Wed, 18 Mar 2020 20:54:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEfh8-0004ZJ-4X
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 20:53:44 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CBD7208FE;
 Wed, 18 Mar 2020 20:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584564821;
 bh=5uS4a+5EJm4CyeOijDRc8Zh+DisVODdHPSDxweM/j/U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=toAxLGlztpQESogpAkn7ob0DdNkvY3Yz0uYUGSAMKb+XuufPDWpskNzwKuwWTFVcZ
 8OlCHqqxERTVhpOHJHH1Wjhhf5+fOw5NLlPf4QtMaGi+7fuooPpnJ2cDwshfHO+2Jp
 t8/uSKhyil4necfKWXxl8O2TN4IHxhDpJT3p4gTI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 03/73] clk: imx8mn: Fix incorrect clock defines
Date: Wed, 18 Mar 2020 16:52:27 -0400
Message-Id: <20200318205337.16279-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318205337.16279-1-sashal@kernel.org>
References: <20200318205337.16279-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_135342_225524_127CD1E5 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Anson Huang <Anson.Huang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

[ Upstream commit 5eb40257047fb11085d582b7b9ccd0bffe900726 ]

IMX8MN_CLK_I2C4 and IMX8MN_CLK_UART1's index definitions are incorrect,
fix them.

Fixes: 1e80936a42e1 ("dt-bindings: imx: Add clock binding doc for i.MX8MN")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/dt-bindings/clock/imx8mn-clock.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/dt-bindings/clock/imx8mn-clock.h b/include/dt-bindings/clock/imx8mn-clock.h
index d7b201652f4cd..0c7c750fc2c41 100644
--- a/include/dt-bindings/clock/imx8mn-clock.h
+++ b/include/dt-bindings/clock/imx8mn-clock.h
@@ -122,8 +122,8 @@
 #define IMX8MN_CLK_I2C1				105
 #define IMX8MN_CLK_I2C2				106
 #define IMX8MN_CLK_I2C3				107
-#define IMX8MN_CLK_I2C4				118
-#define IMX8MN_CLK_UART1			119
+#define IMX8MN_CLK_I2C4				108
+#define IMX8MN_CLK_UART1			109
 #define IMX8MN_CLK_UART2			110
 #define IMX8MN_CLK_UART3			111
 #define IMX8MN_CLK_UART4			112
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
