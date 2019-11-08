Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD6DF514A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:38:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qxFFeXzbD0YH/hbNZD3dEVxMNzczRlCrLj+ySEbwmU8=; b=FDwn2aIpZyOflJ
	3Pbo1/9Nlc6IPQHHHanY8yVHo+c5V8N6JnoNNeMHQcyLyMD6l8aAXRA3s9WygBHV3H3gxuuawMXs3
	Ded5lN2AGbKYPla5ln97zVMt8Hm1JqMiZ9Yi4ld8lxT2/Od6nyJNM34w1ADhMMQWvvol09QbXai2v
	NoSoAmjCyTzXAs+hS6aLDd+L0a4Z0t78whDjtELKkaoiKruUkZVw/wp3Ft3ZLUpkxq+PwdUYzUNWx
	3XKkltlI0i7PMybMfVoqqmAFDpzxk7aWNYanlbwvcd6MIeduQc0icayMS4A8o0Cf6afz1GHDB0h/T
	7xSfzXGs6BekDxX7WqYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7Gx-0001GB-Pt; Fri, 08 Nov 2019 16:38:07 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7Gm-0001Ew-FM
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:37:58 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA8GMQZi012507; Fri, 8 Nov 2019 17:37:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=9lW6n8rFOgqzJMfjsHiMgS0ryYK11DszppfOslpW2ug=;
 b=WWtCrMZiAzJ2PyStqJMJLmZU7b3AE3X1w3ARQJit4KN+/jMv6n6FVrWM2H7SLocRuyF9
 xTAKZUhKLseSHeQKrflhFXi+TTMPb/3vWnNm7mu/65LZmB5m4sgaGxg3mq2OlFjXvkC1
 kmS19lSHSBpSU/W6OB0gbbNBINzPA6OBFtNcBp2jGRkLRMeF6vW2aLeK9Hm8C4PACsN2
 NaV+Io86QC3FPiE0EzWvM5O0QJ3EfRyYBSUKjeefOOsOxBkYcx/90uOVCs8JwZ5VXrHH
 OaL3WA3udoxxzLTabKflxRFBiwtbIylvgAaP8VZPU1LZnW5ncE/lSvQbpztxDaC2de3p Hg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w41vh4nuk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 Nov 2019 17:37:47 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1302710002A;
 Fri,  8 Nov 2019 17:37:46 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D804E2C38AC;
 Fri,  8 Nov 2019 17:37:46 +0100 (CET)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 8 Nov 2019
 17:37:46 +0100
Received: from localhost (10.48.0.192) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Fri, 8 Nov 2019 17:37:46 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 0/2] Add support for ADC on stm32mp157c-ed1
Date: Fri, 8 Nov 2019 17:37:37 +0100
Message-ID: <1573231059-395-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-08_05:2019-11-08,2019-11-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_083756_949127_DE236CA7 
X-CRM114-Status: GOOD (  11.07  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for digital-to-analog converter on
stm32mp157c-ed1 board:
- define pins that can be used for ADC
- configure ADC channels to use these

Fabrice Gasnier (2):
  ARM: dts: stm32: add ADC pins used for stm32mp157c-ed1
  ARM: dts: stm32: add ADC support to stm32mp157c-ed1

 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi |  6 ++++++
 arch/arm/boot/dts/stm32mp157c-ed1.dts     | 16 ++++++++++++++++
 2 files changed, 22 insertions(+)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
