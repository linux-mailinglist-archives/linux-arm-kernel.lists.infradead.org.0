Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D0D1B0E3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 16:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xLPqstBFsqU59RdaNcIZaAHe+aEmOkvIOqJxfWS8EoY=; b=C02LKSS/2nZfq0
	dJ/Dm2nTFVFHn8zJJb2TCF2MoeNiZa4ZYQb/4TCKCVvCabc/i+poilXjr3aU99XHNI+CnMOrHZ04z
	ch4UMIBalJ59dLQxJoDRYHVhHkuoYNCfappWRwsqSRm924oMpc6ijpWbHHzCJYsp7W83VOniD64wm
	BbxOP32ieIZNWBJ0Cflf0MseUQNH23JVYT08KBa4f9XPY3rLJTcWulSyBBxl33Il5eBtqLDr0YsVJ
	ip9TFCEtAO7jh4rUFyy5irmDRnko8co1OQ+ho2JqNVhu5VyvPmekQY3DiOFIXlMlJT4vQS1D+JVAg
	6kEO/x+4Q8gi26lmmkMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXLM-0006nj-SL; Mon, 20 Apr 2020 14:24:16 +0000
Received: from cmccmta2.chinamobile.com ([221.176.66.80])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXLA-0006j1-4B
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 14:24:09 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.3]) by
 rmmx-syy-dmz-app06-12006 (RichMail) with SMTP id 2ee65e9db059c75-d6d37;
 Mon, 20 Apr 2020 22:23:21 +0800 (CST)
X-RM-TRANSID: 2ee65e9db059c75-d6d37
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.1.173.179])
 by rmsmtp-syy-appsvr02-12002 (RichMail) with SMTP id 2ee25e9db056663-c7edf;
 Mon, 20 Apr 2020 22:23:21 +0800 (CST)
X-RM-TRANSID: 2ee25e9db056663-c7edf
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: broonie@kernel.org, perex@perex.cz, tiwai@suse.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, lgirdwood@gmail.com
Subject: [PATCH] ASoC: mxs-saif: Avoid unnecessary check
Date: Mon, 20 Apr 2020 22:25:09 +0800
Message-Id: <20200420142509.9728-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_072406_521360_293FE6B9 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.80 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org,
 Shengju Zhang <zhangshengju@cmss.chinamobile.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function mxs_saif_probe() is only called with an
openfirmware platform device. Therefore there is no
need to check that it has an openfirmware node.

Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
---
 sound/soc/mxs/mxs-saif.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/sound/soc/mxs/mxs-saif.c b/sound/soc/mxs/mxs-saif.c
index 1e38ce858..64c095b91 100644
--- a/sound/soc/mxs/mxs-saif.c
+++ b/sound/soc/mxs/mxs-saif.c
@@ -736,9 +736,6 @@ static int mxs_saif_probe(struct platform_device *pdev)
 	int irq, ret = 0;
 	struct device_node *master;
 
-	if (!np)
-		return -EINVAL;
-
 	saif = devm_kzalloc(&pdev->dev, sizeof(*saif), GFP_KERNEL);
 	if (!saif)
 		return -ENOMEM;
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
