Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D6E4B89E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yt7aZklusXwOtgT+91dQFKz6pO1t6lVeA2N+ISkUPhQ=; b=eC5FP/dxTXKzvk
	gZuawsmCe0gbhUGkpkENkE0tkNnKDf4qckqTnDpd2IH6fyMaOq0p6+3gqMYkq7VEhFGbMHrJh1Y0e
	mp7XAxYw3g2ggNRd0Sw4bgHazA66zlioSEiVCvPCDuuDN8PeMZn7Sdv0/XpJJSXW4DbYclaZKS+Pv
	/hB6LUkZ7xrlYMEpfoLxDZAb3YH6wdl4S5uD7jOALwUXROuttGx2qv+Un1tRkd5HxdHeWlwnTkKSJ
	0zFgh+EdT9Q6yXAGZ6UzzkLFwcXw/3RalAxDV2vaWAkq3Z09dzyENLeEGHERxkaunX1KS1qrewlQX
	252BLNdQ9viDynyn3Y7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZlc-00054M-Br; Wed, 19 Jun 2019 12:32:44 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZjx-0003iQ-B8
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:31:05 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5JCQNaU013623; Wed, 19 Jun 2019 14:30:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=VBdmw2B8JzIwHBf2DCzNhNhp/wewpseJ6FglA41KzDA=;
 b=HBwMhu88MDRfMzdTNuZfO7msKon03r30NvVEq2joa3SpqyF6u1Ahr7V9dClcMxhDJM+B
 A7qZQcbSgM6+aTpoCbJYmW3jWzqRmVRQjhk0pb8H/tcGYHulHlQtUarS0QZ/PO7F+CkC
 2E0oJwOUFujNxMUDTHXAKZD5O9758tLWN/GM4QhvojMXNyJp8qdBN1cECDIU/Lc2/hwq
 pFUSHe1weWajs/n7EHdyK18bIggS0X7ZXyoBTNQ8wqMKJDtDkT37Yo4IYo8ITP3T/LIy
 6RrDh29JksY8qR0EbBK1lvR6Jr1igmQSkGjGq/2lQGCnNbZ/CEjtkKi662oRKpshO82i ig== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t781uux8d-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 14:30:52 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C468938;
 Wed, 19 Jun 2019 12:30:51 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 91CE227A7;
 Wed, 19 Jun 2019 12:30:51 +0000 (GMT)
Received: from localhost (10.75.127.47) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 19 Jun 2019 14:30:51 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <alexandre.torgue@st.com>
Subject: [PATCH 0/5] Add missing vdda-supply to STM32 ADC
Date: Wed, 19 Jun 2019 14:29:53 +0200
Message-ID: <1560947398-11592-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_053101_741877_6AA09952 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 mcoquelin.stm32@gmail.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing vdda-supply, analog power supply, to STM32 ADC. When vdda is
an independent supply, it needs to be properly turned on or off to supply
the ADC.
This series proposes fixes for the dt-bindings, IIO driver and relevant
device tree files.

Fabrice Gasnier (5):
  dt-bindings: iio: adc: stm32: add missing vdda supply
  iio: adc: stm32-adc: add missing vdda-supply
  ARM: dts: stm32: remove fixed regulator unit address on stm32429i-eval
  ARM: dts: stm32: add missing vdda-supply to adc on stm32429i-eval
  ARM: dts: stm32: add missing vdda-supply to adc on stm32h743i-eval

 .../devicetree/bindings/iio/adc/st,stm32-adc.txt   |  1 +
 arch/arm/boot/dts/stm32429i-eval.dts               | 25 +++++++++++-----------
 arch/arm/boot/dts/stm32h743i-eval.dts              |  1 +
 drivers/iio/adc/stm32-adc-core.c                   | 21 +++++++++++++++++-
 4 files changed, 35 insertions(+), 13 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
