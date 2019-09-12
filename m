Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9BAB0F5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 15:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wjuT3vMB5peIpcwMP6fjWMZ/F9QkXhBtzgx7zR0y/Z0=; b=JC829Uvga6okUg
	dZjTnbrfgBWVfoXB7xFuOsRVP9AFdg7eUmVpUy63uJM4bJHMpaOBdhz4atlBIUTsBctoJ+h3M2HqW
	YDKgHj1jgEJSbH0WjxEifDVpRVlveYLg2xAKGNd9QSGXTD/CkA0CBs8ywdbW2doFM4IFLCIP4FRaR
	kmm8eThfAtwJ62Lc3AyRngp8fmGZhn8WWcivbTxgQQYuuFm/aGDDYwdTFeFZC1jUZ2osz1qCjYKoL
	6M5azIppAIeepaX4wTujlMscgUl/DXMERh/70a373iWLHYjBDDrWuSX5D/8FsCJTkfuyGkonUL5S2
	8RTAw7nazfgW8lnOtnQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8OiF-0002DX-6A; Thu, 12 Sep 2019 13:00:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8OhL-0002Co-W9
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 12:59:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48B7B28;
 Thu, 12 Sep 2019 05:59:42 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B4FCE3F71F;
 Thu, 12 Sep 2019 05:59:41 -0700 (PDT)
Date: Thu, 12 Sep 2019 13:59:40 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>, helgaas@kernel.org
Subject: Re: [PATCH v3 11/11] misc: pci_endpoint_test: Add LS1088a in
 pci_device_id table
Message-ID: <20190912125939.GE9720@e119886-lin.cambridge.arm.com>
References: <20190902031716.43195-1-xiaowei.bao@nxp.com>
 <20190902031716.43195-12-xiaowei.bao@nxp.com>
 <20190902125454.GK9720@e119886-lin.cambridge.arm.com>
 <AM5PR04MB3299D598229952C13C492B48F5B90@AM5PR04MB3299.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR04MB3299D598229952C13C492B48F5B90@AM5PR04MB3299.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_055944_128108_45CF268A 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 Leo Li <leoyang.li@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBTZXAgMDMsIDIwMTkgYXQgMDE6NTI6MzBBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3Jv
dGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQW5kcmV3
IE11cnJheSA8YW5kcmV3Lm11cnJheUBhcm0uY29tPgo+ID4gU2VudDogMjAxOeW5tDnmnIgy5pel
IDIwOjU1Cj4gPiBUbzogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+Cj4gPiBDYzog
cm9iaCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9Aa2VybmVs
Lm9yZzsgTGVvCj4gPiBMaSA8bGVveWFuZy5saUBueHAuY29tPjsga2lzaG9uQHRpLmNvbTsgbG9y
ZW56by5waWVyYWxpc2lAYXJtLmNvbTsgTS5oLgo+ID4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAu
Y29tPjsgTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsgUm95Cj4gPiBaYW5nIDxyb3ku
emFuZ0BueHAuY29tPjsgamluZ29vaGFuMUBnbWFpbC5jb207Cj4gPiBndXN0YXZvLnBpbWVudGVs
QHN5bm9wc3lzLmNvbTsgbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsKPiA+IGRldmljZXRyZWVA
dmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOwo+ID4gbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eHBwYy1kZXZAbGlzdHMub3psYWJz
Lm9yZzsKPiA+IGFybmRAYXJuZGIuZGU7IGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnOyBaLnEu
IEhvdQo+ID4gPHpoaXFpYW5nLmhvdUBueHAuY29tPgo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCB2
MyAxMS8xMV0gbWlzYzogcGNpX2VuZHBvaW50X3Rlc3Q6IEFkZCBMUzEwODhhIGluCj4gPiBwY2lf
ZGV2aWNlX2lkIHRhYmxlCj4gPiAKPiA+IE9uIE1vbiwgU2VwIDAyLCAyMDE5IGF0IDExOjE3OjE2
QU0gKzA4MDAsIFhpYW93ZWkgQmFvIHdyb3RlOgo+ID4gPiBBZGQgTFMxMDg4YSBpbiBwY2lfZGV2
aWNlX2lkIHRhYmxlIHNvIHRoYXQgcGNpLWVwZi10ZXN0IGNhbiBiZSB1c2VkCj4gPiA+IGZvciB0
ZXN0aW5nIFBDSWUgRVAgaW4gTFMxMDg4YS4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogWGlh
b3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+Cj4gPiA+IC0tLQo+ID4gPiB2MjoKPiA+ID4g
IC0gTm8gY2hhbmdlLgo+ID4gPiB2MzoKPiA+ID4gIC0gTm8gY2hhbmdlLgo+ID4gPgo+ID4gPiAg
ZHJpdmVycy9taXNjL3BjaV9lbmRwb2ludF90ZXN0LmMgfCAxICsKPiA+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9taXNj
L3BjaV9lbmRwb2ludF90ZXN0LmMKPiA+ID4gYi9kcml2ZXJzL21pc2MvcGNpX2VuZHBvaW50X3Rl
c3QuYwo+ID4gPiBpbmRleCA2ZTIwOGEwLi5kNTMxOTUxIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2
ZXJzL21pc2MvcGNpX2VuZHBvaW50X3Rlc3QuYwo+ID4gPiArKysgYi9kcml2ZXJzL21pc2MvcGNp
X2VuZHBvaW50X3Rlc3QuYwo+ID4gPiBAQCAtNzkzLDYgKzc5Myw3IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgcGNpX2RldmljZV9pZAo+ID4gcGNpX2VuZHBvaW50X3Rlc3RfdGJsW10gPSB7Cj4gPiA+
ICAJeyBQQ0lfREVWSUNFKFBDSV9WRU5ET1JfSURfVEksIFBDSV9ERVZJQ0VfSURfVElfRFJBNzR4
KSB9LAo+ID4gPiAgCXsgUENJX0RFVklDRShQQ0lfVkVORE9SX0lEX1RJLCBQQ0lfREVWSUNFX0lE
X1RJX0RSQTcyeCkgfSwKPiA+ID4gIAl7IFBDSV9ERVZJQ0UoUENJX1ZFTkRPUl9JRF9GUkVFU0NB
TEUsIDB4ODFjMCkgfSwKPiA+ID4gKwl7IFBDSV9ERVZJQ0UoUENJX1ZFTkRPUl9JRF9GUkVFU0NB
TEUsIDB4ODBjMCkgfSwKPiA+IAo+ID4gVGhlIEZyZWVzY2FsZSBQQ0kgZGV2aWNlcyBhcmUgdGhl
IG9ubHkgZGV2aWNlcyBpbiB0aGlzIHRhYmxlIHRoYXQgZG9uJ3QgaGF2ZSBhCj4gPiBkZWZpbmUg
Zm9yIHRoZWlyIGRldmljZSBJRC4gSSB0aGluayBhIGRlZmluZSBzaG91bGQgYmUgY3JlYXRlZCBm
b3IgYm90aCBvZiB0aGUKPiA+IGRldmljZSBJRHMgYWJvdmUuCj4gCj4gT0ssIGJ1dCBJIG9ubHkg
ZGVmaW5lIGluIHRoaXMgZmlsZSwgSSBhbSBub3Qgc3VyZSB0aGlzIGNhbiBkZWZpbmUgaW4gaW5j
bHVkZS9saW51eC9wY2lfaWRzLmgKPiBmaWxlIAoKVGhpcyBmaWxlIHNlZW1zIGEgbGl0dGxlIGlu
Y29uc2lzdGVudC4uLgoKIC0gVHdvIG9mIHRoZSBUSSBkZXZpY2UgSURzIGFyZSBkZWZpbmVkIGlu
IHBjaV9pZHMuaCBhbmQgb25seSB1c2VkIGluIHBjaV9lbmRwb2ludF90ZXN0LmMKIC0gT25lIG9m
IHRoZSBUSSBkZXZpY2UgSURzIGFyZSBkZWZpbmVkIGluIHBjaV9lbmRwb2ludF90ZXN0LmMgYW5k
IG9ubHkgdXNlZCB0aGVyZQogLSBUaGUgRnJlZXNjYWxlIGRldmljZSBJRCBpcyBoYXJkY29kZWQg
YW5kIG9ubHkgdXNlZCBpbiBwY2lfZW5kcG9pbnRfdGVzdC5jCgpUaGUgaGVhZGVyIGluIHBjaV9p
ZHMuaCBoYXMgYSBjb21tZW50IHN1Z2dlc3Rpb24gZGVmaW5pdGlvbnMgYXJlIG9ubHkgYWRkZWQg
d2hlcmUgdXNlZAppbiBtdWx0aXBsZSBmaWxlcyAtIHlldCBJIGRvbid0IHRoaW5rIHRoaXMgaG9s
ZHMgdHJ1ZS4KCkJqb3JuIC0gZG8geW91IGhhdmUgYSBzdWdnZXN0aW9uPwoKVGhhbmtzLAoKQW5k
cmV3IE11cnJheQoKPiAKPiBUaGFua3MgCj4gWGlhb3dlaQo+IAo+ID4gCj4gPiBUaGFua3MsCj4g
PiAKPiA+IEFuZHJldyBNdXJyYXkKPiA+IAo+ID4gPiAgCXsgUENJX0RFVklDRV9EQVRBKFNZTk9Q
U1lTLCBFRERBLCBOVUxMKSB9LAo+ID4gPiAgCXsgUENJX0RFVklDRShQQ0lfVkVORE9SX0lEX1RJ
LCBQQ0lfREVWSUNFX0lEX1RJX0FNNjU0KSwKPiA+ID4gIAkgIC5kcml2ZXJfZGF0YSA9IChrZXJu
ZWxfdWxvbmdfdCkmYW02NTRfZGF0YQo+ID4gPiAtLQo+ID4gPiAyLjkuNQo+ID4gPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
