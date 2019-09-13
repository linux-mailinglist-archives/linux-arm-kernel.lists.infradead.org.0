Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C93EB220E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:35:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9pLbzfWKHLJZTd/eB13StBqE8KPlns+Co0A3X+p5ORc=; b=Xin0hewk0RePpL
	JiHgTr1Znsu0RxQTskxoeuImrKxCTf7ZgINZNw8oHCevgqD1R27HZqZijE8l3xLRRCXz4759q7Upw
	l/oX4DSGrKaxWuFO9XmtR/VVgpGEadhYhRBAQqZvl7Bhdb6AGZNV4h81vd8SrE2HpL9IvVa8pbFhP
	AtLuZzt79MaDev45jw/sIkZSQtGankDe4bhGBnq07nUFs2cT3a41LiIvTS1UIVnU1QxxQGgwqe1FD
	e/HLU40gtIKUZ8rOzccfCX4lDlfL0AQE2bNbKN7RmUq7LQWfCM0RfPV/E3zLLxBJnU3z0moohL+ct
	PrViJANBALsyDeI6kdXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mfr-0001nj-GO; Fri, 13 Sep 2019 14:35:47 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mfD-0000nB-Gl
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 14:35:10 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8DEV1EQ017893; Fri, 13 Sep 2019 16:35:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=WcH/XeLRXrchzGM2oayh6FpZp9ixOv6Rjd72cfZUEDM=;
 b=dEdNnG1PFncizfoScByurpL+4XLDP78kKGX2VXj5XAwHuJItlL96iVQhZhLXsannVizP
 tyFEJpueQyblheGUGcSM8Xr7yB85XlCUlg0uoJJAH05Cprzm2aOZ3fy2ENaR7uNxtzx9
 sbxpyCI0T0CMVizoc1HWiw0SqH/yvCGXukCoFA/PgrZbxZNm0v32vUEU9HidLEhHLryD
 Ur3ghBBLiZCPpay1hXWNRI26JRn/GmWqqvsBWGRLzmUO0Bs0jt/nA1/5iF5+MKdQhBYx
 INkWAyqKg11YTeFrkP4ux+w/Mvpzg2/dIjAIY65SGCQq0HjT/3aUm+D9efC8t0neqqF3 pg== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2uytdx5n81-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 13 Sep 2019 16:35:01 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 2581F4B;
 Fri, 13 Sep 2019 14:34:57 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3853E2C86AE;
 Fri, 13 Sep 2019 16:34:57 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 13 Sep
 2019 16:34:57 +0200
Received: from localhost (10.48.1.232) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Fri, 13 Sep 2019 16:34:56 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 0/3] Add support for ADC on stm32mp157a-dk1
Date: Fri, 13 Sep 2019 16:34:37 +0200
Message-ID: <1568385280-2633-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.1.232]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-13_07:2019-09-11,2019-09-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073507_953875_077BD01E 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for ADC on stm32mp157a-dk1 board:
- enable vrefbuf regulator used as reference voltage
- define ADC pins for AIN connector and USB Type-C CC pins
- configure ADC1 and ADC2 to use these

Fabrice Gasnier (3):
  ARM: dts: stm32: Enable VREFBUF on stm32mp157a-dk1
  ARM: dts: stm32: add ADC pins used on stm32mp157a-dk1
  ARM: dts: stm32: enable ADC support on stm32mp157a-dk1

 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 16 +++++++++++++++
 arch/arm/boot/dts/stm32mp157a-dk1.dts     | 34 +++++++++++++++++++++++++++++++
 2 files changed, 50 insertions(+)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
