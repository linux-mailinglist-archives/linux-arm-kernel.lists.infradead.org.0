Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FFD5E1A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 12:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bd4w1cRrPAVX+u9in+gW6P8lfnKvOtSlXSHONrllFUo=; b=cyGct0245XPDEU
	zWtvLFnWMGu0It3EcZJ87UlIO5YkCOcn25GmwX12OrV8VgsE1aM84hHWFrA3Lzs+b7hi2qWlXWXjj
	cSfqG57UbykLCiGocS/va/m0zm6H470Bq0Ri2VMAk+JGI/nZ+i4ecTMCgxatlvS1Yq01iFwdJBo51
	lLXr5Q8zSb//x99YYWQRKeNk00RSTlUbexwbJMwq30pZ1+fiAnv6cYSDSqEgI985L12eTfeZKFXoY
	JsDqmf6KOWCBcKa0ZHvAz8rqggiTHRWiCubwSyURGkwb+RW0EXl/Cdebg02EspzRqIwRqjYI1oqPP
	KzJ5JQcMwR1OPyzSo/Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hicCJ-0008Bd-NX; Wed, 03 Jul 2019 10:09:07 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hicBp-00080d-9Z
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 10:08:39 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x63A78vA000403; Wed, 3 Jul 2019 12:08:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=yQLPGIAaYXazeAIq/YODkM7dpT27pO1tgwGE1je5OLc=;
 b=NPPjohpl4RNSBC7RN6FWvoNHRNykLuIpwfpJ0wKleYHtrYmiXHHp0rL6nIsIxhOj3XPt
 wvPP4xrcOtebmS/LHq/xKBBj3uWO+R5t46SeolR0ZCGwjUWIuw3JPOrO0bFbZYopEf0k
 p8xbGCliCA2pNjMK9n/tho7/8x8ZPcKK3SCQ5jvOwJSI59jBcgGzBouElFPgzuAMJofr
 kBgxG5LdWfl0A2EHqjQAhIrAFMWuI6szWjnngs2IMYLp2ZneuA83AIFmnEkwbCuKqTOS
 EgI11ymbmakYjj6o31+aVu02Vlwx1QZ1/QaaOMJ9LBXCQgPC9HKB6VmwBJaGUkM2DtXB hQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tdwrv2j5b-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 03 Jul 2019 12:08:26 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E4D1231;
 Wed,  3 Jul 2019 10:08:23 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B01B92681;
 Wed,  3 Jul 2019 10:08:23 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 3 Jul 2019
 12:08:23 +0200
Received: from localhost (10.48.0.167) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 3 Jul 2019 12:08:23 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <alexandre.torgue@st.com>
Subject: [PATCH v2 0/3] STM32 ADC analog switches supply control
Date: Wed, 3 Jul 2019 12:08:13 +0200
Message-ID: <1562148496-26789-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.0.167]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-03_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_030837_945591_17274EA7 
X-CRM114-Status: GOOD (  12.29  )
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

This series adds support for SYSCFG bits that control ADC analog switches
supply on STM32MP1 and STM32H7.

The ADC inputs are multiplexed with analog switches which have reduced
performances when their supply is below 2.7V. Analog switches supply
can be controlled using SYSCFG bits, to reach full ADC performance.

---
Changes in v2:
- Rework since: "Add missing vdda-supply to STM32 ADC" series [1].
- Booster is handled by a regulator driver, see
  "regulator: add support for the STM32 ADC booster" series [2].
- Only enable vdd regulator when needed
- Fix typos

[1] https://lkml.org/lkml/2019/6/19/411
[2] https://lkml.org/lkml/2019/6/28/188

Fabrice Gasnier (3):
  dt-bindings: iio: adc: stm32: add analog switches supply control
  iio: adc: stm32-adc: add analog switches supply control
  ARM: dts: stm32: add syscfg to ADC on stm32mp157c

 .../devicetree/bindings/iio/adc/st,stm32-adc.txt   |   6 +
 arch/arm/boot/dts/stm32mp157c.dtsi                 |   1 +
 drivers/iio/adc/stm32-adc-core.c                   | 193 ++++++++++++++++++++-
 3 files changed, 199 insertions(+), 1 deletion(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
