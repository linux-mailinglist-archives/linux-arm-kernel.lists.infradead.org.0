Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01DABA1F9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 13:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J7zlE7IlAzLnMcTRHh8z7s28P+PSTyBvZtGqEcdMJJw=; b=hau6YWIc+PP1+5
	rPuRRHt1fIO+3f0wfTqC5hcsqp1lLmG88MbXCOsCr1WdY5evijs/8vQ6hmOE2ETPQIorgPyzeBEqu
	ffyhX/6ZsVHfeghpUT8GmoJOOB5AGAxTR8fQkCxCQJ3UKDVERkNdzOyD+AhlE+6OzQengJYdjxdV0
	W4FZbnNelrvqr0BdzE+H4quhW7rstY1Z+Uc/+17mK7qYi3X0vJCClYw1qjP7AgKP377xACj5GIWqb
	AD3QSzelskla/qw86Vz2F4BIOx8kQj7mwuzqG6KBeperR3JgVsUe9URuwYriBo6hrXw+XwuYpSv1u
	/bdXTYxWkCQjDPrvS9ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBzpv-0003kB-AD; Sun, 22 Sep 2019 11:15:27 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBzpm-0003j2-RL; Sun, 22 Sep 2019 11:15:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1569150854;
 bh=HuSS/Nsmyiy+vIY6/zgMOHSKw4ilNpjLipl2kbPtCcw=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=p6KVUwmDPn4qI48673CO2xPXKnvjrHqoRUVYNggR4CW9T0e7apUUbMRZiimWrRXZR
 6Muje6+f1yneAZN6tNmWnRlitjO75FvOYYUzkH5Ue3W9ubQZUtw8dRUPLN3UfXOARx
 N50IwpGkpeq2ZWnudNYhbzxmMGwW2wTNnLpGeSUs=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.8.78]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MIN2h-1iCGvy3Hah-0048JC; Sun, 22
 Sep 2019 13:14:13 +0200
To: dmaengine@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Dan Williams
 <dan.j.williams@intel.com>, Long Cheng <long.cheng@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Wang
 <sean.wang@mediatek.com>, Vinod Koul <vkoul@kernel.org>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] dmaengine: mediatek: Use devm_platform_ioremap_resource() in
 mtk_uart_apdma_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <366e776c-8760-eeb7-c248-7380c9f4fd34@web.de>
Date: Sun, 22 Sep 2019 13:14:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:mIx0kndBCm9PK7nwYec+TCvEc8ha5HPNssCT96eBiG2moCEQroz
 2Uv9dJfWfkMuf2jKFstVCfpsNb7CSfY5gTEDo5u+3lkXgb1EViJMgltiRfwvkFgy0MMqPx0
 52jDxwoHa6x9lUFaZfRwdu8NB38VQsCSlI7eAg9ncr/t6KUasHNJsVLDl1YH9/YAeN5u20x
 D30UZ2z4h6V+b8TOEPCXQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+YCwXgrbzpU=:X5LnqEYcMCnLddjynce+x/
 SLLuBpQpACUF8VkPIs8VC4HyrG5EN5OscdhHky+X+5vCj316ycBkpKvztxIrosd4fVKRg82ci
 ylDs0YjOFNZwUC/G1wJ7/d3ivxXl3HV7bx7z+rBtmUtlW/2h4lfzryje5sHBPZS/Y930ui5g6
 yMGA6wLz+K0JNMzlxIizxJulvv5XF1w1CvBgacdWsscS3SvUovsnD3Zx8g0u452Ov49OgeTIq
 V86NgD2e9xj6uTIhHKDC326mGAoBZ2ee9Aw3/JZh9ZcwWy/MLl1CxBn/6aoFP1u3eCHjEefJs
 HuZ6+m4fnLfazO6TXbukR2pj7H82+BFt1RiE5Uo5f3AFfYPHlJCke2lo6aLclwErsL3Y7Id8d
 SXeGqJg4ueH1n5kAjnnGcNGhhol0LfcMu7vSk/WgfxhFSSywPlKQFBQOj8Q222pN1NL2OeNPg
 g1QJXLJDP7iGGm1weopL6NGwYuCxkQxCZUlpSFPT1ex6vi/NRxXdvX1eZYaupPDnhtxrvIuUc
 1kxk8BoTCmcW9AIQi7SAD1yEUP3VXW7ZYDmOOEw3NtakL5KQp9X5hHw3nocR/npQJ0z3Ml+Rl
 Y5DdRlZe0IzbRD5GLFF8s9GLehY2zDMG+Z6glRNHVZwb9pGFxRv2H2Js8935v71/YdC+1kZ+y
 FQ3NXf3+b1bbAFc0jxA6Q3gJ7pv7d7jTVcmHN1eZlOsvHJ0pIVMmfQdO7E9BFdy6JgeFGnR8v
 G7IuFXcMUwOhTmRojPdWoVEAsMEVrTeSJBYrYgRSRNFcLxaqB2sY35A65bAmfuns32Uz0kQhx
 2jt5Z6ZTWzJBFnKirEZDonGlShXbp+VaR8PQlnWsGiZHpgdxa6qLhN9mTCb5kMwyXi8YGby6c
 EAFWke3kGzuz4HJTyIcRQzT0xJGkRhOmToNQzXEv9FogK8DrTC6Ct82molH+mxHPdyFyZ8kTi
 yktnwEEAUTJRxv2KpgBJt1fc/lZaUW9lYpbWgrUKzdpqqEr2BJJrV+vXMPpzI8tr91cCC9ve6
 SLHazyBYJLhgah3n99BKoUcqxZq0yghhEg0LsMCr3ylsDca2jZObvo5+OpCd59/5VItED7tkd
 +yk4OD7zSavQF/ev9o3jYUmPKMnlyxGot2WrxBIrO/CASBIOm7n4edc40XmucJzWXr9VPQLPu
 gJDF7akjZuhLq1mPrN5kZ9tjRgKVrwMplwTM854rbEd+F6m55dLVJZ9W2gVtJJvFKczVJPYWx
 LsHrskQg/y5xWWR4YvVX/ndAK62hrpsdd+N+HlPR1wtbUCDaLoGoQATrIKiY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_041519_242358_0FD7F038 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Sun, 22 Sep 2019 13:07:41 +0200

Simplify this function implementation by using a known wrapper function.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/dma/mediatek/mtk-uart-apdma.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/dma/mediatek/mtk-uart-apdma.c b/drivers/dma/mediatek/mtk-uart-apdma.c
index f40051d6aecb..c20e6bd4e298 100644
--- a/drivers/dma/mediatek/mtk-uart-apdma.c
+++ b/drivers/dma/mediatek/mtk-uart-apdma.c
@@ -475,7 +475,6 @@ static int mtk_uart_apdma_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct mtk_uart_apdmadev *mtkd;
 	int bit_mask = 32, rc;
-	struct resource *res;
 	struct mtk_chan *c;
 	unsigned int i;

@@ -532,13 +531,7 @@ static int mtk_uart_apdma_probe(struct platform_device *pdev)
 			goto err_no_dma;
 		}

-		res = platform_get_resource(pdev, IORESOURCE_MEM, i);
-		if (!res) {
-			rc = -ENODEV;
-			goto err_no_dma;
-		}
-
-		c->base = devm_ioremap_resource(&pdev->dev, res);
+		c->base = devm_platform_ioremap_resource(pdev, i);
 		if (IS_ERR(c->base)) {
 			rc = PTR_ERR(c->base);
 			goto err_no_dma;
--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
