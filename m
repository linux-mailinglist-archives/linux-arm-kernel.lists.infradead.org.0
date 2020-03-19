Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2D018C49F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 02:29:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+AfvtIev0d+m5Er5iAP3im6oDidh35apLucGGZiWInA=; b=rwcdczFz78Cr9P
	p3Rnj9P+wdRw0AwdY7oocy+/1KT2KQ3nCWIrsIXYTvARTqoPftVS9hjzPNXUZ4kGIWfWnKdyjq/et
	+p9vxilJmUTLT/qPL4qNV90a3kKM+QHIFqCoKK9uGi42JAljMm+yNfyjU9rqY5VoJV2AWPpYFy7+m
	srhlcyM+vTVYR6f9ZoY0XxGqEHfuJZs7zaXVbPKk8SWjtn5dJkTPMHeJcO3lwT6wsox4AFn9jiXyt
	/TAQfor2HlidTi0EhiNYtbYtwtz5YUtbwakgvPqbAVO1XLaelAEnTV1XjF2qlib3ZGqGjxetVGqy7
	ttll1nws1xfaN+aqRa3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF6TJ-0003Ga-Tw; Fri, 20 Mar 2020 01:29:13 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF6TB-00034y-PX
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 01:29:07 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8FDBE9DD9CCE3F553607;
 Fri, 20 Mar 2020 09:28:51 +0800 (CST)
Received: from ubuntu.huawei.com (10.175.104.215) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Fri, 20 Mar 2020 09:28:41 +0800
From: Chen Huang <chenhuang5@huawei.com>
To: Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH -next] soc: ti: pm33xx: Add a judgement for variable 'ret'
Date: Fri, 20 Mar 2020 07:11:50 +0800
Message-ID: <20200319231150.28106-1-chenhuang5@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.215]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_182905_995163_C3196116 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Dave Gerlach <d-gerlach@ti.com>,
 Chen Huang <chenhuang5@huawei.com>, linux-kernel@vger.kernel.org,
 linux-next@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Variable 'ret' is the result whether sram has prepared to translate
to low power state. 0 represents preparation is successful, others
represent error code. If preparation failed, then return 'ret' to end
the function.

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/soc/ti/pm33xx.c: In function am33xx_do_sram_idle:
drivers/soc/ti/pm33xx.c:135:6: warning: variable ret set but not used [-Wunused-but-set-variable]

Fixes: commit 6afaff1c6624f ("soc: ti: pm33xx: Add base cpuidle support")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Chen Huang <chenhuang5@huawei.com>
---
 drivers/soc/ti/pm33xx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/ti/pm33xx.c b/drivers/soc/ti/pm33xx.c
index de0123ec8ad6..a51ba770f1e3 100644
--- a/drivers/soc/ti/pm33xx.c
+++ b/drivers/soc/ti/pm33xx.c
@@ -139,6 +139,8 @@ static int am33xx_do_sram_idle(u32 wfi_flags)
 
 	if (wfi_flags & WFI_FLAG_WAKE_M3)
 		ret = m3_ipc->ops->prepare_low_power(m3_ipc, WKUP_M3_IDLE);
+	if (ret)
+		return ret;
 
 	return pm_ops->cpu_suspend(am33xx_do_wfi_sram, wfi_flags);
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
