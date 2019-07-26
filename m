Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 842B07633E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKtFF7kH2dvqSrQmoXENZgQ7WakfGpt+cTa4zn8h96c=; b=cHYbBMEKQysEGY
	hR+W8hpetPWGKhpcToUWkWwEEfPet5QStt/u7vQ5Rl04xoOuybpvG7V29Fuv0bLZzxFKjqG2iob9K
	J1d6du0UABVVUJtlX4xHprgQ27Kg7Px++djzaZdTXZ7tyuTUrERzTF9A+QIdZSdxk/CCd0DoNL6b5
	OGb3edvoDXhz+QZJVKSkiYnKdacACOj8+NRAiK3LNrS4SjkOMbP3sP/gxZtsb1pIDW8Mw1r52WH1Z
	LQYY2E0W7ozrCtotL7vJjYPOyOc3Zab6MKT9ovEqsUYhVWvaCHBH4GTpf6cGvMzMEbzh3ai7d5sVD
	nBTPy8mpn5JFqN7MPFVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqwV8-0006VB-W6; Fri, 26 Jul 2019 09:26:59 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqwUq-0006UL-Pg; Fri, 26 Jul 2019 09:26:42 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id AE30A344AC963379B5BE;
 Fri, 26 Jul 2019 17:26:38 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Fri, 26 Jul 2019
 17:26:33 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <eric@anholt.net>, <wahrenst@gmx.net>, <gregkh@linuxfoundation.org>,
 <inf.braun@fau.de>, <nishkadg.linux@gmail.com>
Subject: [PATCH v2 -next] staging: vc04_services: fix used-but-set-variable
 warning
Date: Fri, 26 Jul 2019 17:26:21 +0800
Message-ID: <20190726092621.27972-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190725142716.49276-1-yuehaibing@huawei.com>
References: <20190725142716.49276-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_022641_010948_F30445F7 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

Fix gcc used-but-set-variable warning:

drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_release_internal:
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:16: warning:
 variable local_entity_uc set but not used [-Wunused-but-set-variable]
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:6: warning:
 variable local_uc set but not used [-Wunused-but-set-variable]

Remove the unused variables 'local_entity_uc' and 'local_uc'

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
v2: remove the unused variable
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index cc4383d..b1595b1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2824,7 +2824,6 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
 	VCHIQ_STATUS_T ret = VCHIQ_SUCCESS;
 	char entity[16];
 	int *entity_uc;
-	int local_uc, local_entity_uc;
 
 	if (!arm_state)
 		goto out;
@@ -2849,8 +2848,8 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
 		ret = VCHIQ_ERROR;
 		goto unlock;
 	}
-	local_uc = --arm_state->videocore_use_count;
-	local_entity_uc = --(*entity_uc);
+	--arm_state->videocore_use_count;
+	--(*entity_uc);
 
 	if (!vchiq_videocore_wanted(state)) {
 		if (vchiq_platform_use_suspend_timer() &&
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
