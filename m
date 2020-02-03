Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BFA1507FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 15:05:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RojbB9ZxntfPWDj/WFSiqoignyvR3DN5hOoVAOmsk44=; b=iq6nE7NBr49rNG
	7kyZEcod5mbC8kHDXCsByWR4bTq7Fvm7x2Auvs3Zo4YQBLZRQUfRoBXQHbZjfD+XdHwNBfIjnrg4F
	R95Onl+dhm6Kj5kJCyhkiffY7m1yBCmDpLNIOYUk4YeIfqszGPyvqSYikGP2rXL+AiFHhlAXKXdq+
	ebhNGDsxC8sfQjf5VgPDIVl1YfP6ChyOhVlVAQ/x6qAodnV+wF0CKYURfHBPdOFsinVB5W49rxc3r
	87OZ0Tv/uC5ieXiGb+nIWsmrEO5GY4CUX/d/F1Zy170a8um+9tz/c3MnUDwF+RPPtQcnd9saBxMHV
	azk5ESXOysYVJ/Kq6bEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iycLQ-0000h5-Ns; Mon, 03 Feb 2020 14:04:56 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iycLH-0000gb-V7
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 14:04:50 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 013E3d10002251; Mon, 3 Feb 2020 15:04:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=ViJ0uu31Mf4rs+Bz45YQEc14NjEainPuHcdaoA+GRO4=;
 b=0YacjzIe6zCCjUB2MyzaOi3+IXuy4ZVr/AWweXpdov01B6iZsdvGGzcf+kaTybgERuLy
 +jxfZrTRRfGH3Dt99maMvOTjlrxuVcuASmQRD9HHFeERmQvfKveoF3ZPdTGvvzwq9wtw
 v3Py/VuKT1H2GuV/r54AKb+6g5h9kcY3BelnGBRyBLAVEV2qztLMWzhvvFCmZ+Gxc5Te
 ub1tGgphpwXLgDc89YyWxRco9HXS4JjQZbwvxZSmR07Gepd9VkcX2wVwipBP9tuR0OYL
 PGdk5L2gHLkOCTihO5/XHjWuk4une+vPcW+INKJhD2WS7VhUOpWECF65KLJoKGlLuq/K iw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xw0011ftw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 03 Feb 2020 15:04:32 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1F9EA10002A;
 Mon,  3 Feb 2020 15:04:30 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 247DE2AAB7A;
 Mon,  3 Feb 2020 15:04:30 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 3 Feb 2020 15:04:29
 +0100
From: Erwan Le Ray <erwan.leray@st.com>
To: Russell King <linux@armlinux.org.uk>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH v3 0/4] STM32 early console
Date: Mon, 3 Feb 2020 15:04:21 +0100
Message-ID: <20200203140425.26579-1-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-03_04:2020-02-02,
 2020-02-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_060448_370373_4645CBD6 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Changes in v3:
- fix a missing condition for STM32MP1
  
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
