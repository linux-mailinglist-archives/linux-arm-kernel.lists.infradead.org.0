Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC8E164707
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:33:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LhdHNTswAFgsMd9y676IodNOx5gzXCAtNwWgqNklOoQ=; b=AQVpAlcOCfF3q5
	3nPFNjDYtP8YLr4oPOU+bKUplS9KQk1B4vYxh3poi+bsQfjPpDTPafLSEEhtykdAUt/TlCqpGCEVW
	73S3S0ueBdflaZ1q8TFTC1WgW3E/8QAqdbfyLr6UIk6Xcgsjb7DVhbbojeV+V9+GHRrDGd+xpmBZN
	H+m1cbYBM2n7kn/j6GooZk3Nv8YYS60mfHeLRuHdUew1gpTPUV9ihViGxEqi8uBL+4k7AEXTh5Yl0
	oMUOQrJzzbxgFouKLM4xF3RX0q7i6Qh0TCQcAEI17f6ZgyXf0arHNE5BEV+fdCyjHCAd1+mQYcWeq
	AOAlsptvofAZKcfUvLcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4QPX-0008Is-Mv; Wed, 19 Feb 2020 14:33:11 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4QPA-000892-GS
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:32:50 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01JEWWHR016893; Wed, 19 Feb 2020 15:32:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=yVYeAkBr/Ft2oDd0dMTVl2kwlcLip9R6AePCGWxuxMw=;
 b=A1rBdxeVPUK94k7W2bT3X9yIQ9+tmEgoujjCkMuwgscVu+O3cVk2/o00J+uKZ0mDIXQO
 zv3BCA1w2cLnGH1wd8n2aMtXSA5hob9rrYjNkedLnLZ2XtBGSLignA0gdDWxK6i6Rp0q
 vyeSkkfWan2+6H0SOfdl+VyMszHBg0kX2V4BvNnT4TB6FPr3uRSUQYqS7xv1BOPtwZ1g
 XNvOfo8huh4wD/nS3PYiRw3UzvkXFb25E59BncK4YBXXSDTk0FrwjFv1aUrY8I34mPs4
 KQc2qUnwkIsTSnxvp2WD1pUUh+WuwAiDbn5+zSvX/yG+QoEbzp9ywxoLcPu1NxBk7/4J kA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y8uafkjfe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 19 Feb 2020 15:32:35 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1DEB610003A;
 Wed, 19 Feb 2020 15:32:31 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0722A2BEC59;
 Wed, 19 Feb 2020 15:32:31 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 19 Feb 2020 15:32:30
 +0100
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 0/2] Add GPIO level-sensitive interrupt support
Date: Wed, 19 Feb 2020 15:32:27 +0100
Message-ID: <20200219143229.18084-1-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-19_03:2020-02-19,
 2020-02-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_063249_021718_D9BD24E0 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: marex@denx.de, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
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

Changes since v2:
 - Fix issues reported by Marc:
   - do not retrigger uselessly a second time in exti irq retrigger callback
   - minor comments in pinctrl patch

Changes since v1:
 - Fix issue reported by Marek: return statment in "stm32_gpio_set_type"
   function.

regards
alex

Alexandre Torgue (2):
  irqchip/stm32: Add irq retrigger support
  pinctrl: stm32: Add level interrupt support to gpio irq chip

 drivers/irqchip/irq-stm32-exti.c      | 14 ++++++++-
 drivers/pinctrl/stm32/pinctrl-stm32.c | 45 +++++++++++++++++++++++++--
 2 files changed, 56 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
