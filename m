Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A0531A19
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 09:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xHVsK7/Q7tu/LUukTz5oTjH3Gz+zjEpqYalmedo5hPU=; b=ttkOIedaqDsbWe
	SCLGIzOlRu6Glnx+vbUzJD+j+DoV2EDDYE1nQZ4NM/GlKbD0KJ1jJtBWZASiz/8AtCX2vjKJ/1gbI
	1HHcTe/taC9hanI+KFDsDl/IVKcZZli5iJnGPfb2nxiWgMbicpqn8GvYbOd2KHYb2nazANaes41vB
	7wGil4xWPbnu8DG94Nv5mZ8J36ZwPd1THUYk9ZVYFJmQ/3fw848b453oz+45VUT8WQ4st+xzn5qm6
	RgGiDU/zFOGHh55zUQjIcfwth81oXLfm4njr86QGj6ky8SWIQ3CZAj7nfBQq8KgpSUdNkQhGqa6r7
	VeCwi9+Euu8KzXYShVYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWyYW-0003Wh-0G; Sat, 01 Jun 2019 07:35:56 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWyYO-0003WB-4z
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 07:35:49 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 245A96B0BBF58C89DE03;
 Sat,  1 Jun 2019 15:35:32 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Sat, 1 Jun 2019 15:35:22 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 "Gregory Clement" <gregory.clement@bootlin.com>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: [PATCH -next] cpufreq: armada-37xx: Remove set but not used variable
 'freq'
Date: Sat, 1 Jun 2019 07:43:38 +0000
Message-ID: <20190601074338.64187-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_003548_423280_8F9DB439 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kernel-janitors@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/cpufreq/armada-37xx-cpufreq.c: In function 'armada37xx_cpufreq_avs_setup':
drivers/cpufreq/armada-37xx-cpufreq.c:260:28: warning:
 variable 'freq' set but not used [-Wunused-but-set-variable]

It's never used since introduction in commit 1c3528232f4b ("cpufreq:
armada-37xx: Add AVS support")

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/cpufreq/armada-37xx-cpufreq.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/cpufreq/armada-37xx-cpufreq.c b/drivers/cpufreq/armada-37xx-cpufreq.c
index 0df16eb1eb3c..aa0f06dec959 100644
--- a/drivers/cpufreq/armada-37xx-cpufreq.c
+++ b/drivers/cpufreq/armada-37xx-cpufreq.c
@@ -257,7 +257,7 @@ static void __init armada37xx_cpufreq_avs_configure(struct regmap *base,
 static void __init armada37xx_cpufreq_avs_setup(struct regmap *base,
 						struct armada_37xx_dvfs *dvfs)
 {
-	unsigned int avs_val = 0, freq;
+	unsigned int avs_val = 0;
 	int load_level = 0;
 
 	if (base == NULL)
@@ -275,8 +275,6 @@ static void __init armada37xx_cpufreq_avs_setup(struct regmap *base,
 
 
 	for (load_level = 1; load_level < LOAD_LEVEL_NR; load_level++) {
-		freq = dvfs->cpu_freq_max / dvfs->divider[load_level];
-
 		avs_val = dvfs->avs[load_level];
 		regmap_update_bits(base, ARMADA_37XX_AVS_VSET(load_level-1),
 		    ARMADA_37XX_AVS_VDD_MASK << ARMADA_37XX_AVS_HIGH_VDD_LIMIT |




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
