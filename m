Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 124CE5E1B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 12:09:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHHaXR025lISPUuED9Ryi5SqywtVOME5YV8KY3VArg4=; b=uJuYwGuus/d6mt
	1GOW7fSA/jtkYq6vXsMDUXqHj3W/1cyWBsB/CIBYUHDzyvPIIrwOvBQBsdKXZBNUWYJ8nTEI40JGo
	NvYLq1wDI+4IUA3dZo0LTHHl81TjDVt9g7jUInC2LX7AfPn5ukoufAnv82r4yRdKo/75gcNNqnQp3
	+el6obC7iEwM77TIextfC6YvEJ/XCSLDN6m32YqdycE6PNM6YgFr5+WpJSwvAdrvxZ2w5jFuYz/UF
	5L+MFcsNYet9+ola7CHxYocUJCZ7yuWFba872QqpWN0e2ltyVE67nhbPdTOdYZPoSaymNWCGfUEVu
	5ItRUafGxuqz1Y0pqdJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hicCj-00005d-CM; Wed, 03 Jul 2019 10:09:33 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hicBr-00080j-CI
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 10:08:40 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x63A7AcQ000447; Wed, 3 Jul 2019 12:08:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=1NiytyZtbe2w78owFmWQReZMxpYCSle8r9BwAyo8NUs=;
 b=yI6XGwYP6EcjJQPOVI9Y2TYUS/I7xAO6k6feP5QxjNyQJQvYnIHg/f4hgXrQ2AUY8fhi
 OeL26YPVyd0IWTzH7wknXKqa1S20gk5gGo43u6GRsUSVqsgt8lRaFEEYzJS1Xw8+QW4H
 wiaeb9BhP6xLI7rsB7U/KRBnhbNXCGX0WJ9IcHhX1xZ4hE9bY2DdrL4KMi/7zD62/jCA
 rz8J56hsmT/32Ld3eoRID/GifvUJaTsOXhn3qPfY8qZXcnr/3mVTIcawmgibT75Cyros
 bpVwLwG4XgQB6xriJo+afTXo/Su2HaQ5xviTeG/dFw2og/11lSY3xk3ggtcYWSjZtgFC 1w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tdwrv2j5s-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 03 Jul 2019 12:08:31 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 25EBB38;
 Wed,  3 Jul 2019 10:08:27 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 07A3A267F;
 Wed,  3 Jul 2019 10:08:27 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 3 Jul 2019
 12:08:26 +0200
Received: from localhost (10.48.0.167) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 3 Jul 2019 12:08:26 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <alexandre.torgue@st.com>
Subject: [PATCH v2 3/3] ARM: dts: stm32: add syscfg to ADC on stm32mp157c
Date: Wed, 3 Jul 2019 12:08:16 +0200
Message-ID: <1562148496-26789-4-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562148496-26789-1-git-send-email-fabrice.gasnier@st.com>
References: <1562148496-26789-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.167]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-03_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_030839_708561_4008C9E9 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 mcoquelin.stm32@gmail.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On stm32mp157c, the ADC inputs are multiplexed with analog switches which
have reduced performances when their supply is below 2.7V (vdda by
default).
Add syscfg registers that can be used on stm32mp157c, to get full ADC
analog performances.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index 2dd5162..b9a5b58 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -862,6 +862,7 @@
 			clocks = <&rcc ADC12>, <&rcc ADC12_K>;
 			clock-names = "bus", "adc";
 			interrupt-controller;
+			st,syscfg = <&syscfg>;
 			#interrupt-cells = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
