Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BF3A9BAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2AP0kGH87hkCPSNvZ+PqQp4UnVWe7YhkeZNjMhQ0yU0=; b=KnbqUHR1QOxRBA
	KiANSUcPBqjqVuSZqXN7TL9S1uWkp4SknYt7ce1XjRbDkHwj264yo0xVYhpE17lmH/pIjlIXw3cJO
	I5R5kFckB6sx7EQLidsP+SMAxqhjigNiilxkDeUSh/hX714jW5MXiJn9K659K8kAk5C+oWbh84pep
	9Q3pIt56xwRGNaukRw91PIBLtLzgWY3vKAsBqmqTMNIUF6xouJgFCqQlQcmkx53EzQ3fbvig4SMpu
	v0qyjzMc4Rg+TZWJMzmnZZbKC+wu2OVkpzm07heLh7veCEIEkbbya1wJD0Qg01VnisyI/vqLiKpv8
	CnQ2iqo0WdkaZS4L3Ulg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5m60-0001sk-5q; Thu, 05 Sep 2019 07:22:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5m5i-0001pI-7C; Thu, 05 Sep 2019 07:22:03 +0000
X-UUID: e5a9f8da0ef744dc8912898e3dbc340d-20190904
X-UUID: e5a9f8da0ef744dc8912898e3dbc340d-20190904
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 238416887; Wed, 04 Sep 2019 23:21:56 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 00:21:54 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 15:21:53 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 15:21:52 +0800
From: <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <andriy.shevchenko@linux.intel.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <sakari.ailus@linux.intel.com>, 
 <drinkcat@chromium.org>, <tfiga@chromium.org>, <matthias.bgg@gmail.com>,
 <bingbu.cao@intel.com>
Subject: [V2, 1/2] media: i2c: dw9768: Add DT support and MAINTAINERS entry
Date: Thu, 5 Sep 2019 15:21:41 +0800
Message-ID: <20190905072142.14606-2-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_002202_261726_2298490A 
X-CRM114-Status: UNSURE (   8.34  )
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
 sam.hung@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRG9uZ2NodW4gWmh1IDxkb25nY2h1bi56aHVAbWVkaWF0ZWsuY29tPgoKVGhpcyBwYXRj
aCBpcyB0byBhZGQgdGhlIERldmljZXRyZWUgYmluZGluZyBkb2N1bWVudGF0aW9uIGFuZApNQUlO
VEFJTkVSUyBlbnRyeSBmb3IgZHc5NzY4IGFjdHVhdG9yLgoKU2lnbmVkLW9mZi1ieTogRG9uZ2No
dW4gWmh1IDxkb25nY2h1bi56aHVAbWVkaWF0ZWsuY29tPgotLS0KIERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9pMmMvZG9uZ3dvb24sZHc5NzY4LnR4dCB8IDkgKysrKysr
KysrCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCA3ICsrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygr
KQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZWRpYS9pMmMvZG9uZ3dvb24sZHc5NzY4LnR4dAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9pMmMvZG9uZ3dvb24sZHc5NzY4LnR4dCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9pMmMvZG9uZ3dvb24sZHc5NzY4LnR4
dApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwLi45NGI4ZWMzCi0tLSAvZGV2L251
bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL2kyYy9kb25n
d29vbixkdzk3NjgudHh0CkBAIC0wLDAgKzEsOSBAQAorRG9uZ3dvb24gQW5hdGVjaCBEVzk3Njgg
Y2FtZXJhIHZvaWNlIGNvaWwgbGVucyBkcml2ZXIKKworRFc5NzY4IGlzIGEgMTAtYml0IERBQyB3
aXRoIGN1cnJlbnQgc2luayBjYXBhYmlsaXR5LiBJdCBpcyBpbnRlbmRlZAorZm9yIGRyaXZpbmcg
dm9pY2UgY29pbCBsZW5zZXMgaW4gY2FtZXJhIG1vZHVsZXMuCisKK01hbmRhdG9yeSBwcm9wZXJ0
aWVzOgorCistIGNvbXBhdGlibGU6ICJkb25nd29vbixkdzk3NjgiCistIHJlZzogScKyQyBzbGF2
ZSBhZGRyZXNzCmRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCmluZGV4IDc4
MzU2OWUuLjE5MmE2NzEgMTAwNjQ0Ci0tLSBhL01BSU5UQUlORVJTCisrKyBiL01BSU5UQUlORVJT
CkBAIC00OTcxLDYgKzQ5NzEsMTMgQEAgUzoJTWFpbnRhaW5lZAogRjoJZHJpdmVycy9tZWRpYS9p
MmMvZHc5NzE0LmMKIEY6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9p
MmMvZG9uZ3dvb24sZHc5NzE0LnR4dAogCitET05HV09PTiBEVzk3NjggTEVOUyBWT0lDRSBDT0lM
IERSSVZFUgorTToJRG9uZ2NodW4gWmh1IDxkb25nY2h1bi56aHVAbWVkaWF0ZWsuY29tPgorTDoJ
bGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCitUOglnaXQgZ2l0Oi8vbGludXh0di5vcmcvbWVk
aWFfdHJlZS5naXQKK1M6CU1haW50YWluZWQKK0Y6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9tZWRpYS9pMmMvZG9uZ3dvb24sZHc5NzY4LnR4dAorCiBET05HV09PTiBEVzk4MDcg
TEVOUyBWT0lDRSBDT0lMIERSSVZFUgogTToJU2FrYXJpIEFpbHVzIDxzYWthcmkuYWlsdXNAbGlu
dXguaW50ZWwuY29tPgogTDoJbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCi0tIAoyLjkuMgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
