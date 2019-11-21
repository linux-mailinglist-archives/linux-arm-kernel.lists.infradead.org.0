Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1B5105108
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 12:05:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iMhqvCn1ngTictfMm9Bvr3Cb9F6yFDozJbh0E/xW4mw=; b=uenKDoqCj86gLW
	sj+j+78xYQqDzehrVywrJDKHjkHBDpMoXdDuFRm6sImoKSm96z5HR7vm6rWmk5cGrjBo3EJakhIHZ
	b2q0MBfMI1GhBlhwuZNUS9xUfWLfBsta7NhmKZXxlDTRtwkU3UP9TgScwxQvJTXjRmtL7FFMBUYFE
	bUhTeIc6e+/28mz4uZaToORZ3yrCfP1B5yieykoWEw1wkLC3hN7kaUgcNpXnSQqjhBmoRZhutFJ8j
	bpk8LvJnb6Fgv//hwwD1R3KQlhwXKswiTlhbo+hUOCrLK3onynuI2BCNwCBXoGUBesRaUCR92iJ49
	4FYcJp62irGyzomKL97g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXkHc-0006cS-1P; Thu, 21 Nov 2019 11:05:56 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXkHT-0006ba-J3
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 11:05:49 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xALAvIQV026272; Thu, 21 Nov 2019 12:05:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=OhtREXLEPovh2INiG1vnuC84uK8FvPx6VEk4u0CcrrM=;
 b=ZHUKQT94E35jxMTuPiidNnBVxL/JQIz201SOvqDXW+5gHxaLHD7wpsLYRz++NhPZNO5t
 hkIzAOc3Xq8LPuW2Ep1pZkmZYhtlyArGlAJaOlWXUpRN38jvaCu2lepcqcVkCWw/9awu
 sqHDlDPVBgTohnFIhqjZOWM68FX7Q8iKFxilmtpBrlgz0OcaHdWtzebYiKiKoc+ShRae
 wqBrca3fvSwJv5ucqLzG8cKYibvqAeR2NCH4IYAbqGXdi9t8+sjC0a786wEQQD1RNxqv
 s1JHnrb003BWfXJrqkrjiuiQALlOGSrHVkOny9nl7WNv+A7uNpE9CEOd6RCrTcgZldIE SA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wa9upbaaj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 Nov 2019 12:05:40 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 31E7710002A;
 Thu, 21 Nov 2019 12:05:40 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 197332BA32B;
 Thu, 21 Nov 2019 12:05:40 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 21 Nov 2019 12:05:39 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH] iio: trigger: stm32-timer: remove unnecessary update event
Date: Thu, 21 Nov 2019 12:05:17 +0100
Message-ID: <1574334317-30014-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-21_02:2019-11-21,2019-11-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_030547_926877_52EB48BF 
X-CRM114-Status: GOOD (  10.99  )
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no need to explicitly generate update event to update
timer master mode.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/iio/trigger/stm32-timer-trigger.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/iio/trigger/stm32-timer-trigger.c b/drivers/iio/trigger/stm32-timer-trigger.c
index a5dfe65..2e0d32a 100644
--- a/drivers/iio/trigger/stm32-timer-trigger.c
+++ b/drivers/iio/trigger/stm32-timer-trigger.c
@@ -297,9 +297,6 @@ static ssize_t stm32_tt_store_master_mode(struct device *dev,
 			     strlen(master_mode_table[i]))) {
 			regmap_update_bits(priv->regmap, TIM_CR2, mask,
 					   i << shift);
-			/* Make sure that registers are updated */
-			regmap_update_bits(priv->regmap, TIM_EGR,
-					   TIM_EGR_UG, TIM_EGR_UG);
 			return len;
 		}
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
