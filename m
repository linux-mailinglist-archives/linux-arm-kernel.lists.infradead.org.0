Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD0B1B3AD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUWWFLP6A3svbgwcS4ZZbJHnVrciX4N667BMPEmlfDE=; b=Y1nmUgyUYe2stV
	x4ul7oaT0jaQQC1GLlaMj+ePTXcKTUQeFwWCj1Dwha1/2MmBXnvjCyo4zc2v/ihUMbCVXEhw6axuM
	RVrJC/fjPNhdEnpEVwqc+YF03BGKNVuoChmJMLgdvfKLEzcl9RmyDJZYuopjXkiIJkRgKEv/4CzC1
	yfeFsaS5+OZb4lNOph44KFOI5zqOwWg2+3kIFLC7MRZuZP41sxVVg8H2Rv1mcLtFl8akvTcf4rxjS
	0z+4wU5PnahO4ZhlPehEk0WWReJxMuWFTwyFJ34XkKr3B3gt9qrsXEdj7XQFOrmUKq9Bn2SllUfji
	NNm269LVlOl5rwRRBUVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBO6-0001nd-RX; Wed, 22 Apr 2020 09:09:46 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBN5-000125-Tz
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:08:46 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03M8wPVT031235; Wed, 22 Apr 2020 11:08:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=WTU+IUguUr6l9//OlpWT/W7Htt1EE7soHG02ITwucmg=;
 b=tO3+zTNEj7CSKVOXlq6mLmGI8aw2/j/oepV66/m5qNT1827xNr4Islc8qt7LpC0qX5v4
 +RFXxBuc+0oEsS02BE/QT3y7ww/PCmt6F6x8KKeaYYTaiQLJxMlYcHyGAQWWFB7zPXVB
 BVuRNfHKeYgFh8CwncWd8OLbaouMm2ecLJsCFJ/JzFT2RwAXOIMPHIGax4cAvitTrUru
 xAswBfB5G4AFCSG4QGHXd3F23e3rNG78UhXzwBT/Whl6kn3N5ezMAdYV9iIbicH8gW3U
 ekAbrxl93Q6Pw2S2068ZroFq8lxedoNQwNZwDhOZLdm5lqGHDKWGK6mw2a4VW6tHt/w0 Cg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fregn9vp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Apr 2020 11:08:40 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7A97B10002A;
 Wed, 22 Apr 2020 11:08:40 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 717822A4D94;
 Wed, 22 Apr 2020 11:08:40 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 22 Apr 2020 11:08:40
 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Lee Jones <lee.jones@linaro.org>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH 2/3] mfd: stmfx: fix stmfx_irq_init error path
Date: Wed, 22 Apr 2020 11:08:32 +0200
Message-ID: <20200422090833.9743-3-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200422090833.9743-1-amelie.delaunay@st.com>
References: <20200422090833.9743-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-22_03:2020-04-21,
 2020-04-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_020844_253985_510CDD34 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case the interrupt signal can't be configured, irq domain needs to be
removed.

Fixes: 06252ade9156 ("mfd: Add ST Multi-Function eXpander (STMFX) core driver")
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/mfd/stmfx.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/stmfx.c b/drivers/mfd/stmfx.c
index fde6541e347c..1977fe95f876 100644
--- a/drivers/mfd/stmfx.c
+++ b/drivers/mfd/stmfx.c
@@ -287,14 +287,19 @@ static int stmfx_irq_init(struct i2c_client *client)
 
 	ret = regmap_write(stmfx->map, STMFX_REG_IRQ_OUT_PIN, irqoutpin);
 	if (ret)
-		return ret;
+		goto irq_exit;
 
 	ret = devm_request_threaded_irq(stmfx->dev, client->irq,
 					NULL, stmfx_irq_handler,
 					irqtrigger | IRQF_ONESHOT,
 					"stmfx", stmfx);
 	if (ret)
-		stmfx_irq_exit(client);
+		goto irq_exit;
+
+	return 0;
+
+irq_exit:
+	stmfx_irq_exit(client);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
