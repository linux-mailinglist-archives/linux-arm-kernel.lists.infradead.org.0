Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 617E9178CE9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 09:56:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bga5dCIYPCX5sFIhQFB6RGFPtgJ/prjGKipvHYDI2VM=; b=h6zsgcz5pI/A3s
	2wWCnMV9DFRCSOdW10OqAIB1nC1HWtHPZAtzmDDLnr2Ozqv3fWuh3mwRcb4BYcdqLyBxgdeVmQg3k
	YoEzgPXIW8ywc04ImSjfaXE+gsiVQMEnp4ushs6rM25jxi/DJSVv5nA6dZ4UMaqdkx77oIkR6oL4T
	1EKhYVVlZTx9JIDH8DDRL9CD0Gqj9PAGNIVC3xXr6uAK8vgozrWogRIndInxdzG7TcrKgN+KGINLp
	96hv9//g+xd4biiTmTLcAXgdWIhUYTasuliSmjY5cZPfTenNySZ256WWsaOO8TUvkeG1lwmldvPTJ
	FeYBGJYN+nt40pAVzBLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Poz-0006JL-HU; Wed, 04 Mar 2020 08:56:05 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Pop-0006Io-5X
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 08:55:56 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0248s6Gp016466; Wed, 4 Mar 2020 09:55:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=/qiD8X3t4cPtlJawNy1q2Zqg0xWhtfmpQr6wgwRGjrM=;
 b=hz0b0Qz0JNlgGjP1cioYkf5IGoiRBgECEFc+UFw+3ZkktXnOidYT/kqNYTPSdyFu/W15
 3c9Jvudx4NKmVAZscAkPTlEwDvgepIDzIiFBlC2psgIASwfVNIHwdjNLkaLXfwliyFbe
 7kwLBhNJppeTrzb1BEfQgHaPOrD7Q6FizAX6dPzA0nfgc06HigMHv9Ut8j3lrHFabXPR
 qi42hY5070HPMsEP5vHDu3h5tUCSABYXYU9pWaGGfcEf8rTxksL/5AGKVDUwOE/il2N5
 pYoZ6M6+nHxvenxN0qnW9GiXui7k3XrpkDoCjaYX5QxhPa5lWSY6gtw3CsQAL+mIh5Ex 8g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yfea6yqap-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Mar 2020 09:55:50 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 01A0310003B;
 Wed,  4 Mar 2020 09:55:45 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3DD1920F831;
 Wed,  4 Mar 2020 09:55:45 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 4 Mar 2020 09:55:44 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <broonie@kernel.org>, <lgirdwood@gmail.com>
Subject: [PATCH] regulator: stm32-vrefbuf: fix a possible overshoot when
 re-enabling
Date: Wed, 4 Mar 2020 09:55:32 +0100
Message-ID: <1583312132-20932-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-04_01:2020-03-03,
 2020-03-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_005555_688910_C884BF55 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There maybe an overshoot, when disabling, then re-enabling vrefbuf
too quickly. VREFBUF is used by ADC/DAC on some boards. When re-enabling
too quickly, an overshoot on the reference voltage make the conversions
inaccurate for a short period of time.
- Don't put the VREFBUF in HiZ when disabling, to force an active
discharge.
- Enforce a 1ms OFF/ON delay

Fixes: 0cdbf481e927 ("regulator: Add support for stm32-vrefbuf")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/regulator/stm32-vrefbuf.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/stm32-vrefbuf.c b/drivers/regulator/stm32-vrefbuf.c
index bdfaf7e..992bc18 100644
--- a/drivers/regulator/stm32-vrefbuf.c
+++ b/drivers/regulator/stm32-vrefbuf.c
@@ -88,7 +88,7 @@ static int stm32_vrefbuf_disable(struct regulator_dev *rdev)
 	}
 
 	val = readl_relaxed(priv->base + STM32_VREFBUF_CSR);
-	val = (val & ~STM32_ENVR) | STM32_HIZ;
+	val &= ~STM32_ENVR;
 	writel_relaxed(val, priv->base + STM32_VREFBUF_CSR);
 
 	pm_runtime_mark_last_busy(priv->dev);
@@ -175,6 +175,7 @@ static const struct regulator_desc stm32_vrefbuf_regu = {
 	.volt_table = stm32_vrefbuf_voltages,
 	.n_voltages = ARRAY_SIZE(stm32_vrefbuf_voltages),
 	.ops = &stm32_vrefbuf_volt_ops,
+	.off_on_delay = 1000,
 	.type = REGULATOR_VOLTAGE,
 	.owner = THIS_MODULE,
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
