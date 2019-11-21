Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6E51056B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 17:14:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iQzhEiC07lpLwVP/vIS5mFqU5bIK+dpeNj7WmxaSz9k=; b=HPrUegMBm2rCii
	k15Nptap3jbMuuIC/Uk7l9Eab9MFpcqDnQ1p2aJGfEV6OG9iKL9Xk3bYyGORzyXhlytlU8f8Wa+2B
	qp8z9QfFejkHJsP3kNtevBR27hXAQv3JU4uc9YOLrNT4rO2qaU/qaVFYf/wAyy09MDCAq5EiTUj2g
	yXv+qRTN+WYqY5e8+y/3ag6IGXzdGdIxAUSn82szD9vRJ8vQT04UD6WU7tYkMOM+ABp8WbmoDJLEq
	RqcwMkDjB1ntEgLxSXT10rg+sshOh2xAp3xqL5QaxS9gHWAlUFoptVfc6byw+Xte42kDp2SLDKNDA
	Dnfm70HqHADYCGB6jx9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXp5g-0007yK-Dv; Thu, 21 Nov 2019 16:13:56 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXp4y-0007YI-1N
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 16:13:13 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xALFqFUB020182; Thu, 21 Nov 2019 17:13:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=VJuIiYemz1wIoow996zFwaavl044qeXbEvuqGKKF5Ds=;
 b=PCGHYkrBzeoH80rs/cDrZ7d1oOJRYRIuSJkTD/ksDSdXcO8xe9drxCTdA6Uv/BtuDP/D
 aDF9ZgW8GI+fB8vLij6qzW1x9wSkvgj4YEXLzLzuDIvSkaUIcrnhsZw9/bQCN58DN3ql
 AQpURiiQOIOSTJC7FN+GKQbvKUNoPCWXVhGapq1oaZMTj6AW64C+OW/6n5e6CxlMAieZ
 nXhgHbbjXZ3NIh8wLX+BlKH3M1dCcfI8lSqVDQSzq5OgJBaoLck6yfNL1uF2HL16d3CZ
 OrFXNpJ7wD1uEdG//mtS7FcGzIlFI+G3UjggWfl4OiNxKsFDN57+PRlB1eoT1/yCUeY5 qw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wa9usma9f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 Nov 2019 17:13:00 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 385EB10002A;
 Thu, 21 Nov 2019 17:13:00 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 12E502FF5E4;
 Thu, 21 Nov 2019 17:13:00 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 21 Nov 2019 17:12:59
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>,
 Russell King <linux@armlinux.org.uk>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 5/5] ARM: dts: stm32: add phy-names to usbotg_hs on
 stm32mp157c-ev1
Date: Thu, 21 Nov 2019 17:12:59 +0100
Message-ID: <20191121161259.25799-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-21_03:2019-11-21,2019-11-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_081312_402997_5EBDC8DF 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

phy-names is required by usbotg_hs driver to get the phy, otherwise, it
considers that there is no phys property.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 arch/arm/boot/dts/stm32mp157c-ev1.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
index 2010f6292a77..228e35e16884 100644
--- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
@@ -355,6 +355,7 @@
 &usbotg_hs {
 	dr_mode = "peripheral";
 	phys = <&usbphyc_port1 0>;
+	phy-names = "usb2-phy";
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
