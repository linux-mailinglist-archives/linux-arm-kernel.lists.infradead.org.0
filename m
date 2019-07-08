Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CB561CC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 12:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IeosouejeJoZbEmvyGVzD7YY0kHpF5723exWDi5C3KI=; b=qkH7sOWUKtHLM9wK4Mv0MSEs5
	0bJMLdzg1R72LwaQyFyGux9ZZapjo8aZlpiesdP9FdMKWxKu6ApMszZhTkhX2PE0zJPRSR9Ou+mnS
	fm1kkTGS7MDEljan9dNGkeIazYubxeUqGdvCqmwYTPPQlbyOp9DiM6v6FLQbXXQYbUdx/kRsuyq3b
	kH5f/TB/KvfjVTLMNxrHEMxuZ6P8HhMHVIJuiNb7NFxgNwk7ijq1CDm28i8R8K8x2smhc/fifuzEn
	oSHYjQaX+TUBqIH336ZlEFh+g3amLjPDZwj3GLHWd6qXDDleC0wQB5aMWeGnP3C0AJbXDaP6nW+PP
	6MWZ4g9pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkQeM-00085a-SH; Mon, 08 Jul 2019 10:13:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkQd3-0007Qc-Em; Mon, 08 Jul 2019 10:12:14 +0000
X-UUID: 7c841fa8aaea4b988161edb46408cc42-20190708
X-UUID: 7c841fa8aaea4b988161edb46408cc42-20190708
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1247950496; Mon, 08 Jul 2019 02:12:00 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 03:11:58 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 18:11:57 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 8 Jul 2019 18:11:56 +0800
From: <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <matthias.bgg@gmail.com>, <sakari.ailus@linux.intel.com>,
 <tfiga@chromium.org>, <bingbu.cao@intel.com>
Subject: [PATCH 1/2] media: i2c: dw9768: Add DT support and MAINTAINERS entry
Date: Mon, 8 Jul 2019 18:06:40 +0800
Message-ID: <20190708100641.2702-2-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20190708100641.2702-1-dongchun.zhu@mediatek.com>
References: <20190708100641.2702-1-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_031213_537717_431A4515 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 louis.kuo@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4072077163056874628=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============4072077163056874628==
Content-Type: text/plain; charset="y"
Content-Transfer-Encoding: 8bit

From: Dongchun Zhu <dongchun.zhu@mediatek.com>

Add the Devicetree binding documentation and MAINTAINERS entry for dw9768.

Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
---
 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt | 9 +++++++++
 MAINTAINERS                                                     | 7 +++++++
 2 files changed, 16 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt

diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt
new file mode 100644
index 0000000..94b8ec3
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt
@@ -0,0 +1,9 @@
+Dongwoon Anatech DW9768 camera voice coil lens driver
+
+DW9768 is a 10-bit DAC with current sink capability. It is intended
+for driving voice coil lenses in camera modules.
+
+Mandatory properties:
+
+- compatible: "dongwoon,dw9768"
+- reg: I²C slave address
diff --git a/MAINTAINERS b/MAINTAINERS
index 5cfbea4..8f6ac93 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4872,6 +4872,13 @@ S:	Maintained
 F:	drivers/media/i2c/dw9714.c
 F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9714.txt
 
+DONGWOON DW9768 LENS VOICE COIL DRIVER
+M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
+L:	linux-media@vger.kernel.org
+T:	git git://linuxtv.org/media_tree.git
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt
+
 DONGWOON DW9807 LENS VOICE COIL DRIVER
 M:	Sakari Ailus <sakari.ailus@linux.intel.com>
 L:	linux-media@vger.kernel.org
-- 
2.9.2



--===============4072077163056874628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4072077163056874628==--
