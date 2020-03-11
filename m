Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 466551811CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:22:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9BXIshyJ4MG8LudBCWPj9wG/j2XNstqdfaTHd3K37g4=; b=ei3CDPUFurNHot
	6xFR9MGtu4KJS7Prrg1psdlS6cv080oVvnAGSqQZUhYqdyD3V0oGa3tOdFMGW+P7B/kX9yVeZ0aqw
	cz60Eu78+KlGf3qiWWwL5T7I1XTL78rJxV7gYFqZqOLCBue+jGk9Q7MzUhdhPPOTvLGOw6gDxJ6BN
	sggCtxbTzQjRsenvklw6AsFaSFsyqpbWCX3tFou0mpPVOiFakCN+CNZOWDs/Rn2lADlQCiGLHphM1
	ULbTYg7GnkYXs0c90sfaJjzt8w/vp14lKwOo13b4kJ6umbA7TiIIEsuFryTqoZUDINXb54wGPNne6
	13a70eM/xJKWOOsDP8cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvgg-0000yh-P6; Wed, 11 Mar 2020 07:21:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvgS-0000x4-S9; Wed, 11 Mar 2020 07:21:42 +0000
X-UUID: 936e956b9e8047609c403a2223aa7c84-20200310
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=8nLyZVk/PhYmrdzTV342CZJrfyCY+3YyqtqMqJ7V3+0=; 
 b=R/C//83yzgMDVRQmfq9ukHdSmyOj2yrBax+4BZswesSaaPy/qByw0sqGgDtQWI0zYzo/fikoHmH0+1PvAtkHsQCMJFANx2TgzzVvK5vEz7LsnoULqfhNO7c4wEj5Y9sD/WmsAT/0Av7od87xK8BOR5xxu7hYLYF+4Ozixz/8h8k=;
X-UUID: 936e956b9e8047609c403a2223aa7c84-20200310
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 501838213; Tue, 10 Mar 2020 23:21:38 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 00:19:13 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 11 Mar 2020 15:19:01 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 11 Mar 2020 15:18:05 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v13 0/6] mt8183 dpi supports dual edge and pin mode swap
Date: Wed, 11 Mar 2020 15:18:17 +0800
Message-ID: <20200311071823.117899-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1C7E631F0024CEF11B8147BAD69898DD502D82A9C849D73040D0A592C700B9AD2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_002140_909535_AC1A9A15 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Jitao Shi <jitao.shi@mediatek.com>,
 srv_heupstream@mediatek.com, huijuan.xie@mediatek.com, stonea168@163.com,
 cawa.cheng@mediatek.com, linux-mediatek@lists.infradead.org,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes since v12:
 - fix mediatek,dpi.yaml make_dt_binding_check errors.

Change since v11:
 - fine tune mediatek,dpi.yaml.
 - add Acked-by: Rob Herring <robh@kernel.org>.

Change since v10:
 - convert the Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
   to yaml format.
 - read the pclk-sample in endpoint.

Changes since v9:
 - rename pinctrl-names = "gpiomode", "dpimode" to "active", "idle".
 - fix some typo.

Changes since v8:
 - drop pclk-sample redefine in mediatek,dpi.txt
 - only get the gpiomode and dpimode when dpi->pinctrl is successful.

Changes since v7:
 - separate dt-bindings to independent patches.
 - move dpi dual edge to one patch.

Changes since v6:
 - change dual_edge to pclk-sample
 - remove dpi_pin_mode_swap and

Changes since v5:
 - fine tune the dt-bindings commit message.

Changes since v4:
 - move pin mode control and dual edge control to deveice tree.
 - update dt-bindings document for pin mode swap and dual edge control.

Changes since v3:
 - add dpi pin mode control when dpi on or off.
 - update dpi dual edge comment.

Changes since v2:
 - update dt-bindings document for mt8183 dpi.
 - separate dual edge modfication as independent patch.

Jitao Shi (6):
  dt-bindings: media: add pclk-sample dual edge property
  dt-bindings: display: mediatek: control dpi pins mode to avoid leakage
  dt-bindings: display: mediatek: dpi sample data in dual edge support
  dt-bindings: display: mediatek: convert the document format from txt
    to yaml
  drm/mediatek: dpi sample mode support
  drm/mediatek: set dpi pin mode to gpio low to avoid leakage current

 .../display/mediatek/mediatek,dpi.txt         |  36 ------
 .../display/mediatek/mediatek,dpi.yaml        | 103 ++++++++++++++++++
 .../bindings/media/video-interfaces.txt       |   4 +-
 drivers/gpu/drm/mediatek/mtk_dpi.c            |  58 +++++++++-
 4 files changed, 161 insertions(+), 40 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml

-- 
2.21.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
