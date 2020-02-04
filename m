Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007D3151B39
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 14:26:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DqsQCyg7FBmoIFpwEcjRH2nFHLjYUgr70+ZR89/rca0=; b=GW0HHi4i7j60lK
	vq12ywM4/K4Jqcf8/dComCLPucejJRWOD/jTDHG6vVoLNrrtiZsJ7SE9lC9lf8QY+YaCi13nKRrpN
	IrlMgTH+FUAcZH8Ssexx7Qt6VMFuvvfOYGeM6RvJwjkdSOfLAwkXMpC5VeuiXM1WPbZpEO0ZAuAJR
	kPKyHJn9BgS8DdntPa76WXvtqebRpFlshnMxGtb43fOyaTPY5jITj4Dzb1h9+Kh3k70/QWP+hmMv4
	Y89nr2x7gSBPR+yY+XDTYlvJ+f1B1jiMuXsqK/pftO39tb1tsVMNy8e/5HQ+AoVjD2WQIMP/NayQt
	K2tfVQF3LWulxA9N3GLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyyDp-0007Pl-Sy; Tue, 04 Feb 2020 13:26:33 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyyDh-0007Nm-NJ
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 13:26:27 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 014DNoVK030249; Tue, 4 Feb 2020 14:26:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=AplTNN5L+r2sBe+jH4b1Al4L+72dRx8nYadx/tYF8Ug=;
 b=ZQptpfXca1Q2Ug7CIhv4qXR30/e2gpoGXV3YL2Z0t0T2MGKKK6j5dXKjgJUQnDbREHsm
 FEysJBgBfVpQDR8mZnRG92U3HBeQXHpUDhKKdXAMkIcs9IyZtsv1rbVmyFwMNlEGVV2j
 x7ZIhpJim5exW954sZQ+vPSCWnvUSHDhsy7wuwu11nc+ieZGNLt/s59zvAMv9j4cJUAX
 eX7jYYNdXmUZZRecIbbBvVvtNV4YAQWTOgtanF04qHn+qhcm6WfOsccx1ZWXFiVuNdaV
 2q7bZKb+DXRrie9IFAtHat4+z2rcugLY1ZQOsegz0Sz/kylIvf2LdD2uJHYZaXlJbYHF 1Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xw0019tb3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2020 14:26:17 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 042AB100034;
 Tue,  4 Feb 2020 14:26:12 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D5FEA2B188F;
 Tue,  4 Feb 2020 14:26:12 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 4 Feb 2020 14:26:12
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH 0/3] USB OTG Dual Role on STM32MP15
Date: Tue, 4 Feb 2020 14:26:03 +0100
Message-ID: <20200204132606.20222-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-04_04:2020-02-04,
 2020-02-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_052626_214501_5E15C0A0 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for USB OTG Dual Role on stm32mp15.
USB OTG HS is configured in Dual Role mode on stm32mp157c-ev1, role detection
uses ID pin.

Amelie Delaunay (3):
  ARM: dts: stm32: add USB OTG full support on stm32mp151
  ARM: dts: stm32: add USB OTG pinctrl to stm32mp15
  ARM: dts: stm32: enable USB OTG Dual Role on stm32mp157c-ev1

 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 13 +++++++++++++
 arch/arm/boot/dts/stm32mp151.dtsi        |  3 ++-
 arch/arm/boot/dts/stm32mp157c-ed1.dts    |  4 ++++
 arch/arm/boot/dts/stm32mp157c-ev1.dts    |  3 ++-
 4 files changed, 21 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
