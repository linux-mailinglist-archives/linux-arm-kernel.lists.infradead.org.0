Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E571AA2BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bv5Lq35/jVqfC76tNyn2lavGz1MhKiTRgAa9fFwX5ik=; b=Q1XWK6S47y5Bh2
	EIvF0/SJl8FuHEUkwmHhqz70/QMDwksDVRAjrLQHR2GyplgLTvl0REW8x9BWj/Hn1QA1oUViqL2O5
	5V/2CM4NwZ41EAemfT5YQVeTDObqeyNglkkiYGRwP5hBGN2arPPG44cjASuykwKXz9TTfMyH4vR99
	JVhWLuFXtd4zq3xNW8xsXl9MRzwODQUaKjCymyVfNsxZys6FV2AaaAxae7BTsUoZ72eFYwLf1nNhj
	nZPKWuwUllShb08OX7Lvd7tL87kUxZhcGV/6uvSX8Qi8CM1Oz5tWPRmQMdZEyTG0JHc7+mWYEJbQ4
	RCJBoD+Hsgva1auk5oGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhjJ-0002rK-EC; Wed, 15 Apr 2020 13:05:25 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhiz-0001jO-D7
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:05:07 +0000
X-Originating-IP: 78.193.40.249
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id C089DFF80D;
 Wed, 15 Apr 2020 13:04:58 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/3] Microchip TCB Capture driver
Date: Wed, 15 Apr 2020 15:04:52 +0200
Message-Id: <20200415130455.2222019-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_060505_615487_81300605 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Here is a new counter driver to support Microchip TCB capture devices.

Each SoC has two TCB blocks, each one including three independent
channels.The following series adds support for two counter modes:
increase and quadrature decoder.

As for the atmel clocksource and pwm, the counter driver needs to fill
some tcb capabilities in order to operate with the right configuration.
This is achieved in first patch of this series.

Please feel free to comment.

Cheers,

Changes from v3:
 - Updated the brand name: s/atmel/microchip/.
 - Added missing kernel doc for new elements introduced in structure
   atmel_tcb_config.
 - Removed useless blank line
 - Added an explicit clock removing path using devm_add_action_or_reset

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
 - Fixed errors reported by dt_binding_check


Kamel Bouhara (3):
  ARM: at91: add atmel tcb capabilities
  dt-bindings: counter: microchip-tcb-capture counter
  counter: Add microchip TCB capture counter

 .../counter/microchip-tcb-capture.yaml        |  33 ++
 drivers/counter/Kconfig                       |  11 +
 drivers/counter/Makefile                      |   1 +
 drivers/counter/microchip-tcb-capture.c       | 397 ++++++++++++++++++
 include/soc/at91/atmel_tcb.h                  |   5 +
 5 files changed, 447 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/counter/microchip-tcb-capture.yaml
 create mode 100644 drivers/counter/microchip-tcb-capture.c

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
