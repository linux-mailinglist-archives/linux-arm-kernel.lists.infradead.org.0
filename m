Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD224B948
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L8i6D+G0f3BN9NpK24y6TfJFxBzhev8ZzJ96RBnAdYg=; b=lAem5NroDUmH48
	obkwJ66mF/HrB1qSPkansXmxGqW764pkBCxcFJz+9nFuACEBCl9IN28p3gBpXrINZe8E+HMOk2Qsu
	WljRH8fnJ1r7doTRNJNBSMoCQ7APcpe8oYNgNSbdPMNe7ZrKMmY2373z74i5wOnnDLaG094sPDG+7
	2OQf3PUyRa9v4BXrkSydtdyjHNJAiB0yApCv5M6eGgOIPMc5soT9VULCXoPbSrRU4Nl6Nyvc/XftV
	HfGhZmsgTpSMdYUdX8nuZ8VSKgINf1hYBI+Ht9G4OqrjMKBIsRiQ3eNO2uzEhyqU2aMrTfazsGpO4
	/AmxzGqqzl1QMhgLuC2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaG9-0000DW-HH; Wed, 19 Jun 2019 13:04:17 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdaFt-0000CY-9J
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:04:03 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5JCuBsW030426; Wed, 19 Jun 2019 15:03:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=iujWyaLCp1yh3WAwepteDeXAm/rq9tWRC+STHY0lkfE=;
 b=hp7o3lBcKOgc5RGR6SJ+PIyrZXgOU7T3o+HX1UMkMyTpkK+ytnl+N3MRTjcFsyiJkQKO
 UGqugdp+C01wkx+1FrgEeSXg1q1Fj25vZcVRvMdY9gTU5K5cxlnFdUlWFyCImGjiLBPl
 etpHvNb6rVL9Kb+53EIFxmph9mxqF2gdFq37zySslBHvHzLdsWaJ5K8uQ4Hbk0M6ymly
 4T4JAbZOc+Rk8iCwqtCFVYNJQAQcLZcoqxdrPqjB2zP2lJSrWXr5RhvL+yzKn/8Wd4tO
 4HDiVf9YfYPeL+n7tOGhm1bnGDCVLqq9KXv77ykG8sBzghJ49AnFwz6aHsPG/RzvIIew aA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t781a3yxc-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 15:03:55 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3B49634;
 Wed, 19 Jun 2019 13:03:54 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 17F142831;
 Wed, 19 Jun 2019 13:03:54 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 19 Jun
 2019 15:03:54 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 19 Jun 2019 15:03:53
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <knaack.h@gmx.de>, <lars@metafoo.de>,
 <pmeerw@pmeerw.net>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <fabrice.gasnier@st.com>,
 <linux-iio@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <benjamin.gaignard@st.com>, <olivier.moysan@st.com>
Subject: [PATCH 0/5] iio: adc: stm32-dfsdm: fix and improve output data
 managementiio: adc: stm32-dfsdm: fix and improve output data management
Date: Wed, 19 Jun 2019 15:03:46 +0200
Message-ID: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_060401_797870_7FF8BD18 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch-set provides some fixes and improvements regarding output data format
for STM32 DFSDM.
- Fix output data resolution and saturation management in continuous mode
- Fix data type
- Apply same processing on data in continuous and triggered mode
- Add fast mode support to get better resolution for output data
- Add a comment about 16 bits data transfers

Olivier Moysan (5):
  iio: adc: stm32-dfsdm: fix output resolution
  iio: adc: stm32-dfsdm: fix data type
  iio: adc: stm32-dfsdm: manage data resolution in trigger mode
  iio: adc: stm32-dfsdm: add fast mode support
  iio: adc: stm32-dfsdm: add comment for 16 bits record

 drivers/iio/adc/stm32-dfsdm-adc.c | 233 +++++++++++++++++++++++++++++++-------
 drivers/iio/adc/stm32-dfsdm.h     |  24 +++-
 2 files changed, 208 insertions(+), 49 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
