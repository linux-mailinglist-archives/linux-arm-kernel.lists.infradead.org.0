Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A771318C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 20:31:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a/Z8yqu+/V+QkKCfBtY5ugtyfySf1botsFbONC5di84=; b=uoOUQbao5IFiaD
	6W7Ffu6yeESSFB/Slk5fvRge3Hp16aEwtDaQehIW9aTERg+goDsx/rXQ6H8T5ZsuVIPO7EBbE+TbL
	UwiN2TtwXRc6pI8mxBzzAHIWXcg2Q2gi0vYVn4AuGA3Tkmxp8QcsVcwF6bjbxpB9Ko8dvIUSPpgur
	ITgLkhee0aHvA7fDrHYJ2DVwr2XzFPnKssiC/bofR/bW9z6T7/LnVDiaEg6qmeRcEKfKe67+qtiCz
	GX006HQQFYcYIPY5I02NgdbFt/cPdCtBFb7V/44w4WgLZhRSRQsB0uB06whZkMBa9KFVrMnM3EMtv
	VNMRxnIU/Cljqr1QcMfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioY5h-00011s-TF; Mon, 06 Jan 2020 19:31:05 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioY5b-00011H-JY
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 19:31:00 +0000
Received: by mail-wm1-x342.google.com with SMTP id m24so16229290wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 11:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h+Ho1Pj7J9GuDhhBZpvri/eVbdt/D+i9M0mADHfjbgE=;
 b=AZ0GQGKU8r7d3GoITl6teTa4tNztNUC8EnLvD7dYehXxtRaqWMKEFCyc2QOK7b8OV/
 JDCLA/e0YuLZj1zwJbtI3sUaZhgwrDH/zn+zI9W3WMGlU98PG5DfiA320CBsdOzpis+C
 loP8Gzv4OwMAakU1l2GnbV1a8TStBfX7O2nzxLuOQRCkHutC3PRgjLsFUikxnqWoIxIb
 WgPXZNX+Qrb8F5wM3i7bWwDJ1qnQJMPyACa2C/cop9kNq14Yof4QKwXhImCnKM+NRRo5
 Zn7ELNpEDz+G/5k1Y3JWnzx8dWqXClr4QtdxSVxHf5q+ntbANetmJ86H+UfDDLxUDOJm
 RtPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h+Ho1Pj7J9GuDhhBZpvri/eVbdt/D+i9M0mADHfjbgE=;
 b=ddPTbegu7Xe5Mmx7x7Lif1gT23M4T8sBNQWINHJ19mn5IkDbVMeUulGP9Uxn/U2V9p
 qXcblyTO87bYwaDA9Tqrz/4vTvzP4D9gR9lIaxhicW3QKuzF+nHREu+QfFlPcx/Hihis
 TlSCk8KIgXnAYQZcdE8fX/US0t39hIsbiqWKEKHNjYZT17aYLPmhEw0V7Et2y24L2T0O
 +BrhDW6CITR+o8Yl9LuhrtWuiybGl3k2QjhbJnBK1uWAcfQhj5hJaltIrP7liGpO6vaf
 Cq+0yXkvM+DovTNZRMz0YjPpKeT4cjiewtaO9qB9zeAJZ0Sx74OifyWXBiagRWcPM7ws
 JFiA==
X-Gm-Message-State: APjAAAUW4G3CBKRwbTeptjK5x8cXoZOHmsFUfuyLfBjgXlFECw6I7lOu
 yVLbddSuvahwowaOiWoQZcw=
X-Google-Smtp-Source: APXvYqyMpnlA1NKMCSBr0d99djCgQuz0ptyKFjmP+kFlJqkUVN0JiliK2oWB0YKkldrABpwGwhHX6g==
X-Received: by 2002:a1c:6a13:: with SMTP id f19mr37837776wmc.20.1578339057153; 
 Mon, 06 Jan 2020 11:30:57 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id z83sm24100123wmg.2.2020.01.06.11.30.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 11:30:56 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH] crypto: sun8i-ce: fix removal of module
Date: Mon,  6 Jan 2020 20:30:53 +0100
Message-Id: <20200106193053.2884-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_113059_668332_C4731745 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Removing the driver cause an oops due to the fact we clean an extra
channel.
Let's give the right index to the cleaning function.

Fixes: 06f751b61329 ("crypto: allwinner - Add sun8i-ce Crypto Engine")
Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
index 53739507c8c2..f72346a44e69 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
@@ -624,7 +624,7 @@ static int sun8i_ce_probe(struct platform_device *pdev)
 error_irq:
 	sun8i_ce_pm_exit(ce);
 error_pm:
-	sun8i_ce_free_chanlist(ce, MAXFLOW);
+	sun8i_ce_free_chanlist(ce, MAXFLOW - 1);
 	return err;
 }
 
@@ -638,7 +638,7 @@ static int sun8i_ce_remove(struct platform_device *pdev)
 	debugfs_remove_recursive(ce->dbgfs_dir);
 #endif
 
-	sun8i_ce_free_chanlist(ce, MAXFLOW);
+	sun8i_ce_free_chanlist(ce, MAXFLOW - 1);
 
 	sun8i_ce_pm_exit(ce);
 	return 0;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
