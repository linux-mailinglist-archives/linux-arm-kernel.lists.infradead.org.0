Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8141049E06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 12:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+V4WMQ32QQY6qFl3mKuQ4ivMba+vmoF1y9VY7bwaSgg=; b=tPS00niPUXNTMh
	lLfWx1W1Y7xZtZHPWqTPigE29VPSOBSuiGMzMctzJJWYLbjVh/OXjFvf1Qhz/CJB2kcILjadmDu2A
	d+/AEZR94D6ehfFl3df9fePH7oM4izUXptmjmIBfqJYk7Kn6JzqFkbePeGf42aamri8Ef2oNVAL7+
	Fv9/tZhdePn+Milm7HGZr++AU5Qol1A0EpCNTMqW09pJ4gv31MLa0YX4cwrCuxff7YZpFJwg6trvU
	0TO9fR9VQQJ7Xc5HPccwmgoUsRG/YVN+hQl55w/Z0jLViaPM7aQa+6nAhloahb4C8MgOQogKj9SrN
	IMWAAajiJFmvZd2oyfOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAyT-0006Bm-Kp; Tue, 18 Jun 2019 10:04:21 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAx8-0004ue-Qo
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 10:03:00 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5I9utiI016658; Tue, 18 Jun 2019 12:02:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=MfAHlgSdxpurzh3a1xtW23vEPvxHZgpi0SmFk2u5Ijk=;
 b=u3n2tZjQplZWnblLBre5vzHMDdGgJ2eJuZU/7L/a97xCBbZeoK8F53nKy+rI0MQsGNjF
 JhVClAbzQezkSyKrEyj1ckRug956mgjuZX29a8LtqYkdWNmZ16FVGcpy6I+V7DkdDcKU
 RpVgcnHWNBwcr6CQkIaFl8GNJpfbv3qa0UTbDo2E0Qn/66w629C6QaPJq9XY3PwVr7lo
 X+JTqxe1f+/0g3HPxUUQJjzm9YzM2TXKCQrmIjh4UeXn38D9tpH+M/rF9Fqn3EyGzwLg
 hB7IfV/94mUexzdokIm12TwebK2q0e8yVQPOoZf9FLyG5UOF8jLD28hN7CSx++84idxh nQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t4qjhyq1n-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 18 Jun 2019 12:02:35 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2120742;
 Tue, 18 Jun 2019 10:02:33 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E497625DD;
 Tue, 18 Jun 2019 10:02:32 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 18 Jun
 2019 12:02:33 +0200
Received: from localhost (10.201.23.31) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 18 Jun 2019 12:02:30
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>
Subject: [PATCH 0/5] STM32 usart FIFO handling
Date: Tue, 18 Jun 2019 12:02:21 +0200
Message-ID: <1560852146-3393-1-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-18_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_030259_173781_463195F6 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-kernel@vger.kernel.org, Erwan Le Ray <erwan.leray@st.com>,
 linux-serial@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series delivers RX and TX FIFO features to improve system 
performances during data transfer.

Erwan Le Ray (5):
  serial: stm32: add support of timeout interrupt for RX
  serial: stm32: update PIO transmission
  serial: stm32: add support of TX FIFO threshold
  serial: stm32: add support of RX FIFO threshold
  serial: stm32: add RX and TX FIFO flush

 drivers/tty/serial/stm32-usart.c | 132 +++++++++++++++++++++++++++++++--------
 drivers/tty/serial/stm32-usart.h |  19 ++++++
 2 files changed, 124 insertions(+), 27 deletions(-)

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
