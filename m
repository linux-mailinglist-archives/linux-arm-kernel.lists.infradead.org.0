Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2E132153
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 03:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Na9GhDWjKCwsMj6eSOyHvII35THz04xHm0Kw3c6iGY=; b=BVmgnZ0cHI92cW
	Ioqle90TD99XSSbtjo9Y/yuUI+6mvz1NmSRi0CRc3JZxcPVDibIhVVs2s3sl0x88glq1eh66TQVpJ
	H0aMBWm03l8U2+eNwUOzZKEQWFzy+Xr6tFAUQTRfAxvEZf90NuuRvubM+z0No6eJbaKmZc+9BwyEE
	GSi/qOXGl0UJRFx4tRuvJXkjRMi3LdY4LwTm5B0IPJ1piUf/+djnJsKyCPjE0iiDuSWF/xDMaALwP
	VdTAChl2J4+22rx5q5KllnGw7PLsS6SI8ubRbNmYUg01kzFnybSNqre+F6BSIorzKxX2XwqjAN1Hu
	5u14LErzkf2tuJWTsV8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXEvN-0000Az-Bh; Sun, 02 Jun 2019 01:04:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXEvE-00009P-Cd; Sun, 02 Jun 2019 01:04:30 +0000
X-UUID: d43de728071f431291d6e142fd8b3374-20190601
X-UUID: d43de728071f431291d6e142fd8b3374-20190601
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1157082919; Sat, 01 Jun 2019 17:04:21 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 1 Jun 2019 18:04:19 -0700
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 2 Jun 2019 09:04:18 +0800
From: <sean.wang@mediatek.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <marcel@holtmann.org>,
 <johan.hedberg@gmail.com>
Subject: [PATCH v1 0/4] add boot-gpios and clock property to btmtkuart
Date: Sun, 2 Jun 2019 09:04:13 +0800
Message-ID: <1559437457-26766-1-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_180428_435088_4805A3FF 
X-CRM114-Status: UNSURE (   4.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

Update dt-binding and the corresponding implmentation of boot-gpios and clock
property to btmtkuart.

Sean Wang (4):
  dt-bindings: net: bluetooth: add boot-gpios property to UART-based
    device
  dt-bindings: net: bluetooth: add clock property to UART-based device
  Bluetooth: btmtkuart: add an implementation for boot-gpios property
  Bluetooth: btmtkuart: add an implementation for clock osc property

 .../bindings/net/mediatek-bluetooth.txt       | 17 +++++++
 drivers/bluetooth/btmtkuart.c                 | 51 +++++++++++++++----
 2 files changed, 58 insertions(+), 10 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
