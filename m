Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E342B6B90B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 11:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IUfw2xWeyGn2MVbB8gdiHb8KrxGnkG4SJ4kecpDPqpM=; b=MGj
	zn7H7uhH0LGsAIG0jgUYHTj5kAbfgnq46rLIXUC2LF92E2LE8KLC9fIpuqN3EXkT5mr0A71NPMLtS
	R8JBT7/fWb4N8IOqwX2VB1v5q9JFBD8/oqWmxbuL2dItgn6PYFP5bydjYi69c0u7MIQSrTRv3zSQv
	NQcZbTGtoDW9QLy0BG624/3aRcXwFmmlK3flupL9WDL10FLN5pRcRnQUhBU8Ex+IGTCJA+hJlxsT8
	gqfSGDlptrSxPO8ckkJ0tg2hxhs2o9FAfX+mFNn2M/QIpqNE06i8FTED5pdvsSRK4A18isnriz5YZ
	FbqX5/KFRZNIsNbTFz3I+9f5HucHLAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hng3v-0002eb-2W; Wed, 17 Jul 2019 09:17:23 +0000
Received: from cmccmta1.chinamobile.com ([221.176.66.79])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hng3Y-0002dj-UD
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 09:17:03 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.11]) by
 rmmx-syy-dmz-app01-12001 (RichMail) with SMTP id 2ee15d2ee76e2e8-86566;
 Wed, 17 Jul 2019 17:16:30 +0800 (CST)
X-RM-TRANSID: 2ee15d2ee76e2e8-86566
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[223.105.0.243])
 by rmsmtp-syy-appsvr06-12006 (RichMail) with SMTP id 2ee65d2ee76dcd3-a1b74;
 Wed, 17 Jul 2019 17:16:29 +0800 (CST)
X-RM-TRANSID: 2ee65d2ee76dcd3-a1b74
From: Ding Xiang <dingxiang@cmss.chinamobile.com>
To: alexander.shishkin@linux.intel.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH] stm class: Fix a double free of stm_source_device
Date: Wed, 17 Jul 2019 17:16:28 +0800
Message-Id: <1563354988-23826-1-git-send-email-dingxiang@cmss.chinamobile.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_021701_450132_86E923D4 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.79 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

put_device will call stm_source_device_release to free
stm_source_device, so remove the kfree.

Signed-off-by: Ding Xiang <dingxiang@cmss.chinamobile.com>
---
 drivers/hwtracing/stm/core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/hwtracing/stm/core.c b/drivers/hwtracing/stm/core.c
index e55b902..181e7ff 100644
--- a/drivers/hwtracing/stm/core.c
+++ b/drivers/hwtracing/stm/core.c
@@ -1276,7 +1276,6 @@ int stm_source_register_device(struct device *parent,
 
 err:
 	put_device(&src->dev);
-	kfree(src);
 
 	return err;
 }
-- 
1.9.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
