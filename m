Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C340BB8A98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 07:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kaEhA9tYnP1VosS6x913SoG6R4MgheYgpncuGVghdjw=; b=ddjmt36Nffudwr
	4P3YHMh1/Pvn8azd07hPMj4YLXZ81jPd5h9QupocqV/fz6/7ykOc67FwGiLheURVrQVtuvRfJETwT
	thWo3VkyLI+XitBWxF5D1CnSuAxkqalE01DKi8qWieOHOuP58Tma/bQuFKb6ZJ9xO+zZKIbOkIc0t
	d6AVOAg9FPmJcAj9f+W0xAB3geZvF4Slo7MgEWFkTpEfJ0JudJi0NThxiRVrTqpvenbk9bDC4iNFs
	2T3N/HOhTVg++FOT2Y6X4YAr1nCZ+xy5xNPN2a3LtMupDArnTrf9sgP4f0p00vOmWd4iYiKeb+Rsa
	XVN8Ae0gnxjBt5RgMaaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBBe6-0002PY-SV; Fri, 20 Sep 2019 05:39:55 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBBdA-0001uO-IJ
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 05:38:58 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8K5aNoE011702; Fri, 20 Sep 2019 07:38:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=2+X7n8kYh+eyI478R9QoZl24SqMf0i4AANekeGpV2V0=;
 b=ySI1gz8EsDId0kzQY4W84DAFuq9V69QawSnxRh7fEx4kGIWW4Azmc8XZC9s9UiwQhRst
 DxZ4FJM21Az8yZ89nwklS4vWWrjewf30GZZ8YT893+zZCovqcurAuW6UzVD+7OpQrv4H
 LqTYbVBrfHPpnomVy5TCanJh7xxf//Mj0h3n7QUH8iwkg896kZTpaYTe/H27JBtIGKbd
 sXcm7ByrUoy2UFpFkkXaJ1NhWP5LFMCMwI7XUpLJzBcpYd4n8uEpregIrnZJatHii2OA
 5jUSMfk0lzz12y0FW38zcl4SLOAytkUYGiEXD5Upna3u+ZZUoElBbZHiZQaHqYnEQTLQ sA== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v3vcbrpu1-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 20 Sep 2019 07:38:45 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 0791C50;
 Fri, 20 Sep 2019 05:38:35 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C31752209C6;
 Fri, 20 Sep 2019 07:38:34 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 20 Sep
 2019 07:38:34 +0200
Received: from localhost (10.201.22.222) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 20 Sep 2019 07:38:34
 +0200
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [PATCH  0/5] net: ethernet: stmmac: some fixes and optimization
Date: Fri, 20 Sep 2019 07:38:12 +0200
Message-ID: <20190920053817.13754-1-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-20_01:2019-09-19,2019-09-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_223856_882565_997E1F50 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 christophe.roullier@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some improvements (manage syscfg as optional clock, update slew rate of
ETH_MDIO pin, Enable gating of the MAC TX clock during TX low-power mode)
Fix warning build message when W=1

Christophe Roullier (5):
  net: ethernet: stmmac: Add support for syscfg clock
  net: ethernet: stmmac: fix warning when w=1 option is used during
    build
  ARM: dts: stm32: remove syscfg clock on stm32mp157c ethernet
  ARM: dts: stm32: adjust slew rate for Ethernet
  ARM: dts: stm32: Enable gating of the MAC TX clock during TX low-power
    mode on stm32mp157c

 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi     |  9 +++-
 arch/arm/boot/dts/stm32mp157c.dtsi            |  7 ++--
 .../net/ethernet/stmicro/stmmac/dwmac-stm32.c | 42 ++++++++++++-------
 3 files changed, 38 insertions(+), 20 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
