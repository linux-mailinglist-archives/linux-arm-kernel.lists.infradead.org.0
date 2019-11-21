Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0051050EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 11:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pJE3d4B7hVnGpYgieO8Esn7NhGkG+age8/yiHxARCe0=; b=gFWfXMb+BYpdrC
	/ObQWAlXXDO72BatUYIA8AZ7fhewg4W21urWjrQq84B5gaJ9J3tVb0V23z4A1O27u1pUPW1h9QawF
	YLXL78eemI7bNTkmCK5PyjqvLCT7pFvPeWo0DrTyVKmdjw2v1ZDhxTmsA82WOwy/21iX51EPay/Jw
	2TEv/6oOGSS0uJc9F1AqUJCmOtlD5NlQnoGFGB07by6w1OInSDy0skkuCj3Vu/PuPYQq5W6NPVU/l
	sNmN2QQIOcQ8yntrtsMD5KWQmn27dRYHkHvxLv0LeiOufiVdFN6Co7TW+dZClLxGc5c0Mm9GMLzQA
	Zf8oNJ/g/MNeCFpk+Ccg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXkAo-0003JF-FL; Thu, 21 Nov 2019 10:58:54 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXkAg-0003Ip-7H
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 10:58:47 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xALAv0D0003536; Thu, 21 Nov 2019 11:58:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=+ryPb9ETJPdsYWVGk+7MMd7fF4WRlNWEqIU9BO/5o/E=;
 b=c5n+Tu9CAwZRtKQzeN+Gk8BIJqhT8+m8ggCyptm0ywzgiRLJSE8JSbYgaf1Q74YvNe1S
 iMiCAiNSbaz3lmcSc7eZg7p//tEkJuDgffXpQK99A7AzmXj1NpBdeF19kOI/v+42rGPl
 bEavf9hTpDw/AAtrkegWrKwv+oProMFBNjv7Cc24wM/8DuOc2mv11/btkS5JYsrmFz9N
 PVqwFnPezKkLlkIvUnhvAu29qnHPVEgK2R3xSroOwu7SGUS67BONKotm7AMjZxas/4xp
 tp0CnzLLlB5iguJknqTti1mf3A7HAB2X9a5RYhaW9Q5TtcE0knB4TjmWARN19XfJQPa6 zA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wa9usjv1h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 Nov 2019 11:58:42 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 34550100034;
 Thu, 21 Nov 2019 11:58:42 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2690D2B90B8;
 Thu, 21 Nov 2019 11:58:42 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 21 Nov 2019 11:58:41 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <thierry.reding@gmail.com>, <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] pwm: stm32: remove automatic output enable
Date: Thu, 21 Nov 2019 11:58:00 +0100
Message-ID: <1574333880-29339-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-21_02:2019-11-21,2019-11-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_025846_622240_6AFF720E 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Don't use AOE (automatic output enable) by default.
In case of break events, pwm is automatically re-enabled on next pwm
cycle otherwise.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/pwm/pwm-stm32.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
index 359b085..3079818 100644
--- a/drivers/pwm/pwm-stm32.c
+++ b/drivers/pwm/pwm-stm32.c
@@ -374,9 +374,7 @@ static int stm32_pwm_config(struct stm32_pwm *priv, int ch,
 	else
 		regmap_update_bits(priv->regmap, TIM_CCMR2, mask, ccmr);
 
-	regmap_update_bits(priv->regmap, TIM_BDTR,
-			   TIM_BDTR_MOE | TIM_BDTR_AOE,
-			   TIM_BDTR_MOE | TIM_BDTR_AOE);
+	regmap_update_bits(priv->regmap, TIM_BDTR, TIM_BDTR_MOE, TIM_BDTR_MOE);
 
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
