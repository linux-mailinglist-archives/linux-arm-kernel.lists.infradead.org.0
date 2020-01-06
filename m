Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6111312FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 14:31:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JJt0DWeBUts8ONxG4xXmHDR5vMlnuDnCahuaeoI6XQo=; b=dYnEux4clCqYuo
	7z1S2Fdbi4vwn+VKJ6i4g9S68DFenF5xKeJdxb0b9gNxwI6LABe/PnSNhQlymzvV01Hzj8TJD+BSQ
	84SoaeB94hVhWV/lgt+f8JA4xxSJboue5SLCwEmVlMK62w6xhz3eHnm9z56Mq00AG6EIgKUyWKjBs
	uRn7/faeWiyO6VTUUzvZ4Wxm2Z0r2bGyB0oAXrBQZ2LIlf6eXjVL4kSXkhwq1UR7n4V8xvrg0PMVp
	WOpOwgubqSxmkGi7v/leVGmr+CTIBaHrpqzY70bUAiNuOkZwS+jm5h6aM2IK46KJxi8E4LGp1bH2+
	mRZrKOeF8dMR8oVjKIdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSTU-0002XH-V6; Mon, 06 Jan 2020 13:31:17 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSS6-0000CF-El
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 13:29:53 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 006DRPL1006050; Mon, 6 Jan 2020 14:29:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=AI7zr+DJogbnJyM7WwYjfDpAv8ZqvsAx0EghXGtiEsY=;
 b=mW6/WIqFXADnLAu0PCBTTdooe37M1DzS5V01SqY+DseFqDMXh6d+ncN2Xgd8bzz2XqJB
 04igZi1dhtUAa7wgvQjcBRHTShX1t7AL7+qRmcElptat874d1QsS10OiIrxRgMJq55B2
 FGg6GrCW2G6DhwB+eFgpUGdomQ8FFZkX2ZzfQgZYl5onFZ2E2bQUPhqfW5+/NwZvHlRj
 gQOv/fgWxO/+jypEwItk9qmDk+lzvFEIc8qSfxE9kIieCHWAabcQm1dg9LcbEjZUOERW
 aJLLeFe8HcB1OmvmKbG7MSLLUa/6wRQHyE4k5tpImFXFMh3S6lxTAtmqNeU0PEsbAtN2 Pw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakm584u9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 06 Jan 2020 14:29:42 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8D6B3100034;
 Mon,  6 Jan 2020 14:29:41 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 760DA2D378B;
 Mon,  6 Jan 2020 14:29:41 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 6 Jan 2020 14:29:41
 +0100
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <robh+dt@kernel.org>
Subject: [PATCH 0/6] i2c-stm32f7: support suspend/resume & wakeup
Date: Mon, 6 Jan 2020 14:28:28 +0100
Message-ID: <1578317314-17197-1-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-06_04:2020-01-06,2020-01-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_052950_816885_C8BA5278 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This serie replaces the previously sent serie "stm32: i2c: Add suspend/resume & add sleep pinctrls".

This serie adds support for pm sleep suspend / resume and allow I2C slave to be
a wakeup-source for the system.

Alain Volmat (6):
  ARM: dts: stm32: add i2c4 sleep pinctrl on stm32mp15xx-dkx
  ARM: dts: stm32: add i2c2/i2c5 sleep pinctrl on stm32mp157c-ev1
  ARM: dts: stm32: add i2c4 sleep pinctrl on stm32mp157c-ed1
  i2c: i2c-stm32f7: add PM_SLEEP suspend/resume support
  i2c: i2c-stm32f7: allow controller to be wakeup-source
  ARM: dts: stm32: add wakeup-source in all I2C nodes of stm32mp157c

 arch/arm/boot/dts/stm32mp151.dtsi      |   6 ++
 arch/arm/boot/dts/stm32mp157c-ed1.dts  |   3 +-
 arch/arm/boot/dts/stm32mp157c-ev1.dts  |   6 +-
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi |   3 +-
 drivers/i2c/busses/i2c-stm32f7.c       | 187 ++++++++++++++++++++++++++++++++-
 5 files changed, 196 insertions(+), 9 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
