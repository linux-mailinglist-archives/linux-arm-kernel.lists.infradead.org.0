Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8741E592B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H+7S2NZjYr+lw53VVZ0suKw5LkF8vtx7rRiYsvZ3100=; b=UFmsNEan+VTvxQ
	PtdspvEQqJSRYGvqS/0zMuNGQUM/CeqjRwjf/eR4jKmgHz3JKGrNoB6/D52VG92RofE+7WltDZrCB
	vpJukcIkPK8bp7uKUDOOkhwxp/lswP+oKkxZcdsZyf6jUAOhJS4FBiOMn8adxrADb/wbo3F0rDUoY
	wGXNLF3M78xEVoQ6W9kjs1FhLYV/MK8OQyl28Ss7LYYSyOkESiTvNoYWDBhIVWiAfyoW6DCox0rN4
	g/teCQjYs6chL9LeLlzJQubzZUirYxGlmUtcNKbZamOxaPtD9+Y3D+1sUD4wzl9D2lB3sEsWij3Ve
	1V6OnMBQn2VxqN60iVJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDCR-0001cB-C2; Thu, 28 May 2020 07:43:35 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD9B-0005wH-NX
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:40:26 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04S7c97Q017148; Thu, 28 May 2020 09:40:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=ny7mQIqTfJ+SgnawgJlePYPXP/ZG5n/aoxf+iVaqbhk=;
 b=imAOvlF2RyYXb0f4h4QmFUEyhecg3eg0a6xukki+hYV9fyJt/mSInBgmwhIW13cMKyw4
 tuPfn4fmqbO1UutJJ3UyZVrEbYpVGHwr/+rcxajrrRC/r0I2HIfSQx0cwNBOpVybhwqe
 WKwao04rCJjIEYhg7/fuFVlpZHh01/fJLBCgmWUpqrlvUYDJNf9xiUhdR9eweiOITpHj
 1y2jGBrCDSPJs6ppFU40tEMi+pQj35IY0VQ3HAI3aFJu/MIAeyj+yBu6nRxC5pu1ZURm
 5sFakYswujMFHfq0/ABtzrmTy7mNKp3Cb6yK6y2EzGEDb+ex2cw2CD5pa9dxz1wqfLdS uA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316sa29wu9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 28 May 2020 09:40:08 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 45007100038;
 Thu, 28 May 2020 09:40:08 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 33B892B1881;
 Thu, 28 May 2020 09:40:08 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 28 May 2020 09:40:07
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH 0/2] STM32 Fix uart nodes in stm32mp15-pinctrl
Date: Thu, 28 May 2020 09:40:01 +0200
Message-ID: <20200528074003.24875-1-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-28_02:2020-05-28,
 2020-05-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_004014_121394_92895F96 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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

Fix uart nodes ordering and uart7_pins_a comments in stm32mp15-pinctrl.

Erwan Le Ray (2):
  ARM: dts: stm32: fix uart nodes ordering in stm32mp15-pinctrl
  ARM: dts: stm32: fix uart7_pins_a comments in stm32mp15-pinctrl

 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 130 +++++++++++------------
 1 file changed, 65 insertions(+), 65 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
