Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85AA1A4211
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 06:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IBWuIiUnmKBpyrYIa+0gcS58NC/RfUyO+UAjBBBE0es=; b=qHNma1gD/N3eCV
	EXdUdN2ER+JLKBv9FPQFCvHJUTb4g4cYeNz45WG6w5tCYSFKwX4IkgEw0t0lPnVofFh8uZDsqB98p
	NSO1fR3n3VLOJowu7IKwXncLrbs3McvbG8SZidb73Q+M/bZOfZa0SLylH5hwplUW4OjTlBybM26k+
	MBZz1OOzmY+Zthusks2oHWlCLuvYxLHRvIc8zZvEEJWLNpF6eOBXycdUAh7fePGGVvwe2+v3xmr7n
	CJSS+MDILqqagmW9zRrzkFK61hWFsj2z1jTGWI4BoqjIfDXcQxCV7OY+v7nPIwndJnPlMkUkRuWZl
	TryyyKEdsKdrEHaXyihw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMlRz-00087a-VS; Fri, 10 Apr 2020 04:39:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMlRp-00086Q-71; Fri, 10 Apr 2020 04:39:22 +0000
X-UUID: e54c17b7e0c44ebaa46b4dd3df0df440-20200409
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=C7sVVd26PpyUXemamJ7aJZN4l0qAkmHAAOQgcekYw+c=; 
 b=sNdv4wqFg9uhOd0lEcLXpPid8yDYhkgrvc/vBjRULoRMnIRb2h9DhooJiZTEPQiluh/T43lHBB6uxMe4oyqjkSnv7gQ7L8lsoSX2R+NLASAaxKu8avDe6vWvHvrEEBHnjWzs1uLbzRezId24rghlmAnYJqtlOoxBm4Xs22ESCwU=;
X-UUID: e54c17b7e0c44ebaa46b4dd3df0df440-20200409
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 616712334; Thu, 09 Apr 2020 20:39:15 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 9 Apr 2020 21:32:54 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 10 Apr 2020 12:32:50 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1497.2 via Frontend Transport; Fri, 10 Apr 2020 12:32:49 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 0/4] Config mipi tx current and impedance
Date: Fri, 10 Apr 2020 12:32:44 +0800
Message-ID: <20200410043248.114384-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0F6119A2BA4805AE6F0F6CED4E26971655287E7DC5310E7440F285811C225A4C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_213921_263029_CD9B0A61 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Changes since v4:
 - add Reviewed-by:
 - move the get the calibration data code to probe.

Changes since v3:
 - refine drive-strength-microamp as from 3000 to 6000.

Changes since v2:
 - fix the title of commit message.
 - rename mipitx-current-drive to drive-strength-microamp

Changes since v1:
 - fix coding style.
 - change mtk_mipi_tx_config_calibration_data() to void

Jitao Shi (4):
  dt-bindings: display: mediatek: add property to control mipi tx drive
    current
  dt-bindings: display: mediatek: get mipitx calibration data from nvmem
  drm/mediatek: add the mipitx driving control
  drm/mediatek: config mipitx impedance with calibration data

 .../display/mediatek/mediatek,dsi.txt         | 10 ++++
 drivers/gpu/drm/mediatek/mtk_mipi_tx.c        | 54 +++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_mipi_tx.h        |  4 ++
 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c | 28 ++++++++++
 4 files changed, 96 insertions(+)

-- 
2.21.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
