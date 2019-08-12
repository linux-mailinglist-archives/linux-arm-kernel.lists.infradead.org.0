Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7B789DD0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NFIenNV9ys9nfzghlfFs8VQREKOkizDs73WzcF/KS80=; b=BBqTRacfZlyc2M
	VJO+Ux4V5h2tWn5IyxdB0Kb8SWVCESwhQ/5/DL1qll1wde9IFsX6zkw49o/MgniLZM5It58nu8UjG
	loai8sqtR6BGu9LnpoXhIeoEtSFhU62HL+89nxu0HuiUUpVjJN6Kk5HONi5Nm3wL8bBXVvjSUABaA
	JgSJKueczR0/3ulk5U02jyNIfBv53onDDQCMxuO1O2LCgYNNuSFFMxCfXfGgREGyuArOV93RZzHBo
	FNgWh16sz3pLpKJ5I502cXGGfLmiNLYdUvxlqLOzRJxoZBgY9FhMlGEhSo4E+RSHGdJ2942zaP/ax
	v1Md/8Wxkxy8yIdyF1KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9Es-0002bd-OT; Mon, 12 Aug 2019 12:15:51 +0000
Received: from mxwww.masterlogin.de ([95.129.51.220])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9Eb-0002ZC-0X; Mon, 12 Aug 2019 12:15:34 +0000
Received: from mxout2.routing.net (unknown [192.168.10.82])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id B35E796D58;
 Mon, 12 Aug 2019 12:15:26 +0000 (UTC)
Received: from mxbox2.masterlogin.de (unknown [192.168.10.253])
 by mxout2.routing.net (Postfix) with ESMTP id E85345FA23;
 Mon, 12 Aug 2019 12:15:26 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-217.61.152.193.bambit.de
 [217.61.152.193])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 7E70610083A;
 Mon, 12 Aug 2019 14:15:25 +0200 (CEST)
From: Frank Wunderlich <frank-w@public-files.de>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>,
 "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
Subject: [PATCH v5 00/10] implement poweroff for mt6323 / bpi-r2
Date: Mon, 12 Aug 2019 14:15:01 +0200
Message-Id: <20190812121511.4169-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_051533_353053_14098F0C 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.129.51.220 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Frank Wunderlich <frank-w@public-files.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

