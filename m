Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF18AFAA4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 07:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y25aE3uXAzYy97DhxquagZ/cTnm56LjQMuW7MiLF8k0=; b=LnO7uVmxDVuSMy
	FWRPR9dRKFqSpQ7s6bJgcxVX1QHDU5KTC1aKFstdSDm2P+fnE9gB247j/o2RjhTxAEcIXbgLtGur5
	ZHbdr1j57ekAitSZImxl6+jsuJPDsHXoiF+mMuYAo5OtGaIzuVv90lxxvQbzFLENNbe8nTqNddyoU
	dPUvnFysd/P8rgu5FKVAsfo2kt+olAQpn2KMJN0jdvF52j2hKUR/2Cg2U/ueeejDOrZ3N+eGjTXYH
	T1/kXOgOe81ahIWc0fhaQMEPbVxfyhUWKfflfMxe/S9cSicA6VtIi0T6aNzs4xdao8f09dMFmNea0
	09wLN6WUyslgEYH7xmsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUmIJ-0001sO-B7; Wed, 13 Nov 2019 06:38:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUmIB-0001re-M7; Wed, 13 Nov 2019 06:38:16 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay6so654487plb.0;
 Tue, 12 Nov 2019 22:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WLiRoMZ+yFPRoCGfEsARIdmeJYcG3ERIAnLJLg5wK0c=;
 b=vLcgQJ+JfOET6Dta9ztvWBh0hP4Cvr+nOgR+PA2feR3CwMaC2+AIzyBPquzj52BCM8
 lFNvfz9iTm8qFQpxeoC7Nx94ccNNkrr+DrI+1yO/xHkntkc9x+Nj5ff1qotZIzVfMb1s
 GNTTTENoiPoqV3sGuVVlTqHEzZn2haNvvdc7EwFBcW5dp5i9HPyP1stTgrabZPiIvuky
 UV1kMOG8l6INymR34RtSe2zvGGoawgrr/Ryu/wECWhVOoRz2ya3mn9V5P9S6yniylKRN
 4Xm0rN6ZA2FEo0cy1XFaY/TuybMrTCVdfWCI3wZ6L7qm1jbpv87SkGIWND3mdEWSPv6v
 0A/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WLiRoMZ+yFPRoCGfEsARIdmeJYcG3ERIAnLJLg5wK0c=;
 b=OaTxJmrRKQStaJe3MVcGjtTfjX7sGszJwY3V4qCzsJkaHAJahySQW12leafl0VsMSv
 w7BZiqTMOti7AceluZb7KGrLZG2Y7Qoup0Mzu9qmzVW+dzwbL1ay/ktqa26IPSYaSyaK
 ck396058ib9AAw449h+d46o8CmqZFttjIitltkhlDmBbvzMSuFGQNSe56N01Ik2qWjMZ
 pWp5+OXamX7baKztCa8Bo27+pkbnELjq+mSb0ynjyxD7qwc7xbjGawWYDxEU8iBVo5Bk
 BI9mEQt50g1ow3LBslnww9885oOa/r36Q6LkD34CRqI/iTDjyYbVLnL8pSIsBcSdRYBO
 iNIg==
X-Gm-Message-State: APjAAAV2sN+Se2lyWiSmQzTJjoDRsepEDSRlCBy0rmGtynzTo8hPT8IX
 TkwO0V0k3jJ1iKqSQVbRSGA=
X-Google-Smtp-Source: APXvYqxkwHt/TJTAEncicU6ZqxguK637g6oSnIkIAbEXKBP7Wn/waVVv7YtupAcPuqTYaTM/YHI2cg==
X-Received: by 2002:a17:902:aa95:: with SMTP id
 d21mr2041503plr.182.1573627093320; 
 Tue, 12 Nov 2019 22:38:13 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id r13sm1290060pfg.3.2019.11.12.22.38.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 22:38:12 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] media: platform: mtk-mdp: add missed destroy_workqueue in
 remove
Date: Wed, 13 Nov 2019 14:37:59 +0800
Message-Id: <20191113063759.8838-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_223815_723815_650C1C7A 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver misses destroying wdt_wq when remove like what is done when
probe fails.
Add the missed calls like what is done to job_wq to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
index c1e29a46ae69..aeaed2cf4458 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
@@ -229,6 +229,9 @@ static int mtk_mdp_remove(struct platform_device *pdev)
 	mtk_mdp_unregister_m2m_device(mdp);
 	v4l2_device_unregister(&mdp->v4l2_dev);
 
+	flush_workqueue(mdp->wdt_wq);
+	destroy_workqueue(mdp->wdt_wq);
+
 	flush_workqueue(mdp->job_wq);
 	destroy_workqueue(mdp->job_wq);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
