Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A180A1F8593
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 00:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ih2PnfH8xa30lsYQIoRK0zrWpVF1ckzeBlHqxKfbP1M=; b=bgE
	oArXCSB3JBuU4QHNfmqZ4wCY1gnidZ/naXZRyEBHAW6nByUnKhOV4UrYW/mk9d02QanMTkzkNatrU
	L8Z2I8VTtHc2ge/VtkhgGQiLSbGVGebV0kG4/WWrs4DZPFLYEbUV9KzhxNnmaHQ/gW389yYAI/XJE
	JEjWEgd5RmrIo3FSxuQ5WPXHPw5lo99/Xwv9LeTRVEmFTkXuMnnER/rnZIDXfOLQ2mvUWjv1W0k+r
	lMHoGyLQx8eFQU9YOOvSpkRzoNRa6z8IqllZl1rEuKRCDfOOP+YrR3oZ/PZ2xvv7f4x42qgKGksaC
	caML9nHQIAhAkw4euOc8ODTfrlLQVTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkEO6-0003EV-25; Sat, 13 Jun 2020 22:12:30 +0000
Received: from mta-p6.oit.umn.edu ([134.84.196.206])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkENz-0003EA-Kv
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 22:12:24 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p6.oit.umn.edu (Postfix) with ESMTP id 49ksK31T86z9v904
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 22:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p6.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p6.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b3V_GDJkzfRC for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 17:12:23 -0500 (CDT)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p6.oit.umn.edu (Postfix) with ESMTPS id 49ksK26zBtz9vK1X
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 17:12:22 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p6.oit.umn.edu 49ksK26zBtz9vK1X
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p6.oit.umn.edu 49ksK26zBtz9vK1X
Received: by mail-io1-f69.google.com with SMTP id l22so8627033iob.23
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 15:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=FdXdjmHedAXj/hlk7x8D2COLWhxBtrcFuL19bnCoiAA=;
 b=E+lWkEXd4WicprOc2RqreVpZnplmVN2LIbRmnw0No49QtjaK96rI3bD/sfAfaYS4m/
 KVTt1ccYZ2tDof2dsHIgQ5BCKtyzmllzHExtOb5KeuxHWDtFW5xI69p/wxVKJ3CJr+mU
 2d621AZC8T2S4HD+mCdQY8pl2gjCz1IlEdF5I7AQDld3NcfscE1ALkezWGTW/1Q74EM4
 3Cf+L+L2arREVxDsHWURivEC/qCHCPVw8yiPHf1Uczs7sbgrXHh+6zDAM7LoXgjoRDo5
 W1ofsXjPal3aVEOCaDn5D6+BmbZBFdyEbOXOPgRVnRrzMxaiRM0+HYk+m7N6/yMzef87
 u2tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FdXdjmHedAXj/hlk7x8D2COLWhxBtrcFuL19bnCoiAA=;
 b=huv/DicRjdselVHqtblXFlNAkkrVu8/D+he+dJjGG4cnGn7A/9b8XGeBphLTZywISV
 PEqjBTQe1XUwoRyPmsTB0hFl1SxE4kxmSrIxEAVS3sQR+TewJK0jMpynzhZ6hG4dzdr9
 68KCM4AlVoGP0+VGPzVH574hK18mPUDgUaRcmI/9AiNelAaE5TB5Ges97T32KgTECDxE
 23NzWp7WwZuzeFb5WdD3U4YLUgOeawWNf6KY79Q7YztIw21EYO3UXH/6YIZ2j5P9JkEe
 SiQJX1NiosRf3QXmEfkf/vjdwgDNfDeXU6PDmgPrP6xpLTCkOxGYbnF0bkWxPxJJ+8mF
 rDyw==
X-Gm-Message-State: AOAM5322BPCxU73EHK43QQTFywZPCuD4pUMLyZ4Z9EMBgwwv/JM95H/J
 agC9BeORnU8uizfNcNK3EKx2jZ51AJFejyQ7FKxROETKqYf5LndyZAw7eqY1X3xkpisLBbty63T
 Bd48/ZtzpoO0xaxrpLHKIhIONyFYcg7u2ohUoeLs=
X-Received: by 2002:a92:7704:: with SMTP id s4mr19994861ilc.290.1592086341100; 
 Sat, 13 Jun 2020 15:12:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx+//kWNb9V2Ow5xh8TBnmfbyli85orS09mQYbNbn0QSH892okmXW7q54bX3ExekcIPhamNng==
X-Received: by 2002:a92:7704:: with SMTP id s4mr19994833ilc.290.1592086340807; 
 Sat, 13 Jun 2020 15:12:20 -0700 (PDT)
Received: from qiushi.cs.umn.edu ([2607:ea00:101:3c74:4874:45:bcb4:df60])
 by smtp.gmail.com with ESMTPSA id z12sm5285868iol.15.2020.06.13.15.12.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 15:12:19 -0700 (PDT)
From: wu000273@umn.edu
To: kjlu@umn.edu
Subject: [PATCH] i2c: busses: Fix a reference count leak.
Date: Sat, 13 Jun 2020 17:12:13 -0500
Message-Id: <20200613221213.6679-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_151223_771548_39B87A24 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.84.196.206 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fugang Duan <fugang.duan@nxp.com>,
 wu000273@umn.edu, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Qiushi Wu <wu000273@umn.edu>

pm_runtime_get_sync() increments the runtime PM usage counter even
when it returns an error code. Thus call pm_runtime_put_noidle()
if pm_runtime_get_sync() fails.

Fixes: 13d6eb20fc79 ("i2c: imx-lpi2c: add runtime pm support")
Signed-off-by: Qiushi Wu <wu000273@umn.edu>
---
 drivers/i2c/busses/i2c-imx-lpi2c.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-imx-lpi2c.c b/drivers/i2c/busses/i2c-imx-lpi2c.c
index 9db6ccded5e9..85b9c1fc7681 100644
--- a/drivers/i2c/busses/i2c-imx-lpi2c.c
+++ b/drivers/i2c/busses/i2c-imx-lpi2c.c
@@ -260,8 +260,10 @@ static int lpi2c_imx_master_enable(struct lpi2c_imx_struct *lpi2c_imx)
 	int ret;
 
 	ret = pm_runtime_get_sync(lpi2c_imx->adapter.dev.parent);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(lpi2c_imx->adapter.dev.parent);
 		return ret;
+	}
 
 	temp = MCR_RST;
 	writel(temp, lpi2c_imx->base + LPI2C_MCR);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
