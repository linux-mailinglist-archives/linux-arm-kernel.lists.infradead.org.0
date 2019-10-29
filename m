Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B4BE8D46
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:50:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N159Z8hn8pTKuM9Yfkdg3+fGkXdzd4PpJjZEriDLkAc=; b=emo1Y0Q8T5Fcp4
	4ySH16COC1x5wIp6VM9FBzNgYOc8tOk/sGe335cV1wDTHppBXH6tBq6rlRNEkrxSR3RS49CZOMlgG
	C+JeFf3+kJb56si9QdqkPR5VgEsa1a+iGIxWj7Dr6JUy2XfPeCH4HA/jW9XtgqoubilQKyhToQtAy
	oKyylJ7LH5ZTKDVz0gdGxi4hKJwL55tG7JwOkF19tj4HW3LX6RewWQyOGd7+2cEuAdKxKwcj7MFz0
	wG6/rfBe4oDURBbJonSW72LMoHPG76KuDkHQ4lNBrjusk6ScT4igQtcaN03yfN1ULjy8F1lclmYm5
	RXkSrCX8T9T0K+1sIDgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUhC-0008RS-Gz; Tue, 29 Oct 2019 16:50:14 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUd3-0004kQ-H3
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:46:01 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9TGguol026450; Tue, 29 Oct 2019 17:45:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=BgTIc7CMxAbrqUUG2tERc+pTVwcpfz1nuVzhlxORpJk=;
 b=j2JMjVGL5xSftDsXy0cxeHOnlpIfK5me+nfi5ql/seksyPlQaMJ2pVyEobkoakyg3JQK
 cdGUlaSMkN+yaDQZhN8uGmy3GxRRc3OD/bjzXlf/r49DmyBObNgUD7siP0E2gKGGGm/m
 OYdXwBDxIpXqUSKRx4hLOZlWDc2SDVwSFmmrJR588bohyZBcfInVNZPSrDLv5iGABpLX
 hjNzdTS4DbNxt36Rot1E92vqdjkQCinacG9EefGGeetFlEGr+ebHEM5c2ZNY0gfW+/Jg
 ZCp8cm39FzH8HOx6AGAMYXRsH1Jy6xaH1F5526jB9vusx21AyNTErtedXE31g1EX4ARZ ZA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vvbm0gwd3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 29 Oct 2019 17:45:44 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4192110002A;
 Tue, 29 Oct 2019 17:45:43 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 227462A748A;
 Tue, 29 Oct 2019 17:45:43 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Tue, 29 Oct 2019 17:45:42 +0100
From: Pascal Paillet <p.paillet@st.com>
To: <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <rui.zhang@intel.com>,
 <edubezval@gmail.com>, <daniel.lezcano@linaro.org>,
 <amit.kucheria@verdurent.com>, <david.hernandezsanchez@st.com>,
 <wsa+renesas@sang-engineering.com>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-pm@vger.kernel.org>
Subject: [PATCH 0/4] thermal: stm32: driver improvements
Date: Tue, 29 Oct 2019 17:45:33 +0100
Message-ID: <20191029164537.1561-1-p.paillet@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-29_05:2019-10-28,2019-10-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094557_988415_6015E777 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: p.paillet@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The goal of this patchset is to improve stm32 thermal driver:
* add support for multiple trip points. Currently the driver supports only
2 trip points.
* rework interrupt management to avoid receiving hundreds of
interrupts when the temperature is close to a low threshold.
* fix a mistake regarding the role of an engineering value.
* suppress passive trip point on stm32mp157c because it is useless.

Pascal Paillet (4):
  thermal: stm32: implement set_trips callback
  thermal: stm32: fix IRQ flood on low threshold
  thermal: stm32: fix engineering calibration value
  ARM: dts: stm32: remove thermal passive trip point on stm32mp157c

 arch/arm/boot/dts/stm32mp157c.dtsi |   6 -
 drivers/thermal/st/stm_thermal.c   | 441 +++++++++--------------------
 2 files changed, 138 insertions(+), 309 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
