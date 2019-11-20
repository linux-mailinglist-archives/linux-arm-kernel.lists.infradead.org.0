Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5FC103EB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:30:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sIafRvzOUHDFC/xcs+R/wbGAeunwY3fKusldSTamUmc=; b=AdSVEPycXzLuH/
	1TaQubNEzoSQXL3h7Pzi8E0UiNF5zZ21C+h1RT9sz6UoeWOjP89CB/RxVfQntFUNNCKhmKr3G2F0V
	cUdZZPfZBaNmzHl/bZiEvZmNLNUwkUeKpe1UqOpfIFwJD2VZYFVecxzdri3GDJp8J5uIAmghPE9V8
	Ng53sSSE6Bk6Fm4yslx1FaVxM1+NNkJNl3mwlulleeTUzdFM2CULNDuWF3EmEo179DkCkfmfR7/Tk
	W3ffq/hPXEOardjHRsYsv29OMQwP7WZlp3FZHM/qwUUTR+n05LPuckV0FR19MQrIRc2i8+VFvjoYl
	52Ei9RyeozshcCwFhkDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRw5-0003cc-Na; Wed, 20 Nov 2019 15:30:29 +0000
Received: from out4436.biz.mail.alibaba.com ([47.88.44.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRus-00015V-Pp
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:29:16 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R911e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01422; MF=wenyang@linux.alibaba.com; NM=1;
 PH=DS; RN=10; SR=0; TI=SMTPD_---0TieWGBs_1574263615; 
Received: from localhost(mailfrom:wenyang@linux.alibaba.com
 fp:SMTPD_---0TieWGBs_1574263615) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 20 Nov 2019 23:27:03 +0800
From: Wen Yang <wenyang@linux.alibaba.com>
To: alexander.shishkin@linux.intel.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.co
Subject: [PATCH] stm class: fix a double free in stm_register_device()
Date: Wed, 20 Nov 2019 23:26:32 +0800
Message-Id: <20191120152632.6110-1-wenyang@linux.alibaba.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_072914_987698_B3064822 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.7 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [47.88.44.36 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: zhiche.yy@alibaba-inc.com, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, xlpang@linux.alibaba.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Wen Yang <wenyang@linux.alibaba.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the error path of stm_register_device(), the kfree is
unnecessary, as the put_device() before it ends up calling
stm_device_release() to free stm_device.

Fixes: 7bd1d4093c2fa ("stm class: Introduce an abstraction for System Trace Module devices")
Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/hwtracing/stm/core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/stm/core.c b/drivers/hwtracing/stm/core.c
index 2712e69..55c69d8 100644
--- a/drivers/hwtracing/stm/core.c
+++ b/drivers/hwtracing/stm/core.c
@@ -868,8 +868,10 @@ int stm_register_device(struct device *parent, struct stm_data *stm_data,
 		return -ENOMEM;
 
 	stm->major = register_chrdev(0, stm_data->name, &stm_fops);
-	if (stm->major < 0)
-		goto err_free;
+	if (stm->major < 0) {
+		vfree(stm);
+		return err;
+	}
 
 	device_initialize(&stm->dev);
 	stm->dev.devt = MKDEV(stm->major, 0);
@@ -915,8 +917,6 @@ int stm_register_device(struct device *parent, struct stm_data *stm_data,
 
 	/* matches device_initialize() above */
 	put_device(&stm->dev);
-err_free:
-	vfree(stm);
 
 	return err;
 }
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
