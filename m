Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF8DB6305
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I4hTAUBoNs0YFk2nkh6r3yrT72LrepGRL8Z/EsksXCU=; b=awCtLIhY1bjN+Q
	yLgO2ZyLjBIxRs+GxbWtf5fhdsiICWBmfMQZrkELeuY8nmAsLtKl5GBzG62GNjHToYaskSIWXGtUq
	X4wwysghODufQ8StmyyJHAxdamy8qb17gwoK5r5bEbMa7rvfNfWRvCMppV6Kw46dhlB41sWnzObR/
	q9JlhZdbst6QSGtraqhnOtxD4jY/pEPg8sUqsQU5hOKC1z4r13b2Zja0OtTISpZRR4yQ+Bs36Jq/B
	ehqu1owhiVn1t3o56z2CkLGkAZ7jRaNxLrOQDwN9XekY1hgtnIAvFI0nQEriLKdflDC6y/6zp+xfY
	nfx8cl/6dOoTT3I8ltiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAYzb-0004Wr-FX; Wed, 18 Sep 2019 12:23:31 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAYz3-0004Qe-SL
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:22:59 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8ICLfKJ027959; Wed, 18 Sep 2019 14:22:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=LGMEcDX91zZnE3TyD/A9U4RClm8f/2smtj92YAYq+2o=;
 b=0K6bwiVHEwKLgTOJwkIYgMkN+54fiRzj4hvD9GdFbfe344+RAFN0oQmhhL/QWhUtErXh
 wNr/ZTCSXKfjy/PEBovS5zlOzy5P+CoDyrzs75hoOCqTI8yhp/QDTJODYe8vDifQA393
 LQcHMr81M3HHFDJ+M6e26dB9SYaVrudeLYAzwzU+ubT1j9jPRX4vAnnVo9zmt+T9Nnyi
 4ClYCJ/+CffzDxyiOnggSmBaAgCenoYQkmj/7nN1QwKP9mp5q39aRZIQQc1IVRUqviAI
 iJZc3/Yp5G0l4Sows3HEW38r49o10dUOkwAAvYQ3WSRL01rfr7fivmoWTk7ZmcU7S4ea +w== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v37kmc3mq-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 18 Sep 2019 14:22:54 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 1289023;
 Wed, 18 Sep 2019 12:22:51 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 713392C5B2F;
 Wed, 18 Sep 2019 14:22:50 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 18 Sep
 2019 14:22:50 +0200
Received: from localhost (10.48.1.232) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 18 Sep 2019 14:22:49 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <vilhelm.gray@gmail.com>
Subject: [PATCH] counter: stm32-lptimer-cnt: fix a kernel-doc warning
Date: Wed, 18 Sep 2019 14:22:41 +0200
Message-ID: <1568809361-26157-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.1.232]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-18_07:2019-09-17,2019-09-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_052258_437284_652DDF66 
X-CRM114-Status: GOOD (  13.17  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, jic23@kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following warnings when documentation is built:
drivers/counter/stm32-lptimer-cnt.c:354: warning: cannot understand
function prototype: 'enum stm32_lptim_cnt_function'

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/counter/stm32-lptimer-cnt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/counter/stm32-lptimer-cnt.c b/drivers/counter/stm32-lptimer-cnt.c
index bbc930a..28b6364 100644
--- a/drivers/counter/stm32-lptimer-cnt.c
+++ b/drivers/counter/stm32-lptimer-cnt.c
@@ -347,7 +347,7 @@ static const struct iio_chan_spec stm32_lptim_cnt_channels = {
 };
 
 /**
- * stm32_lptim_cnt_function - enumerates stm32 LPTimer counter & encoder modes
+ * enum stm32_lptim_cnt_function - enumerates LPTimer counter & encoder modes
  * @STM32_LPTIM_COUNTER_INCREASE: up count on IN1 rising, falling or both edges
  * @STM32_LPTIM_ENCODER_BOTH_EDGE: count on both edges (IN1 & IN2 quadrature)
  */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
