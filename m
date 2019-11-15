Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94268FDA53
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 11:03:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E86Ah2x/xCKPnTpH56LFHJTw1Gvo1qtWKUaj2B4UDbg=; b=dycR9YG8zutrW4
	qX1ZK0ga6ScJQrhxb0Y7U80+ZGHKGOja5BiV07eevvYlSGC5c9vpzdXDBNLzTEnqAjdvAWkWUuPg8
	Rub3UhbnIT0/YkSpC4tl/uRc+e/oDHIoBnUV5pEvF+Ez6AUVZJkrPamqWVsMGgTWl2U+3blBQYoYS
	8UPNPmq97NkfjJI7QtljnzIDvAfgWtHjPIlQ87PKFdxk4ozNsvdINNmn0brXTb6Pu14leMaVfYaH0
	yD4MnfaODU1VABoQAHz6x8BPkQCPet2iupLgP5BldwbK3hDQlH3umP/X2NCLvgJg7f4C1/GYX9Yc4
	WEACx8YmUnXEQqjgeM7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVYRt-00020u-VK; Fri, 15 Nov 2019 10:03:29 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYRm-00020Q-Gc
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 10:03:24 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAFA2jj5028719; Fri, 15 Nov 2019 11:03:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=7gCFVo1c3feoHsazY70FKsMn5zRITBygco7FGXQsWm0=;
 b=zEKBpL150QmvwnsFu7TMaV8SIS07qJ3LT1foyO0sA4n/tyHJlD16P8/cFAgzPq3hu9fk
 7jdJ5kkF7X99XG4QQrLDCS5YN6lKJx2jpsIcLdQD1aRByDZotv1DangvGCbHL1M3NpCj
 1B2ICn1Xa8JGZxXjHmNRj83XmRIkTQM3DpFfFURcdOPsY0intlCxt8hDB1YmMWeYvCY9
 cpgsmdj+TrIQJLNe1KLKkQzEwCzdoKGxaU9GLArCQq+ytbLX6wm/85BXy8bvEVyn6XaK
 raLpNasCa2H6Dsjrsz0cDOSmp6l3krFiQRBdEe1Oqo3P+9s55te9K5P26A4XDbD8Bf6I ug== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w7psubc95-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 11:03:16 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7E740100038;
 Fri, 15 Nov 2019 11:03:14 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6D5EA2B1887;
 Fri, 15 Nov 2019 11:03:14 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 15 Nov 2019 11:03:13 +0100
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>
Subject: [PATCH v4] remoteproc: stm32: fix probe error case
Date: Fri, 15 Nov 2019 11:03:08 +0100
Message-ID: <1573812188-19842-1-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-15_02:2019-11-15,2019-11-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_020322_836254_9FF6BDAD 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, Fabien Dessenne <fabien.dessenne@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the rproc driver is probed before the mailbox driver and if the rproc
Device Tree node has some mailbox properties, the rproc driver probe
shall be deferred instead of being probed without mailbox support.

Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
---
Changes since v3: on error, free mailboxes from stm32_rproc_request_mbox()
Changes since v2: free other requested mailboxes after one request fails
Changes since v1: test IS_ERR() before checking PTR_ERR()
---
 drivers/remoteproc/stm32_rproc.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 2cf4b29..bcebb78 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -310,11 +310,12 @@ static const struct stm32_mbox stm32_rproc_mbox[MBOX_NB_MBX] = {
 	}
 };
 
-static void stm32_rproc_request_mbox(struct rproc *rproc)
+static int stm32_rproc_request_mbox(struct rproc *rproc)
 {
 	struct stm32_rproc *ddata = rproc->priv;
 	struct device *dev = &rproc->dev;
 	unsigned int i;
+	int j;
 	const unsigned char *name;
 	struct mbox_client *cl;
 
@@ -329,10 +330,20 @@ static void stm32_rproc_request_mbox(struct rproc *rproc)
 
 		ddata->mb[i].chan = mbox_request_channel_byname(cl, name);
 		if (IS_ERR(ddata->mb[i].chan)) {
+			if (PTR_ERR(ddata->mb[i].chan) == -EPROBE_DEFER)
+				goto err_probe;
 			dev_warn(dev, "cannot get %s mbox\n", name);
 			ddata->mb[i].chan = NULL;
 		}
 	}
+
+	return 0;
+
+err_probe:
+	for (j = i - 1; j >= 0; j--)
+		if (ddata->mb[j].chan)
+			mbox_free_channel(ddata->mb[j].chan);
+	return -EPROBE_DEFER;
 }
 
 static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
@@ -596,7 +607,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 	if (ret)
 		goto free_rproc;
 
-	stm32_rproc_request_mbox(rproc);
+	ret = stm32_rproc_request_mbox(rproc);
+	if (ret)
+		goto free_rproc;
 
 	ret = rproc_add(rproc);
 	if (ret)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
