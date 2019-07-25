Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCDE75118
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zg4BeVdfz3cXlvuI1VjDE6Xmdiu+m6P0Tz1ZGfiqW+w=; b=a8b6qSrbPICviH
	oEjF+D8IbC4DOvIs07VJ9lehYKHVGRsMoWwd7d3n0CjLdehfpBNr4DXFUuwYNo6IBM9BEdKgDoWtg
	uwvAU3KOH2p52FGLpD74khyB2CvM6ZnZ4t+s5hB2JFpA+G5vW1GJp77O3NhWzkc/1Jf2iL+ZN/2QI
	6MDdkRRFO+RLYhj2QSEv+ui+6yg46ytPurO2ovRr3EwR6DWuyeUvYBtVqqA7plLMRJ//wJ/R2F4w1
	OTGql4YUbmCSzfNNe4ZamXKSwDbyIN7wd5nUnsMuSBvQnNruWpiC6n6eqZG2A5G77Z1aqxatZF62V
	NFIhLWt4bCMz17OAqeFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqejD-0005RT-UU; Thu, 25 Jul 2019 14:28:19 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqeiy-0005Qh-0H; Thu, 25 Jul 2019 14:28:05 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id EF37DF7F374C1751FBF9;
 Thu, 25 Jul 2019 22:27:59 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Thu, 25 Jul 2019
 22:27:52 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <eric@anholt.net>, <wahrenst@gmx.net>, <gregkh@linuxfoundation.org>,
 <inf.braun@fau.de>, <nishkadg.linux@gmail.com>
Subject: [PATCH -next] staging: vc04_services: fix used-but-set-variable
 warning
Date: Thu, 25 Jul 2019 22:27:16 +0800
Message-ID: <20190725142716.49276-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_072804_208016_51A58F19 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

use variables 'local_entity_uc' and 'local_uc',
mute gcc used-but-set-variable warning:

drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_release_internal:
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:16: warning:
 variable local_entity_uc set but not used [-Wunused-but-set-variable]
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:6: warning:
 variable local_uc set but not used [-Wunused-but-set-variable]

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index cc4383d..04e6427 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2861,15 +2861,13 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
 		} else {
 			vchiq_log_info(vchiq_susp_log_level,
 				"%s %s count %d, state count %d - suspending",
-				__func__, entity, *entity_uc,
-				arm_state->videocore_use_count);
+				__func__, entity, local_entity_uc, local_uc);
 			vchiq_arm_vcsuspend(state);
 		}
 	} else
 		vchiq_log_trace(vchiq_susp_log_level,
 			"%s %s count %d, state count %d",
-			__func__, entity, *entity_uc,
-			arm_state->videocore_use_count);
+			__func__, entity, local_entity_uc, local_uc);
 
 unlock:
 	write_unlock_bh(&arm_state->susp_res_lock);
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
