Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB0C1503D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 11:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/BzUB6Jj4nsUAO+jihkaR+OD+yfw/3enE3r1GR8FSAE=; b=d7Zjym+JWJ+nrc
	9mBQGs4No94PsjdYVyktuN2s7o/oAZOnNdt55EDrW7eFLLsalGhmU1tCzYpwDaAynKGNrLRSm2Zda
	ZRuNDOLCjaktuM0wpgDCWxFc6Yd//4tkr1s29RxlT6eSe3QUiiYTwfUoXdmtEhzQrijijD4iIUnCH
	RrS9ZtcbaofNYIpbKlbMDlF91gW7FNfBJhsE1mku1Jb3AqwAtgHy9jGfgvO9Z16oupcNLjVDawnKh
	ElqvBM9RGfxywSTKc1rmiYICP5bxekmdQwNXB43YDzCm9aDqmWbq8jE+0NZUv9QbYUk+0kiiIyzsZ
	w+CdIOmZSQkQjmuMgo8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyYfM-0002se-CH; Mon, 03 Feb 2020 10:09:16 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyYfB-0002s2-OX
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 10:09:07 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 013A7laG019683; Mon, 3 Feb 2020 11:08:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=+4sb3dxn9Wm1UXCadNBKjHSse+85wiCwWOp50/uIgYk=;
 b=GHPTUpU7vWN8TA0QE+qyk7CUOKxWDYcSA1qrfaYorG8q4wKKfYPX90r8nJiV7zrwUBwF
 fSC1ATigccIeEonEyDk51oKNrCsqjZKM2aSr6t3cIDYSWTKtHab9VPjkAUcvr4R/aTPv
 WfKLrhVp7yVrUJvdVFKJWXixmVqk3m8V86WfldlJScUizvxUK68Uy9mII67LbER2Lii9
 EPtas/rc+SVGKFuwppF2G0cJPi8LIPkC37Jr10WbJI/L3b7bvRDKACpVkuoQoHSRm2T/
 6CLWZF8YKAhcWC612OdeNsEJRP1YICChZsgl+gHCSeF8IY/d6csRg0buL+gXnh9Oq30i MA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xvybdrs6t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 03 Feb 2020 11:08:52 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0BA6D10002A;
 Mon,  3 Feb 2020 11:08:48 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A28A92BE22D;
 Mon,  3 Feb 2020 11:08:48 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Mon, 3 Feb 2020 11:08:47 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <alsa-devel@alsa-project.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH 0/6] ASoC: stm32: improve error management on probe
Date: Mon, 3 Feb 2020 11:08:08 +0100
Message-ID: <20200203100814.22944-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-03_02:2020-02-02,
 2020-02-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_020906_240998_ACB383F5 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Improve management of error on probe for STM32 SAI, SPDIFRX and I2S drivers.
- Handle errors when the driver fails to get a reset controller.
- Do not print an error trace when deferring probe.

Olivier Moysan (6):
  ASoC: stm32: sai: manage error when getting reset controller
  ASoC: stm32: spdifrx: manage error when getting reset controller
  ASoC: stm32: i2s: manage error when getting reset controller
  ASoC: stm32: sai: improve error management on probe deferral
  ASoC: stm32: spdifrx: improve error management on probe deferral
  ASoC: stm32: i2s: improve error management on probe deferral

 sound/soc/stm/stm32_i2s.c     | 39 +++++++++++++++++++++++++----------
 sound/soc/stm/stm32_sai.c     | 26 ++++++++++++++++-------
 sound/soc/stm/stm32_sai_sub.c | 11 +++++++---
 sound/soc/stm/stm32_spdifrx.c | 29 ++++++++++++++++++--------
 4 files changed, 74 insertions(+), 31 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
