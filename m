Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25537F1599
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 13:00:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VEXdTHsY7TSmMhAdlNyjVr8CyUxhk9s9VMflbnXC93o=; b=Mz+dv+efDWzxEX7tpdEsfbBDRO
	l8HsZzeEugxYsNyQEl7187joxAaNVNMtJMYXFR1m5uNEyA7FTJD91HfPdBCqt6t/U2ZZhnifiKikY
	/wQeGaTKcHLzsqfBw+UR+mVUTNze8tohAj2FG1gqirNe+AWY2QJbhWIWpN0GJVxGj41mhRTu0XfNg
	wNoiXiKaEq65hOcpR6HVyCG/8Dn4B3O2MA9+gCs2R+IbUq8IfO95q1jtR/3vW0jfHWio+8i1FNwK8
	1nYon8BZFdQlC6TFUBnATFT9jdWbiBHc86u5AAEdmpEEwZnqVmHJQb//AM7x/J5eslR2b1H6gVY7N
	c2pTL+Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJyh-00009C-Hg; Wed, 06 Nov 2019 11:59:59 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJyY-00007R-CH
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 11:59:51 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA6BqeZB017372; Wed, 6 Nov 2019 12:59:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : message-id : date : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=FdhzODfTJ4VqQK53BhrNjqa2a683yVyIjpE6CTVNy6c=;
 b=L0lo3AgGf8H5vMW7JDL8f63loKMflYUApsDGg+myBp5/sJZUJKddA8bK3yAzAiaySRhF
 vLrJnDgDk5seFP4jVUxsQcEhES3aZLSP7XAp0eOZ241WaijJ3aJu6lhOvGdg3ILen57Z
 H8GEiGpiqHZUfoDCH31dD702UF13CxtAtY0cgJU9/a5WBryt8kVsUBVFKGHqh1dIcSa9
 yrzZJ2rW29qlCXhwkjK8A+0EEg1qGposLTYru4FqRjvqg6dzd3kyWBt9T8QnkgHljPvm
 yQ26cCXIFO8SOODnPgT5LenQPe1hswmc6RO2qFdKFGzvULdtsOZjXMHzzPHQ443tAJMy qA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w0ytcwy74-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 Nov 2019 12:59:40 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D11F210002A;
 Wed,  6 Nov 2019 12:59:39 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B8DD42B1891;
 Wed,  6 Nov 2019 12:59:39 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 6 Nov
 2019 12:59:38 +0100
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin
 Hilman <khilman@baylibre.com>, SoC Team <soc@kernel.org>, arm-soc
 <arm@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] STM32 fixes for v5.4 #2
Message-ID: <d316b81f-a8d7-e9be-fe3c-73a242e7d941@st.com>
Date: Wed, 6 Nov 2019 12:59:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-06_03:2019-11-06,2019-11-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_035950_772884_44F35BED 
X-CRM114-Status: GOOD (  15.47  )
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guys,

I hope it is not to late to take this small PR for v5.4.
It mainly fixes stmfx pinctrl issue for joystick and camera.

Olof, lets see if we get same issue with patchwork.

Thanks
Alex


The following changes since commit 832c4365bd42986b9495f4ea4c86668a78eacf28:

   ARM: dts: stm32: relax qspi pins slew-rate for stm32mp157 (2019-11-06 
10:32:11 +0100)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git 
stm32-dt-for-v5.4-fixes-2

for you to fetch changes up to f4d6e0f79bcde7810890563bac8e0f3479fe6d03:

   ARM: dts: stm32: change joystick pinctrl definition on 
stm32mp157c-ev1 (2019-11-06 10:54:39 +0100)

----------------------------------------------------------------
STM32 DT fixes for v5.4, round 2

Highlights:
-----------

Fixes for STM32MP157:
  -Fix CAN RAM mapping
  -Change stmfx pinctrl definition for joystick and camera. Due to
  stmfx pinctrl fix done in v5.4-rc cycle, camera and joystick were no
  longer functional.

----------------------------------------------------------------
Amelie Delaunay (2):
       ARM: dts: stm32: remove OV5640 pinctrl definition on stm32mp157c-ev1
       ARM: dts: stm32: change joystick pinctrl definition on 
stm32mp157c-ev1

Christophe Roullier (1):
       ARM: dts: stm32: Fix CAN RAM mapping on stm32mp157c

  arch/arm/boot/dts/stm32mp157c-ev1.dts | 13 ++-----------
  arch/arm/boot/dts/stm32mp157c.dtsi    |  4 ++--
  2 files changed, 4 insertions(+), 13 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
