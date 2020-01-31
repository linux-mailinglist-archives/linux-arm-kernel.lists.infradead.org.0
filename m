Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD11914ED9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 14:42:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L4fq9J413l+DXKOLuPi2IvQUDNAmbN44YY7A46RjNy0=; b=qlJdOF8bFBUrog
	/go39Iud3+qbFFeMJpV10HGOiKlwj/iLnK9HHmgutgz0nh+d0BEl3BwkgDXhFuECSG4INFAQhnOTE
	pbqlVLPDvePH4Khqu+ZcY45NReyvntY/G7FfJWigr2LleIKb6ZsQQw0hK4f//Y3x/m2FdA34Bzt+d
	cEDN+gLMEfeHs1cTi/UczCXdyXTlmbKdstIr5/O1MSIDPJsKxECOMjVJztO8cxFV4TIla3lrBsRpW
	qJyJH224ohsJwTmuv/K2FmJWSYGMqtTjsc+dRGGVvoS25rNMBptkrXtOs7v/jp2T6AzIe6mOORz/4
	0aWfj0vK7NnM3xj5qlWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixWYV-0002lL-5t; Fri, 31 Jan 2020 13:41:55 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixWYL-0002kQ-TG
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 13:41:47 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00VDbNl5027500; Fri, 31 Jan 2020 14:41:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=sJXTIsXxfIevlb+APOWmZFM7lKhWvD+4uZfBRqTpF2E=;
 b=ITDGB5w8k/S3e5C5VjNl9gu6fvxZZUHr3VJVvgTkNtk10YqYyEQXStZ7ix/x7Na1WXtR
 VTcouFyitd6Qp7aMVchxZJOWG0DuLi4BN9PbiHnqXdERwUrrvCRW0eAE4n0nw2RGCI1B
 iMStLB6qcpzs4CQALhBFE12DDN0saPiJnR5fi5hCwP9xg4G5cPd+k5EYAI1vskn6uPii
 041EfsoKjGaMqusa9YSJ5Fh4RqForQWDFoSmiF8AqifizB+rXs0zeDeIl/MpmlM27Hhf
 qnVU6EfQ8ghTW0a7NMGTaje/mxc67Sc01Z2UbLYj1uHbapTF270avdqwfCvpxUSV0vz9 qA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrcaye2qc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 31 Jan 2020 14:41:30 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 646D410002A;
 Fri, 31 Jan 2020 14:41:28 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2E9E12BC7D1;
 Fri, 31 Jan 2020 14:41:28 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 31 Jan 2020 14:41:27
 +0100
From: Erwan Le Ray <erwan.leray@st.com>
To: Russell King <linux@armlinux.org.uk>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH v2 0/4] STM32 early console
Date: Fri, 31 Jan 2020 14:41:19 +0100
Message-ID: <20200131134123.27775-1-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-31_03:2020-01-31,
 2020-01-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_054146_310814_3933E46A 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Clement Peron <peron.clem@gmail.com>, Erwan Le Ray <erwan.leray@st.com>,
 Gerald Baeza <gerald.baeza@st.com>, Nathan Huckleberry <nhuck15@gmail.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add UART instance configuration to STM32 F4 and F7 early console.
Add STM32 H7 and MP1 early console support.

Changes in v2:
- split "[PATCH] ARM: debug: stm32: add UART early console configuration"
  into separate patches as suggested by Clement into [1]

[1] https://lkml.org/lkml/2019/4/10/199

Erwan Le Ray (4):
  ARM: debug: stm32: add UART early console configuration for STM32F4
  ARM: debug: stm32: add UART early console configuration for STM32F7
  ARM: debug: stm32: add UART early console support for STM32H7
  ARM: debug: stm32: add UART early console support for STM32MP1

 arch/arm/Kconfig.debug         | 42 +++++++++++++++++++++++++++++-----
 arch/arm/include/debug/stm32.S |  9 ++++----
 2 files changed, 40 insertions(+), 11 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
