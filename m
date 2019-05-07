Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8C11658D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 16:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iB7mkwJm8uMKAuSKHsxCBJ26d6D9omlwV2EkEoWCdZU=; b=JraowMDuAj0AzH
	5MwKZ491ErkJecVxdaH17lcRjsVE9fz29nbzOPvviBKfcwRC8V03Bq0sb+g2qQHWGvmPlCpL/ekOl
	dtvhAqzvVDC0Vy26+GTuz5c2RI5XzTmStNbCQOew2Zv6w9kANPwNgFfXzaWdQhhf1uIZ7Dz2gFnWO
	Q+HG0BAIgZZFfw5UiCNkcHzyYrwkQoUf4HDEVYgKj1F5O6SwOL3r8yTEuPklLa2VB4j/tjB8yVnCt
	82G2oAsDUmzy2LPSFn7KdmOVi33y/t9YSBvTpC7DK8ODZvy27kl8yUKCi46+OwZ8bzr+8mUVZIC8t
	ZkKawLDANgZVuu0aHHZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0y0-0006bh-SP; Tue, 07 May 2019 14:21:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0xu-0006bH-Hl; Tue, 07 May 2019 14:21:07 +0000
X-UUID: 7f8d925846c6456394a1e3639b48bf0f-20190507
X-UUID: 7f8d925846c6456394a1e3639b48bf0f-20190507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2062797564; Tue, 07 May 2019 06:21:01 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 07:21:00 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 22:20:57 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 7 May 2019 22:20:57 +0800
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Wolfram Sang <wsa@the-dreams.de>, Jean Delvare <khali@linux-fr.org>
Subject: [PATCH] i2c: dev: fix potential memory leak in i2cdev_ioctl_rdwr
Date: Tue, 7 May 2019 22:20:32 +0800
Message-ID: <1557238832-10723-1-git-send-email-yingjoe.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 82EDD77E36B98B06E0D48449A43857A9C339EBD6B0843B3FFEA6EE130FBF90972000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_072106_591196_623CDF05 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 Yingjoe Chen <yingjoe.chen@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If I2C_M_RECV_LEN check failed, msgs[i].buf allocated by memdup_user
will not be freed. Pump index up so it will be freed.

Fixes: 838bfa6049fb ("i2c-dev: Add support for I2C_M_RECV_LEN")
Signed-off-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
---
Only check arm64 defconfig build pass.
I haven't test it since it just fix memleak for error cases.
---
 drivers/i2c/i2c-dev.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/i2c/i2c-dev.c b/drivers/i2c/i2c-dev.c
index 3f7b9af..776f366 100644
--- a/drivers/i2c/i2c-dev.c
+++ b/drivers/i2c/i2c-dev.c
@@ -283,6 +283,7 @@ static noinline int i2cdev_ioctl_rdwr(struct i2c_client *client,
 			    msgs[i].len < 1 || msgs[i].buf[0] < 1 ||
 			    msgs[i].len < msgs[i].buf[0] +
 					     I2C_SMBUS_BLOCK_MAX) {
+				i++;
 				res = -EINVAL;
 				break;
 			}
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
