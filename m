Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB75DFFDA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 05:58:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OAeYwI2K+EAvGvDucInriSQ4+IX47aXCDUKGeOXDrig=; b=AhP65nCjLmZIVb
	Wk10RIYdy7B1MtikYQ1mFIaBrArBC4mL89bZJi9sdQnkpbkCn5eJ2uThpc6MJZLkqtuaENE1KQ/6B
	rD5w11va1NkL0ELa16prWGmy/pc3ymftOCCdtjrUXlMYDMgXV2Dscyn3RrgsoAu4FXKLT5WLfZUxH
	GtSm5hN5sVZKB3SkLpMdz7Q3eiD3wqyQkg2TWFgf6gxOcjcwgcaBTwKBMCr1rXlAncdBnGZMN2Gtn
	p4A2F1ck2V/c8AsGB2jVwb9SlcpZ0P1HRHw6mukIr8fGMWJHv9aXQ6GvSJHUJlL3inpDKnbnt82eE
	UZXfjo7ZksLDwVhSneeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWZ72-00084Y-4K; Mon, 18 Nov 2019 04:58:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWZ6r-00082c-Qv; Mon, 18 Nov 2019 04:58:00 +0000
X-UUID: a9dae990cd1a4e49a3d67ba2fd68244d-20191117
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=PwooS7+c3Hefvuj7Qg4f+8puNQ2YZcWGbv3SCO5cba8=; 
 b=BCEWmgVGkmmsZ5eLD/YOmK5qd10Pnbqlm0R6/EiTBLP29iJgztOY7ZU9jDZZDl6VhYjsWhxXOxBQHXp6B+xfMbhOJZVdsTyN9Kdej03qhSk+BrkJ9RBmUQkeGiyLTo+4zn/9Uivu4DqXls/J6baF3utSxwkMEnLj+z0edSzmL+s=;
X-UUID: a9dae990cd1a4e49a3d67ba2fd68244d-20191117
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <luhua.xu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1414334680; Sun, 17 Nov 2019 20:57:47 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 17 Nov 2019 20:57:58 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 18 Nov 2019 12:57:48 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 18 Nov 2019 12:57:32 +0800
From: Luhua Xu <luhua.xu@mediatek.com>
To: Mark Brown <broonie@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Allison Randal <allison@lohutok.net>, "Enrico
 Weigelt" <info@metux.net>, Kate Stewart <kstewart@linuxfoundation.org>,
 "Leilk Liu" <leilk.liu@mediatek.com>, Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 0/2] spi CS customization support 
Date: Mon, 18 Nov 2019 12:57:15 +0800
Message-ID: <1574053037-26721-1-git-send-email-luhua.xu@mediatek.com>
X-Mailer: git-send-email 2.6.4
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4574C02A88C4CD2230000881FE3CDDB52C40828BB2C0D6FEC0BC95FEF95C37BA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_205757_885662_5167982A 
X-CRM114-Status: UNSURE (   5.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patch series add SPI CS polarity and CS setup/hold/idle
time customization support.

Luhua Xu (2):
  spi: mediatek: add SPI_CS_HIGH support
  spi: mediatek: add cs timing configuration support

 drivers/spi/spi-mt65xx.c                 | 53 +++++++++++++++++++++++++-------
 include/linux/platform_data/spi-mt65xx.h |  6 +++-
 2 files changed, 47 insertions(+), 12 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
