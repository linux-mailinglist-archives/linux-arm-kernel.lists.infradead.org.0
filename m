Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FD61EF598
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mdTT8BAJVaaWL9Nj+OPx4KEnKQ3iq3oiwtDr6sbl5M=; b=kccgCGDopztXtY
	Lz072XrKAyOYvEqzerC+xi/PO/rPmfFDnJHdLnahfv3rDXPA3cwYoWYamLmmfhzG9gRHabSodWtn4
	hGPI+98Sf1m/vMEtY7+FiaBIU31fGxWcYw88/Hx5vb340qPB3rWr6YwMfBR/zMVenmV1A8jL0GcbJ
	wOhx8Yl4FxzEUH/QMa58yavVWDEyF7bkbXANogzK7oM2e2GeBWF/fnXQWBTchabGnigfOUQk41Wdi
	xpRp1dLnOIbga6qAGTdfvsnmGgRSEalAXDZym5Fefcbc8XRZ5bC9VhsYaWR2Md2bd/KVvV13B/rJB
	3dsi0khoW7saym5EzxBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9rf-0001sm-HN; Fri, 05 Jun 2020 10:46:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9rQ-0001mn-I8; Fri, 05 Jun 2020 10:46:05 +0000
X-UUID: f69a7b185c6c48cf877363af0c3e8359-20200605
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=aftpXunH1eDQjPXFO8QI2IEzKcVO0kd6k1ZnXlRllyc=; 
 b=imIUKZaEboJB+oYJioFi8Jf7gpXIPl8fkBtXskcquOfpS1GrHlHu5Tm/rk4clIdBrfK0XgRD8I8Ll4/kG6CaK053VqtXv+HpFhexz8/jQWaVWOa85syyuFQDnqMocVEckNyTK9NG1UecQHmimBO6gC5yuX7XwiOqxGtQLST99O0=;
X-UUID: f69a7b185c6c48cf877363af0c3e8359-20200605
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 986301331; Fri, 05 Jun 2020 02:45:51 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 03:35:53 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 18:35:51 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 5 Jun 2020 18:35:49 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <tiwai@suse.com>,
 <matthias.bgg@gmail.com>, <hariprasad.kelam@gmail.com>
Subject: [PATCH v2 2/2] ASoC: dt-bindings: mediatek: mt6358: add dmic-mode
 property
Date: Fri, 5 Jun 2020 18:33:42 +0800
Message-ID: <1591353222-18576-3-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1591353222-18576-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1591353222-18576-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: B6D503AACFAC6336B1F99D24FEE7774998F44BBDEEE0678BB989AFCEBCD95E0C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_034604_622339_9A344415 
X-CRM114-Status: UNSURE (   6.16  )
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
