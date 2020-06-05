Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F371EF4BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 11:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mdTT8BAJVaaWL9Nj+OPx4KEnKQ3iq3oiwtDr6sbl5M=; b=iKqqnKzu1iF5vB
	G5vEJsrksMFmR8KYauUNCr2At0Ff9o9AUwkNJB7uLl0gRFix5qZhTbPjuwFhYMA+qvIvYqRDTFobR
	I/K6LkLCy39zJ+ME0OfyxNpE20b+deCk6UIRwr9CtFiQfv8dIA9wt3xz2sKlP3QZL9kF08T9DZCry
	U5rriQLpjw5ofnM5QyqeUWTbVdIjVPUduRok33UutP1bmII6Avz++C7KZ5wA1a88YjvquUtcyNTRC
	djed0x6/ZAIHpGvOBx2P0jbywdJYxq6Lcm25hv7weX0s50ydGXXmJ5a6AbZrRgNt2gORrjHZ8whQf
	1ImaAYYzjrBURdiullLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh957-0001Wx-Vn; Fri, 05 Jun 2020 09:56:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh94z-0001V3-VA; Fri, 05 Jun 2020 09:56:03 +0000
X-UUID: 25c206d166fc4840a4c920ca2cd844c2-20200605
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=aftpXunH1eDQjPXFO8QI2IEzKcVO0kd6k1ZnXlRllyc=; 
 b=q5kzpTKE1GnRrlfGC5KCRFDhLvUfLRl0CYVPAWH2+mWbTHODnekQlMoGXww0khiUM15wKDDM287u4OxakLmQgsuVEQmkq7YsM0FQ6+/zG0ubtxVBC9DsI7LUF/RYnk9fqSgUZoxgAXtN2pKTCxncYiMqGsnreTrpvdtOmP0XuCI=;
X-UUID: 25c206d166fc4840a4c920ca2cd844c2-20200605
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1767239972; Fri, 05 Jun 2020 01:55:52 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 02:55:54 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 17:55:52 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 5 Jun 2020 17:55:51 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <tiwai@suse.com>,
 <matthias.bgg@gmail.com>, <hariprasad.kelam@gmail.com>
Subject: [v2, 2/2] ASoC: dt-bindings: mediatek: mt6358: add dmic-mode property
Date: Fri, 5 Jun 2020 17:53:45 +0800
Message-ID: <1591350825-18152-2-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1591350825-18152-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1591350825-18152-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: DA84537A393A2A092512B040C0A414505375F5DBD6BEBB53201491E8557FD55F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_025602_001507_0EB41F17 
X-CRM114-Status: UNSURE (   5.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, howie.huang@mediatek.com,
 linux-kernel@vger.kernel.org, Jiaxin Yu <jiaxin.yu@mediatek.com>,
 tzungbi@google.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds dmic-mode property and updates example.

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
---
 Documentation/devicetree/bindings/sound/mt6358.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mt6358.txt b/Documentation/devicetree/bindings/sound/mt6358.txt
index 5465730..59a73ff 100644
--- a/Documentation/devicetree/bindings/sound/mt6358.txt
+++ b/Documentation/devicetree/bindings/sound/mt6358.txt
@@ -10,9 +10,15 @@ Required properties:
 - compatible : "mediatek,mt6358-sound".
 - Avdd-supply : power source of AVDD
 
+Optional properties:
+- mediatek,dmic-mode : Indicates how many data pins are used to transmit two
+	channels of PDM signal. 0 means two wires, 1 means one wire. Default
+	value is 0.
+
 Example:
 
 mt6358_snd {
 	compatible = "mediatek,mt6358-sound";
 	Avdd-supply = <&mt6358_vaud28_reg>;
+	mediatek,dmic-mode = <0>;
 };
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
