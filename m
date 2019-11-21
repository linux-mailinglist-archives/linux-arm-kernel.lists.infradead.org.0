Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AFB104ED2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 10:13:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t2vTHhyf9TvZyBBFnULq6XdTlCnZJW3laKtVgASHCGM=; b=n3C5Cw3CN6lnv7
	3yx4jb2s+vfTDJr6dCGl8FPNsA7lPFzP6DoXJFDoDmLA0A2XBJblokB+nwniBqQdNpCbujsdlMwdJ
	AnR0UJWDSde3sKjtwCtadVLhs968BV3bqFKbLL5t1ToXX3KIRa/+53vlrNWFk51T/55yKAw8FX+F2
	vEg5AsFU0o9E5mtzYSDP77hVUX1omX1Dy9Zyl+UEY78y2ddEgFVno9K9TPnUgFs59PkeATtYyFCYJ
	s6jW+82m9ua6YNFMi+Dj8/TfNeHl0ttwmTizIC6p3hb7+5DR9FSFNFGDiQYLzb9OIzGZEavEb61jf
	jW2HQ/umbcbXBJ0F+m6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXiX8-0001VQ-Sw; Thu, 21 Nov 2019 09:13:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXiWo-0001RZ-6m; Thu, 21 Nov 2019 09:13:31 +0000
X-UUID: 82c07964102d404989e33e0fc078c2b6-20191121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=bFJxZH0AXm81N1vk9AvWXrEq/g3qKxp104WObxKx0SM=; 
 b=Kz4ZqHVDnNxE0d6MXDwos+tlqrmmRLxqau6UmGS9DLXxbckvROlu1Rkq9jpbcHrKSxdvsGN83yU+wFp6IIMKg+YdbaZbIRMoA0VLcc/RtrP6TNOJCVKQ2qH/JpJUOb0fiqwkoMPzmipJi8jgSytHu10XTT0XElJHcLosbeYZU10=;
X-UUID: 82c07964102d404989e33e0fc078c2b6-20191121
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 332807170; Thu, 21 Nov 2019 01:13:27 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 01:13:45 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 17:13:21 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 21 Nov 2019 17:13:28 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Jassi Brar <jassisinghbrar@gmail.com>
Subject: support gce on mt6779 platform
Date: Thu, 21 Nov 2019 17:12:20 +0800
Message-ID: <1574327552-11806-1-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_011330_255062_284E56A3 
X-CRM114-Status: UNSURE (   6.44  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support gce function on mt6779 platform.
	dt-binding: gce: add gce header file for mt6779
	mailbox: cmdq: variablize address shift in platform
	mailbox: cmdq: support mt6779 gce platform
	arm64: dts: add gce node for mt6779

Refine driver to support stop hardware with safe callback.
	mailbox: mediatek: cmdq: clear task in channel

Inorder to support mt6779 client requirement, add new helper functions to
enable more hardware capability.
	soc: mediatek: cmdq: add assign function
	soc: mediatek: cmdq: add write_s function
	soc: mediatek: cmdq: add read_s function
	soc: mediatek: cmdq: add mem move function
	soc: mediatek: cmdq: add loop function
	soc: mediatek: cmdq: add wait no clear event
	soc: mediatek: cmdq: add set event function



Dennis YC Hsieh (12):
  dt-binding: gce: add gce header file for mt6779
  mailbox: cmdq: variablize address shift in platform
  mailbox: cmdq: support mt6779 gce platform definition
  mailbox: mediatek: cmdq: clear task in channel before shutdown
  arm64: dts: add gce node for mt6779
  soc: mediatek: cmdq: add assign function
  soc: mediatek: cmdq: add write_s function
  soc: mediatek: cmdq: add read_s function
  soc: mediatek: cmdq: add mem move function
  soc: mediatek: cmdq: add loop function
  soc: mediatek: cmdq: add wait no clear event function
  soc: mediatek: cmdq: add set event function

 .../devicetree/bindings/mailbox/mtk-gce.txt   |   8 +-
 arch/arm64/boot/dts/mediatek/mt6779.dtsi      |  10 +
 drivers/mailbox/mtk-cmdq-mailbox.c            |  85 ++++++-
 drivers/soc/mediatek/mtk-cmdq-helper.c        | 182 +++++++++++++-
 include/dt-bindings/gce/mt6779-gce.h          | 222 ++++++++++++++++++
 include/linux/mailbox/mtk-cmdq-mailbox.h      |   7 +
 include/linux/soc/mediatek/mtk-cmdq.h         |  77 ++++++
 7 files changed, 573 insertions(+), 18 deletions(-)
 create mode 100644 include/dt-bindings/gce/mt6779-gce.h
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
