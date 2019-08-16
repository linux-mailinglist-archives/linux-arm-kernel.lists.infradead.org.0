Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FA08FFE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 12:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUxe7zH6wN9sKnzt7frwUJ24iXeLOAYjhWRsP9zolg8=; b=tKB1GqmjlekEbI
	/7jy7WH4wIH4vVdkQSv6as8VzeN+aHmza4Ow2L/XHtRPRhKbvS3x2heTVuZmPE4tP60TJIXlEdmJg
	V+t11RUW2h68/2zA9jnT4GG/ZrLUHyqObYhX9ik5v1MHCJYmNSIuRkB51GlXK+d3hFYa6lEM9Cbkc
	UseEcnoqruQyclUF4Mpkf02p0ieqDPvdk+MVPJRJUYODuxmeePntkST3+MMwLIIkF4tOPhKCKXLMO
	/fXGLcih7ziX97GdlH4ZkWOG3GQtkg53LKFZb6yNGJXfVNUHWlzXK1YqDqEX6U5BJ+wRtvdcFy4D4
	MsZSmhmsuumT1kU8cI2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyZLc-0002QX-5D; Fri, 16 Aug 2019 10:20:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyZLQ-0002Pz-QX
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 10:20:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A615828;
 Fri, 16 Aug 2019 03:20:27 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 00EA33F706;
 Fri, 16 Aug 2019 03:20:27 -0700 (PDT)
Date: Fri, 16 Aug 2019 11:20:25 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH 02/10] PCI: designware-ep: Add the doorbell mode of MSI-X
 in EP mode
Message-ID: <20190816102025.GB14111@e119886-lin.cambridge.arm.com>
References: <20190815083716.4715-1-xiaowei.bao@nxp.com>
 <20190815083716.4715-2-xiaowei.bao@nxp.com>
 <20190815115340.GG43882@e119886-lin.cambridge.arm.com>
 <AM5PR04MB329973845D6396624AFDE547F5AF0@AM5PR04MB3299.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR04MB329973845D6396624AFDE547F5AF0@AM5PR04MB3299.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_032028_951997_EEA105B5 
