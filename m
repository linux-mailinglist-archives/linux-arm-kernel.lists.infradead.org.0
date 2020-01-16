Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3FB13D2CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 04:38:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4V4tsDr5DDCby8msiGqubcl22B+fI1mZsVPtyHoJu50=; b=uvVidpvmqBtxL7
	BRVR1FVz7lVruCrI9AwUGzAlCno4Y3XqLKGlgf5I0jGZ9A2YzuWUkNxNTTWSLzlzAysi8lXPvK7zi
	+576D1GWQo9AzNSCGgSGGcxJbXgNmNKfyC4LGdk7l5sh6YOW9uIo9UxBV8Dd9hKlxJvuhEyEj5Iaa
	ZNiRC//UapVxQZ/v/5TIM3o1vWGV4CYh3Z6Fb6syKROhJjqJPNc1UAR00iGfuvvZPT+AO8VxXtUkd
	2In05YfojjBkCHYXadaS4qZtEXej4zryvHtZdfwzPHRfA1PQBLccpXwLKE+fb0wRSqbIrQIl/qE4Q
	llbJWytQEvI4S9XrPgiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irvyn-0002oL-B0; Thu, 16 Jan 2020 03:37:57 +0000
Received: from dodo.xh.is ([144.202.88.237])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irvyJ-0002ex-Ur
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 03:37:29 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 99999
X-Spam-Symbols: ARC_NA, FREEMAIL_ENVRCPT, R_MISSING_CHARSET, RCPT_COUNT_TWELVE,
 TO_MATCH_ENVRCPT_SOME, MIME_TRACE, ASN, RCVD_COUNT_TWO,
 RCVD_VIA_SMTP_AUTH, FROM_HAS_DN, TAGGED_RCPT, FROM_EQ_ENVFROM,
 SUSPICIOUS_RECIPS, TO_DN_SOME, BROKEN_CONTENT_TYPE,
 MID_CONTAINS_FROM, RCVD_NO_TLS_LAST
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id 3e18a3b9
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Wed, 15 Jan 2020 19:37:17 -0800 (PST)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 720E54771C;
 Thu, 16 Jan 2020 03:37:12 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v2 1/5] dt-bindings: vendor-prefix: add Shenzhen Feixin
 Photoelectics Co., Ltd
Date: Thu, 16 Jan 2020 11:36:32 +0800
Message-Id: <20200116033636.512461-2-icenowy@aosc.io>
In-Reply-To: <20200116033636.512461-1-icenowy@aosc.io>
References: <20200116033636.512461-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1579145836;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding:in-reply-to:references;
 bh=Cots55u7oBo6HLbJ0veZrEhronIaQRrC5wB8giopCdI=;
 b=QAUu2xvkaL12iJS8vAzQbXn0507Pmq8B1zgmbKFcsN5+qK3hciu2EUylZQwvbQXGrYJ1wS
 LcONX8u3wZFUIPbD6ArJJoJtpvBAihun13iASAlmsRRuQwGkMKdo1d15hxlqA6p3rv7ybu
 /2CJCPtur/az2eMoK3aiEF0FUTLotEw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_193728_038012_738A2959 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [144.202.88.237 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-sunxi@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Shenzhen Feixin Photoelectics Co., Ltd is a company to provide LCD
modules.

Add its vendor prefix.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes in v2:
- Added ACKs from Sam and Rob.

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 97c0a06b35cd..07d52254427b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -337,6 +337,8 @@ patternProperties:
     description: Fastrax Oy
   "^fcs,.*":
     description: Fairchild Semiconductor
+  "^feixin,.*":
+    description: Shenzhen Feixin Photoelectic Co., Ltd
   "^feiyang,.*":
     description: Shenzhen Fly Young Technology Co.,LTD.
   "^firefly,.*":
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
