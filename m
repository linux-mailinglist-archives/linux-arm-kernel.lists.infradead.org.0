Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAAD4FA13
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 06:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZgaIJOpTu6ypspNUxFSBz8ssi21iJyKJ3Q5Vua+NwAk=; b=OSUZyQaLb+o9nV
	POsBq5Nr4TY9CWytrrw987n0v6JB86/Q9GEoWXal8ANTild7XHAGkAZL8+Te7LoJmdjb4y7ZUAYaM
	F4XVtWgbEnyuuWRugAOjxFp5kBrxYzn5EXTRzPlKn20vOIq7OmNPDz/eD38ePM9/bU8eiTO5+HTLE
	1iJHw8mFoTRSiG+aK9h/jIsvmCp/tvp7DXI+OZzzT4TsvuaNDBCGWx74MGTZBHUI+hGD5y1Qzxozp
	pIItg2yD9NBkXarasGLI88UW5vxlz3TpEA7RRNN555KaOuXgL16jtDncrTrWPg6wyoUEuN32thXgs
	tPi18WbfrCjVJSexG3iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heuKK-0001Se-Km; Sun, 23 Jun 2019 04:42:04 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heuIh-0000Nl-Ma
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 04:40:25 +0000
Received: from [199.195.250.187] (port=58517 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1heuIX-0002Nq-Ce; Sun, 23 Jun 2019 05:40:17 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 30D106B5D5;
 Sun, 23 Jun 2019 04:40:08 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 7/9] dt-bindings: vendor-prefixes: add Sipeed
Date: Sun, 23 Jun 2019 12:37:59 +0800
Message-Id: <20190623043801.14040-8-icenowy@aosc.io>
In-Reply-To: <20190623043801.14040-1-icenowy@aosc.io>
References: <20190623043801.14040-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 24
X-Spam-Status: No, score=2.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_214023_817076_E6CE8FFB 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2hlbnpoZW7CoFNpcGVlZMKgVGVjaG5vbG9necKgQ28uLMKgTHRkLiBpcyBhIGNvbXBhbnkgZm9j
dXNlZCBvbiBkZXZlbG9wbWVudApraXRzLCB3aGljaCBhbHNvIGNvbnRhaW5zIHJlYnJhbmRlZCBM
aWNoZWUgUGkgc2VyaWVzLgoKQWRkIGl0cyB2ZW5kb3IgcHJlZml4IGJpbmRpbmcuCgpTaWduZWQt
b2ZmLWJ5OiBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFvc2MuaW8+Ci0tLQpDaGFuZ2VzIGluIHYz
OgotIFJlYmFzZWQgYmVjYXVzZSBvZiB0aGUgYWRkaXRpb24gb2Ygc2lubGlueCBhbmQgc2lub3Zv
aXAuCgpQYXRjaCBpbnRyb2R1Y2VkIGluIHYyLgoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbCB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKaW5kZXggOTJmNTBjYWMxMDU1Li5iYmJjZTRjOWNjNGUg
MTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJl
Zml4ZXMueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9y
LXByZWZpeGVzLnlhbWwKQEAgLTg0Nyw2ICs4NDcsOCBAQCBwYXR0ZXJuUHJvcGVydGllczoKICAg
ICBkZXNjcmlwdGlvbjogU2lubGlueCBFbGVjdHJvbmljcyBUZWNobm9sb2d5IENvLiwgTFRECiAg
ICJec2lub3ZvaXAsLioiOgogICAgIGRlc2NyaXB0aW9uOiBTaW5vVm9pcCBDby4sIEx0ZAorICAi
XnNpcGVlZCwuKiI6CisgICAgZGVzY3JpcHRpb246IFNoZW56aGVuwqBTaXBlZWTCoFRlY2hub2xv
Z3nCoENvLizCoEx0ZC4KICAgIl5zaXJmLC4qIjoKICAgICBkZXNjcmlwdGlvbjogU2lSRiBUZWNo
bm9sb2d5LCBJbmMuCiAgICJec2lzLC4qIjoKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
