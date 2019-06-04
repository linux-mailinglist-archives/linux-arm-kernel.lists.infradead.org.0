Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614B334404
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hK2eo4aKFBLzgOWMPEC50x5Fo6kAvq5vAziCpIOn/Po=; b=K+ek494YiIKtgk
	UC3IDILVEOUzEM9CX8zvjo6OjuVpCZ4aM2Q8usgEWeP67RSfX0NJQbV+DulVKDP/jjnvcBUhFuXRg
	AXTCvcjI6QAwnlbejtn40+/73eI/Ro2Q4pqj6lrB0L/9NuxbLa64PxFV4nLIRyxdJOZsakJT/FQLh
	i3tWKN946C88XParFWw9+Q6MXo7AuAoKK+FbAYUXWXWfI+tAYglZpc2zUzG2fuWfNMa75adRsvzel
	R8z9yYK6wZxUHRhceV0OQU6mYPb6q0KZgTPQO9atNX3AhHWRVjM2FP0bD4Zed1uWW3yf+VPrPmC2H
	fm2O76MXNc5oRHXPWNyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6Rk-0007xv-FI; Tue, 04 Jun 2019 10:13:36 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RT-0007i8-BG; Tue, 04 Jun 2019 10:13:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TG+V1h8FJvcWnBQjHliJTSPLicVnXNW+rX3YPWLVLAM=; b=nN4hykeaDtjNqMb3gRdpHiKwo
 pARMiWuYksPQefmaRDUeZDDlTvpYTAHuxhACiVgG4yyVy2Y0UIzfhfMXjnSlb0+4NgTC6Zkbr9dJS
 UxEqo22Danl2iG5QU5hJsczImMjwHnxQCfsFMK9IjZYATOydN2YEDkC4iuexPUfKl446E5ACPc9FZ
 N+9N3JrVTmooJ9Cie9bktDSI0k+7P9kHwNYkUQCLfOdHVuX1bQb4+PHISybtY0DSVJHugkq8cF85P
 YuDsDz7YgxJRxd8rD7T61eq1dz3STkscxCMumyQkLuAlhmKKxdSbCSR7PU9eQe1UlWKXkEgzVmzud
 p3XjDcSxA==;
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RQ-0003Us-Iv; Tue, 04 Jun 2019 10:13:17 +0000
X-UUID: 5ac0ef9e502c48738d9fa75a3798d253-20190604
X-UUID: 5ac0ef9e502c48738d9fa75a3798d253-20190604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 184279392; Tue, 04 Jun 2019 02:12:08 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:07 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:12:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:12:01 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 11/14] [media] mtk-mipicsi: add function to get the format
Date: Tue, 4 Jun 2019 18:11:52 +0800
Message-ID: <1559643115-15124-12-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7BC11625F8BEE179D9AC0E8DA4A31DA26767444232CAE16603219E92C146C7232000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061316_756652_18321702 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Stu Hsieh <stu.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add function to get the format

This function can get the subdev format and host format.
Calculate the number of format which intersection of subdev and host.

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index 9e45786a0282..aaaea5c6f280 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -52,6 +52,7 @@
 
 #define MTK_MIPICSI_DRV_NAME "mtk-mipicsi"
 #define MTK_PLATFORM_STR "platform:mt2712"
+#define MTK_DATAWIDTH_8					(0x01U << 7U)
 #define MAX_SUPPORT_WIDTH             4096U
 #define MAX_SUPPORT_HEIGHT            4096U
 #define MAX_BUFFER_NUM                  32U
@@ -158,6 +159,7 @@ struct mtk_mipicsi_dev {
 	unsigned int			num_user_formats;
 	const struct mtk_format		**user_formats;
 	const struct mtk_format		*current_fmt;
+	u16			width_flags;	/* max 12 bits */
 
 	struct mtk_mipicsi_buf	cam_buf[MAX_BUFFER_NUM];
 	struct list_head	fb_list;
@@ -1522,6 +1524,7 @@ static int mtk_mipicsi_probe(struct platform_device *pdev)
 		goto err_vb2_queue;
 	}
 
+	mipicsi->width_flags = MTK_DATAWIDTH_8;
 	mipicsi->streamon = false;
 
 	ret = mtk_mipicsi_subdev_init(mipicsi);
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
