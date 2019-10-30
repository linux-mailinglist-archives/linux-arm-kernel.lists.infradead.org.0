Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F8AE9CD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 14:57:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XftuxvmcXlFyEyW83umdLUhG0m4QHoTvoaxp8RawxuQ=; b=labdruvG7pfD1I
	G5RmnQa25GtiRJBWCKD2qaBZGr04Hcv+yBm2jN2hZHi9aL0Gp9oDxnqcYkNKziMe73WJ6uxFSTNwK
	dsa0EEY96/jLnrin6YHHq3hXLOjbEw9drNlz0sGRajazhOPXfFe+Cp40SpdAIj3ELgR6/AQFsuRF1
	kYsDqWhWTWG4xhjRc2h14NVtHfgJhULERNDzdOO+9IQkEDoARzvH8UsmyJRnxRLN2uz2ZocrrXjo5
	PY2sgQa40NoCmn1FLFHu8NedaUo8IzZZxW1UcIxznq6HNkao1MIRr3b4aZz6ydCBrwXSLeKox/YUq
	1tRpwtWXeJ1DR6b9nH6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPoTW-0008Uk-OY; Wed, 30 Oct 2019 13:57:26 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPoTM-0008Ta-5b
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 13:57:17 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9UDqLfC032051; Wed, 30 Oct 2019 14:57:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=eH7mwtf1v4gBy1/YWM1SPqmdubzRlFaFMR+UtH0lgC8=;
 b=j7zBi87rylKqaJglCnoq5i6DN3YP+/mR6z07XXagMi0XDRM44KxJ5+Sb83qZHC+5yYZx
 iRd45/jsISq6IJy3j5ZKm38/7/LOMY+CRDQ5kdjSJ9KCPHqvVD3pGjVKQ/yrSpCg3YwU
 +s5aL9MpRVZ92mO4hVMSiYfZwDbQnZAX/21SxyqMYqCJBsjwddLUOyBNAIZsNISKvAC5
 6ETNFNPIiGfywFpLppHCsNUg8j7EDf7IHUcsgLlT2q7Fe3xMBevtG0fKbwJ+rpJdq19X
 Qtf7Agr6IUOHsVe++qHwjefrRRJbtxju65BDdqV+txXiKHzjg+YNVTMAYo2mx8/BOVem RQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vxwf442u1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 30 Oct 2019 14:57:06 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8775910002A;
 Wed, 30 Oct 2019 14:57:05 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 592C72C07FB;
 Wed, 30 Oct 2019 14:57:05 +0100 (CET)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 30 Oct
 2019 14:57:05 +0100
Received: from localhost (10.201.23.25) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 30 Oct 2019 14:57:04
 +0100
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 <linux-kernel@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: [PATCH v2 0/2] mailbox: stm32-ipcc: rework wakeup
Date: Wed, 30 Oct 2019 14:56:59 +0100
Message-ID: <1572443821-28112-1-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.25]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-30_06:2019-10-30,2019-10-30 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_065716_596515_1E12855F 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabien Dessenne <fabien.dessenne@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the dedicated wakeup IRQ as wakeup can be handled by the RX IRQ.

Changes since v1:
- typo fix
- add Rob's Acked-by for bindings

Fabien Dessenne (2):
  dt-bindings: mailbox: stm32-ipcc: Updates for wakeup management
  mailbox: stm32-ipcc: Update wakeup management

 .../devicetree/bindings/mailbox/stm32-ipcc.txt     |  4 +--
 drivers/mailbox/stm32-ipcc.c                       | 36 +++++-----------------
 2 files changed, 9 insertions(+), 31 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
