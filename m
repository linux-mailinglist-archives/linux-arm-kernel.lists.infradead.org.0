Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C084EB1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 16:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tRY614avlrc4EBhJtROILwh7ibnF0tnc/MxspJedhOY=; b=Rbl3zggiCpwmfV
	cVZYgsy1zn7O8XVSvEJmGbxAmyFC3jomKIZVzvs5KaxVIlnDQsHnQiMhfvk8336E+3jickdtakle3
	ciALshF6C2noF8Tb34j1RvASfFmjOPLOHpAyPm95OEqt57Qj+b9JT8z+G9VVxkRpDmsNWpMZcB5ze
	ThhAp6EMuuKN5f8iSElBnWnHdStELBX1IvHgWnGkuUOeX7Uuxc7L61+q1o1b+ZkDVKsizoPD9bVey
	HeI0til1RAlKjXZOuy+EAO7w+NItxifj3RA3EdZGPswMWhuutSE+qmtTvD2uTRnHLIp9wXaIE20SE
	FEPNZeS+oTwscH5csJHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heKsc-0007Q6-Gd; Fri, 21 Jun 2019 14:51:06 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heKsM-0007Ov-Q0
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 14:50:52 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5LEbCh7025330; Fri, 21 Jun 2019 16:50:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=HJ0CqY8bW91EX2SWPcZ15rMKds2BBP88CmgxAnUANf4=;
 b=k2RLRaZLXke5j7JsPj6TviyqvKK/1JGgzJJgk7D9i5hDYpiUCU0KM/MYd92FL/CPCVIx
 PhBoQRMc92hhBJ8vAquwmJHnX2eFd5XeE65QPa2CrUMQzNOpndLzG5iMlGJZfpLgpRbY
 8tOK11PkZ5GXkr1eLs2D+XYMHzoiQB5ycRyVetVhLMMptA/oJkS+xGFg/GmtmbzZ7yxK
 8tRSipbt9EMY1eb8AVgiYHqvhkHWKiYK1I1g3Q1t7LHBHQRP7tNuQVl69Y4JmkpkMZEd
 6pfM0ipmCgYiJanmnOpdaiiHcpVdXW5Uo+N3KDB/26i0h2K3Vy+UFkMqtbNB5W0/Ac9k HA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t7wxssnyu-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 21 Jun 2019 16:50:36 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 569C53A;
 Fri, 21 Jun 2019 14:50:36 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2B1232BD7;
 Fri, 21 Jun 2019 14:50:36 +0000 (GMT)
Received: from localhost (10.75.127.49) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 21 Jun 2019 16:50:35 +0200
From: Christophe Kerello <christophe.kerello@st.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <alexandre.torgue@st.com>,
 <linux@armlinux.org.uk>, <olof@lixom.net>, <arnd@arndb.de>
Subject: [PATCH 0/4] ARM: dts: stm32: enable FMC2 NAND controller on
 stm32mp157c-ev1
Date: Fri, 21 Jun 2019 16:49:46 +0200
Message-ID: <1561128590-14621-1-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-21_10:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_075051_147016_33925280 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Christophe Kerello <christophe.kerello@st.com>,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds and enables FMC2 NAND controller used on
stm32mp157c-ev1.

Christophe Kerello (4):
  ARM: dts: stm32: add FMC2 NAND controller support on stm32mp157c
  ARM: dts: stm32: add FMC2 NAND controller pins muxing on
    stm32mp157c-ev1
  ARM: dts: stm32: enable FMC2 NAND controller on stm32mp157c-ev1
  ARM: multi_v7_defconfig: add FMC2 NAND  controller support

 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 44 +++++++++++++++++++++++++++++++
 arch/arm/boot/dts/stm32mp157c-ev1.dts     | 16 +++++++++++
 arch/arm/boot/dts/stm32mp157c.dtsi        | 19 +++++++++++++
 arch/arm/configs/multi_v7_defconfig       |  1 +
 4 files changed, 80 insertions(+)

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
