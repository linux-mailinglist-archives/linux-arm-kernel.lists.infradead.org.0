Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A7E1721D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:07:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lotqqqp0ZdREY1lliYmbagR+2BuqPzZbppob70eSfDg=; b=psWZ5HVJ+XgR40
	Ey4Qr+tv/UzI8jqNJWj2Xxoqcd3RX2YEtkBUlL9EZ3cj6cLFsq8ruRRpBUP4ljkzfxqCmTEnVnKnN
	SVEyh3E9ZSlNzRNkvPr7M/Ogzcm0PJ70YCCOh5CQJiuMh39buY+OT8RDYwBsIj6jPH7KJw6E6dTmR
	pd6hrcKHtuNm3dzyE3QyjxTTIT54HbERN3D3UXYvDhfka49HdRQH02o3m3G1SUOiPljGIaAwrNEGs
	KM2MKxyIrhSSc0YhymHaHJRbzgAGrrmw3NleTfiJeyRvmsIYFodW2tmz+q/JtB2+IgYDE6D6yWEV9
	CyXLlFAWK9u017iQJ8Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Kkx-0006S4-L5; Thu, 27 Feb 2020 15:07:19 +0000
Received: from cmccmta1.chinamobile.com ([221.176.66.79])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Kkm-0006R3-OX
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:07:12 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.5]) by
 rmmx-syy-dmz-app01-12001 (RichMail) with SMTP id 2ee15e57dae9a8b-6b391;
 Thu, 27 Feb 2020 23:06:18 +0800 (CST)
X-RM-TRANSID: 2ee15e57dae9a8b-6b391
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.3.208.163])
 by rmsmtp-syy-appsvr03-12003 (RichMail) with SMTP id 2ee35e57dae7dd7-0fbc8;
 Thu, 27 Feb 2020 23:06:18 +0800 (CST)
X-RM-TRANSID: 2ee35e57dae7dd7-0fbc8
From: tangbin <tangbin@cmss.chinamobile.com>
To: jun.nie@linaro.org
Subject: [PATCH] zte:zx-spdif:remove redundant dev_err message
Date: Thu, 27 Feb 2020 23:07:01 +0800
Message-Id: <20200227150701.15652-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_070709_297978_CCB8AC66 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.79 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, tangbin <tangbin@cmss.chinamobile.com>,
 linux-kernel@vger.kernel.org, tiwai@suse.com, lgirdwood@gmail.com,
 broonie@kernel.org, perex@perex.cz, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_ioremap_resource has already contains error message, so remove
the redundant dev_err message

Signed-off-by: tangbin <tangbin@cmss.chinamobile.com>
---
 sound/soc/zte/zx-spdif.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/zte/zx-spdif.c b/sound/soc/zte/zx-spdif.c
index 60382ec23..a3a07c073 100644
--- a/sound/soc/zte/zx-spdif.c
+++ b/sound/soc/zte/zx-spdif.c
@@ -322,7 +322,6 @@ static int zx_spdif_probe(struct platform_device *pdev)
 	zx_spdif->mapbase = res->start;
 	zx_spdif->reg_base = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(zx_spdif->reg_base)) {
-		dev_err(&pdev->dev, "ioremap failed!\n");
 		return PTR_ERR(zx_spdif->reg_base);
 	}
 
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
