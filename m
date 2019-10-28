Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60402E75D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:12:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M92cqm2kMjS2aRf27O0MY/cxqMGfYveJXsWtHCSe2qg=; b=j+FqUjx0wZm/M3
	UYCFMWeQCrLp0nQVkKVfXGKETy+HY3vtI8VMRvsK36SK6PlFRDiwx2zdptC7pB5jcmQT+ISOjtG6f
	/SjSCtJ20cuWdO5Man+9t0QDN7BubgKXX261dlQ73mSqUniOT5uN65mhZTEWXi99qVI4sxvwEtr4D
	DIDXluaUKt2YGI8qsPd8uCmZiQbSUYib51bmoHAzNxoiqEowgBxMlNpTZ15WOnEaYRL0wItLSx7UD
	OKOS4Bb5V2KfiqEXU5i06Cu2MPVQkeAzAafs9pOqca1ibldimAGQSFp7naVKt58PU+e+Hgunr4RuP
	yUvVTTVq1D+u1ptWPTog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7cu-0006h3-3K; Mon, 28 Oct 2019 16:12:16 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7ck-0006fj-G1
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 16:12:08 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9SFuCiJ007143; Mon, 28 Oct 2019 17:11:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=ULIF3nGXJmIbXhgf4TYuqp1B8PHksrpUdhfUfjdzh7g=;
 b=YvEIq1+R8QzfF3ZFSdqiEMZX5FrHw2X+7+YPzgc9tTFY2FuXcwz3ozfzfA0wMqYfKNrT
 yDXuz+PuKy6P1IovkdYg/RMR8KR24EQGPic+HwDMidiEuLNnmEol7uu53+eZleYtC/9y
 pcTflqj3KFuQXrLiNU2jXzWQiOJ7dEh2SxnGSl4/1gnuax95aindMURTem4nW0jvgpP0
 XTn6uJNpbgoEUQne6XbNfLMqyMOMM0si86/10jNd+QaBSZ4nvSd4dV5JyleBOrgOZfd5
 2gDrAvgKwWZAPANlNpKDnLzywIcUuq8x+NiBIkGrMhTuyROVH6mNGjQ58owoSlGOwU5r 7Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vvbm0b68c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 28 Oct 2019 17:11:54 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 00E0D100038;
 Mon, 28 Oct 2019 17:11:54 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E0C252B1E73;
 Mon, 28 Oct 2019 17:11:53 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 28 Oct
 2019 17:11:53 +0100
Received: from localhost (10.48.0.192) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Mon, 28 Oct 2019 17:11:53 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 0/2] iio: adc: stm32: add max clock rate
Date: Mon, 28 Oct 2019 17:11:46 +0100
Message-ID: <1572279108-25916-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-28_06:2019-10-28,2019-10-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_091206_895615_16D1B349 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, mcoquelin.stm32@gmail.com, lars@metafoo.de,
 alexandre.torgue@st.com, devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add optional dt property to tune maximum desired analog clock rate.

Fabrice Gasnier (2):
  dt-bindings: iio: stm32-adc: add max clock rate property
  iio: adc: stm32: allow to tune analog clock

 .../devicetree/bindings/iio/adc/st,stm32-adc.txt         |  2 ++
 drivers/iio/adc/stm32-adc-core.c                         | 16 +++++++++++++---
 2 files changed, 15 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