bWFpbmxpbmUtZHJpdmVyIGRvZXMgbm90IHN1cHBvcnQgbXQ2MzIzCgp0aGlzIHNlcmllcyBtYWtl
cyBzb21lIGNsZWFudXAgdG8gbXQ2Mzk3LXJ0Yy1kcml2ZXIsIGFkZHMgbXQ2MzIzIGFuZAppbXBs
ZW1lbnQgcG93ZXItY29udHJvbGxlciBvbiBpdC4KCnRlc3RlZCBvbiBiYW5hbmFwaS1yMgoKT3Jp
Z2luYWwgUGF0Y2ggZnJvbSBKb3NlZiBGcmllZGwKCmNoYW5nZXMgc2luY2UgdjQ6CgktIHJlbGF0
aXZlIHBhdGggaW4gcGFydCAxKzIKCS0gZHJvcCBjaGFuZ2Ugb2YgY29weXJpZ2h0LXllYXIgaW4g
cGFydCA1CmNoYW5nZXMgc2luY2UgdjM6CgktIG1vdmVkIFNPQiBpbiAyLzEwIGFuZCA5LzEwCgkt
IG1vdmVkIHBhcnQgNSB0byA2IHRvIGJlIG5lYXIgZHJpdmVyLWNoYW5nZQoJLSBjaGFuZ2VoaXN0
b3J5IG9mIHBhdGNoZXMgYmVsb3cgLS0tCgpjaGFuZ2VzIHNpbmNlIHYyOgoJLSBTcGxpdHRlZCBz
b21lIHBhcnRzIGFuZCByZWJhc2VkIG9uIDUuMy1yYzI6CgoJdjIuMSBkdC1iaW5kaW5nczogYWRk
IHBvd2VyY29udHJvbGxlciDigJMgdHJ5IHRvIG1ha2UgYmV0dGVyIHN1YmplY3QKCXYyLjIgc2Vw
YXJhdGUgcnRjLW10NjM5Ny50eHQgKHN1Z2dlc3RlZCBieSBBbGV4YW5kcmUgQmVsbG9uaSkKCSAg
ICAgYWRkIG1pc3NpbmcgY29tbWl0LW1lc3NhZ2UgKHN1Z2dlc3RlZCBieSBNYXR0aGlhcyBCcnVn
Z2VyKQoJdjIuMyBmaXggYWxsb2MgYWZ0ZXIgSVJRIChzdWdnZXN0ZWQgYnkgQWxleGFuZHJlIEJl
bGxvbmkpCgkgICAgIG5ldyBjb21wYXRpYmxlIChzcGxpdHRpbmcgc3VnZ2VzdGVkIGJ5IEFsZXhh
bmRyZSBCZWxsb25pKQoJICAgICBuZWVkZWQgZHVlIHRvIGRpZmZlcmVudCBydGMtYmFzZS9zaXpl
IHNlZSAjNwoJdjIuNCBzaW1wbGlmaWNhdGlvbnMgKERlZmluZS1yZXMtbWFjcm9zKQoJICAgICBh
ZGQgbXQ2MzIzIHJ0Yytwd3JjCgl2Mi41IGFkZCBwb3dlcm9mZi1kcml2ZXIgKG5vIGNoYW5nZSkK
CXYyLjYgTUFJTlRBSU5FUlMgKG5vIGNoYW5nZSkKCXYyLjcgRFRTLUNoYW5nZXMgKG5vIGNoYW5n
ZSkKCgpKb3NlZiBGcmllZGwgKDEwKToKICBkdC1iaW5kaW5nczogYWRkIHBvd2VyY29udHJvbGxl
cgogIGR0LWJpbmRpbmdzOiBhZGQgbWlzc2luZyBtdDYzOTcgcnRjCiAgcnRjOiBtdDYzOTc6IG1v
dmUgc29tZSBjb21tb24gZGVmaW5pdGlvbnMgaW50byBydGMuaAogIHJ0YzogbXQ2Mzk3OiBpbXBy
b3ZlbWVudHMgb2YgcnRjIGRyaXZlcgogIG1mZDogbXQ2MzIzOiBzb21lIGltcHJvdmVtZW50cyBv
ZiBtdDYzOTctY29yZQogIHJ0YzogbXQ2Mzk3OiBhZGQgY29tcGF0aWJsZSBmb3IgbXQ2MzIzCiAg
bWZkOiBtdDYzMjM6IGFkZCBtdDYzMjMgcnRjK3B3cmMKICBwb3dlcjogcmVzZXQ6IGFkZCBkcml2
ZXIgZm9yIG10NjMyMyBwb3dlcm9mZgogIE1BSU5UQUlORVJTOiBhZGQgTWVkaWF0ZWsgc2h1dGRv
d24gZHJpdmVycwogIGFybTogZHRzOiBtdDYzMjM6IGFkZCBrZXlzLCBwb3dlci1jb250cm9sbGVy
LCBydGMgYW5kIGNvZGVjCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL210NjM5Ny50eHQg
ICAgICAgIHwgIDIwICsrKy0KIC4uLi9iaW5kaW5ncy9wb3dlci9yZXNldC9tdDYzMjMtcG93ZXJv
ZmYudHh0ICB8ICAyMCArKysrCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9ydGMvcnRjLW10NjM5
Ny50eHQgICAgfCAgMjkgKysrKysKIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8ICAgNyArKwogYXJjaC9hcm0vYm9vdC9kdHMvbXQ2MzIzLmR0c2kgICAgICAg
ICAgICAgICAgIHwgIDI3ICsrKysrCiBkcml2ZXJzL21mZC9tdDYzOTctY29yZS5jICAgICAgICAg
ICAgICAgICAgICAgfCAgMzggKysrKystLQogZHJpdmVycy9wb3dlci9yZXNldC9LY29uZmlnICAg
ICAgICAgICAgICAgICAgIHwgIDEwICsrCiBkcml2ZXJzL3Bvd2VyL3Jlc2V0L01ha2VmaWxlICAg
ICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9wb3dlci9yZXNldC9tdDYzMjMtcG93ZXJv
ZmYuYyAgICAgICAgIHwgIDk3ICsrKysrKysrKysrKysrKysKIGRyaXZlcnMvcnRjL3J0Yy1tdDYz
OTcuYyAgICAgICAgICAgICAgICAgICAgICB8IDEwNyArKysrLS0tLS0tLS0tLS0tLS0KIGluY2x1
ZGUvbGludXgvbWZkL210NjM5Ny9jb3JlLmggICAgICAgICAgICAgICB8ICAgMiArCiBpbmNsdWRl
L2xpbnV4L21mZC9tdDYzOTcvcnRjLmggICAgICAgICAgICAgICAgfCAgNzEgKysrKysrKysrKysr
CiAxMiBmaWxlcyBjaGFuZ2VkLCAzMjcgaW5zZXJ0aW9ucygrKSwgMTAyIGRlbGV0aW9ucygtKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dl
ci9yZXNldC9tdDYzMjMtcG93ZXJvZmYudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3J0Yy9ydGMtbXQ2Mzk3LnR4dAogY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvcG93ZXIvcmVzZXQvbXQ2MzIzLXBvd2Vyb2ZmLmMKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvcnRjLmgKCi0tIAoyLjE3LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
