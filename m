Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1BA1888EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 16:18:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mWKDOBD4+d569CBjA/qudr3NVNLWOjtFp9OspUEwzO4=; b=iBU6O9sKXqHMlN
	bB/5/L384toZplLhYwr/yGDVttYZnFx+t2VMFxNEQ/jIORgYGZ88KFqW9hPjpE+j54fnQDtM3GcFI
	/Dk9PDzc2aTXWg8pJOIYBLoryMEUJDlKLXhmaREsyrVDy4WLkZavuEYUiwN0JvKfHzAj2TfbZSW28
	ojRzoLQUd1e7qUHEVlP+n0BydEGLcQSYrcvXeRBv1LADeg6H4yQkbMS1UF4oAK/ghq09yDuXzSEsW
	nNwFJOg8pH4WosGqrDCh7+/NL4ZCBhUtLrQOR+dBWH+M8uRc1DbaB+P2GXyFXRHn2E2aPFFriqhwC
	A+YCZIxa5eQrEKVpk4IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEDyr-0003lR-EY; Tue, 17 Mar 2020 15:18:09 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEDyT-0003cd-B4
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 15:17:48 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02HFDLIT001980; Tue, 17 Mar 2020 16:17:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=k0ZMfP7aKLkzfzu3eH2J4VQnqrCYW3x7HRTJSMhhAes=;
 b=yAtDccBGIxfisii37vFQGuMhAub3J1lz8e6Z/NwU5mFZAyoUv8F5N3xBvi8zo6U+87pI
 35w8/n5f0njv83PGrDCY1bI5X4Y1G38LhievMBHKob+WoVmQFsgAFNWuTYRY7O2AcCCS
 NZliLMW5NC8b23P6dWlTEzB7hnWhy6B11sE/eP9y5OJjHCzZgw8PAMVEKpZ/jucMs1qv
 2nROyZOWPL9EbqNGq+XjbiMjGxkh1Fj5YMouTZ0vy/rEsxM3iUFsOVPnnsxVGlGJ58pY
 78I7chAfQKIECLj3AmUITdvonMVbXSQSGE626qa5vDtygo5MLPJ/wNhnWnQCRkAHU9n/ RQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yrqa9s1vp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 17 Mar 2020 16:17:24 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B0151100038;
 Tue, 17 Mar 2020 16:17:14 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8A84D2BC7AF;
 Tue, 17 Mar 2020 16:17:14 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 17 Mar 2020 16:17:13 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <davem@davemloft.net>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mripard@kernel.org>, <martin.blumenstingl@googlemail.com>,
 <alexandru.ardelean@analog.com>, <narmstrong@baylibre.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCHv2 0/2] Convert stm32 dwmac to DT schema
Date: Tue, 17 Mar 2020 16:17:04 +0100
Message-ID: <20200317151706.25810-1-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-17_06:2020-03-17,
 2020-03-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_081745_751494_7BD58E5B 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, christophe.roullier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert stm32 dwmac to DT schema

Christophe Roullier (2):
  dt-bindings: net: dwmac: increase 'maxItems' for 'clocks',
    'clock-names' properties
  dt-bindings: net: dwmac: Convert stm32 dwmac to DT schema

v1->v2:
update from Rob (solve checkpatch errors with trailing WS,
rename "Example", Wrap lines)

 .../devicetree/bindings/net/snps,dwmac.yaml   |   8 +-
 .../devicetree/bindings/net/stm32-dwmac.txt   |  44 -----
 .../devicetree/bindings/net/stm32-dwmac.yaml  | 160 ++++++++++++++++++
 3 files changed, 167 insertions(+), 45 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.txt
 create mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.yaml

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
