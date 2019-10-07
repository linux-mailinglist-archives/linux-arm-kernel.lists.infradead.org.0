Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D1CCE564
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3RREcwT/hd8Fe3RYtJPV3o0IYzP7es0nIMjzeV41+Xk=; b=io2UgBpB70+B/q
	tHYuDDFD/lR6TCImr0/KYADwLCSbFY3Hyqpt7yxdnINikScZ18V0EZaFj0EB4bnJzKolRTsIEd5Hu
	dF7I80mfr1xNUG83mVgRAZOBLpC6jTVp7DemVRRD7+v/DQjgZB9A/AQy5YR69waD92UQPc7UKeI+n
	vwbRuN73QCa7U9txcZjv0TrdKXnTbaa2fNx/pqHXDCNFndktWmkkgoboQl9yZ2Qh1mT0SV4csBYOC
	Y4/Y63JojDqhM5FKR3Va/kls1truJdxkJQtJYQAkrZKC3yMBbdB2AMipFlOJrqcmIm6f+13D7/Sd+
	xDtNRuisk+fW5fuZHjLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHU5z-0006gB-UR; Mon, 07 Oct 2019 14:34:43 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHU5V-0006Ud-RH
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:34:16 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97EVeYl021701; Mon, 7 Oct 2019 16:34:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Z6JwJ7BA4jHWAT0HHOYTMuKD4KHqxvNFYvDntJKt8Cs=;
 b=ztBt+TDuhXSbnwSv2ZtYNw8umrUsXzzT28B7eT7txWClmlqFX8U9d13MZfm3mADgPVI0
 pyIWyQfGi3xA/E9bQamRyIpj+MhZ6ogzVFyq7eIe4RyYPwNGy4NiuxiZsTCWBeapien2
 /R8CE2yAekiUaTD1zBX/NRoSC+APC3aZ1wes83NZ3fVUAwN1tH19PMqWWMriO07gbD+P
 0y15Myl2QNpR0Lk70a7kvnJe6Xa5aJ//eSlcsV28P2RDUl6UnJ3qx/47b9H7Re15t0Hr
 4WZ8Xq7UZI1TdYPoDf/x5KmSmc/Kv55It80+dWBVtlvp5OSQNlPwhkpfIAJoL0MJWeMx 9Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegn0jw3s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 16:34:05 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 20FAB10002A;
 Mon,  7 Oct 2019 16:34:05 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E51362B4929;
 Mon,  7 Oct 2019 16:34:04 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct 2019 16:34:04
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, <arnd@arndb.de>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH 0/4] ARM: dts: stm32: Add fixes to be compliant with DT
 validation tool
Date: Mon, 7 Oct 2019 16:33:58 +0200
Message-ID: <20191007143402.13266-1-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_073414_244591_916D2028 
X-CRM114-Status: GOOD (  11.68  )
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series updates STM32 DT files in order to clean some issues seen during
STM32 device trees validation ("make dtbs_check"). 

Regards
Alex


Alexandre Torgue (4):
  ARM: dts: stm32: fix memory nodes to match with DT validation tool
  ARM: dts: stm32: fix joystick node on stm32f746 and stm32mp157c eval
    boards
  ARM: dts: stm32: remove usb phy-names entries on stm32mp157c-ev1
  ARM: dts: stm32: fix regulator-sd_switch node on stm32mp157c-ed1 board

 arch/arm/boot/dts/stm32429i-eval.dts   | 2 +-
 arch/arm/boot/dts/stm32746g-eval.dts   | 3 +--
 arch/arm/boot/dts/stm32f429-disco.dts  | 2 +-
 arch/arm/boot/dts/stm32f469-disco.dts  | 2 +-
 arch/arm/boot/dts/stm32f746-disco.dts  | 2 +-
 arch/arm/boot/dts/stm32f769-disco.dts  | 2 +-
 arch/arm/boot/dts/stm32h743i-disco.dts | 2 +-
 arch/arm/boot/dts/stm32h743i-eval.dts  | 2 +-
 arch/arm/boot/dts/stm32mp157a-dk1.dts  | 1 +
 arch/arm/boot/dts/stm32mp157c-ed1.dts  | 3 ++-
 arch/arm/boot/dts/stm32mp157c-ev1.dts  | 3 ---
 11 files changed, 11 insertions(+), 13 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
