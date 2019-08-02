Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185DF7FC88
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EnrJCJftYZRvZlHv36q4pUkRcJsWM0jhIGSmzXAkNmk=; b=oqrZMo/rYjb5Qcc4GCmpsBTrYI
	mJpvHeIWU9VLyv2JL4W9TB/4J0JN0JfoBMR1hV5zxuehjBm28+OqEptL1wU9GI/O5MOLj0dXuk6pN
	P5oCIUWKR7jEHo91m/wjMuqFtUrBTgFSEq0GCv7bJMDZeq8wmWVodKJ2zGJzx8tm7Qez0ECnfa5qb
	9QJ1oCo/COp8I4qWNfZ85y+TAinbYBEMb6SNUcciSYJZOYyFvEYh5hYpIfpuXpDEmTZrDgUPGAFwa
	DK1/aSWvhZIuTgHArnlbj+xJHa/EQRc3YPBFIptbUxY+F2jMjKyjH3ecpXfImNSJ4RTPYrLEqCCrT
	AevTYPIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYsB-0001Kx-OL; Fri, 02 Aug 2019 14:49:35 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htYs5-0001KY-Vj
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:49:31 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x72Ea2h2004459; Fri, 2 Aug 2019 16:49:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=to : cc : from : subject
 : message-id : date : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=V3+cI5o7kZXBzcyzThq2Yqo/2qEZH1xtI2hfc+s5mBs=;
 b=i3IPESvDhTCk8BpbytBeHJj/GWBGqHCdVDsdZ9+zFCfLpDby/2Pvu2T6rcKI+trkXvMT
 vD3rSnvJK4En0PTj5Jwwccko99rnrcgAY7ZQdGU62stqOdkkZMVCA0jrQh59NLBUu6bs
 MbwW0xobYCW87WMekJLXSu0JZxJJhnWL/0GHRS5SJyEyw7K6eiXMNCbQygXUIwJe2mxW
 9QBqZUAOkwuKxOo/DFbE+03dQDV8RbbcYH923F9qhzexdYFLQg9vxme8ayIqp2ZTbJlo
 6uBbGr04czDchNeXZmyae+l2EOdtJTStzz9OSbf9WYhFax6bSeBfMIXnDR80OhceEUG8 kw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u0c2yvyb5-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 02 Aug 2019 16:49:24 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E38F53A;
 Fri,  2 Aug 2019 14:49:23 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D0D4C2C54EA;
 Fri,  2 Aug 2019 16:49:23 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 2 Aug
 2019 16:49:23 +0200
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin
 Hilman <khilman@baylibre.com>, arm-soc <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, <soc@kernel.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Subject: [GIT PULL] STM32 defconfig changes for v5.4 #1
Message-ID: <b164eaa8-4553-9c0f-0729-2ecc96fbae7a@st.com>
Date: Fri, 2 Aug 2019 16:49:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_074930_327254_2B03FCCE 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof and Kevin,

Please consider this first round of STM32 defconfig updates for v5.4.

Thanks
Alex

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git 
tags/stm32-defconfig-for-v5.4-1

for you to fetch changes up to b5deabd439ed644c7e22e3217883550d86791851:

   ARM: multi_v7_defconfig: Enable SPI_STM32_QSPI support (2019-08-02 
16:24:23 +0200)

----------------------------------------------------------------
STM32 defconfig updates for v5.4, round 1

Highlights:
----------

-Enable FMC2 NAND (used for STM32MP socs)
-Enable STM32 booster regulator as module
-Enable STM32 QSPI as module

----------------------------------------------------------------
Christophe Kerello (1):
       ARM: multi_v7_defconfig: add FMC2 NAND controller support

Fabrice Gasnier (1):
       ARM: multi_v7_defconfig: enable STM32 booster regulator

Patrice Chotard (1):
       ARM: multi_v7_defconfig: Enable SPI_STM32_QSPI support

  arch/arm/configs/multi_v7_defconfig | 3 +++
  1 file changed, 3 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
