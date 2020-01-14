Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0589913A950
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 13:31:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L+vgVlJdOAFTqARBFFill/qw76HDGCngMJM/E0j1YEU=; b=h1Kg+wNq09qU6t
	zJT9Ow3YKro8usSGU7g6OGEB8CgyVWJjsmoQo+H+dj8iLTQVAcLkR5T1d+TRKwjQOeL/ZGzsiTp6m
	SJyGfrnRTG99f2XNaNoXWB4tGZKAbh1OCuag8Z5CiukejOnChltSaQm20ziIwZUCvUHGNomjBoiSb
	UL1dHE2/ZGjrZSir2UyHAXetasPmlpDMObLhOk8e1mqoU8tzOsgLvclE9p1HDgb4Q5IrAtIki71cv
	kH96kTjxbPyRBNfwsNTaOscCLPD0UHHuRcpYlUO7RQNaEzwtyInfHkteJmIU1h+iLAMz8THbZEWuA
	Pv8eE4FzC4kWFPulBM9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irLML-0007dg-7l; Tue, 14 Jan 2020 12:31:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irLMA-0007d2-5O; Tue, 14 Jan 2020 12:31:42 +0000
X-UUID: 36bc562da80a47d3a61f8e203b6d4969-20200114
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=QRMmPmOayCbvin03gJizFCVhejoqmtZkRD1DyKfCPNE=; 
 b=HsajmC5/7BQVApvHTqDNXBR+GWKc3CUx+X70bXUuKYbmvuZmw+v4QSgBwvSqSexVlHvulJjnti4nlY2cWfeyxyh451JE5xnU3VzFaSMNZMiF1s39vGwQFVMOrgvManc4IPUeel2GMNxHG6iMbjsu4NBzB6x/1V6PdEZ9EU9mTOQ=;
X-UUID: 36bc562da80a47d3a61f8e203b6d4969-20200114
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 530064676; Tue, 14 Jan 2020 04:31:34 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 04:28:59 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 20:27:39 +0800
Received: from localhost.localdomain (10.15.43.140) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 Jan 2020 20:28:53 +0800
From: fengping.yu <fengping.yu@mediatek.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marco Felsch <m.felsch@pengutronix.de>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH V3] add mtk matrix keypad driver for keypad on MTK SoC 
Date: Tue, 14 Jan 2020 20:27:37 +0800
Message-ID: <20200114122738.103344-1-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_043138_204402_81C9F788 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Change since V2:
- add wakeup source optional property in dts node
- update debounce time as microsecond
- remove origin hw-map-num and hw-init-map properties
- use matrix-map to define keypad rows, columns and keymap
- remove tasklet and use thread irq to deal with keypad interrupt
- use devm_XXX API to get device resources
- modify dts parser using matrix-map API
- modify irq handlers using for_each_set_bit to detect which key status changed
- remove surplus log 
- remove surpluse header file
- replace readw with memcpy_fromio to get keypad status registers value
- fixed other issue according reviewer comments

fengping.yu (2):
  dt-bindings: add matrix keypad documentation
  drivers: input: keyboard: add mtk keypad driver

 .../devicetree/bindings/input/mtk-kpd.txt     |  55 ++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/input/keyboard/Kconfig                |   8 +
 drivers/input/keyboard/Makefile               |   1 +
 drivers/input/keyboard/mtk-kpd.c              | 280 ++++++++++++++++++
 5 files changed, 345 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt
 create mode 100644 drivers/input/keyboard/mtk-kpd.c
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
