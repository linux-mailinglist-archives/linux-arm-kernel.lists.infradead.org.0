Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD401E5922
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+HLlg8DhnAsJz+9RDjYki/JYn9Y7zOftlxlFmvkdfPQ=; b=ZxHiDFOeamg+bA
	xERagc7z/uz41SpiLuLx10Au1g6Niv3W3Q2VK08aDKHvW7Ht35wkqREjP51GAMy6Prt1yJD/q/iDQ
	jnUav3hdCTheOfARR+puumkkE7qTpQuWMYeZ+kh8o2UqlBRrYMevW1/d9Q2QQ14GP8WmpgpCTzzJY
	3pDneWyp44VPYz4LaJKtyTHpGEpsV2MCBg9lLSTMZd3UMqJlbrh83WNYyb1S+Kaa46uji0v8dQ5vw
	EFSgJmoo/gtoggommk2ma7TW95j0BJbHSEiuv/0L7fj4S5IRW4xx4JfqRTkFOJYuGfvBh7FH0x+Cs
	UpjO0sGDFGbH9dxFxacQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDBL-0000U5-0e; Thu, 28 May 2020 07:42:27 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD87-0003qd-Nd
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:39:10 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04S7cAos017153; Thu, 28 May 2020 09:38:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=1lcgbL/rxGsDAqjZW9JrG35AHt9dvjJGVv5G7y5dl7U=;
 b=Rgn0mOUxRpssrSLPHqhK1vfcK7aNcIion3VK+PPT2GZkS1vbu7RkZkfMO6Ay3tEGf+/D
 /7/J4SU84mXeTBdyC6eqmGwukNqada7gTEmFlFhoFeS+kjpp6C9cAtLLmw5LMhyxMO6B
 j617JlYBP9tUPPYQR29Ggpy7sJUqGyqkYnjXkPGb2fflfsKnQsjUBFfyyf59f2V8xoR2
 Iy5Yt3yqIlmeBQZuvpZNaWxuxyqm058uI3WctRj3K0RZ5O7kLlCYs0p1twTst8c1A46X
 GKDV/go4p0arIvn1cT+HqqtWCSaviPSpQb57cBmVDewttDrS7TBvS4H79QbzhIDC5yf4 7Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316sa29wn2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 28 May 2020 09:38:58 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B1A7710002A;
 Thu, 28 May 2020 09:38:57 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9BEEC2B187F;
 Thu, 28 May 2020 09:38:57 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 28 May 2020 09:38:57
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH 0/3] STM32 update uart4 pin configuration for low power
Date: Thu, 28 May 2020 09:38:50 +0200
Message-ID: <20200528073853.24759-1-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-28_02:2020-05-28,
 2020-05-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_003908_227329_5343C7F0 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, Erwan Le Ray <erwan.leray@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update uart4 pin configuration for low power in pinctrl, and for ed/ev
and dkx boards.

Erwan Le Ray (3):
  ARM: dts: stm32: update uart4 pin configuration for low power on
    stm32mp157
  ARM: dts: stm32: Update pin states for uart4 on stm32mp157c-ed1
  ARM: dts: stm32: Update UART4 pin states on stm32mp15xx-dkx

 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 17 +++++++++++++++++
 arch/arm/boot/dts/stm32mp157c-ed1.dts    |  4 +++-
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi   |  4 +++-
 3 files changed, 23 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
