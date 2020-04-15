Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC321AA955
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 16:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xHiAz2or7xX/HeW5apSJBrnffxyw5YNFZYTaiJ3A9wI=; b=lpq19ynqXDmPXY
	hukhMDxJ8c5NJ/Kw96TVAhZimmyQ1HmbQwEFkdqeAVPKRxQB7WoLI+5JDkH16RcJvoVXtBktPPaA5
	RTiJ4JhxWRHxGnTL7Of7KQf9S9qG52AVhVltAgSkIAu9obX57GxD9Srl3nbn3fsn94e49HG7/iMtC
	8uC4AjEd3vo1lM46ViQVBqj96/XKG31fyJq16Z6dWBG7VLIKy9aTImFSu9vbSHxx2eJ8UKegqmK5w
	pyg/+AdJp14fT/txJcQBDlf6nMOMHBbKrAkFmitk5XjqQZ4ZeDxJp633lbaZxMQn5NB0QSuFVcIGe
	UVZ3sJefopYdHzmFbB+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOifk-0000H1-S3; Wed, 15 Apr 2020 14:05:48 +0000
Received: from cmccmta2.chinamobile.com ([221.176.66.80])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOifZ-0000Fr-Sv
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 14:05:43 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.13]) by
 rmmx-syy-dmz-app05-12005 (RichMail) with SMTP id 2ee55e971487913-6db1a;
 Wed, 15 Apr 2020 22:04:56 +0800 (CST)
X-RM-TRANSID: 2ee55e971487913-6db1a
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.3.208.246])
 by rmsmtp-syy-appsvr07-12007 (RichMail) with SMTP id 2ee75e97148659f-b8795;
 Wed, 15 Apr 2020 22:04:56 +0800 (CST)
X-RM-TRANSID: 2ee75e97148659f-b8795
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: wsa@the-dreams.de, o.rempel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 ardb@kernel.org
Subject: [PATCH] i2c: drivers: Avoid unnecessary check in efm32_i2c_probe()
Date: Wed, 15 Apr 2020 22:06:40 +0800
Message-Id: <20200415140640.19948-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_070542_057977_77996E2E 
X-CRM114-Status: UNSURE (   5.89  )
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
Cc: Shengju Zhang <zhangshengju@cmss.chinamobile.com>,
 Tang Bin <tangbin@cmss.chinamobile.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function efm32_i2c_probe() is only called with an
openfirmware platform device.Therefore there is no need
to check that it has an openfirmware node.

Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
---
 drivers/i2c/busses/i2c-efm32.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-efm32.c b/drivers/i2c/busses/i2c-efm32.c
index 4de31fae7..4786ef6b2 100644
--- a/drivers/i2c/busses/i2c-efm32.c
+++ b/drivers/i2c/busses/i2c-efm32.c
@@ -312,9 +312,6 @@ static int efm32_i2c_probe(struct platform_device *pdev)
 	int ret;
 	u32 clkdiv;
 
-	if (!np)
-		return -EINVAL;
-
 	ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 	if (!ddata)
 		return -ENOMEM;
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
