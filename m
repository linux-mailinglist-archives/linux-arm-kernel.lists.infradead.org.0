Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7169E10AE19
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v94HHb1IrjaLbv+YpvR9qWexdcg2vxvfudPG8n0VNEQ=; b=fcWWLUuukBXNAF
	olMHVJd1gQRRqr+mhU5yi7urAp/Jw33ARH/cYiTGlvPkWwBK07Iekmg4EbVLFatc0yKbonUx3o0BS
	ZubCSpxUMHAq3libiA0OMUxqMoL3YSziNcpW8dkrFFTX1clsWdHuu2TPNzsrjqsIsiEw6/783AmI3
	vD9vNlcHrJxA2Kb4qipBFZRoI0W+Ngupk+g1FTR5THBk5A+a6eSW6a50NMTYa26tAjY8cCxBu5M24
	pJSPFwYH3K3wuJNJaAvf2hHUBar3ESU8fPjbI/XMDFWndL6E5mpWpkO3Qfhp1eZazzgzb5tZ2eTwT
	wq1BigrIeliOXnO3uwYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZupz-0006ux-JM; Wed, 27 Nov 2019 10:46:23 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZupq-0006uQ-MI
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:46:16 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xARAgL7E002710; Wed, 27 Nov 2019 11:46:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=AfM+ZEMb0CjRpx4WonEZ50fg5isv/g8XPgB1p+eqsd4=;
 b=E7pjnlJQo5I+OUI5agfXbT8pqNABXyQBlEo0IsEo9o7hmnKoy40vHSxIHuTxCPiyb3ET
 MK3zXfj1z+n+zf72KoOt7ETcMjYNb09GiUVnbzQW/nzRiTV02M51fc7prxiu1hBzabPO
 imnSjp6FD7ypRBQhH6kWlbQV8f1zjkZjIqJXIMF1MxUED10Rz9l7P9u0nuFXqAtO0JJZ
 UWamJ4at5N6IPPzFGa/cIoXht/v7apQkv0i/VcfUg084YRlc4X6jZo/5hgrhTaY0Owd9
 hxfCtwMq0urikkPuMStsxXHu/vOrcrr2PxilaxYMxDj512WSVbnlWZFp/aYg9tiOp2Ur fg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2whcxj3269-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 Nov 2019 11:46:02 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 14F4810002A;
 Wed, 27 Nov 2019 11:46:02 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EF7EF2B242E;
 Wed, 27 Nov 2019 11:46:01 +0100 (CET)
Received: from localhost (10.75.127.48) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 27 Nov 2019 11:46:01
 +0100
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <robh+dt@kernel.org>
Subject: [PATCH 0/4] stm32: i2c: Add suspend/resume & add sleep pinctrls
Date: Wed, 27 Nov 2019 11:46:01 +0100
Message-ID: <1574851561-25501-1-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-27_02:2019-11-27,2019-11-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_024615_188250_C75508B6 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This small series add missing sleep pinctrl in boards device-tree including
i2c-stm32f7 nodes.
The driver is also enhanced to add support for PM_SLEEP suspend/resume.

Alain Volmat (4):
  ARM: dts: stm32: add i2c4 sleep pinctrl on stm32mp157a-dk1
  ARM: dts: stm32: add i2c4 sleep pinctrl on stm32mp157c-ed1
  ARM: dts: stm32: add i2c2/i2c5 sleep pinctrl on stm32mp157c-ev1
  i2c: i2c-stm32f7: add PM_SLEEP suspend/resume support

 arch/arm/boot/dts/stm32mp157a-dk1.dts |   3 +-
 arch/arm/boot/dts/stm32mp157c-ed1.dts |   3 +-
 arch/arm/boot/dts/stm32mp157c-ev1.dts |   6 +-
 drivers/i2c/busses/i2c-stm32f7.c      | 118 ++++++++++++++++++++++++++++++++--
 4 files changed, 119 insertions(+), 8 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
