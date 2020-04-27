Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CD11BA202
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 13:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=heZhi+S23zfcJpfy+fMwhmekrcGLzMSBLAlOh/B7IJg=; b=I/2n0PNOaLR+Ir
	m6NZtiIFN+VzprsBl7w8mp9bZYZPa+F2cpyye1Ar9c1bJuaWYHJEFYq1tnxLghJg1RmNYshnUTzib
	q24HnbRl0QDodOaipD950DdBLIy8SvhHJKCTzqzNbPjf9EGQHfb6Lh6hboFkPOo/Do0bRiimf2947
	+eEjbzRleAlV2ODJmDuLjZ8d1EarPzr8WUJKj/T5k9Nhr95mJUPjtQOL9hAAxpwouR6nxUN1NQhXx
	85K0KUZH7HkGjrlKg9MTlMhcU21L2v9hTWMGL2+Z0ZWiWeq8lTSSG/5I5jQSmRgLamDMkSud/m193
	7ISODBjMCRYc8NeEgdPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1fM-0007yq-38; Mon, 27 Apr 2020 11:11:12 +0000
Received: from smtp07.smtpout.orange.fr ([80.12.242.129]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1f4-0007v4-Fc
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 11:10:59 +0000
Received: from localhost.localdomain ([92.148.159.11]) by mwinf5d13 with ME
 id XnAl2200P0F2omL03nAman; Mon, 27 Apr 2020 13:10:51 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Mon, 27 Apr 2020 13:10:51 +0200
X-ME-IP: 92.148.159.11
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: okaya@kernel.org, agross@kernel.org, bjorn.andersson@linaro.org,
 vkoul@kernel.org, dan.j.williams@intel.com
Subject: [PATCH] dmaengine: qcom_hidma: Simplify error handling path in
 hidma_probe
Date: Mon, 27 Apr 2020 13:10:43 +0200
Message-Id: <20200427111043.70218-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_041054_798266_DFA62985 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.129 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.129 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no need to call 'hidma_debug_uninit()' in the error handling
path. 'hidma_debug_init()' has not been called yet.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/dma/qcom/hidma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/dma/qcom/hidma.c b/drivers/dma/qcom/hidma.c
index 411f91fde734..87490e125bc3 100644
--- a/drivers/dma/qcom/hidma.c
+++ b/drivers/dma/qcom/hidma.c
@@ -897,7 +897,6 @@ static int hidma_probe(struct platform_device *pdev)
 	if (msi)
 		hidma_free_msis(dmadev);
 
-	hidma_debug_uninit(dmadev);
 	hidma_ll_uninit(dmadev->lldev);
 dmafree:
 	if (dmadev)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