X-CRM114-Status: GOOD (  26.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>, "kishon@ti.com" <kishon@ti.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgMTYsIDIwMTkgYXQgMDI6NTg6MzFBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3Jv
dGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQW5kcmV3
IE11cnJheSA8YW5kcmV3Lm11cnJheUBhcm0uY29tPgo+ID4gU2VudDogMjAxOeW5tDjmnIgxNeaX
pSAxOTo1NAo+ID4gVG86IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPgo+ID4gQ2M6
IGppbmdvb2hhbjFAZ21haWwuY29tOyBndXN0YXZvLnBpbWVudGVsQHN5bm9wc3lzLmNvbTsKPiA+
IGJoZWxnYWFzQGdvb2dsZS5jb207IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFy
bS5jb207Cj4gPiBzaGF3bmd1b0BrZXJuZWwub3JnOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNv
bT47IGtpc2hvbkB0aS5jb207Cj4gPiBsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tOyBhcm5kQGFy
bmRiLmRlOyBncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZzsKPiA+IE0uaC4gTGlhbiA8bWluZ2h1
YW4ubGlhbkBueHAuY29tPjsgTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsKPiA+IFJv
eSBaYW5nIDxyb3kuemFuZ0BueHAuY29tPjsgbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsKPiA+
IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3Jn
Owo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eHBwYy1kZXZA
bGlzdHMub3psYWJzLm9yZwo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCAwMi8xMF0gUENJOiBkZXNp
Z253YXJlLWVwOiBBZGQgdGhlIGRvb3JiZWxsIG1vZGUgb2YKPiA+IE1TSS1YIGluIEVQIG1vZGUK
PiA+IAo+ID4gT24gVGh1LCBBdWcgMTUsIDIwMTkgYXQgMDQ6Mzc6MDhQTSArMDgwMCwgWGlhb3dl
aSBCYW8gd3JvdGU6Cj4gPiA+IEFkZCB0aGUgZG9vcmJlbGwgbW9kZSBvZiBNU0ktWCBpbiBFUCBt
b2RlLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9A
bnhwLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LWRlc2lnbndhcmUtZXAuYyB8IDE0ICsrKysrKysrKysrKysrCj4gPiA+ICBkcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaCAgICB8IDE0ICsrKysrKysrKysrKysrCj4g
PiA+ICAyIGZpbGVzIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKykKPiA+ID4KPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1lcC5jCj4g
PiA+IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWVwLmMKPiA+
ID4gaW5kZXggNzVlMjk1NS4uZTNhN2NkZiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWVwLmMKPiA+ID4gKysrIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWVwLmMKPiA+ID4gQEAgLTQ1NCw2ICs0
NTQsMjAgQEAgaW50IGR3X3BjaWVfZXBfcmFpc2VfbXNpX2lycShzdHJ1Y3QgZHdfcGNpZV9lcAo+
ID4gKmVwLCB1OCBmdW5jX25vLAo+ID4gPiAgCXJldHVybiAwOwo+ID4gPiAgfQo+ID4gPgo+ID4g
PiAraW50IGR3X3BjaWVfZXBfcmFpc2VfbXNpeF9pcnFfZG9vcmJlbGwoc3RydWN0IGR3X3BjaWVf
ZXAgKmVwLCB1OAo+ID4gZnVuY19ubywKPiA+ID4gKwkJCQkgICAgICAgdTE2IGludGVycnVwdF9u
dW0pCj4gPiA+ICt7Cj4gPiA+ICsJc3RydWN0IGR3X3BjaWUgKnBjaSA9IHRvX2R3X3BjaWVfZnJv
bV9lcChlcCk7Cj4gPiA+ICsJdTMyIG1zZ19kYXRhOwo+ID4gPiArCj4gPiA+ICsJbXNnX2RhdGEg
PSAoZnVuY19ubyA8PCBQQ0lFX01TSVhfRE9PUkJFTExfUEZfU0hJRlQpIHwKPiA+ID4gKwkJICAg
KGludGVycnVwdF9udW0gLSAxKTsKPiA+ID4gKwo+ID4gPiArCWR3X3BjaWVfd3JpdGVsX2RiaShw
Y2ksIFBDSUVfTVNJWF9ET09SQkVMTCwgbXNnX2RhdGEpOwo+ID4gPiArCj4gPiA+ICsJcmV0dXJu
IDA7Cj4gPiA+ICt9Cj4gPiA+ICsKPiA+ID4gIGludCBkd19wY2llX2VwX3JhaXNlX21zaXhfaXJx
KHN0cnVjdCBkd19wY2llX2VwICplcCwgdTggZnVuY19ubywKPiA+ID4gIAkJCSAgICAgIHUxNiBp
bnRlcnJ1cHRfbnVtKQo+ID4gCj4gPiBIYXZlIEkgdW5kZXJzdG9vZCBjb3JyZWN0bHkgdGhhdCB0
aGUgaGFyZHdhcmUgcHJvdmlkZXMgYW4gYWx0ZXJuYXRpdmUKPiA+IG1lY2hhbmlzbSB0aGF0IGFs
bG93cyBmb3IgcmFpc2luZyBNU0ktWCBpbnRlcnJ1cHRzIHdpdGhvdXQgdGhlIGJvdGhlciBvZgo+
ID4gcmVhZGluZyB0aGUgY2FwYWJpbGl0aWVzIHJlZ2lzdGVycz8KPiBZZXMsIHRoZSBoYXJkd2Fy
ZSBwcm92aWRlIHR3byB3YXkgdG8gTVNJLVgsIHBsZWFzZSBjaGVjayB0aGUgcGFnZSA0OTIgb2Yg
Cj4gRFdDX3BjaWVfZG1fcmVnaXN0ZXJzXzQuMzAgTWVudS4KPiBNU0lYX0RPT1JCRUxMX09GRiBv
biBwYWdlIDQ5MiAweDk0OCBEZXNjcmlwdGlvbjogTVNJLVggRG9vcmJlbGwgUmVnaXN0ZXIuLi4u
PgoKVGhhbmtzIGZvciB0aGUgcmVmZXJlbmNlLgoKPiA+IAo+ID4gSWYgc28gaXMgdGhlcmUgYW55
IGdvb2QgcmVhc29uIHRvIGtlZXAgZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2lycT8gKEFuZCB0aHVz
Cj4gPiB1c2UgaXQgaW4gZHdfcGxhdF9wY2llX2VwX3JhaXNlX2lycSBhbHNvKT8KPiBJIGFtIG5v
dCBzdXJlLCBidXQgSSB0aGluayB0aGUgZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2lycSBmdW5jdGlv
biBpcyBub3QgY29ycmVjdCwgCj4gYmVjYXVzZSBJIHRoaW5rIHdlIGNhbid0IGdldCB0aGUgTVNJ
WCB0YWJsZSBmcm9tIHRoZSBhZGRyZXNzIGVwLT5waHlzX2Jhc2UgKyB0YmxfYWRkciwgCj4gYnV0
IEkgYWxzbyBkb24ndCBrbm93IHdoZXJlIEkgY2FuIGdldCB0aGUgY29ycmVjdCBNU0lYIHRhYmxl
LgoKV2VsbCBpdCBsb29rcyBsaWtlIHRoaXMgZnVuY3Rpb24gaXMgdXNlZCBieSBzbnBzLGR3LXBj
aWUtZXAgYW5kIHNucHMsZHctcGNpZSwKcGVyaGFwcyB0aGUgZG9vcmJlbGwgbW9kZSBpc24ndCBh
dmFpbGFibGUgb24gdGhhdCBoYXJkd2FyZS4KCj4gPiAKPiA+IAo+ID4gPiAgewo+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLmgKPiA+
ID4gYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaAo+ID4gPiBp
bmRleCAyYjI5MWU4Li5jZDkwM2U5IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaAo+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaAo+ID4gPiBAQCAtODgsNiArODgsMTEgQEAKPiA+
ID4gICNkZWZpbmUgUENJRV9NSVNDX0NPTlRST0xfMV9PRkYJCTB4OEJDCj4gPiA+ICAjZGVmaW5l
IFBDSUVfREJJX1JPX1dSX0VOCQlCSVQoMCkKPiA+ID4KPiA+ID4gKyNkZWZpbmUgUENJRV9NU0lY
X0RPT1JCRUxMCQkweDk0OAo+ID4gPiArI2RlZmluZSBQQ0lFX01TSVhfRE9PUkJFTExfUEZfU0hJ
RlQJMjQKPiA+ID4gKyNkZWZpbmUgUENJRV9NU0lYX0RPT1JCRUxMX1ZGX1NISUZUCTE2Cj4gPiA+
ICsjZGVmaW5lIFBDSUVfTVNJWF9ET09SQkVMTF9WRl9BQ1RJVkUJQklUKDE1KQo+ID4gCj4gPiBU
aGUgX1ZGIGRlZmluZXMgYXJlIG5vdCB1c2VkLCBJJ2Qgc3VnZ2VzdCByZW1vdmluZyB0aGVtLgo+
IEluIGZhY3QsIEkgd2lsbCBhZGQgdGhlIFNSSU9WIHN1cHBvcnQgaW4gdGhpcyBmaWxlLCB0aGUg
U1JJT1YgZmVhdHVyZSBoYXZlIHZlcmlmaWVkIAo+IEluIG15IGJvYXJkLCBidXQgSSBuZWVkIHdh
aXQgdGhlIEVQIGZyYW1ld29yayBTUklPViBwYXRjaCBtZXJnZSwgCj4gc28gSSBkZWZpbmVkIHRo
ZXNlIHR3byBtYWNyb3MuCgpJJ2Qgc3VnZ2VzdCBhZGRpbmcgdGhlIFZGIG1hY3JvcyBhbG9uZyB3
aXRoIHRoZSBTUklPViBmZWF0dXJlLgoKVGhhbmtzLAoKQW5kcmV3IE11cnJheQoKPiA+IAo+ID4g
VGhhbmtzLAo+ID4gCj4gPiBBbmRyZXcgTXVycmF5Cj4gPiAKPiA+ID4gKwo+ID4gPiAgLyoKPiA+
ID4gICAqIGlBVFUgVW5yb2xsLXNwZWNpZmljIHJlZ2lzdGVyIGRlZmluaXRpb25zCj4gPiA+ICAg
KiBGcm9tIDQuODAgY29yZSB2ZXJzaW9uIHRoZSBhZGRyZXNzIHRyYW5zbGF0aW9uIHdpbGwgYmUg
bWFkZSBieQo+ID4gPiB1bnJvbGwgQEAgLTM5OSw2ICs0MDQsOCBAQCBpbnQgZHdfcGNpZV9lcF9y
YWlzZV9tc2lfaXJxKHN0cnVjdAo+ID4gZHdfcGNpZV9lcCAqZXAsIHU4IGZ1bmNfbm8sCj4gPiA+
ICAJCQkgICAgIHU4IGludGVycnVwdF9udW0pOwo+ID4gPiAgaW50IGR3X3BjaWVfZXBfcmFpc2Vf
bXNpeF9pcnEoc3RydWN0IGR3X3BjaWVfZXAgKmVwLCB1OCBmdW5jX25vLAo+ID4gPiAgCQkJICAg
ICB1MTYgaW50ZXJydXB0X251bSk7Cj4gPiA+ICtpbnQgZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2ly
cV9kb29yYmVsbChzdHJ1Y3QgZHdfcGNpZV9lcCAqZXAsIHU4Cj4gPiBmdW5jX25vLAo+ID4gPiAr
CQkJCSAgICAgICB1MTYgaW50ZXJydXB0X251bSk7Cj4gPiA+ICB2b2lkIGR3X3BjaWVfZXBfcmVz
ZXRfYmFyKHN0cnVjdCBkd19wY2llICpwY2ksIGVudW0gcGNpX2Jhcm5vIGJhcik7Cj4gPiA+ICNl
bHNlICBzdGF0aWMgaW5saW5lIHZvaWQgZHdfcGNpZV9lcF9saW5rdXAoc3RydWN0IGR3X3BjaWVf
ZXAgKmVwKSBAQAo+ID4gPiAtNDMxLDYgKzQzOCwxMyBAQCBzdGF0aWMgaW5saW5lIGludCBkd19w
Y2llX2VwX3JhaXNlX21zaXhfaXJxKHN0cnVjdAo+ID4gZHdfcGNpZV9lcCAqZXAsIHU4IGZ1bmNf
bm8sCj4gPiA+ICAJcmV0dXJuIDA7Cj4gPiA+ICB9Cj4gPiA+Cj4gPiA+ICtzdGF0aWMgaW5saW5l
IGludCBkd19wY2llX2VwX3JhaXNlX21zaXhfaXJxX2Rvb3JiZWxsKHN0cnVjdCBkd19wY2llX2Vw
Cj4gPiAqZXAsCj4gPiA+ICsJCQkJCQkgICAgIHU4IGZ1bmNfbm8sCj4gPiA+ICsJCQkJCQkgICAg
IHUxNiBpbnRlcnJ1cHRfbnVtKQo+ID4gPiArewo+ID4gPiArCXJldHVybiAwOwo+ID4gPiArfQo+
ID4gPiArCj4gPiA+ICBzdGF0aWMgaW5saW5lIHZvaWQgZHdfcGNpZV9lcF9yZXNldF9iYXIoc3Ry
dWN0IGR3X3BjaWUgKnBjaSwgZW51bQo+ID4gPiBwY2lfYmFybm8gYmFyKSAgeyAgfQo+ID4gPiAt
LQo+ID4gPiAyLjkuNQo+ID4gPgo+ID4gPgo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dAo+ID4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gaHR0cHM6
Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHAlM0ElMkYl
MkZsaXN0cwo+ID4gPiAuaW5mcmFkZWFkLm9yZyUyRm1haWxtYW4lMkZsaXN0aW5mbyUyRmxpbnV4
LWFybS1rZXJuZWwmYW1wO2RhdGE9MDIlCj4gPiA3QzAKPiA+ID4KPiA+IDElN0N4aWFvd2VpLmJh
byU0MG54cC5jb20lN0M4NDg5NDkzMDAzYmI0OGEwMTM5ZDA4ZDcyMTc3Mzk3MiUKPiA+IDdDNjg2
ZWExZAo+ID4gPgo+ID4gM2JjMmI0YzZmYTkyY2Q5OWM1YzMwMTYzNSU3QzAlN0MwJTdDNjM3MDE0
NjY4MzY5NDk5Mjk4JmFtcDtzZAo+ID4gYXRhPWR5clhCCj4gPiA+Cj4gPiBhdmxqSkJGVVNOWFc3
SyUyRlJvWHZ3ZldURSUyRm9VMktNZDFiWmtKb3clM0QmYW1wO3Jlc2VydmVkPTAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
