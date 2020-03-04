Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 456EE178C59
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 09:11:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5rjkUEB2nfZqjfw/qaPHjVC5pQmOaYD0LiNjueCxz0o=; b=bKrhfGrp7g/ZwO
	RmMZteMBEr/ki10kYqOAwgj+8XIYegOAYbyyY+9tJpOnUkYqxaASSCceS/+SdhAQoEUPQqjvgYjYX
	52tEjo+wABIB7u2icXvOOZXdk1iNuo0R1qzhy1r0ylK5z4KdTX+vFYa+YIxQl4YoACVwRuEv9c3HG
	zw2AksQPgF9JdZm9T/W+WRLylZBd7hdjpgTpksL03dw9jHSpbtH9ZzzXivrymvii2kUi8MXQPhrsa
	i+ts2V0rbhF0QFgvd7Uyq+ScxFlN/OdOFXyXqiGCGUtoYfNTynXFAdcwE2UJNy+1x0tCO0OlcjPAY
	r5e7/CK5UEeiNMWBp1kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9P7F-0006ch-O8; Wed, 04 Mar 2020 08:10:53 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9P6k-0006Tk-HC
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 08:10:24 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02487rv0032631; Wed, 4 Mar 2020 09:10:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Ic1C52dxdRVd8hopKHFmxL20NCwaptXElaVaPhP+rUE=;
 b=u6FbvwLMTti9eJsDBmKkvCAdcWlQHcVPaTZQa1CAlCVWbdVsR8z3WQm8rWX5mGHprAzY
 UDheNAzsQerzo9oF26Gt0wPFywt8/XZ8BjXzsvcrApxtZmqQmPxK/jrIIe3XEcf9hYsH
 /i38IKdL5CbjyNHVzaPQgSH4yxBwz7SQB82pKilAtkB+Ci+iO1L3echhIDpDBHE1Btur
 39xwg/rAuASlDHFKre50CDyR4vzHZqNqEtT1DFyp4gfiWDOBlQk1+ovqlN/ksAsZk/Og
 lO+89gvrrYTulefBJICTaWWZliGQqVRxot335MocEGI9kCJh0jP5BxNKQXMJswScNrMS lg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yfem0ybx2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Mar 2020 09:10:10 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 01392100038;
 Wed,  4 Mar 2020 09:10:05 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DF0AC21FE85;
 Wed,  4 Mar 2020 09:10:05 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 4 Mar 2020 09:10:05 +0100
From: Yann Gautier <yann.gautier@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/3] Update SDMMC nodes on STM32MP1 boards 
Date: Wed, 4 Mar 2020 09:09:53 +0100
Message-ID: <20200304080956.7699-1-yann.gautier@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-04_01:2020-03-03,
 2020-03-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_001022_983115_0591FE94 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yann Gautier <yann.gautier@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset updates the sdmmc nodes for STM32MP1.
For SD cards nodes, the cd-gpio property is used instead of broken-cd,
and the disable-wp property is added.
The last patch corrects the vqmmc regulator for eMMC on ED1/EV1 boards.

Yann Gautier (3):
  ARM:dts: stm32: add cd-gpios properties for SD-cards on STM32MP1
    boards
  ARM: dts: stm32: add disable-wp property for SD-card on STM32MP1
    boards
  ARM: dts: stm32: use correct vqmmc regu for eMMC on stm32mp1 ED1/EV1
    boards

 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 3 ++-
 arch/arm/boot/dts/stm32mp157c-ed1.dts       | 5 +++--
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi      | 3 ++-
 3 files changed, 7 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
