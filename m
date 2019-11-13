Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BA3FA6AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 03:39:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ta7lOIzKdNH75Gqyoas10uxSZjBgJa++mrnFeaU9aV8=; b=hY8a8MOuqxHZR/
	EgnYgaU0vrdr0aV8zcrN1VAjv6a1+rhAAlcSDTThOBYRa2P3NKJMF1wL/1CwQ3IEwPMXX2eOth6pA
	FcTEp38euIGotPrc1COIYt1mEavVNP3Bmb+1A0t0Y/Se38Ah4rxDV/j8dYIDTgOaP00rTUCrasa8Z
	pZS+copThpMyVRxd3UxfRb3tZmHdsir01x5KaRUV/WOyz4bRItmsoOr7jWtfJTnQIKoK9TQUJnlEu
	xQu+EB6eWV6eaShCbgtQWlUofybKuMfNEmlnYkEY6TAr3PmkMB3W8DlDU2WPz4vqFkGQlOXUQyJbr
	SaYb4Di7xEZkxbbgwOdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUiZZ-0003w4-8I; Wed, 13 Nov 2019 02:39:57 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUiYt-0003Og-LH; Wed, 13 Nov 2019 02:39:17 +0000
X-UUID: acadfcb72ac14fe8b27e92ac0ce2599f-20191112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=1NPMi5s0B7PLycleggl/Ct6ul55hyyE2HzaKv33AkXA=; 
 b=EDn7Q97SYGe/ISn7VL40J628+hoVivlbsz1L2h9kC6FgazP0cjWcyDbn3c1pvtq//nSzxCMNLrl6IQGXa7Eptlkt8wNqTZiBcSTY2G9xKgZELPaS5XmFEJqoXE2EqYxdxZ5v1GvUH2PWo3MQAwltPWQ3YjPa95xHB4adVhkbaAc=;
X-UUID: acadfcb72ac14fe8b27e92ac0ce2599f-20191112
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1737915054; Tue, 12 Nov 2019 18:39:05 -0800
Received: from mtkmbs05dr.mediatek.inc (172.21.101.97) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 18:38:45 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05dr.mediatek.inc (172.21.101.97) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 13 Nov 2019 10:38:43 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 13 Nov 2019 10:38:43 +0800
From: MarkLee <Mark-MC.Lee@mediatek.com>
To: "David S. Miller" <davem@davemloft.net>, Sean Wang
 <sean.wang@mediatek.com>, John Crispin <john@phrozen.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH net,v3 0/3]  Rework mt762x GDM setup flow
Date: Wed, 13 Nov 2019 10:38:41 +0800
Message-ID: <20191113023844.17800-1-Mark-MC.Lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_183915_719639_A69B07AB 
X-CRM114-Status: UNSURE (   7.61  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Jakub
 Kicinski <jakub.kicinski@netronome.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rene van Dorst <opensource@vdorst.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 MarkLee <Mark-MC.Lee@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mt762x GDM block is mainly used to setup the HW internal
rx path from GMAC to RX DMA engine(PDMA) and the packet
switching engine(PSE) is responsed to do the data forward
following the GDM configuration.

This patch set have three goals :

1. Integrate GDM/PSE setup operations into single function "mtk_gdm_config"

2. Refine the timing of GDM/PSE setup, move it from mtk_hw_init 
   to mtk_open

3. Enable GDM GDMA_DROP_ALL mode to drop all packet during the 
   stop operation

MarkLee (3):
  net: ethernet: mediatek: Integrate GDM/PSE setup operations
  net: ethernet: mediatek: Refine the timing of GDM/PSE setup
  net: ethernet: mediatek: Enable GDM GDMA_DROP_ALL mode

 drivers/net/ethernet/mediatek/mtk_eth_soc.c | 44 ++++++++++++++-------
 drivers/net/ethernet/mediatek/mtk_eth_soc.h |  2 +
 2 files changed, 31 insertions(+), 15 deletions(-)

-- 
2.17.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
