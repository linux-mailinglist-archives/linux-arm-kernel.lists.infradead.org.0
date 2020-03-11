Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B79C181BA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 15:47:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NWhZPzIdsJXeLSkaYAQFgiFTjoAo9sNJaiGYE1zCElU=; b=fIJR+7+vDMmTi6
	JJbDjCY1WVqo/D28DAlkqU7z1EJmg/HYE/EHr2LGcUT5Re7PlUit+m67iIw7DXvZByMGDSDZuanO5
	c6CEskBpWGXvKZCZZPWAZaMp17X8c6E/5uNmcn612Ouror9xVOHEzS2YLvgyRorZPvRxefbHWiYbA
	QmC4UdxKd5gc4WKPgW+0M5wbkT16pJuHJ1dPZ778JRe7RHv73drtA3MCce1pnDNkiqgtYJ9+pYmmu
	tI9vWWt7vGVTuOy4nSWtHHu0VhuOdhQiCjVwWtAtntCR4QVR4PIZS6IjhyAhdGuPB4uMTBSqGJDSM
	euFgTMf6PAfnrGNe3MKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2dI-0006bt-MX; Wed, 11 Mar 2020 14:46:52 +0000
Received: from cmccmta3.chinamobile.com ([221.176.66.81])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2d7-0006WW-22
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 14:46:43 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.9]) by
 rmmx-syy-dmz-app09-12009 (RichMail) with SMTP id 2ee95e68f99e133-7ed59;
 Wed, 11 Mar 2020 22:45:50 +0800 (CST)
X-RM-TRANSID: 2ee95e68f99e133-7ed59
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[223.104.148.111])
 by rmsmtp-syy-appsvr05-12005 (RichMail) with SMTP id 2ee55e68f999482-ecb2c;
 Wed, 11 Mar 2020 22:45:50 +0800 (CST)
X-RM-TRANSID: 2ee55e68f999482-ecb2c
From: tangbin <tangbin@cmss.chinamobile.com>
To: broonie@kernel.org,
	jun.nie@linaro.org,
	shawnguo@kernel.org
Subject: [PATCH] ASoC:zte:zx-tdm:remove redundant variables dev
Date: Wed, 11 Mar 2020 22:46:46 +0800
Message-Id: <20200311144646.11292-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_074641_607183_7C897304 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.81 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, tangbin <tangbin@cmss.chinamobile.com>,
 tiwai@suse.com, linux-arm-kernel@lists.infradead.org, perex@perex.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In this function, the variable 'dev' is assigned to '&pdev->dev',
but in the following code, all the assignments to 'struce device'
are used '&pdev->dev' instead of 'dev',except 'zx_tdm->dev'.
So,the variable 'dev' in this function is redundant and can be
replaced by '&pdev->dev' as elsewhere.

Signed-off-by: tangbin <tangbin@cmss.chinamobile.com>
---
 sound/soc/zte/zx-tdm.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/zte/zx-tdm.c b/sound/soc/zte/zx-tdm.c
index 0e5a05b25..4f787185d 100644
--- a/sound/soc/zte/zx-tdm.c
+++ b/sound/soc/zte/zx-tdm.c
@@ -371,7 +371,6 @@ static struct snd_soc_dai_driver zx_tdm_dai = {
 
 static int zx_tdm_probe(struct platform_device *pdev)
 {
-	struct device *dev = &pdev->dev;
 	struct of_phandle_args out_args;
 	unsigned int dma_reg_offset;
 	struct zx_tdm_info *zx_tdm;
@@ -384,7 +383,7 @@ static int zx_tdm_probe(struct platform_device *pdev)
 	if (!zx_tdm)
 		return -ENOMEM;
 
-	zx_tdm->dev = dev;
+	zx_tdm->dev = &pdev->dev;
 
 	zx_tdm->dai_wclk = devm_clk_get(&pdev->dev, "wclk");
 	if (IS_ERR(zx_tdm->dai_wclk)) {
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
