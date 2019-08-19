Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C1994B93
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 19:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6hSsgFdkoJ7O2xjPUjr8HtG0Bp4OSjHDnCurm9l+IP4=; b=bnm8CC3XA1QtzC
	ZtPEZBuKOH5Zlmc9YoRRqkNXpT/9UZZyvc2xgwpVv9jpDX1bn43CkDrCEV067PcjyhwJ40m7Nwa+0
	f5xNEa39w+FuVtKIhCYLfJ46XdA83XmlFS4J5n2FdjDGdL0wDAi922VDAxXVUnp7DP+xkoEDwQ3iL
	hjEC56Wn/ThuNG/cWti4zSsL+ooU2gqH0/fX+6R7WC+EbWCMrpiqeJJmuoC2OznSjpRh3gWFFeAqu
	NZb+M7SVnrfRxbneqgJK29rH+p1152eEZfCPbgfh5xIXii5Cj1xEusZI+9XbybC3M72mzdHmhzIDd
	iz0ZagZag5wOmvh31D0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzlQG-00012k-0b; Mon, 19 Aug 2019 17:26:24 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzlQ7-000112-CZ
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 17:26:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 7F62F28B120
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: dafna.hirschfeld@collabora.com
Subject: [PATCH v4 0/2] add imx8mq nitrogen support - changes since v3
Date: Mon, 19 Aug 2019 19:26:04 +0200
Message-Id: <20190819172606.6410-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_102615_581252_EAAEB88D 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ezequiel@collabora.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 kernel@pengutronix.de, kernel@collabora.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

change log:
patch 1: no changes
patch 2:
- gpio-key,wakeup -> source-wakeup
- newline between property list and child nodes.
- settting pinctrl nodes names to: "pinctrl_xxx: xxxgrp {"

Gary Bisson (2):
  dt-bindings: arm: imx: add imx8mq nitrogen support
  arm64: dts: imx: Add i.mx8mq nitrogen8m basic dts support

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8mq-nitrogen.dts    | 405 ++++++++++++++++++
 3 files changed, 407 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
