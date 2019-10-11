Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A582D4247
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jLDLT7sFRP74oQnxWENjqyVTVCyCSUQqM/OHeoRXLV0=; b=ohxaVjq7q0pc6+
	8zkK1yrfhPG1R7k2lf0swSqYWlANANZGBCnxSpD0Zt1ga+EbvRiLiY1OkhoE9eOTDshnWbmdlv7i/
	mBhu9grsYx6yAfpzQZ4s2ex8oU8NhsL1rZ8FltBRJTHrsbNZSNHxBOsejvRlkVB8COnzxrDPvuwHB
	RFBF9YNzhTMKO13JVee6Iy5DoYgfVyX46lmvgJYWypV4MKAYuFg4iu4LE879OAe4KYIGFZXuugBSV
	sNqw7ssnrKID6hs9ZqEN4UTqLjuLBW1Rnjb8CELvokXFbEcQ1BaVQd+rU3fj/paXeJ6hG4v7oTLIX
	mm7WCEdQFzPUndWYG4lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvYt-0003rF-Gc; Fri, 11 Oct 2019 14:06:31 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvY7-0003HO-Tv
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:05:45 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BE1H2g025329; Fri, 11 Oct 2019 16:05:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Qn5aFd2HVDlFPaJf/8ibkjRYXsR+9F43fhoUK4LTDXA=;
 b=qJqdhptxsX3P0Tl0evvQOsp27AcjVoX8Uo+oZUqEZ9Nan3xCeAK2WjbJ3lMzFIL0bRRI
 1qpXTzoRGrCWGyCFdradef3SEjbJ78ga0fHtyqQSzb99X8MKumdhG//XeFfnW3zfJGWH
 LdD9XVa8BYb+ROEQUlz7Q9MG+bD/T8UIWdON+yiAdnXN3tnsaB5Is+oEVMXSHPYFOqI1
 48ALFfjFjIbXV0byrHbQEx3ZUFVt+XEvpEJPtfFI1RUp3Lu9THl0hLUEK/Un7XUZ6BCn
 /a5P3hYA9ieSfh0jZb6u1aHZpT7cFHoZLUiBoasxBFGyRLdFWxmRgUBSFPtdhfp+XNBZ HQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxwa7dw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 16:05:37 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 58D3F10002A;
 Fri, 11 Oct 2019 16:05:37 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4CC882AB8AF;
 Fri, 11 Oct 2019 16:05:37 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 11 Oct 2019 16:05:36 +0200
From: Pascal Paillet <p.paillet@st.com>
To: <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/4] update regulator configuration for stm32mp157 boards
Date: Fri, 11 Oct 2019 16:05:29 +0200
Message-ID: <20191011140533.32619-1-p.paillet@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_08:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_070544_286095_A02D7C46 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: p.paillet@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The goal of this patch-set is to
- add support of PWR blok regulators on the stm32mp157 boards
- undapte various regulator configurations

Pascal Paillet (4):
  ARM: dts: stm32: add PWR regulators support on stm32mp157
  ARM: dts: stm32: change default minimal buck1 value on stm32mp157
  ARM: dts: stm32: Fix active discharge usage on stm32mp157
  ARM: dts: stm32: disable active-discharge for vbus_otg on
    stm32mp157a-avenger96

 arch/arm/boot/dts/stm32mp157a-avenger96.dts |  8 +++++--
 arch/arm/boot/dts/stm32mp157a-dk1.dts       |  9 ++++++--
 arch/arm/boot/dts/stm32mp157c-dk2.dts       |  8 -------
 arch/arm/boot/dts/stm32mp157c-ed1.dts       | 25 ++++++---------------
 arch/arm/boot/dts/stm32mp157c.dtsi          | 23 +++++++++++++++++++
 5 files changed, 43 insertions(+), 30 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
