Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AD81F65AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 12:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWlB3rLD398BlZWVphMdaUJAGTfBt1+LZ82jx7NKdCs=; b=GGr8SunK1Lsjfs
	o87bmUAkSgo0nBl2pjRppBXkv/o0iCjfqVbImL7hb+9IKc+pqES27slmiVIC/FHOoeJo8CBd26qDE
	UBT8TpurYRxes0r9nnlw/neMQiEn0/ifMQ4nhEUO3/4376YStNGTysgBZaz9gGdvhoUXVt25VVGg9
	WZtRpNh+jbYqOTBfGyYOsERHiDaw+CwnnKQFfUSqOEfDzBXvSfYOHETZk8m/PEVyE//pOfG0W71Ss
	jkjXxO2Mv0oTS+DhBGmYxlshxpNEb3oaRT5KcMUBD4wVjeIaLfkQDwtYlJd4dSbnSxnhALpbXeaII
	wTnVjUmhUig+MuCIygRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjKPJ-0005e1-6b; Thu, 11 Jun 2020 10:26:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjKNh-00027L-6S
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 10:24:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 3A2262A4B78
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent.pinchart@ideasonboard.com
Subject: [PATCH v3 5/5] dt-bindings: display: ti,
 tfp410.yaml: make the ports node optional
Date: Thu, 11 Jun 2020 12:23:56 +0200
Message-Id: <20200611102356.31563-6-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
References: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_032421_400879_CD659FCE 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, tomi.valkeinen@ti.com,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFrZSB0aGUgcG9ydHMgbm9kZSBvcHRpb25hbCwgc2luY2UgdGhlcmUgYXJlIHNvbWUgRFRzIHRo
YXQgZG9uJ3QgZGVmaW5lCmFueSBwb3J0cyBmb3IgdGksdGZwNDEwLgoKU2lnbmVkLW9mZi1ieTog
UmljYXJkbyBDYcOxdWVsbyA8cmljYXJkby5jYW51ZWxvQGNvbGxhYm9yYS5jb20+Ci0tLQogRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL3RpLHRmcDQxMC55
YW1sIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS90aSx0ZnA0MTAu
eWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS90
aSx0ZnA0MTAueWFtbAppbmRleCA2MDU4MzFjMWU4MzYuLjFjOTQyMWViODBmYSAxMDA2NDQKLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL3RpLHRm
cDQxMC55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5
L2JyaWRnZS90aSx0ZnA0MTAueWFtbApAQCAtODMsNyArODMsNiBAQCBwcm9wZXJ0aWVzOgogCiBy
ZXF1aXJlZDoKICAgLSBjb21wYXRpYmxlCi0gIC0gcG9ydHMKIAogaWY6CiAgIHJlcXVpcmVkOgot
LSAKMi4xOC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
