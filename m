Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937E516F6FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 06:24:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKRM978Fc/qInlpOEk0pbnh9elPTWLfXjU0vpWIX60g=; b=QTMshFzuUW/oXZ
	PWR7czBVIpRID0Gjz10UKzlgQvrYFJuWbxS7SbQ9Jevwo8DvipT8x6mCTPUmCFhyLW4wwW45+1MpF
	+ON90bjsWiT6xQ2xLhO77oUDWSXlNkVE1Gc2sApjQ2wtAZLH0R6NP1pQQC0je9/FlRyxIIBXGxUNa
	OQl+qYcCimiLv/+3DrV5f4BJKCTnaBEdUkwwW1R7ohHSAtj3Jg19eb3RCWQnzdjPpiVRp482WYAJA
	kjIOz4w7luZdqDqb+IF7iS4bEISRvlxJ9ehuK4yny7Sg+GodGRLi+Tsp2T88qtogl09i2ZUU1RxSh
	pTH8y3qF0iFvZ1vhdnvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6pAs-0006rp-Cd; Wed, 26 Feb 2020 05:23:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6pAN-0006bb-Vy; Wed, 26 Feb 2020 05:23:29 +0000
X-UUID: edf67dfc7e81467ba561c059b742d17f-20200225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=zQlE2usdlA26fIgGZ8VA3Rg8HgO4JQf85Qybm0aGcvc=; 
 b=e7tZR/QjDjTtgojiuVJXKpeGL0kAaGs4evsflV7JvFbloMEbQGYDw7nwA6RUoGzvOHZPX12fiWby26+VWva++jEb6k87ucT4OvVTeIp/IrN/iGmo+O8oPOndwQdz3qrjqk/NJQNNIu+5FuykR9Pqaki9Oe8YNyKeOCPVM1P9cyI=;
X-UUID: edf67dfc7e81467ba561c059b742d17f-20200225
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1329655461; Tue, 25 Feb 2020 21:23:26 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 21:13:23 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 13:11:24 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Feb 2020 13:13:24 +0800
From: Ran Bi <ran.bi@mediatek.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 1/4] bindings: rtc: add bindings for MT2712 RTC
Date: Wed, 26 Feb 2020 13:13:00 +0800
Message-ID: <20200226051303.22560-2-ran.bi@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200226051303.22560-1-ran.bi@mediatek.com>
References: <20200226051303.22560-1-ran.bi@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_212328_033888_444C1AB7 
X-CRM114-Status: GOOD (  10.75  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Flora
 Fu <flora.fu@mediatek.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Ran Bi <ran.bi@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, YT Shen <yt.shen@mediatek.com>,
 linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document the binding for MT2712 RTC implemented by rtc-mt2712.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Ran Bi <ran.bi@mediatek.com>
---
 .../devicetree/bindings/rtc/rtc-mt2712.txt         | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rtc/rtc-mt2712.txt

diff --git a/Documentation/devicetree/bindings/rtc/rtc-mt2712.txt b/Documentation/devicetree/bindings/rtc/rtc-mt2712.txt
new file mode 100644
index 000000000000..c33d87e5e753
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/rtc-mt2712.txt
@@ -0,0 +1,14 @@
+Device-Tree bindings for MediaTek SoC based RTC
+
+Required properties:
+- compatible	    : Should be "mediatek,mt2712-rtc" : for MT2712 SoC
+- reg 		    : Specifies base physical address and size of the registers;
+- interrupts	    : Should contain the interrupt for RTC alarm;
+
+Example:
+
+rtc: rtc@10011000 {
+	compatible = "mediatek,mt2712-rtc";
+	reg = <0 0x10011000 0 0x1000>;
+	interrupts = <GIC_SPI 239 IRQ_TYPE_LEVEL_LOW>;
+};
-- 
2.25.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
