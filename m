Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7671391F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:16:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNSSsM1YlaPv6JInEtUj1DmaieuP/31g/5UqMEZnVbM=; b=C1cgp27gfOEG7C
	xLBXTjB1HEeGctHCp3DE36ZBw5MzZJ6JCYlNlSrILS7jzVPOJpFmeoLaYbfsFzZqyO9i4OJwk8MRL
	BIgzCM+UD+pqQM/p5biBhUIMB8XL39XUcyZrG4Ilyc6vyBUPjMtLME5i50sdxd470GAbtnmEoAhgw
	YPQUDbkg59mOc/IcoA99aRnFHIuHUqLm9MXbwIaY2GOOnQTPU8Yqd/gnWSiyApAS2JfbbmBF0BZRz
	M+MLfz2AWBGN7oKywg9TULVNmpGOoXTFDoGENwovLwXqOm+LS+Cw7CZ5WLZQH8E3Q9iYq3bKZBT2/
	CUxiqbvp+KSbo+HvS1uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqza1-00014t-9B; Mon, 13 Jan 2020 13:16:29 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzZG-0000Ya-Iu
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 13:15:45 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00DDCY4e025708; Mon, 13 Jan 2020 14:15:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=DU1Kp8lh2uFkanGLFhtVCisPZCszaBxv5SgsLyQ1bx0=;
 b=EtavOXx/JdnjibUoR7WnFypLoKMkRohpE5L/Nb81EOal4LSsz/5uTlINyd4wZ0v4P992
 xZBqWFbOPXSUD74IL1Z4L+mmRF+lGgBy+o8EM35keWM3XB2s4HbsE/fTnFdivv/SO9uR
 gKIf5AM//8nZh+s6ihTSOG56U7BL2x/vBDf24X6c83oPdEYn+5Rpt7xzV87MJMBu/QRb
 2bDzK6ENeUhu1NyPuBL7wR0Hbq+YcCPRwnSXi1Y4/H+8hX6NE+uCtl2+X+v+BvlB0onm
 w6XngRN5MWimVD+I3RiHa9aTYP+gLdxgDu3pr1IiAsVZkqwKVQjebx29KbGbX/lx9UPr sg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf78s07du-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2020 14:15:35 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A03BF10003A;
 Mon, 13 Jan 2020 14:15:34 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 925452B820F;
 Mon, 13 Jan 2020 14:15:34 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 13 Jan 2020 14:15:34 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH 2/2] iio: dac: stm32-dac: better handle reset controller
 failures
Date: Mon, 13 Jan 2020 14:14:26 +0100
Message-ID: <1578921266-6025-3-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578921266-6025-1-git-send-email-fabrice.gasnier@st.com>
References: <1578921266-6025-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-13_03:2020-01-13,
 2020-01-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_051542_923808_75A97192 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: etienne.carriere@st.com, lars@metafoo.de, olivier.moysan@st.com,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Etienne Carriere <etienne.carriere@st.com>

Use devm_reset_control_get_optional_exclusive() instead of
devm_reset_control_get_exclusive() as reset controller is optional.

Nevertheless if reset controller is expected but reports an
error, propagate the error code to the caller. In such case
a nice error trace is emitted unless we're deferring the probe
operation.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/iio/dac/stm32-dac-core.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/dac/stm32-dac-core.c b/drivers/iio/dac/stm32-dac-core.c
index 4d93446..7e5809b 100644
--- a/drivers/iio/dac/stm32-dac-core.c
+++ b/drivers/iio/dac/stm32-dac-core.c
@@ -147,8 +147,16 @@ static int stm32_dac_probe(struct platform_device *pdev)
 	priv->common.vref_mv = ret / 1000;
 	dev_dbg(dev, "vref+=%dmV\n", priv->common.vref_mv);
 
-	rst = devm_reset_control_get_exclusive(dev, NULL);
-	if (!IS_ERR(rst)) {
+	rst = devm_reset_control_get_optional_exclusive(dev, NULL);
+	if (rst) {
+		if (IS_ERR(rst)) {
+			ret = PTR_ERR(rst);
+			if (ret != -EPROBE_DEFER)
+				dev_err(dev, "reset get failed, %d\n", ret);
+
+			goto err_hw_stop;
+		}
+
 		reset_control_assert(rst);
 		udelay(2);
 		reset_control_deassert(rst);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
