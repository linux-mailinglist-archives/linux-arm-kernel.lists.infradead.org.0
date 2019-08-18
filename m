Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D719B917A6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 18:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jpD4/GOwNhTFKH87ydt5QYW3Oscn9QamNMA5A8BRdIc=; b=siv4sXZj+LVxjdK64lZJfpUo0O
	QU1rAazG+63uXwxF20J+TgUzRwnqVbnvJ796LkO1LF8hywTetI71IHpemv0tr7I8Sa78KzXYaMudI
	p0hTQnBxOc0rZCU4voNTyZnFMw2hXebVknET278aQL/XbqnoTOWgNYKC1knCNJBDIuQIyOHPhoy1l
	D8chtR/wTqfazViJA/ypCkOdD11uf9V7oo+SolvORg4mwA7ulP/TLuk0YQw0wrfHdk2wHYwKGGauR
	VhtcKAMF8XDugji618DiAO3hbkDUEHn6zJyHhIa8MNS+W6fXUCnTzChzPa1ivmgd4qGIlrJ1XG+KK
	sbQPiL7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzNjD-0006cu-Ju; Sun, 18 Aug 2019 16:08:23 +0000
Received: from mxwww.masterlogin.de ([2a03:2900:1:1::b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzNj1-0006bU-Ko
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 16:08:13 +0000
Received: from mxout1.routing.net (unknown [192.168.10.81])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id 865FA96DC6;
 Sun, 18 Aug 2019 16:08:09 +0000 (UTC)
Received: from mxbox2.masterlogin.de (unknown [192.168.10.253])
 by mxout1.routing.net (Postfix) with ESMTP id E187940992;
 Sun, 18 Aug 2019 16:08:09 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-185.53.43.183.bambit.de
 [185.53.43.183])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 41B151002F9;
 Sun, 18 Aug 2019 18:08:07 +0200 (CEST)
From: Frank Wunderlich <frank-w@public-files.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 01/13] dt-bindings: mfd: mediatek: mt6397: change to
 relative paths
Date: Sun, 18 Aug 2019 18:07:45 +0200
Message-Id: <20190818160757.8206-2-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190818160757.8206-1-frank-w@public-files.de>
References: <20190818160757.8206-1-frank-w@public-files.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_090811_826831_DC3FDAFC 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a03:2900:1:1:0:0:0:b listed in] [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

paths in dt-bindings should be relative as suggested by Lee Johnes

Suggested-By: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
changes since v5: splitted from dt-bindings: add powercontroller
---
 Documentation/devicetree/bindings/mfd/mt6397.txt | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
index 0ebd08af777d..ab3163a60929 100644
--- a/Documentation/devicetree/bindings/mfd/mt6397.txt
+++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
@@ -12,7 +12,7 @@ MT6397/MT6323 is a multifunction device with the following sub modules:
 It is interfaced to host controller using SPI interface by a proprietary hardware
 called PMIC wrapper or pwrap. MT6397/MT6323 MFD is a child device of pwrap.
 See the following for pwarp node definitions:
-Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
+../soc/mediatek/pwrap.txt
 
 This document describes the binding for MFD device and its sub module.
 
@@ -27,9 +27,9 @@ Optional subnodes:
 - regulators
 	Required properties:
 		- compatible: "mediatek,mt6397-regulator"
-	see Documentation/devicetree/bindings/regulator/mt6397-regulator.txt
+	see ../regulator/mt6397-regulator.txt
 		- compatible: "mediatek,mt6323-regulator"
-	see Documentation/devicetree/bindings/regulator/mt6323-regulator.txt
+	see ../regulator/mt6323-regulator.txt
 - codec
 	Required properties:
 		- compatible: "mediatek,mt6397-codec"
@@ -39,12 +39,12 @@ Optional subnodes:
 - led
 	Required properties:
 		- compatible: "mediatek,mt6323-led"
-	see Documentation/devicetree/bindings/leds/leds-mt6323.txt
+	see ../leds/leds-mt6323.txt
 
 - keys
 	Required properties:
 		- compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
-	see Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
+	see ../input/mtk-pmic-keys.txt
 
 Example:
 	pwrap: pwrap@1000f000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
