Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB1319F95A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 17:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HQOgu0jg1KeFTD/LMHK5VlcYhV1EC+37IYGwCO8HD/E=; b=H8+2bz8Wagm2Qn
	AoTT7+RESIsYOnAgXgx/LkurxdwW6zApdmHQcAqHRkIXiwewOhvsSMEjPK4k+t6v6hTLxREMbHWZk
	GlGG+kOlAIoNYtliLj5fr5KnLgT5puhyoWeyiJprCSsyiY/li1FksJCV0fS0+e/OCJi+8MvT63mke
	IFnxUdKr3xPFK6wUpno5J+o6Q7Hrb01Aet8kX//76DiQ5yY56LMnU1xI8sxXJxB0EeZiy9KHh7b4T
	DBy2WcnBPW9jrbHqKuWzPrTruxySmV2wsXMXaUe5x+JGTuGjo1kCvP5Y5/aI5YT25TZeuAWpBD7c2
	yIu9D3VqbfrUb1XAxKPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLU50-0003qI-DQ; Mon, 06 Apr 2020 15:54:30 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLU4q-0003oM-C8
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 15:54:23 +0000
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 009DC200014;
 Mon,  6 Apr 2020 15:54:08 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] Atmel TCB capture driver
Date: Mon,  6 Apr 2020 17:53:17 +0200
Message-Id: <20200406155320.1291701-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_085421_717791_FADD65C3 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Here is a new counter driver to support Atmel TCB capture devices.

Each SoC has two TCB blocks, each one including three independent
channels.The following series adds support for two counter modes:
increase and quadrature decoder.

As for the atmel clocksource and pwm, the counter driver needs to fill
some tcb capabilities in order to operate with the right configuration.
This is achieved in first patch of this series.

Please feel free to comment.

Cheers,

Kamel Bouhara (3):
  ARM: at91: add atmel tcb capabilities
  dt-bindings: counter: atmel-tcb-capture counter
  counter: Add atmel TCB capture counter

 .../bindings/counter/atmel-tcb-capture.yaml   |  35 ++
 drivers/counter/Kconfig                       |  11 +
 drivers/counter/Makefile                      |   1 +
 drivers/counter/atmel-tcb-capture.c           | 388 ++++++++++++++++++
 include/soc/at91/atmel_tcb.h                  |   3 +-
 5 files changed, 437 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/counter/atmel-tcb-capture.yaml
 create mode 100644 drivers/counter/atmel-tcb-capture.c

--
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
