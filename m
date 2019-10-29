Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EFAE8551
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kaEhA9tYnP1VosS6x913SoG6R4MgheYgpncuGVghdjw=; b=fAqknn1ZzrLxed
	GfrcLcbXPbdkDL2jHU0GyVhLmK29cwrQv0iVX+8wdVW0EPX0wY0EQ3/tht+aDlKIWf6I5VzPliLRD
	u8gU5vSitNgj2Whg1qE97ZxP7aNjG9IApTI3spO8y87fN1QYn0MC7Y9jngtuL+vt1NokCHF/0KdQ4
	cNg146brlrNpu59vyMSOZhfXSid6gDnurN/YF2VBB2nZ81VrF4cWPLiU8BtDAVRmIFn+VC/2jy/ZX
	jth43FaF/TVU8WbLhf7Bh7xk4gInzBXqJHTnscI2pJu7oWDLnsyVzLyvyJFFnAMIbso34b49tE/C5
	XhFdzdWL3i3Dog7+1YLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOYJ-0001zq-Cp; Tue, 29 Oct 2019 10:16:39 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOX9-00010t-Jx
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:15:29 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9TACQqB029013; Tue, 29 Oct 2019 11:14:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=2+X7n8kYh+eyI478R9QoZl24SqMf0i4AANekeGpV2V0=;
 b=bo1IIq9EpbnkuyFLVKyyKelvOegHh+jMBkCnJYrALmj5rXUptONPwJPkUiSbJNfxvbqW
 b3bAvPbmSTpdwI55NOzN6Ai8GA8kdT9pLpDx5sRz59UnspekXsF8Z/iyGUtoGNA9C/Pl
 DsghnDfiT2lvQjRTpKzMyV1Hf6AUbEqszlMLrkwSgvY+TOiGR3riJAfemo2LhqrhWwbF
 TLtSL5If407AEum3azpX+o5704/raW/XvSCuQYKGHJsqYsehftECe1gi3uSdp1xv3Nmj
 A5edU4met2LnAgatEGmkG7xO5CXMezOdFUI0MYkOuBSMOxdPZEFq430gm6Kh84razTLI Lw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vvd1gpp0a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 29 Oct 2019 11:14:52 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 90C0A100034;
 Tue, 29 Oct 2019 11:14:50 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7783D2B28D8;
 Tue, 29 Oct 2019 11:14:50 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 29 Oct
 2019 11:14:50 +0100
Received: from localhost (10.201.22.222) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 29 Oct 2019 11:14:49
 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [PATCH 0/5] net: ethernet: stmmac: some fixes and optimizations
Date: Tue, 29 Oct 2019 11:14:36 +0100
Message-ID: <20191029101441.17290-1-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-29_03:2019-10-28,2019-10-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_031527_959391_C087FA37 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 christophe.roullier@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some improvements (manage syscfg as optional clock, update slew rate of
ETH_MDIO pin, Enable gating of the MAC TX clock during TX low-power mode)
Fix warning build message when W=1

Christophe Roullier (5):
  net: ethernet: stmmac: Add support for syscfg clock
  net: ethernet: stmmac: fix warning when w=1 option is used during
    build
  ARM: dts: stm32: remove syscfg clock on stm32mp157c ethernet
  ARM: dts: stm32: adjust slew rate for Ethernet
  ARM: dts: stm32: Enable gating of the MAC TX clock during TX low-power
    mode on stm32mp157c

 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi     |  9 +++-
 arch/arm/boot/dts/stm32mp157c.dtsi            |  7 ++--
 .../net/ethernet/stmicro/stmmac/dwmac-stm32.c | 42 ++++++++++++-------
 3 files changed, 38 insertions(+), 20 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
