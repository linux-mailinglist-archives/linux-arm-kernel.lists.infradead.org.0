Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B07C1CBFBD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 11:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0U0zvPIPVYPZ8557zAQpwdBVOb/sB8Zl9EUX3y9rS9I=; b=boX
	LjvUNJR31c7EYsDvn8pcFWeX9AQQ3Sny2nz9K49K8FyBV7fON93AntTPiVZdDeyDzbrNdN9VRzj6s
	a9traaGgMl7IRLfxbMuReDmspgKpKt2cmXlCxViPIbU/hyqRwXzsZYqyQCqNpynyTzywh/fVgwPWD
	F4FhIB92BlJd2Kfj6e2WA/j6TNE1BZHAynDJbJlxg7PmuN316Ad4YmxfRwFmLLHfKVf09qYlWxxIb
	vTIR7ivJ35LEGToFywaLbo1GdEIh5agn0hmdEJkon58MbP1/i5+/KRcxjrDfI08uCPZCGzw2ttWhK
	HxV7OHURzNhh6fAW515YR0LX4WfSyaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXLft-0004VY-Mt; Sat, 09 May 2020 09:21:37 +0000
Received: from m15-112.126.com ([220.181.15.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXLfl-0004U4-C3
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 09:21:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=npA6K8XR6m/Q7D+a+F
 d/I+FwASzBrx710iIbSXi75Zw=; b=U4w5dbE1Fuf8bTwppyjMdPTDl0+/3u/6A/
 LOhMaJS1/zqiUXGpxzNOYsc0ipgi72lPAoGzIfp7V3CN4HThAuopqaK9W4MCMS9Q
 0oid2UDPQ1i4awOzngUhRUjwgC/DUqcX5EFbmqPwlocTk7BDJl363HDmZEvNhtkg
 vPo6g/jYE=
Received: from coding1221.verisilicon.com (unknown [222.65.245.108])
 by smtp2 (Coremail) with SMTP id DMmowABXjQHjb7Ze7FwJCw--.5965S2;
 Sat, 09 May 2020 16:54:59 +0800 (CST)
From: joe_zhuchg@126.com
To: sudeep.holla@arm.com
Subject: [PATCH 1/1] firmware: arm_scmi/mailbox: ignore notification for tx
 done using irq
Date: Sat,  9 May 2020 16:54:57 +0800
Message-Id: <20200509085457.31920-1-joe_zhuchg@126.com>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: DMmowABXjQHjb7Ze7FwJCw--.5965S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZr1rKF4kGFy7XryruF43trb_yoWktFX_Cw
 nFkw4jgr1UAFyFvwnrAwn3G3sIv3y5Wa4vg3Wqvw12qasrX398Wwnrtws5A34UWr4DZryI
 kas5Grs5Cwn8WjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU5y7K7UUUUU==
X-Originating-IP: [222.65.245.108]
X-CM-SenderInfo: pmrhs6xkxfxwa6rslhhfrp/1tbifgMfN1pD-wcCJgAAsQ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_022130_167974_2179BCF0 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joe_zhuchg[at]126.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Joe Zhu <Chunguang.Zhu@verisilicon.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joe Zhu <Chunguang.Zhu@verisilicon.com>

If mailbox uses IRQ method, it already notified framework with
mbox_chan_txdone() in ISR.

Signed-off-by: Joe Zhu <Chunguang.Zhu@verisilicon.com>
---
 drivers/firmware/arm_scmi/mailbox.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/mailbox.c b/drivers/firmware/arm_scmi/mailbox.c
index 73077bbc4ad9..303a5dc42429 100644
--- a/drivers/firmware/arm_scmi/mailbox.c
+++ b/drivers/firmware/arm_scmi/mailbox.c
@@ -9,6 +9,7 @@
 #include <linux/err.h>
 #include <linux/device.h>
 #include <linux/mailbox_client.h>
+#include <linux/mailbox_controller.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/slab.h>
@@ -147,7 +148,8 @@ static void mailbox_mark_txdone(struct scmi_chan_info *cinfo, int ret)
 	 * Unfortunately, we have to kick the mailbox framework after we have
 	 * received our message.
 	 */
-	mbox_client_txdone(smbox->chan, ret);
+	if (!smbox->chan->mbox->txdone_irq)
+		mbox_client_txdone(smbox->chan, ret);
 }
 
 static void mailbox_fetch_response(struct scmi_chan_info *cinfo,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
