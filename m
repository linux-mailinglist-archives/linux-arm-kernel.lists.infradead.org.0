Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC48810906C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 15:51:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yra4elPt+K+Fguh/vt1jdikZCeJj9bV9h5nGGP7FWxY=; b=PSS/5PjjoNP3FS
	KdioeJzIpNG0tzuVqBlUZqY1yEf+b0r1sYaSiUBUB9PqzRK8FbmFcH8BjOWTcsdOqfnZFc9HJJ+rK
	/qectJaHXfai+Yn4tyIZZKc2s/vJWYVOolHbyYHUMX0ySpjRFEBbvP72JivZTaCfI6E5K8VWYOlk/
	hr4Ag8qPCV1IstKOp0gLWJBU1e10F0YXn1LzmznzvNqtzEA7vJ9wJ1OD32TPw8ZmFGWrf9yWznpLg
	soc7kBeBsF2hP4zJ8op6r2m55J9ecaFF8wYZ+aTmKySnJPecz1A+V1kW3/0j3kJETH92CiW7UNTJb
	oUB5T5vcwgGNyTdVia5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZFiC-0000jN-C2; Mon, 25 Nov 2019 14:51:36 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZFhV-0000Gw-Sb
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 14:50:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 28B5FFB04;
 Mon, 25 Nov 2019 15:50:48 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5p-m8_npmQ2s; Mon, 25 Nov 2019 15:50:46 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id D26834928A; Mon, 25 Nov 2019 15:50:07 +0100 (CET)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Anson Huang <Anson.Huang@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Carlo Caione <ccaione@baylibre.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: mxsfb: Add compatible for iMX8MQ
Date: Mon, 25 Nov 2019 15:50:06 +0100
Message-Id: <1e452d74454d550ec4134428994ad8559aaa587e.1574693313.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1574693313.git.agx@sigxcpu.org>
References: <cover.1574693313.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_065054_081676_B94E2A4E 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TlhQJ3MgaU1YOE1RIGhhcyBhbiBMQ0RJRiBhcyB3ZWxsLgoKU2lnbmVkLW9mZi1ieTogR3VpZG8g
R8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZGlzcGxheS9teHNmYi50eHQgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
aXNwbGF5L214c2ZiLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNw
bGF5L214c2ZiLnR4dAppbmRleCA0NzJlMWVhNmM1OTEuLmM5ODU4NzFjNDZiMyAxMDA2NDQKLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXhzZmIudHh0Cisr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L214c2ZiLnR4dApA
QCAtNiw2ICs2LDcgQEAgUmVxdWlyZWQgcHJvcGVydGllczoKIC0gY29tcGF0aWJsZToJU2hvdWxk
IGJlICJmc2wsaW14MjMtbGNkaWYiIGZvciBpLk1YMjMuCiAJCVNob3VsZCBiZSAiZnNsLGlteDI4
LWxjZGlmIiBmb3IgaS5NWDI4LgogCQlTaG91bGQgYmUgImZzbCxpbXg2c3gtbGNkaWYiIGZvciBp
Lk1YNlNYLgorCQlTaG91bGQgYmUgImZzbCxpbXg4bXEtbGNkaWYiIGZvciBpLk1YOE1RLgogLSBy
ZWc6CQlBZGRyZXNzIGFuZCBsZW5ndGggb2YgdGhlIHJlZ2lzdGVyIHNldCBmb3IgTENESUYKIC0g
aW50ZXJydXB0czoJU2hvdWxkIGNvbnRhaW4gTENESUYgaW50ZXJydXB0CiAtIGNsb2NrczoJQSBs
aXN0IG9mIHBoYW5kbGUgKyBjbG9jay1zcGVjaWZpZXIgcGFpcnMsIG9uZSBmb3IgZWFjaAotLSAK
Mi4yMy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
