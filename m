Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6C2104DE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 09:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6wSlyZChVAUeMNxFMxN1SlsEjnZvpQIqxfQZgeso1NM=; b=S9HZhgZnfRkVv/
	J+MQikjBGocfIzW8F0sLJoBUDnf9TjD9joufBSr4oj5asudytg1itcrYmY4r3mw8fg0QKL2kQMc8a
	JN04V3GaAxwyHxcSsg1pximeEeDcCGN0Q7IGf+mtIGKcOY2gVZ0O4v/+NWbwlig+HA2wqTss/b5yR
	BDxsEELRGY99CSLlTcyG46V5vL9hHeuHBPVsBa1vwWwKlqx/6UJG6iQMcfCcgljBbgb+wMRDqefHg
	G+P+0YdOHmsfYQkTPKcBtX1zZRgS7NPZJTL4j2Wg/8T0LiwU/QLR1yrd6u95wudejAX3PY8awWjgV
	9O+Iuu6Fsa/STLxo/8Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXhpO-0000NM-NF; Thu, 21 Nov 2019 08:28:38 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXhpF-0000Mc-IX
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 08:28:31 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAL8RF1c015814; Thu, 21 Nov 2019 09:28:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=wjsLtY6RF/TmfFrW+HyWDf5AOePlorIoRKUEr506fms=;
 b=clWIItNxXIRk0L3RQG7fN5uXpQNEZSo+eUh9Y88ARISs68bC9vxe1dNDYSxZKcvswvxv
 N5o43R0W5TyWB7Trw6eI62f4GSv5Oo/zJusRRIcBGRZlTYb4E9St9RYZ9NC4p1JwajQg
 vHdNrSlEQjQvUpyM5RL5tetO1bBL0jhVMwz4C7w/4CCySJfWEo8/qLIm6ORbhV8z6Ba9
 0F3HWVUzSZC7KCugYZZazd6rg14lhadFlHq5DNfGR9YI/QnkbamXAEUzS0g+KXc5FwSt
 ECnPIvWQcAvtKcm0EFkh4H8tLn0L6Xlu1EUUWMlu1dw2O8ffjgWw9Vsn3fCCaOiO5IR9 Rg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wa9upafmg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 Nov 2019 09:28:24 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 035CC10003A;
 Thu, 21 Nov 2019 09:28:24 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E56302AEF15;
 Thu, 21 Nov 2019 09:28:23 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 21 Nov 2019 09:28:23 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <wim@linux-watchdog.org>, <linux@roeck-us.net>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH  0/1] stm32_iwdg: set WDOG_HW_RUNNING at probe
Date: Thu, 21 Nov 2019 09:28:12 +0100
Message-ID: <20191121082813.29267-1-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-20_08:2019-11-20,2019-11-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_002829_964183_968980DA 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 christophe.roullier@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the watchdog hardware is already enabled during the boot process,
when the Linux watchdog driver loads, it should reset the watchdog and
tell the watchdog framework. As a result, ping can be generated from
the watchdog framework (if CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED is set),
until the userspace watchdog daemon takes over control

Verified :
Watchdog enable in Uboot + HANDLE_BOOT_ENABLE is not set + daemon watchdog in userland ON ==> No reset IWDG2
Watchdog enable in Uboot + HANDLE_BOOT_ENABLE is not set ==> Reset IWDG2
Watchdog enable in Uboot + HANDLE_BOOT_ENABLE=y ==> No reset IWDG2
Watchdog enable in Uboot + HANDLE_BOOT_ENABLE=y + daemon watchdog in userland ON puis OFF ==> Reset IWDG2
Watchdog disable in Uboot + HANDLE_BOOT_ENABLE is not set ==> No reset IWDG2
Watchdog disable in Uboot + HANDLE_BOOT_ENABLE=y ==> No reset IWDG2
Watchdog disable in Uboot + HANDLE_BOOT_ENABLE=y + daemon watchdog in userland ON ==> No reset IWDG2
Watchdog disable in Uboot + HANDLE_BOOT_ENABLE=y + daemon watchdog in userland ON puis OFF ==> Reset IWDG2

Christophe Roullier (1):
  drivers: watchdog: stm32_iwdg: set WDOG_HW_RUNNING at probe

 drivers/watchdog/stm32_iwdg.c | 57 ++++++++++++++++++++++++-----------
 1 file changed, 40 insertions(+), 17 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
