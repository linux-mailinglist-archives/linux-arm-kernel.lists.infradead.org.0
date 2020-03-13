Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D8B184C83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:30:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6Spk7sFRYCBrdBfT/7oZGomCPbf5K9zze0TRx0NZkjc=; b=mvtq2SG7iWqenJJKwKqXtxI8I1
	Vv/6Jpa+Y5XwNba+xjWW109mVjEf2/o4Qk6VbtGN+I3sp9A75PQA668afb+iV1721uTfh899O11R7
	XvTs+R9t8R5+xnayafuQ1wmYI0Oa/JQ1sjo5zrNkliP3ixBUKMb7rWHRI93VvH8TtJ3MvRfN17aA7
	7IDGLlTsYdrYcq4bn7mAkzAg+UE1yQFSIY/ZtGpnGg4NuNMvuv2T0795BrBEeua2ytdgsXJna3Pmr
	c+ouk7kn9NcXVcQqRJOfOmxeTWZ4yiWEHKVG3khky8aydBgafhPV3tt8SQn7+MgBMVdNkiirK7rz5
	mrCffS1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnC5-00046N-B9; Fri, 13 Mar 2020 16:29:53 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCnBu-000463-3t
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:29:43 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02DGJBhd022109; Fri, 13 Mar 2020 17:29:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=to : cc : from : subject
 : message-id : date : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=+hCGBJ1FAH9tDrjrj9ZmFEYsxVmRQdaLVo8Pm3Dd/O0=;
 b=ARMt9QUuwslQe5HpL1gTeOmBH9T1B99D0O0HbkiHdKQ3kDGpoYEq2Vmk4zFBKrlWyvnK
 QBLaby5fm6VNQHsxgHU7UsyzC4YxLd016zvfnGg3v685Cc9HN3JguqfhiNIK9JY3KonD
 Z9/zmYkAsYZdVw7rbp6AiweuTrzaxAeS9L9M9Sz7+nTDA241DfbM0b1vzXDJTOig8y7i
 mPJMI1PXU400eSaws0nrxY+xinGNsdDeXSj0Rdr1+QmM5D93JEvZiU+U5HKsDfSqvSmD
 pPfl8RGTlnaTFK/0AAJE+Nv9RJMPgCp8MEC2jk0m3s/LYyuDMZQ6pE2gDqjDPEoyna0L jg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yqt81awdv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 13 Mar 2020 17:29:36 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5A9D110002A;
 Fri, 13 Mar 2020 17:29:36 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4970E2B0350;
 Fri, 13 Mar 2020 17:29:36 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 13 Mar
 2020 17:29:35 +0100
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin
 Hilman <khilman@baylibre.com>, SoC Team <soc@kernel.org>, arm-soc
 <arm@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Subject: [GIT PULL] STM32 SOC changes for v5.7 #1
Message-ID: <4e427e37-99c9-239a-f3f8-a3bf50eb1eb2@st.com>
Date: Fri, 13 Mar 2020 17:29:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-13_06:2020-03-12,
 2020-03-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_092942_452551_18FE893B 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Please consider this first round of STM32 SOC updates for v5.7.

Regards
Alex


The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

   Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git 
tags/stm32-soc-for-v5.7-1

for you to fetch changes up to 62c1594d38805938e566b059573c0b1e49da6b70:

   ARM: debug: stm32: add UART early console support for STM32MP1 
(2020-03-13 17:05:07 +0100)

----------------------------------------------------------------
STM32 SoC updates for v5.7, round 1

Highlights:
----------

  - Add early console support for all STM32 SoCs: F4/F7/H7/MP1

----------------------------------------------------------------
Erwan Le Ray (4):
       ARM: debug: stm32: add UART early console configuration for STM32F4
       ARM: debug: stm32: add UART early console configuration for STM32F7
       ARM: debug: stm32: add UART early console support for STM32H7
       ARM: debug: stm32: add UART early console support for STM32MP1

  arch/arm/Kconfig.debug         | 42 
++++++++++++++++++++++++++++++++++++------
  arch/arm/include/debug/stm32.S |  9 ++++-----
  2 files changed, 40 insertions(+), 11 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
