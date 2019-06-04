Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E7834EA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 19:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FB56TLXyCRIYBEqGOnbRvDGNQs+mNX8oHmTcGC5Lu68=; b=FJ5L5SZocr1JyF
	z5eMkMY4y4MZwF6y5ZCtYq9WjghZkqgpTwKRTtipRPqNlKiKqctsOPnIVvvyoOrOqhJzh1T1cP6Az
	RfLX59nVlP31khIEkVSV0AZKZTN+YYrxST7unKkud/y/VMGlXZqTrTrpwYaAjtLnnIbPqyBhduRzg
	orUgdB0V7BHrPtsXKeW6uVvai4bZr2wOseXHw72AjFbM8q+NK3wLPvAunDlm8pEoUXN+sueRO++0c
	ZPW+f1mf1IO8MxhqtCM8SymQovEbzGkqeJLE4wxpEW0mapGEztlutMZfUhH/jg/9TJm857xDZuLJ9
	DOyg0mzaNv0HwIfwaARg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYD8d-0005sN-DS; Tue, 04 Jun 2019 17:22:19 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYD8W-0005rS-HP
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 17:22:13 +0000
Received: from localhost.localdomain (80-110-121-20.cgn.dynamic.surfer.at
 [80.110.121.20])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 4C04BC62EF;
 Tue,  4 Jun 2019 17:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1559668929; bh=cSocZErgHFfym8KO8Z5rspnCN1hcPRcdht1ciFTlVhE=;
 h=From:To:Cc:Subject:Date;
 b=O1YSYu+F5veWrPj/0ckhF8FFjnzZdHt2Izv9JJOKnYa8IUkEpfT3nlpp94xD8O3zv
 IDoK0r4PDmCrwazCNfg40Z0G4L98LSaqpDJUvr9dM3qLZw0X1y4Az+5QUZP0HJ61sL
 WhTpWOANLHN4Et6lbYu3NNdmhVNZA2NMGLlm0lxI=
From: Luca Weiss <luca@z3ntu.xyz>
To: 
Subject: [PATCH v2 1/2] dt-bindings: input: sun4i-lradc-keys: Add A64
 compatible
Date: Tue,  4 Jun 2019 19:21:53 +0200
Message-Id: <20190604172154.25472-1-luca@z3ntu.xyz>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_102212_796228_D7DF14E5 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 ~martijnbraam/pmos-upstream@lists.sr.ht,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Luca Weiss <luca@z3ntu.xyz>,
 Hans de Goede <hdegoede@redhat.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the A64 compatible with a fallback to the A83T compatible.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
Changes from v1:
 - New patch. Document new compatible string.

 Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt b/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt
index 496125c6bfb7..507b737612ea 100644
--- a/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt
+++ b/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt
@@ -5,6 +5,7 @@ Required properties:
  - compatible: should be one of the following string:
 		"allwinner,sun4i-a10-lradc-keys"
 		"allwinner,sun8i-a83t-r-lradc"
+		"allwinner,sun50i-a64-lradc", "allwinner,sun8i-a83t-r-lradc"
  - reg: mmio address range of the chip
  - interrupts: interrupt to which the chip is connected
  - vref-supply: powersupply for the lradc reference voltage
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
