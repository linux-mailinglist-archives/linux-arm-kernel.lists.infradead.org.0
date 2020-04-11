Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5F01A4EAD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 09:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9TUAamSTOv34uR8bY8gKfFrOI0wblZXFKcBfDpOVb0k=; b=E1DfifX1jgskKd
	QD8WQvdgj/elexbSuQzaoRGUaGEx9mJ2s/6CtU9nKVQjB+6Z0ToAW7nE9jr0WBzt6kITedWbUdX8F
	01bzx7v6uglL3XDBr6Y7Qp8CcwEZctjvthSbxnV6XBEJDfpi1R71tTVDQVK+fkGPqphSR39TkTT4h
	rVhEK4lr2PVDXpixL7QI3qnzpDJ9XYldqKe9VUwghX1OAyeBW2ODvYo+Ivm8spWdtHplF5AtKl2cX
	IqqEcJcTu36OvQfVQcouAuM4O0kxFEAeYJmefQRevCtpBVkgA8TAj//kswcwWYPgvjOTSCqA7+1UE
	q3XDO4UhkcCVUDg/XTOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNAqG-0003Qn-VS; Sat, 11 Apr 2020 07:46:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNAoj-00086p-Je; Sat, 11 Apr 2020 07:44:42 +0000
X-UUID: b282d628fb9244f685179f65f835a7ce-20200410
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=oXyxi7IUgBNHR+VYtiCeIx+6ezK7zPDvVd2okeNBTBs=; 
 b=eY4Ajc6lPfU6UoW6d+Zgyi8zWN6CEIVkaop2Eb0I4YNX1i8E+kxlL5OeFlEmVxZNscTTrraLVNIpIa3K2eLXQFE3Q0/MKnPBP0qR1m854F1ZXCubDeHJgeK2zXNdpVVZCgtIOn1Mm0Y5n8KI/MwI+SgW4eSDXODvKmm+1gatLQQ=;
X-UUID: b282d628fb9244f685179f65f835a7ce-20200410
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1749055299; Fri, 10 Apr 2020 23:44:33 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 11 Apr 2020 00:44:31 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 11 Apr 2020 15:44:26 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1497.2 via Frontend Transport; Sat, 11 Apr 2020 15:44:23 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 1/4] dt-bindings: display: mediatek: add property to
 control mipi tx drive current
Date: Sat, 11 Apr 2020 15:44:05 +0800
Message-ID: <20200411074408.38090-2-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200411074408.38090-1-jitao.shi@mediatek.com>
References: <20200411074408.38090-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0005373B2C71D73AF1CED7A230B00BB7B6A072EA461E12CD676996CB520C10192000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_004441_671474_7C61AA70 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 srv_heupstream@mediatek.com, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 huijuan.xie@mediatek.com, stonea168@163.com, cawa.cheng@mediatek.com,
 linux-mediatek@lists.infradead.org, bibby.hsieh@mediatek.com,
 ck.hu@mediatek.com, yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a property to control mipi tx drive current:
"drive-strength-microamp"

Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,dsi.txt    | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
index a19a6cc375ed..d78b6d6d8fab 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
@@ -33,6 +33,10 @@ Required properties:
 - #clock-cells: must be <0>;
 - #phy-cells: must be <0>.
 
+Optional properties:
+- drive-strength-microamp: adjust driving current, should be 3000 ~ 6000. And
+						   the step is 200.
+
 Example:
 
 mipi_tx0: mipi-dphy@10215000 {
@@ -42,6 +46,7 @@ mipi_tx0: mipi-dphy@10215000 {
 	clock-output-names = "mipi_tx0_pll";
 	#clock-cells = <0>;
 	#phy-cells = <0>;
+	drive-strength-microamp = <4600>;
 };
 
 dsi0: dsi@1401b000 {
-- 
2.21.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
