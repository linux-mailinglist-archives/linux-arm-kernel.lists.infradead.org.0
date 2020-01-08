Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3987E133BC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 07:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ejTjh89BQ5pMfdPGp/cUdKERUQW/p3rhS+srX4rE7ho=; b=fsuUH+FNUzQkzB
	WdXYNvgNNX/D9031xijmHWsLLMCoMkILu4by9Bjz7FFZlxYA4VEhh3lHblOVG0kFJ/7Vs5oqpWoh/
	SaZpMMpGJ3YTtgS+s0GkZRvx4y2xvtlGCFmPipE+iafk0mcFvRRHIdAGt3y5dfPlvXkEfIKWkQqBa
	OVTS4wqe23D1O85kV9vPU9nXWzvIMfV71X82gyLN6QUC8SVigHJ8lfJl+rIONF0l8dINpfJSdTiIy
	tETWvi36OMjG37hNcy2fcMBXtKZnbXLGX7uLW9NmpP3vbaHPhDUks2OZhIt4tvDeXrvIjJaqXiNTf
	xwiUB1tiQPkFRgfw5xwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip51T-0000hZ-Jq; Wed, 08 Jan 2020 06:40:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip51G-0000dy-Qf; Wed, 08 Jan 2020 06:40:44 +0000
X-UUID: db5487678c36409696981b668c7fb660-20200107
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=C5uYcatcL7O3L8hFISr3vserMmDxuM/EyNyUSLNixHg=; 
 b=k0t/rtWVUVJ0T2VJ+NxbrexQW/YLFUNRu2AJthf1yIGAO8CIHo6arsbhqjWpqxhVjaVpySlTmbBuUVneR4ktMaDDmjnkamhGzmYeT59c6LhJlETUftc2BgLGavEwk84CWiZ9qZJ4U3BM1Z4O7g/YGjGzQDSqTb63e5FlKZgCQWY=;
X-UUID: db5487678c36409696981b668c7fb660-20200107
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1200836504; Tue, 07 Jan 2020 22:40:32 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 Jan 2020 22:31:03 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 Jan 2020 14:31:03 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 Jan 2020 14:30:03 +0800
From: fengping yu <fengping.yu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, "Will
 Deacon" <will@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Olof Johansson
 <olof@lixom.net>, Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang
 <Anson.Huang@nxp.com>, Maxime Ripard <mripard@kernel.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, Dinh Nguyen <dinguyen@kernel.org>, "Marcin
 Juszkiewicz" <marcin.juszkiewicz@linaro.org>, Valentin Schneider
 <valentin.schneider@arm.com>, Arnd Bergmann <arnd@arndb.de>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Mark Brown <broonie@kernel.org>,
 "Thierry Reding" <treding@nvidia.com>, YueHaibing <yuehaibing@huawei.com>,
 Stefan Agner <stefan@agner.cn>, Jacky Bai <ping.bai@nxp.com>, Marco Felsch
 <m.felsch@pengutronix.de>
Subject: Resend [PATCH V2] dt-bindings:input:keyboard:add MediaTek keypad
 controller binding 
Date: Wed, 8 Jan 2020 14:29:21 +0800
Message-ID: <20200108062923.14684-1-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_224042_896711_7146642B 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


fengping.yu (2):
  Documentation: devicetree: bindings: input
  drivers: input: keyboard

 .../devicetree/bindings/input/mtk-kpd.txt     |  52 +++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/input/keyboard/Kconfig                |   8 +
 drivers/input/keyboard/Makefile               |   1 +
 drivers/input/keyboard/mtk-kpd.c              | 357 ++++++++++++++++++
 5 files changed, 419 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt
 create mode 100644 drivers/input/keyboard/mtk-kpd.c
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
