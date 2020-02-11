Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D06A5159034
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 14:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WP9sPKJPX5XHPQKMih5Ok0wcAaZBKp+YlPT9FvQ9Ysw=; b=mEGcRgs2nHakHB
	cBHJC7CtOc4H5d44EVsnSthzM/3QFzzUXnRZ/WEL3BVIJfdsZ6wj8aQu1AnCbGBqhjmssTk1eNCFT
	AK3mz2H+OZIonWEncbVj7iFRSF+QCGyyg66KIzSb6E3YCmaWpNQ/snvr0DLc83WcOqJNGlCHuyk4T
	sLNtMfvRCPos8wnBww5iqyeR1cYtaGZshNMlYZ8CMlTsclsd9UQnJ7f+zGEC2SpCz9gcU6TQlxojc
	TPMlFUD1ZOyDPnL21xzAC7kIbAWKLtMcIsRBRYYu3x/ztNCOYkSXEluZlz+V26cEdUuk6az8YihKr
	DvQzZ2HPbEelZRPUoL9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Vqq-0002wh-Qn; Tue, 11 Feb 2020 13:45:20 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Vqe-0001bI-BK; Tue, 11 Feb 2020 13:45:10 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D7D69541237DF4184B69;
 Tue, 11 Feb 2020 21:44:46 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Tue, 11 Feb 2020
 21:44:36 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <nsaenzjulienne@suse.de>, <gregkh@linuxfoundation.org>,
 <wahrenst@gmx.net>, <jamal.k.shareef@gmail.com>, <marcgonzalez@google.com>,
 <nishkadg.linux@gmail.com>, <nachukannan@gmail.com>
Subject: [PATCH -next] staging: vc04_services: remove set but unused variable
 'local_entity_uc'
Date: Tue, 11 Feb 2020 21:43:56 +0800
Message-ID: <20200211134356.59904-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_054508_653825_7E53ACBF 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_use_internal:
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2346:16:
 warning: variable local_entity_uc set but not used [-Wunused-but-set-variable]

commit bd8aa2850f00 ("staging: vc04_services: Get of even more suspend/resume states")
left behind this unused variable.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index c456ced..d30d24d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2343,7 +2343,7 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	enum vchiq_status ret = VCHIQ_SUCCESS;
 	char entity[16];
 	int *entity_uc;
-	int local_uc, local_entity_uc;
+	int local_uc;
 
 	if (!arm_state)
 		goto out;
@@ -2367,7 +2367,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 
 	write_lock_bh(&arm_state->susp_res_lock);
 	local_uc = ++arm_state->videocore_use_count;
-	local_entity_uc = ++(*entity_uc);
 
 	vchiq_log_trace(vchiq_susp_log_level,
 		"%s %s count %d, state count %d",
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
