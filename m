Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FFFEFDBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 13:53:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/GIEOqAE+snYG8Uzp7/ouWRLkFfd5/TO71dk88XGa7g=; b=SqhK5Fbj+JKALt
	eHYv1VJUFz32mp33k8VqIRHJdVfVoqZZgThOEmzDdhbGTyJYytWSaLW0XSW+JOFaVm6EFIY/Dn9mH
	wwve/l+/xN2rRYy+4TLUTVc8UlWcAjS2reLoGb0UrzexgUc7Ayqf0GVn56KXolFV/w/mWGmVa+46u
	GNVTTMWQ9RWlvOGrFzOL71KvMCMFCRofieNgs0zQcv0TsEsQznWFRTtdkcHFhx2nDQ+ue44bNZmVr
	7VIogIUl7EjFBWsjFAP8gG1MDwjhbhVPQDHaiwCXR9PN6ePLVQsQ5TPTfhTAz8xLao1gNZE0Gvp4J
	mARHCLFQxMooctLZ++Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyKd-00075b-9M; Tue, 05 Nov 2019 12:53:11 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyKA-0006tH-17
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 12:52:43 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA5Cq6Ga024537; Tue, 5 Nov 2019 13:52:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=EX94p2HyA3Y7EyZnwdjULwer7EInjO1VlhUrZLUYn9g=;
 b=IyYB0QNUCyGMqFUhUJSjt7NG3fgwbPN21qY0Oy6tt8zA3hfrybP5wllZb6mEOF3mSJd7
 aF9YJSwFasM+m2eWuQytRyTUxjLvrvbR/UiWMrksTlz62xSgb5Zya+wYHia/xro7CtuI
 jJTk5jA1pRZWTTA4bDNW1YFX2CVgWCPYppNPCK3gkwBlpVOBOwB2gGBioemzZf+yRqTQ
 EkfChjuJNM+w6EaGYEmeHLxV9DylEQ/St96V9hmZGAikB3zqUUk0CnsavwhZmjY/HpbF
 4IyAS7A13l/kMJETjG/VnqsS2e3Z/43iqeTeCvLJsII+h1jXLjQfbBNOcBohEQTi89SM sA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w0ytcr0bd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 Nov 2019 13:52:34 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A9B3510002A;
 Tue,  5 Nov 2019 13:52:33 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 942672BC5E5;
 Tue,  5 Nov 2019 13:52:33 +0100 (CET)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 5 Nov 2019
 13:52:33 +0100
Received: from localhost (10.48.0.192) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 5 Nov 2019 13:52:32 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 0/4] Update PWM support on stm32mp157 boards
Date: Tue, 5 Nov 2019 13:52:17 +0100
Message-ID: <1572958341-12404-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-05_04:2019-11-05,2019-11-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_045242_365718_9D2A42D6 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This series update PWM support on stm32mp157c-ev1 and stm32mp157a-dk1
boards, e.g. add pinmuxing and use them in board device-tree.
- Add PWM sleep pins that can be used on stm32mp157c-ev1 board
- Add PWM pins that can be used on stm32mp157a-dk1 board
- Add PWM pinctrl sleep state on stm32mp157c-ev1 board
- Add PWM support on stm32mp157a-dk1 board

Fabrice Gasnier (4):
  ARM: dts: stm32: add pwm sleep pin muxing for stm32mp157c-ed1
  ARM: dts: stm32: add pwm pin muxing for stm32mp157a-dk1
  ARM: dts: stm32: add pwm sleep pins to stm32mp157c-ev1
  ARM: dts: stm32: add support for PWM on stm32mp157a-dk1

 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 99 +++++++++++++++++++++++++++++++
 arch/arm/boot/dts/stm32mp157a-dk1.dts     | 85 ++++++++++++++++++++++++++
 arch/arm/boot/dts/stm32mp157c-ev1.dts     |  9 ++-
 3 files changed, 190 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
