Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A91F15D114
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 05:33:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1uUDBuZleIWLenQLYYb3iidCFC0QJDo2OkQTZrwh94=; b=Tgc7zjlgcMq943
	n9Fi2INfyrA9d+dEjPB0FLvnL3mWLM0C4eoWTO5enHKPZJ0pcQfjbp4L2EgYco/4Q07r7Hb8nku/g
	dbXBRpxrQ6OAmahhEWsjk9ugawkHwqXA9NwQ2/SYKXYwHe1GGeVr6+tEpnNHPAO73zkPUta1k0qpf
	7In2bNHThr/LePbF3Tt8Nv3HQBMWbqTxNiKKYZLUQuVlbJ8iajDJ1RA+hh9dhhOBtgiqFfKVdYjlH
	mG00iHr28sukUx3hg6YOYJi5xUxa1xI/DCEYPqF2JwiU0turwbO4j0HedYuyVqslaIdA799szkBHs
	CrfxkEv6I6z//xJaOizA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Sfk-0003lW-O5; Fri, 14 Feb 2020 04:33:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Sfc-0003jN-3t; Fri, 14 Feb 2020 04:33:41 +0000
X-UUID: d21a49e7b40e4123988d98adbdb8faf8-20200213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Qo8BOftgtpr94g/ytzEhzTCNFVahY6Atxbr6wGr9X9g=; 
 b=TMpwb0JPNaQd5KQjp7/zzEsARIhLqWpbx8/SQvKhZOB7TXj/hnzp7K0TqYM84jwXanDMiJoQRtLbNl+gDSCMyA8Lg38A3DZmbjPe1NO4ovfFofb5jOYmTeX0JQcX/Ltcqyu45DBENVOrStTzxfTkqQROPqxpvSL2twV1JK4DJSk=;
X-UUID: d21a49e7b40e4123988d98adbdb8faf8-20200213
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1255369602; Thu, 13 Feb 2020 20:33:30 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Feb 2020 20:34:12 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Feb 2020 12:32:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 14 Feb 2020 12:33:19 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH 3/3] dt-binding: gce: remove atomic_exec in mboxes property
Date: Fri, 14 Feb 2020 12:33:25 +0800
Message-ID: <20200214043325.16618-4-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200214043325.16618-1-bibby.hsieh@mediatek.com>
References: <20200214043325.16618-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 66A1543FC5E76F88AED2AD249D9CC60E022BE468315C4A65EB02F258A509C41A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_203340_164779_7701BFB7 
X-CRM114-Status: UNSURE (   8.89  )
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is not any client driver using this feature now,
so remove it from binding.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 Documentation/devicetree/bindings/mailbox/mtk-gce.txt | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
index 7b13787ab13d..0b5b2a6bcc48 100644
--- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
+++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
@@ -14,13 +14,11 @@ Required properties:
 - interrupts: The interrupt signal from the GCE block
 - clock: Clocks according to the common clock binding
 - clock-names: Must be "gce" to stand for GCE clock
-- #mbox-cells: Should be 3.
-	<&phandle channel priority atomic_exec>
+- #mbox-cells: Should be 2.
+	<&phandle channel priority>
 	phandle: Label name of a gce node.
 	channel: Channel of mailbox. Be equal to the thread id of GCE.
 	priority: Priority of GCE thread.
-	atomic_exec: GCE processing continuous packets of commands in atomic
-		way.
 
 Required properties for a client device:
 - mboxes: Client use mailbox to communicate with GCE, it should have this
@@ -54,8 +52,8 @@ Example for a client device:
 
 	mmsys: clock-controller@14000000 {
 		compatible = "mediatek,mt8173-mmsys";
-		mboxes = <&gce 0 CMDQ_THR_PRIO_LOWEST 1>,
-			 <&gce 1 CMDQ_THR_PRIO_LOWEST 1>;
+		mboxes = <&gce 0 CMDQ_THR_PRIO_LOWEST>,
+			 <&gce 1 CMDQ_THR_PRIO_LOWEST>;
 		mutex-event-eof = <CMDQ_EVENT_MUTEX0_STREAM_EOF
 				CMDQ_EVENT_MUTEX1_STREAM_EOF>;
 		mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x3000 0x1000>,
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
