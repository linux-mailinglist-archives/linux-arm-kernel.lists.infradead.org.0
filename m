Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AE2198E64
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 10:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvEFW38tzvOA4d6XAkHhDT4OrNz1ePYjTt9GkM/L4y0=; b=D5Ao+wTsMfn4N1
	nF8YxnrhMatSQIlKW/kYyNRUpYhgC45jYXkIdvueopcAOfIWqoJQAMDaz7x9DdWp/+4q/lxZ2mL0w
	YfCcaOKlbOzXGSGCLzwDoPFJthQ8qDppDeu668eWwe1RY4U/JYbvK6Zc4PjWE4BjOd31a0tC9lhs4
	eM9zv3mmS+hpEuY6uFewx9CVdxSHYp62xcJR+ulfJkq5iF3W/vaGvoJApF9bkccfsIJz0m2t8tUVw
	e+vdtRGvqX22mN5MViaNaUcUm1c+RGfjWNKZYfvH0rCjV/WqJJhJ3DFLOAbnbe/oDn4rEEkkWnLr/
	RLpTESGce2nwbVC9UKAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJCGG-0006Fz-Dn; Tue, 31 Mar 2020 08:28:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJCFk-0005xD-6i; Tue, 31 Mar 2020 08:28:09 +0000
X-UUID: fa61ba2d17784221a0a2d7673864582e-20200331
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=baAC/mjJyyxJyJropjMcUiSH9v9z0VL+7p1/Vb1I9C4=; 
 b=Fq9POf76tGniX09BR9UWOGHjUTmGf6RW+K0xPG8UqKm4iGZd8iRIJRR8FfV5kNVXiTnkHODeNWjClAjBEoOmqAQ0sG9bf6fg60OnjL+kw0KIb6BDhturfJnWw0/s0pRCO6Fc0l1jTBP+jo7VwgjPpn2zKM6IPvglR4mypd6jJAM=;
X-UUID: fa61ba2d17784221a0a2d7673864582e-20200331
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 617093359; Tue, 31 Mar 2020 00:27:45 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 31 Mar 2020 01:27:59 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 31 Mar 2020 16:27:56 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Tue, 31 Mar 2020 16:27:54 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 2/4] dt-bindings: display: mediatek: get mipitx calibration
 data from nvmem
Date: Tue, 31 Mar 2020 16:27:23 +0800
Message-ID: <20200331082725.81048-3-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200331082725.81048-1-jitao.shi@mediatek.com>
References: <20200331082725.81048-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 40A7C3EAC7A8A315B0CB8199B3C5988B4A427A8601750DB27B13C587AA44873F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_012808_245725_3ECC13B7 
X-CRM114-Status: UNSURE (   9.15  )
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
Cc: devicetree@vger.kernel.org, Jitao Shi <jitao.shi@mediatek.com>,
 srv_heupstream@mediatek.com, Rob Herring <robh@kernel.org>,
 huijuan.xie@mediatek.com, stonea168@163.com, cawa.cheng@mediatek.com,
 linux-mediatek@lists.infradead.org, bibby.hsieh@mediatek.com,
 ck.hu@mediatek.com, yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add properties to get get mipitx calibration data.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,dsi.txt    | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
index d78b6d6d8fab..8e4729de8c85 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
@@ -36,6 +36,9 @@ Required properties:
 Optional properties:
 - drive-strength-microamp: adjust driving current, should be 3000 ~ 6000. And
 						   the step is 200.
+- nvmem-cells: A phandle to the calibration data provided by a nvmem device. If
+               unspecified default values shall be used.
+- nvmem-cell-names: Should be "calibration-data"
 
 Example:
 
@@ -47,6 +50,8 @@ mipi_tx0: mipi-dphy@10215000 {
 	#clock-cells = <0>;
 	#phy-cells = <0>;
 	drive-strength-microamp = <4600>;
+	nvmem-cells= <&mipi_tx_calibration>;
+	nvmem-cell-names = "calibration-data";
 };
 
 dsi0: dsi@1401b000 {
-- 
2.21.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
