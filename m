Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 561B84E60A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M3798wptzwarNrQLDHxOWNhtTTf5JTZdSBmrCrM4F8Y=; b=n0jpp/7tQQHBBsKoVrQDf8pPGK
	Hv3r8hJQawbuTahLcAnr4RepEJUhy2/it8alIEfUbzjJwWJibOk2ono5SylS5ob6QuiP98CmlG+Qz
	bYURfuMTr2DxD0trDedpo1sG327q0k40PT2b6WHwUe2XO57hvmg8cFRC+vUVC17ceyMWnU98/8E/s
	KnXjTcnrmCUIZ1d/nHPxg0pK6e79eSWSFCtXCdkrD9RmIHPAUNQq1+pN0IT1awKEp3QeGZ9MqWRPl
	E2llLe7+hmNSshtPVC57Vb61Mf/aD2thuMrP4LsFarg8Kk8NYAfcD+VV6+S2E85H5Wd7GtVmsXbl5
	x1PaQunQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGrJ-0000TA-TU; Fri, 21 Jun 2019 10:33:29 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heGr1-0000O6-SX; Fri, 21 Jun 2019 10:33:13 +0000
Received: from tony.xie?rock-chips.com (unknown [192.168.167.192])
 by lucky1.263xmail.com (Postfix) with ESMTP id 86781568C5;
 Fri, 21 Jun 2019 18:33:04 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P14435T140356020590336S1561113180405822_; 
 Fri, 21 Jun 2019 18:33:03 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <088971abcfd62b37d88279f7980530e4>
X-RL-SENDER: tony.xie@rock-chips.com
X-SENDER: xxx@rock-chips.com
X-LOGIN-NAME: tony.xie@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Tony Xie <tony.xie@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v10 1/6] mfd: rk808: remove the id_table
Date: Fri, 21 Jun 2019 06:32:53 -0400
Message-Id: <20190621103258.8154-2-tony.xie@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190621103258.8154-1-tony.xie@rock-chips.com>
References: <20190621103258.8154-1-tony.xie@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033312_101069_A07BA404 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 tony.xie@rock-chips.com, huangtao@rock-chips.com, devicetree@vger.kernel.org,
 sboyd@kernel.org, zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, xsf@rock-chips.com, linux-rockchip@lists.infradead.org,
 broonie@kernel.org, chenjh@rock-chips.com, lee.jones@linaro.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the id_table because it's not used.

Signed-off-by: Tony Xie <tony.xie@rock-chips.com>
---
 drivers/mfd/rk808.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 216fbf6adec9..94377782d208 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -568,14 +568,6 @@ static int rk808_remove(struct i2c_client *client)
 	return 0;
 }
 
-static const struct i2c_device_id rk808_ids[] = {
-	{ "rk805" },
-	{ "rk808" },
-	{ "rk818" },
-	{ },
-};
-MODULE_DEVICE_TABLE(i2c, rk808_ids);
-
 static struct i2c_driver rk808_i2c_driver = {
 	.driver = {
 		.name = "rk808",
@@ -583,7 +575,6 @@ static struct i2c_driver rk808_i2c_driver = {
 	},
 	.probe    = rk808_probe,
 	.remove   = rk808_remove,
-	.id_table = rk808_ids,
 };
 
 module_i2c_driver(rk808_i2c_driver);
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
