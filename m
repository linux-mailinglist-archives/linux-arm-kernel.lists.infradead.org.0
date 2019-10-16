Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CB1D908F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 14:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DFvgY3X0Ss/e7rmAqwu6IHmen8qyE6Oo+6akVPHpot8=; b=Y2I6KNQlp6RNy4
	ZOmCwti2Y0k5oT0VS0JFbo9MC5culuvnF8c0C1+NYkfAhrQHRy5HmxbFl17xZ42PpPwchXKOIkp5U
	0lyFSx8tnzn8L3ewjlc+wOUIU+vof8idT8W30gl2UhweCw56EaLINTuhDStqiYnQagrTND9PnrDN+
	3ofKNQKhz9koWkhGOJF6aCaJa4+XehIJP6FjM+X0JNaqyLxhifz65zWTaPNH7XuMbYin2+yc46sti
	C+IkqRFRxSpRl0wQRNbCtaLHCk2DaWa+0iozFQvGXbCITMLY7Q4M79bbAgVdG7EcaAsVqOtSxIvA7
	sbkacRLEGznhfMNCV7xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKiC4-0007PM-Co; Wed, 16 Oct 2019 12:14:20 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKiBs-0007Nn-MR
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:14:10 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9GCBKXh016165; Wed, 16 Oct 2019 14:13:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Ez0GavI0R2gyUyK3i2b9o2TNl6w+iegZF0LD+Nt0+s0=;
 b=MX+pb3AsQ6p30uX/kZiGuk4jtLPNLRaFrJgnN46h7Rl5eleOK8D2NqliskyPVcx58rmu
 v743d868MOmr5mrsJzXqfG7KN81s3oMO199Y4vXr5C3ilKnex4Wd3Bny2nvZdM2bYuln
 5bnuOhKX2NaA3YWfaHEoR1IA4vbh8NASw9WYKkTky+EK3huFlnG01u7NtIkVql3PjJOO
 D/6u1JH4gUK2oy0bLiYMb1b5iWxcaB1eF34VZYVTD+mikfmAMaFlNbYUqwzjGkui7sST
 U/U01H/myp+obbjG+4u9XImgxiQEYoMXMCmk0mZRyFRaCR4fkPhtxjumNBNBb3agMcdW OQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vk3y9xf8d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 16 Oct 2019 14:13:58 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 499F4100034;
 Wed, 16 Oct 2019 14:13:58 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 31DDD20A92D;
 Wed, 16 Oct 2019 14:13:58 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 16 Oct
 2019 14:13:58 +0200
Received: from localhost (10.201.23.25) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 16 Oct 2019 14:13:57
 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 <linux-kernel@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: [PATCH 0/2] mailbox: stm32-ipcc: rework wakeup
Date: Wed, 16 Oct 2019 14:13:47 +0200
Message-ID: <1571228029-31652-1-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.25]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-16_04:2019-10-16,2019-10-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_051409_102107_9FBA7E21 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabien Dessenne <fabien.dessenne@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the dedicated wakeup IRQ as wakeup can be handled by the RX IRQ.

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
