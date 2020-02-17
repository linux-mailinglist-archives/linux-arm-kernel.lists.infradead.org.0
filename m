Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F830160DFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:06:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GcrCYXFcvyKyFTpchvHcmlINnEVRpqsd5m75U3NYPkU=; b=Z/PKYOhWm0Q2h1
	QmU8OxVDTOn5BXCa6pk4fBLdy5M2VbJiKmGGa02wQOKAlNT0dRa/KzxrG5PNJ2by+WguV6ahQ80kK
	Jxa4LnK2+T0++X5ehQWUxkgy7lhI3aWXq7x0xGDB4mhcOwZ71AHRpbKBgGrwPkNULdtLLqv6+S4um
	vhxud2Xi9ePXoEOxEFc2k7IiqDg4X1tP0Lie5vDPxphXXMrOZxgXu4YOQQLMbDVlpfxQTODqNG4wZ
	9pkow0LiEF/RjROXirC8VXF2RX6mta7JArAGkzYSkB5+nwT2vpcmop9cDCmVfxCDcHZN2WnFtpATu
	pl0fYzvfS7YbMFS2kUEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cLn-0003Z6-3Y; Mon, 17 Feb 2020 09:05:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cLV-0003XZ-Cv; Mon, 17 Feb 2020 09:05:42 +0000
X-UUID: e7ef495c9a5642ee90fcf0dc2bc281a4-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=vQjXF5b/dhN0jgoPQcivzh7j7m7tgJaNaeuzKj+drKw=; 
 b=VMNhfQPQNjqiwlbO0ZQXlurstAqXAOerflZLb7pzaA6yXmvDxbkgkI7nqSOcRSzUMAeqmUz+jkMn5PAgq4F414+eMXlsRej4DGv3u+MxV5dMf5ULnszdEEL0J9nrn5pSJOnU7eUxkGvy+0+8JJtXzW6x0Em2j5VmQuQEByotCTQ=;
X-UUID: e7ef495c9a5642ee90fcf0dc2bc281a4-20200217
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1074194043; Mon, 17 Feb 2020 01:05:36 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 01:06:23 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 17:04:44 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 17 Feb 2020 17:03:36 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v1 1/3] dt-binding: gce: remove atomic_exec in mboxes property
Date: Mon, 17 Feb 2020 17:05:30 +0800
Message-ID: <20200217090532.16019-2-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200217090532.16019-1-bibby.hsieh@mediatek.com>
References: <20200217090532.16019-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_010541_460495_237E2DB5 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
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
