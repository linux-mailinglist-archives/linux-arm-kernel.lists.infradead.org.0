Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B49215E8C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 18:02:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=apzLQyW9lq09D8v20P/WRI2LQgV+y6u8k9hHedVHR5w=; b=ZZiximy6ssg9Pj
	Ih+kqv9puR+xmeOo8D55/Vm6VzIZs8J4XN6/Nl32ojk5Ny1CTITfTh+TmNKnTMC/zSk3kdwUCzwe8
	XqEEBail6rTSmyW1og1Mh/gsIYwl7xZqru//Qe5pfxEc6vb8XxT2RN1mmGshrtigahxWQLugLzhzi
	BHQnG4ozHmnSZ181thb7QxpPOnJEP7GFfgvjLVM0QDMxj4eV5UYQm0SoeFWLbwA2z8if4rk4iuymf
	0F80YLYXFYGAECtvyAyZOwfFI/9IVlTSU6iOG9TN/PP/IqcG22N0gam3Xftl4ANM5lQLrpvBnRWxT
	sMVjuID1LbM6Uw+mFFPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eMO-0003n5-7E; Fri, 14 Feb 2020 17:02:36 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2e89-0002LQ-0o
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:47:56 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01EGh4gr004629; Fri, 14 Feb 2020 17:47:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=FNp5VEUp2vyJtgWvaOR8hQzLMqdi1PLqDQdOv//CVm4=;
 b=Fm5MEs5JszxH/P4yoMoGZ66cmxMJN5n28ZfM9u9Q7IEGrK3MZdmL6qhHxb1Z4W9Fc07F
 409fvSJe3CpLPLY3AdgpNj8+Ey2SPEjGHWvs2mS+WvLtS1G7+3M9Sc4+Uwna7Q31BlCo
 xL+awQnL60pOZjTXsCtzxgswpgDbmGkvmuBmu9Vmceu4vG0mGq+5WgQPeqXNSfP9uTDK
 Lq+coSdr6fUqA8L4oMZcmPlSLNmPPmK7ufbtvNCqnJQ6+lCKPezucvIk/IR5nK3l5UgA
 wQ6Z9bhObhwq62sxBq6tn2dzphVlQynoysfASHsn35rKPT/jfD1ldenHhC7syFHM8tjb eQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1ufhw6kj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 14 Feb 2020 17:47:47 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 47E82100038;
 Fri, 14 Feb 2020 17:47:43 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 379F62C0965;
 Fri, 14 Feb 2020 17:47:43 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 14 Feb 2020 17:47:42 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH] iio: trigger: stm32-timer: disable master mode when stopping
Date: Fri, 14 Feb 2020 17:46:35 +0100
Message-ID: <1581698795-437-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-14_05:2020-02-12,
 2020-02-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_084753_396108_95FADF1E 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lars@metafoo.de, olivier.moysan@st.com, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, pmeerw@pmeerw.net, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Master mode should be disabled when stopping. This mainly impacts
possible other use-case after timer has been stopped. Currently,
master mode remains set (from start routine).

Fixes: 6fb34812c2a2 ("iio: stm32 trigger: Add support for TRGO2 triggers")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/iio/trigger/stm32-timer-trigger.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/trigger/stm32-timer-trigger.c b/drivers/iio/trigger/stm32-timer-trigger.c
index 2e0d32a..2f82e8c 100644
--- a/drivers/iio/trigger/stm32-timer-trigger.c
+++ b/drivers/iio/trigger/stm32-timer-trigger.c
@@ -161,7 +161,8 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
 	return 0;
 }
 
-static void stm32_timer_stop(struct stm32_timer_trigger *priv)
+static void stm32_timer_stop(struct stm32_timer_trigger *priv,
+			     struct iio_trigger *trig)
 {
 	u32 ccer, cr1;
 
@@ -179,6 +180,12 @@ static void stm32_timer_stop(struct stm32_timer_trigger *priv)
 	regmap_write(priv->regmap, TIM_PSC, 0);
 	regmap_write(priv->regmap, TIM_ARR, 0);
 
+	/* Force disable master mode */
+	if (stm32_timer_is_trgo2_name(trig->name))
+		regmap_update_bits(priv->regmap, TIM_CR2, TIM_CR2_MMS2, 0);
+	else
+		regmap_update_bits(priv->regmap, TIM_CR2, TIM_CR2_MMS, 0);
+
 	/* Make sure that registers are updated */
 	regmap_update_bits(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);
 }
@@ -197,7 +204,7 @@ static ssize_t stm32_tt_store_frequency(struct device *dev,
 		return ret;
 
 	if (freq == 0) {
-		stm32_timer_stop(priv);
+		stm32_timer_stop(priv, trig);
 	} else {
 		ret = stm32_timer_start(priv, trig, freq);
 		if (ret)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
