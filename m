Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BB9F9554
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 17:16:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EKahEEWs1ut7Kmgj4XFB09GY2Xkgxf+DkMSS+JAnMAs=; b=fhPaP36BCk2/ObzER6y0DSiIL+
	rdH+X5jHPSnhlw4j7ma0bBqVPrQdJBTIo9f1BY2Kx/ODqSsDktD4qmP9HXWWzUo6BijLlJED6PPqQ
	D6VXBRNy6mOUKj7usGRpaL4es9ENXAKDJSHLhuI8wHy5/OgmJSV+7YUAZHvsJPZufnv6rqIGUuZhw
	6KxFbk8rv3Hv6R4cVvf46Cs+On3/3jYqizg2Wrr61kF+9n97spUnrtdgoAGbvLXkvA8Lv/2gNeSOX
	esYxMNYKbUlUWMpdGzudCoFYl2WItoTfutqXankYpiMuyLNlixkZoVf/gNPbXXt/LqZddunAfU7ZH
	ogahEBIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYqD-0007Sy-8M; Tue, 12 Nov 2019 16:16:29 +0000
Received: from forward105o.mail.yandex.net ([37.140.190.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYpO-0006ng-Qr
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 16:15:40 +0000
Received: from mxback26o.mail.yandex.net (mxback26o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::77])
 by forward105o.mail.yandex.net (Yandex) with ESMTP id B900842009FD;
 Tue, 12 Nov 2019 19:15:34 +0300 (MSK)
Received: from sas2-b0ca3cd64eaa.qloud-c.yandex.net
 (sas2-b0ca3cd64eaa.qloud-c.yandex.net [2a02:6b8:c14:718c:0:640:b0ca:3cd6])
 by mxback26o.mail.yandex.net (mxback/Yandex) with ESMTP id wAUhPqhFEI-FXme36G9;
 Tue, 12 Nov 2019 19:15:34 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emlid.com; s=mail;
 t=1573575334; bh=R8RCZlzqE9k0pY4Xp9aopkJtnf7AAfND0Zh6ZZKCFJM=;
 h=In-Reply-To:Subject:To:From:Cc:References:Date:Message-Id;
 b=vcRCm8S27m8pWYTV3RJK/LtB3Uud6Q/XJI1SOuiWKIaBe6KlWLW6ZnlU1MP7qA226
 h+WSTpKznvas7tWZJBFOnpqb1RWRzb8VqpT8mGmKucca9v+gm89DenRwe5HvbfcwGZ
 zFrzF2TIFkrhGZT5cfoAqajnWOa/9XS8uG0IKK0w=
Authentication-Results: mxback26o.mail.yandex.net;
 dkim=pass header.i=@emlid.com
Received: by sas2-b0ca3cd64eaa.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id xY2rOY0rn4-FWUCQr1N; Tue, 12 Nov 2019 19:15:33 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (Client certificate not present)
From: Georgii Staroselskii <georgii.staroselskii@emlid.com>
To: mripard@kernel.org, wens@csie.org, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH v2 3/3] dt-bindings: arm: sunxi: add Neutis N5H3
Date: Tue, 12 Nov 2019 19:15:20 +0300
Message-Id: <1573575320-29546-4-git-send-email-georgii.staroselskii@emlid.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573575320-29546-1-git-send-email-georgii.staroselskii@emlid.com>
References: <1573575320-29546-1-git-send-email-georgii.staroselskii@emlid.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_081539_067916_2F2025E7 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [37.140.190.183 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds bindings for the new Emlid Neutis N5H3 board.

Signed-off-by: Georgii Staroselskii <georgii.staroselskii@emlid.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 8a1e38a..dd2ac55 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -470,6 +470,12 @@ properties:
           - const: emlid,neutis-n5
           - const: allwinner,sun50i-h5
 
+      - description: Emlid Neutis N5H3 Developper Board
+        items:
+          - const: emlid,neutis-n5h3-devboard
+          - const: emlid,neutis-n5h3
+          - const: allwinner,sun8i-h3
+
       - description: NextThing Co. CHIP
         items:
           - const: nextthing,chip
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
