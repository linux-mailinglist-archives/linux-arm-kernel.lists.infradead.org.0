Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1924FCFC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 18:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LEKcRynB8rEFiGMn9Kp7kYI3bJVw9XnBp8clklvySNc=; b=YiyjgOLGuFDT4oExQ6GjkwdZTb
	hc7qnfUOoOv2Ax7aOHEZrTrLDlgfLTOBUUOUSAGInyEkLwFZmf3PpZSuaTGlYKGxnnwQdQTMZ9UFD
	4CDxDYcVn9QXo8SGOKy1kzf7CjsZZMg4Fc6VJuoymh6P4aUFIPMeHJpUldI7Etb0rXV3V9E8neGKx
	AANzDFcT4eBm6zccxRJXDARHu3lslD6qgO5rNuHdLtss4i7/TEc00MkUQWAufZCMxevVBAced5dl2
	CpDL6JZtuyifDUoeVVjGlyHRKzETyzgw0AbuOHgO6BSmhbZMdaQFsZA68aHJ09Pwa+3NHtM+FKRiR
	FHrDRjUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf5cD-0004Rw-9a; Sun, 23 Jun 2019 16:45:17 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf5ZQ-0002dj-En
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 16:42:30 +0000
Received: by mail-pl1-x643.google.com with SMTP id m7so5477897pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 09:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QeuzSFtFULNoQbGg4hqLSd4xmo0B4o8ksbknu1n0KZM=;
 b=WX3Yrc0OvQ8B4sl+cSv2hgv3FAi1TFu+BMpDsDcgG2niFAPlDuUCFFhgZT32h1myEe
 OtI8aFmwrPENLyEXeOboC0R5ChT8PcsJwGPZdcnK3obduopK7EL8O618V8I3vX87FsGM
 W+SifyHWCKQJGj9xfXnzDbwRP+jNnE/bFXZgvpt3bw7BxHfNUZmo+7zeM6pjWJHXyh59
 5nF4UUTVWkTN3xE34blNimLRleCmmRIMDrVgnf3u251YCFwHLS9r0nQs/ukEinAW4XTE
 iIpCgUsg22Bwbo+a6b9zUJ3sewCrvqe41ug9HGsuSntXfo2ffqGkG7r/D6iJaaZIFqCb
 /Glg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QeuzSFtFULNoQbGg4hqLSd4xmo0B4o8ksbknu1n0KZM=;
 b=oHmufp1jTtveUtJMjFW0xFUWbx82d3pEwuAFLe5aXMR+tgv6IO7iJ58ZWWwyc2zedt
 +XUbCmNDGWhd3d7EemLaix7f3Cj4StspYrRLZ5xM0sQ+Nxv/87AnfQCy7qeuqzrRcT3p
 YzgCdmksNsgaDjx+TLvNt5yjleHvwssE5RycZ2vRS1ML+FhnzDRjBUU6GqxmW8598aP+
 BOTx4+JewRNcRdcdqSIZA3nhDy9+BShn4xxFF2aBUZb0Lq3pAaChdrvm9wAJZ/kewWJz
 oXQVbVg5yDK+3FTb0QuzQU4osveOJ2FJ4HNWXGx38YnYI3NcsAtJJym0Yg0ouGDHfhKf
 mQAQ==
X-Gm-Message-State: APjAAAWRnkYg/AhboGS701dQEdzLVin1Y3r+lBBEnzLOGT6g0hzDsddQ
 m6G23kX5hdKVbyPmjKAInwU=
X-Google-Smtp-Source: APXvYqwmAwNO0tRQc1DYoa+hJd5YtKf6VLWWVmJUG+ZzCkzrIkvCUZwARJRuxYe6faj0d1GPkbIWBg==
X-Received: by 2002:a17:902:6b02:: with SMTP id
 o2mr48701805plk.133.1561308143647; 
 Sun, 23 Jun 2019 09:42:23 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id e6sm9766388pfn.71.2019.06.23.09.42.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 09:42:23 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v4 06/11] thermal: sun8i: get ths init func from device
 compatible
Date: Sun, 23 Jun 2019 12:42:01 -0400
Message-Id: <20190623164206.7467-7-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190623164206.7467-1-tiny.windzz@gmail.com>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_094225_262949_CBB82D65 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are some differences in register initialization for
different socs. So we get different initialization functions
from device compatible.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index e473a5651436..59acbbac76e4 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -59,6 +59,7 @@ struct ths_thermal_chip {
 	int		scale;
 	int		ft_deviation;
 	int		temp_data_base;
+	int		(*init)(struct ths_device *tmdev);
 };
 
 struct ths_device {
@@ -362,7 +363,7 @@ static int sun8i_ths_probe(struct platform_device *pdev)
 	if (irq < 0)
 		return irq;
 
-	ret = sun50i_thermal_init(tmdev);
+	ret = tmdev->chip->init(tmdev);
 	if (ret)
 		return ret;
 
@@ -400,6 +401,7 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
 	.scale = -67,
 	.ft_deviation = SUN50I_H6_FT_DEVIATION,
 	.temp_data_base = SUN50I_H6_THS_TEMP_DATA,
+	.init = sun50i_thermal_init,
 };
 
 static const struct of_device_id of_ths_match[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
