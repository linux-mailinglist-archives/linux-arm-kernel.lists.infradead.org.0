Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DFB157CBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 14:49:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+6vCX50xrKFTMtVNyUlgG79xp2318ua/mz0qcNpd3zw=; b=SVMD+EKwsclT75
	fU8iEwHkY//qI5KPeIJGKFFKFEDnh7a3fXJKC1H2424/iCOuJAeIWwdyBTcyLWsqq25zf0nDkNjsj
	mBQ7dhoxDECRQceH4+uIOK6k10SeEFy2i0wzsJj463YJGUOacKtm7Artxa7vAE+qThcejNcWBVb7R
	dUZDo7GseTmNcmgqHmAEaav0JP1l+qiUPtJP42JPJNWRlPcyEasfW7vMRuykIqUfBzQF9VfqUE8Er
	ELKkXf9DQpQJ1562zQHC5M4Vqe3hXlCVG8IdIe+3ZrrnJ4o+exax/fm4xNJwOYnU3nlVnoJarUKUa
	KHlSAJxr309viKp0SulQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j19RM-0000YF-Fv; Mon, 10 Feb 2020 13:49:32 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j19RC-0000X4-8A
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 13:49:23 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01ADkXk1030772; Mon, 10 Feb 2020 14:49:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=cITEAYl7nEAOFwC8GIedkKHGxNjOkyc26Tp0ZsiHXd4=;
 b=EjcdUPpUjsFQTV8YUurJssgFINbtJhZ3CYUac/XmxMlMwxRDQVd8auSjASVPCiFATJdT
 gMZRU1DDYhfGs0El2czpDnTL0clsDaG0qaim81DGDdeqXMCNXBYlByoWz8Pw83TFm4uC
 Y8yXjJakVCB4a+BFKM9qbZYNPiEWSYIKvoKA11FHZEjSY1u7D7lwlSLVtu5iTnP0pNJc
 MJHyP7NXyQbdOZ4DFHi6pKRI15VgFH13y9oXRiqnSInSTDAq6OnVVWVKe7QH2z9xYjtD
 mVLBWKKSt8Pc2ENxQV8tm1/egsKcfp45YJPaWFQTgg2aPPxzwvWbgdRkR8djEOO2SAlA XA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1ud9av50-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 14:49:09 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A2703100034;
 Mon, 10 Feb 2020 14:49:04 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8AA2A2BD418;
 Mon, 10 Feb 2020 14:49:04 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 10 Feb 2020 14:49:04
 +0100
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/2] Add GPIO level-sensitive interrupt support
Date: Mon, 10 Feb 2020 14:48:59 +0100
Message-ID: <20200210134901.1939-1-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_04:2020-02-10,
 2020-02-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_054922_581496_980D5B55 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: marex@denx.de, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds the possibility to handle gpio interrupts on level.

GPIO hardware block is directly linked to EXTI block but EXTI handles
external interrupts only on edge. To be able to handle GPIO interrupt on
level a "hack" is done in gpio irq chip: parent interrupt (exti irq chip)
is retriggered following interrupt type and gpio line value.

In exti irq chip, retrigger ops function is added.

Regards
Alex

Alexandre Torgue (2):
  irqchip/stm32: Add irq retrigger support
  pinctrl: stm32: Add level interrupt support to gpio irq chip

 drivers/irqchip/irq-stm32-exti.c      | 14 +++++++-
 drivers/pinctrl/stm32/pinctrl-stm32.c | 47 +++++++++++++++++++++++++--
 2 files changed, 58 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
