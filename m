Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87774F1395
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:13:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ms3tpe2L62YtHIfQHA4dHCznM59d1IjvJZFD30naUK4=; b=tOJMi1sHjLBKyw
	SImMbslt5iKuiYGeT5XDbOCFZS9zP5bM7aHcBnDGGvJcqdTKkjmpg6pgoW/v5lhXCpT9XGiLetPYC
	ML4CBDPYHL7/uhjYm1igZzKi3SEgbpfTunyDblJ7dgA1adenBY8/2mRvYGZUywpZeYnmxv3SopxmA
	lgrGhp/wE+ecgzRSW/fePweRkIr419y1zv5/wduQ7UFR9nmDtivxNr9RaqhgZuLqou+I9LoUGkYV6
	JzP7JpMlRihggnLEHCJksIEQRHKgT5CphhHGx75Y/qKgSE/jgMWJUVhyI+dg34N4L+Ub5CPI46cJS
	YOyretN8/Psp/iTaVKpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIJW-0003Pi-3R; Wed, 06 Nov 2019 10:13:22 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIIn-0002wQ-7u
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:12:40 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA6ABnYf015178; Wed, 6 Nov 2019 11:12:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=8qOd10w9hoYCJyi/2Rbap3apd+BpOD74qFKDt1hG8ng=;
 b=Es73D/nEAVypIDQTGrhni6kNsmkv5WeXwTVZSCjpTOZXMcr7tPiJKhmb2emFz+8OibYm
 uKYcMkxOwjocGfb0rAlDazFbQME3siJIBx0fi793URfUyQFtD8H+3lD9CXIvLBOn8Y2o
 fCI/v0zEPu4YvqENhIX+iHzKIzlgtMg43fCKr/AUuk8vGafSSLVncdW7NAeQZfGv/Y3q
 lWaIVlAlN5FwoLiwT+6/6pf4cdLbYifivNTHWL78YAOKd//1szRxSNAK6qw6WCHhhH4x
 W17tVe80xpWbpMVYuPAKrfhicerUPUJig9UNSm4DaD62VQZsEjVtncpCvMdP0W/QtaQX sw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w11jnd2vm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 Nov 2019 11:12:27 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id ADC6A10003E;
 Wed,  6 Nov 2019 11:12:22 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 963FB2AD343;
 Wed,  6 Nov 2019 11:12:22 +0100 (CET)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 6 Nov 2019
 11:12:22 +0100
Received: from localhost (10.201.22.222) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 6 Nov 2019 11:12:21
 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [PATCH V3 net-next 0/4] net: ethernet: stmmac: cleanup clock and
 optimization
Date: Wed, 6 Nov 2019 11:12:16 +0100
Message-ID: <20191106101220.12693-1-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-06_02:2019-11-06,2019-11-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_021237_618030_B3B1AEE0 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 christophe.roullier@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some improvements: 
 - manage syscfg as optional clock, 
 - update slew rate of ETH_MDIO pin, 
 - Enable gating of the MAC TX clock during TX low-power mode

V3: Update with Andrew Lunn remark

Christophe Roullier (4):
  net: ethernet: stmmac: Add support for syscfg clock
  ARM: dts: stm32: remove syscfg clock on stm32mp157c ethernet
  ARM: dts: stm32: adjust slew rate for Ethernet
  ARM: dts: stm32: Enable gating of the MAC TX clock during TX low-power
    mode on stm32mp157c

 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi     |  9 ++++--
 arch/arm/boot/dts/stm32mp157c.dtsi            |  7 ++---
 .../net/ethernet/stmicro/stmmac/dwmac-stm32.c | 28 +++++++++++--------
 3 files changed, 26 insertions(+), 18 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
