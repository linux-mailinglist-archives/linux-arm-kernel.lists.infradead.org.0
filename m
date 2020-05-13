Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CDE1D188A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htFpRpvUZefVexjxKQISTD2cMHd8OeBoVivfHcxtmh0=; b=eCnjb4B0ZmZ6V/
	JvMQYE6o80TqdNUb05vmG7ETbKkZN2Ax4jzBs9Ub5K1eNebGzzeY2FOgJSKpeLp7GOx2yOtlhAHsg
	6yVq1v63ayF8vmNSwavMBTMnpSgDF6VednxD3U41+Ji3/rWmQ/zMZUc3yaI7pe1G8wdXRE4ZAIZ/i
	Zh8+Lx9yBtQXCVvKYDjryWU0Kx4pwfwiUFnbUU6wuofF1oW/8l+PG3eXiO1SgWdb14oQs73k1cEYx
	Llfeu6eV1dzLAZ0BIkxMYEVnFayRoMabikX4oPTPCLlPx1fxra0VOIA4ZHxq0lPEz2YVBzPwY0v9u
	AzVxrM37y+74r/iJRkdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYstg-0007yS-Nc; Wed, 13 May 2020 15:02:12 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsrV-0003tR-Os
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:59:59 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04DEwJuu008668; Wed, 13 May 2020 16:59:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=JWzwrNh3nE/7ShXP/Ib08KUjuRLg+lYaWrsytOK3vj8=;
 b=JjTS/Fg9Wazr9t3Jks16qyc7mKewLkMmzffYnzpYJHXTAMweL9XSlTg7uKRmOmEC0ugk
 lgTdLp1r2m+CkRty7fkl3O6kZ+4Fecrz+Xzy4n6/Sv5rdnlKJD7UvS911BZ8jQC43kSp
 3lO+K9ELoLsnbrgpGfHPWpv8sXeWt2YGOvXHoix/PYWKO2FgvKovLFmj9CWGTUC7T8Zg
 u6ywRmAKbhPeiFWqfJ5jeslt0Z/daYCET/lczXHk0PAl34UjiqeVfcZrXLGoppDNcaIm
 lKR9bFFSOutwnUT0PdYKgAJaQd9ogUKH96dTG8uZwzNcm6j1VZokRWrXRlaVxV1YP9MS IQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vqde9u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 13 May 2020 16:59:49 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5DBAD100034;
 Wed, 13 May 2020 16:59:49 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4FF572D3006;
 Wed, 13 May 2020 16:59:49 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 13 May 2020 16:59:48
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <linus.walleij@linaro.org>, <robh+dt@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH 07/15] ARM: dts: stm32: update led nodes names for
 stm32f769-disco
Date: Wed, 13 May 2020 16:59:27 +0200
Message-ID: <20200513145935.22493-8-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200513145935.22493-1-benjamin.gaignard@st.com>
References: <20200513145935.22493-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-13_06:2020-05-13,
 2020-05-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_075958_125737_237AAEDB 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update led nodes names to be aligned with yaml description

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32f769-disco.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/stm32f769-disco.dts b/arch/arm/boot/dts/stm32f769-disco.dts
index 1626e00bb2cb..0ce7fbc20fa4 100644
--- a/arch/arm/boot/dts/stm32f769-disco.dts
+++ b/arch/arm/boot/dts/stm32f769-disco.dts
@@ -66,11 +66,11 @@
 
 	leds {
 		compatible = "gpio-leds";
-		green {
+		led-green {
 			gpios = <&gpioj 5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
-		red {
+		led-red {
 			gpios = <&gpioj 13 GPIO_ACTIVE_HIGH>;
 		};
 	};
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
