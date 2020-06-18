Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5806E1FF2B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2jjeE+9G6vGkA9CSXi9AKfVzCY9/rvnUQxexHITYr9s=; b=d0WNOrmYKUE+zQ
	rJniGzmBz6JQE17GJUwDteKehpyOwE6ZeGMWOce3gx8YyvUU9gyTIzbfkwq/00bsB8ucw+yOTEp0l
	yfFXLLW772tlTip1TPpdGMLKmeLoiLQJ9243qBkC5TbUfgZk8AIVekabVYZyfPuTsBK7cgjHL+JLS
	VtJC/HEdaSJjhXc6uzyE4Oynx4nMvH7iqSKjU0y0GvnZF3+kyXxg1528p+4iFTH+pbGPAzFEe05Tl
	wyZDkFbZNDopfTnOuvyEImg5HTXjnBix+PiIZQclE0nmrC2VrXoicZoJx3q+gYGVIlxD3He7BAKaL
	DZOuHxjTrPZXMu1nTSkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluHR-0003qv-Ht; Thu, 18 Jun 2020 13:08:33 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jluGF-0002sF-Cv
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:07:21 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05ID2ZVd030156; Thu, 18 Jun 2020 15:07:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=8ffjSa1WBrW1OVyG9ClDZn5fyYDO6RsbX3ADHi53fhU=;
 b=s1m/o/mkC+rtXapEsEMy6XitXk0X4Rw7fZ4xISMw/A3QuhT+G0EoZiewQJXRhdPcw7Qw
 JO4dqSi5wxxmOSftJMxZ7PfA0VlqnFy7sIKhiJN7L8pBXEPhQ83k9kNIC1xbxg7Yt8dz
 IebUJ4YDYmSAmsEYyhBjG+weAVHSAlD/frSxrhH61VN3pANhlEOEjjoqqwERhxsvsQB6
 ZF22HaSJy5NyHDBSf8ZMloLf5IzPWLfI112Flp3eZXU9WZfL5s30sQ6xmzetsaKMev5E
 y7SftYRXIB4YdLhjqryOxxWg2CNIJL5N7v7ZqJfhjaDKBxhweFnUbUVz8ZFPtZ1ZpxMC sA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31q64cb3fd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jun 2020 15:07:00 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0BA3310002A;
 Thu, 18 Jun 2020 15:06:59 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E95052AAA6C;
 Thu, 18 Jun 2020 15:06:58 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 18 Jun 2020 15:06:58
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH v2 0/5] STM32 add usart nodes support
Date: Thu, 18 Jun 2020 15:06:46 +0200
Message-ID: <20200618130651.29836-1-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-18_12:2020-06-18,
 2020-06-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_060719_769673_5BAAD75D 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [91.207.212.93 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, Erwan Le Ray <erwan.leray@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the support of uart instances available on STM32MP157 boards:
- usart3 on stm32mp157c-ev1, stm32mp157a-dk1, and stm32mp157c-dk2
- uart7 on stm32mp157a-dk1 and stm32mp157c-dk2
- usart2 on stm32mp157c-dk2

Erwan Le Ray (5):
  ARM: dts: stm32: add usart2, usart3 and uart7 pins in
    stm32mp15-pinctrl
  ARM: dts: stm32: add usart3 node to stm32mp15xx-dkx boards
  ARM: dts: stm32: add usart3 node to stm32mp157c-ev1
  ARM: dts: stm32: add uart7 support to stm32mp15xx-dkx boards
  ARM: dts: stm32: add usart2 node to stm32mp157c-dk2

 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 138 +++++++++++++++++++++++
 arch/arm/boot/dts/stm32mp157a-dk1.dts    |   2 +
 arch/arm/boot/dts/stm32mp157c-dk2.dts    |  11 ++
 arch/arm/boot/dts/stm32mp157c-ev1.dts    |  15 +++
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi   |  17 +++
 5 files changed, 183 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
