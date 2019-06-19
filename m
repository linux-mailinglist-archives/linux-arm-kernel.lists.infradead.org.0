Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BEE4B5A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 11:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AfF6CVDVXva8hAb95QzBd6VbgqIzQAoipukOE4S+WFA=; b=ePGcd5zfDHGL0p
	u8+ttTWq0fX5jsM9KTSSF7YL13dBF09pemJXdj632Qt5llvRZeL/WPoB9TVjJVGvWZaWP/UAFUksg
	Hh/3L/UvFnlE98H3BxnOL8zZaClNCm8NAbRD8nlBXaPkdXC9mhbZpOF/ICED8pDPS1iE3NLr95oaI
	pqHMUn5QuaHsUqwDHQG2lZOCcE//efuS9soEu4SdOHySxjtgtK2uFY1ct3k6bmyayuRwYT+1HTabV
	lR8b6i9S4VD9PbAcZlvDvIhROJXxumQEcTpC+yEsXja+4tcOtjRUEN6hCyjyH0D9GGjhE7lLaIG2b
	APbYswT6Y0eJu33zgBdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdXHw-00014z-Eg; Wed, 19 Jun 2019 09:53:56 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdXGa-00007g-U4
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 09:52:36 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5J9l43Y004729; Wed, 19 Jun 2019 11:52:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=nty6ih6iIW5KM2QvYy/1B11xGsZE8DkrKWnNc/nyI6g=;
 b=oBzmJN2JkzWIsWm32xd5oVFIvuGHnSMLHytkTJpZ/MVxjXnWr5pLpieutjXJYRJ7iARO
 V6kHtLJIePQvjfRjFbPizBRVYa9j6OLQP12Z/t4tJBueeer4DFqWyDLmOqq2VlttP8j+
 4iQC+TSjXH8rFVdjvzSMOMLrHf7y+QxS9/J/nCJH4G3e66tpgYdHZWJcH9+PJ8TR3yD1
 ec0HnBjyh1W++pyUnauzGvgLyTQzwxcKuhRE/vvft8u3rqlj4c9z/hw0lvwf/H5igyV+
 uAOs71CXbF1DIsJZzLrmdc95WVlH9XG5nXEw2AHdQudPqpFNTXALrcnK1rJORk+5WzuI Hg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t7812u73c-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 11:52:14 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BAE6F38;
 Wed, 19 Jun 2019 09:52:13 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 78AD524CC;
 Wed, 19 Jun 2019 09:52:13 +0000 (GMT)
Received: from localhost (10.75.127.44) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 19 Jun 2019 11:52:13 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <thierry.reding@gmail.com>, <robh+dt@kernel.org>, <alexandre.torgue@st.com>
Subject: [PATCH 0/5] Add missing pwm-cells to STM32 timers PWM
Date: Wed, 19 Jun 2019 11:52:00 +0200
Message-ID: <1560937925-8990-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_025233_363511_EDB86DE7 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, benjamin.gaignard@st.com,
 linux-pwm@vger.kernel.org, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds missing generic 3-cells PWM to STM32 timers dt-bindings,
PWM driver, and the relevant dtsi files for STM32F4, STM32F7 and STM32MP1.

Fabrice Gasnier (5):
  dt-bindings: pwm-stm32: add #pwm-cells
  pwm: stm32: use 3 cells ->of_xlate()
  ARM: dts: stm32: add pwm cells to stm32mp157c
  ARM: dts: stm32: add pwm cells to stm32f429
  ARM: dts: stm32: add pwm cells to stm32f746

 Documentation/devicetree/bindings/pwm/pwm-stm32.txt |  3 +++
 arch/arm/boot/dts/stm32f429.dtsi                    | 12 ++++++++++++
 arch/arm/boot/dts/stm32f746.dtsi                    | 12 ++++++++++++
 arch/arm/boot/dts/stm32mp157c.dtsi                  | 12 ++++++++++++
 drivers/pwm/pwm-stm32.c                             |  2 ++
 5 files changed, 41 insertions(+)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
