Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36412176EB6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 06:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cwHKKESN63WDKrcTs9vddmY/BPTOD6zzVW+zHgmmFlk=; b=L3ugHHFGUFcAFG
	j1fosDxsLdp0VvX7WB5kc1/6uRrxPoysY7mLjJKFvYn9dWesI2Lq66zADRXm6xFIcseehTYhGTRS9
	v3Q/1vxa8kqYIahZHMvGnSpHTo5tT4m/43d9Dxy3H7Ao1Mf7wR49wk7pT32t6TBYowbtCitvACrPt
	fzkMbFIRPTyT0kqskZnG5vwYlGVfTojRtQ4praIsJu7EYnC0FJ5gcJEctzsXP/SeiV88b7H9krz3q
	+3gbxfEbTaTPFD3Sm/MN18M3BDBZ5r4SbBpa0HqBKYAirf/Y+j9159TjnMo+bUz1qpml5+v8W2CjY
	ISltmCo/XB/vk1TjJFcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j906K-0004yU-5p; Tue, 03 Mar 2020 05:28:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9068-0004vq-3U; Tue, 03 Mar 2020 05:28:05 +0000
X-UUID: 81af04f1663743c9abc62ff58dad333b-20200302
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=VrGM0yng3zE6ibYl4KMQlVLDnOBJXUKNw3E1HJFiQo4=; 
 b=b5vKKQD6VM6XzABQ1pX2UIsve9W8vFurHj9cqxcyE25vmyXOGQXmk8CfCyKyQTfcw3ZyV3OrQumAds0GE44lp3jfzsQZpq/g15jtnMV3jfoYRwj8KM6IVkjujyIq8KkpKDOjdUfJ+2qM4pfavW1O9SGsmowEoj+Mb+9Q4JVUtx0=;
X-UUID: 81af04f1663743c9abc62ff58dad333b-20200302
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 871467374; Mon, 02 Mar 2020 21:27:52 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Mar 2020 21:27:49 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 3 Mar 2020 13:28:06 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Tue, 3 Mar 2020 13:28:07 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v12 0/6] mt8183 dpi supports dual edge and pin mode swap
Date: Tue, 3 Mar 2020 13:27:16 +0800
Message-ID: <20200303052722.94795-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: C50C8E93721BCC28BF2C5FB574BD8F7FED538630EACC9D503EDD5790C96266982000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_212804_145276_47B2D319 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Jitao Shi <jitao.shi@mediatek.com>,
 srv_heupstream@mediatek.com, huijuan.xie@mediatek.com, stonea168@163.com,
 cawa.cheng@mediatek.com, linux-mediatek@lists.infradead.org,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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

 .../display/mediatek/mediatek,dpi.txt         | 36 --------
 .../display/mediatek/mediatek,dpi.yaml        | 92 +++++++++++++++++++
 .../bindings/media/video-interfaces.txt       |  4 +-
 drivers/gpu/drm/mediatek/mtk_dpi.c            | 58 +++++++++++-
 4 files changed, 150 insertions(+), 40 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml

-- 
2.21.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
