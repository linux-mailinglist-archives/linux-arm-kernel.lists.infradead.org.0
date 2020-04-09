Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D360E1A35A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P7n8x8nTNBoS0/xiBEM7VQSNTyCDutQX5ocQUtJoXkE=; b=qf+YCYZRNhKSAr
	r03We0UvPMFJuo75BZE+ZONWQ9vrkmx0qGkWr9x4JZiKZYXONoxEJrr6oBjhI69C6WscXcCDQeHX4
	mOjsY14yAImUqkqWBYu6d4/pQDzFEaSWofHpWm9AmDdwOeZnz6J6Lw0grv/NMlpmJPphbxfBSHhtU
	XyLp62pBOSyILNxYeo50iVPZW6D/cdEunEZLVnDWJDBrDKTcSLFLHweJrc1kTFg2Fuqm2JgLvuXYq
	5aryiBxsab2le8/u/GKpQZhYmiOXt6wO2pfnf93aSBFhgqCKMMNf2iYjHEyFWuD9LJLyy3wQO5wXk
	s8SDRvIspePvuf0C4/eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXwj-0001yK-CK; Thu, 09 Apr 2020 14:14:21 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMXwV-0001ta-Nf
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:14:09 +0000
X-Originating-IP: 78.193.40.249
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id DA6E3FF808;
 Thu,  9 Apr 2020 14:14:02 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] Atmel TCB capture driver
Date: Thu,  9 Apr 2020 16:13:58 +0200
Message-Id: <20200409141401.321222-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_071407_905298_6F10FBAE 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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

Changes from v2:
 - Fixed first patch not applying on mainline
 - Updated return code to -EINVAL when user is requesting qdec mode on
   a counter device not supporting it.
 - Added an error case returning -EINVAL when action edge is performed in
   qdec mode.
 - Removed no need to explicity setting ops to NULL from static struct as
   it is the default value.
 - Changed confusing code by using snprintf for the sake of clarity.
 - Changed code to use ARRAY_SIZE so that future reviewers will know
   that num_counts matches what's in the atmel_tc_count array without
   having to check so themselves.

Kamel Bouhara (3):
  ARM: at91: add atmel tcb capabilities
  dt-bindings: counter: atmel-tcb-capture counter
  counter: Add atmel TCB capture counter

 .../bindings/counter/atmel-tcb-capture.yaml   |  35 ++
 drivers/counter/Kconfig                       |  11 +
 drivers/counter/Makefile                      |   1 +
 drivers/counter/atmel-tcb-capture.c           | 394 ++++++++++++++++++
 include/soc/at91/atmel_tcb.h                  |   2 +
 5 files changed, 443 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/counter/atmel-tcb-capture.yaml
 create mode 100644 drivers/counter/atmel-tcb-capture.c

--
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
