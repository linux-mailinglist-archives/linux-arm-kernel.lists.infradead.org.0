Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F22D1E594B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=10gI8sulZfFj28r52h+UdPJnv/aKVntNqPpfw/tgYHc=; b=HXeuPOQIYISr9y
	HMlXYERBcoSu04D73wHhCONf8cw4tN71pr1R7izDGVIYO3ZgfEmRbrVRog1bX5DoYIIhDNADpJO9h
	WaH5qxV24KeHGLT1c86QYNQqCDNIi8cbSrnzkp3t6JtpmCy90rSUornJwTvMrsall6hCL3iU6fe/+
	FqB40rMvn8cJVvhGuk0AceysY/DphJpL+AtFpMSP140+fvaM8L0rJq8dACNTb3mC9+W/Z/9123N+X
	jyTkB6Nir9TNinbW+yJUt8iFDCHDR/IO+FsKdff2BNUlxsp34fDNJA4HhD2ayAsni3YYjwEY+4uaG
	yhI3i+PuTKWz5GXgb3ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDDS-0002fL-2O; Thu, 28 May 2020 07:44:38 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD9a-0007Vn-Ab
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:40:40 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04S7cETe026352; Thu, 28 May 2020 09:40:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=F0CSKYQZT68+zKtxWpxCiuTHpdOupT99p18Bp2qGxBA=;
 b=MB7IdLLLtPoa85owg5fmWE+JnUJkDKgsIaf6q71Oxwc8TfaS3wqp4UFrnXPAle3CCihl
 Pb+7tAChXc93afIKPed2DSAgryCXvXBtSEgFBeT7klsspyotAGW9z23uSBjhd48pJLYF
 7eeYzGKAXeBTx51lXbEyxOuk3oAZSNty2sETBFmY8K9RefahHa99K0BrUKRbC33/2bqj
 lxGsMhDiDNeaTjPmbF82ZS2Ert3dE+PvY9HIVyGrKNaKObpMr+52/mpE4W7bf6CGkczt
 OeA6pvvEYSrr7TcyL164TTjpaPopmBTupImSVxk0ULOyHKr0o/r34epli0vB/+NOE6sQ 5g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316skwj24m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 28 May 2020 09:40:33 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 44F1210002A;
 Thu, 28 May 2020 09:40:33 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 32A442B188D;
 Thu, 28 May 2020 09:40:33 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 28 May 2020 09:40:32
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH 0/5] STM32 add usart nodes support
Date: Thu, 28 May 2020 09:40:24 +0200
Message-ID: <20200528074029.24962-1-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-28_02:2020-05-28,
 2020-05-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_004038_686289_97BF9928 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, Erwan Le Ray <erwan.leray@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the support of uart instances available on STM32MP157 boards:
- usart3 on stm32mp157c-ev1, stm32mp157a-dk1, and stm32mp157c-dk2
- uart7 on stm32mp157a-dk1 and stm32mp157c-dk2
- usart2 on stm32mp157c-dk2

The aliases are following this order.

Erwan Le Ray (5):
  ARM: dts: stm32: add usart2, usart3 and uart7 pins in
    stm32mp15-pinctrl
  ARM: dts: stm32: add usart3 node to stm32mp15xx-dkx boards
  ARM: dts: stm32: add usart3 node to stm32mp157c-ev1
  ARM: dts: stm32: add uart7 support to stm32mp15xx-dkx boards
  ARM: dts: stm32: add usart2 node to stm32mp157c-dk2

 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 138 +++++++++++++++++++++++
 arch/arm/boot/dts/stm32mp157a-dk1.dts    |   2 +
 arch/arm/boot/dts/stm32mp157c-dk2.dts    |  11 ++
 arch/arm/boot/dts/stm32mp157c-ev1.dts    |  10 ++
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi   |  17 +++
 5 files changed, 178 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
