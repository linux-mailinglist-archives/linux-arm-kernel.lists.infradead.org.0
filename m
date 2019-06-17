Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957DB47E74
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 11:31:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPBZHYx9w/B8vYdBTkMSsKhHU2bwc1q4+ONcAtnNcR0=; b=Loqq10wOX16atU
	+/OjfOLQdFOvvtNkrTd+lOw/Hv4JW27rkoSdpEOgg1BRaV/BgS67hk5lf+3XZ2HO4WGtko2bzbM8j
	PFsKsk2O8J5l6P3nvNdD5glJwRF0BxhetSEVIBf5OK1apNjYem3AZrcWYRE2YamBW0WcHFQ0clVRS
	5hmF0l7KlNeraFZE7euLfEDnC3YV7tcbdAXXGM/KtzTr5VrOG/PjyUT3JuUVIuM6VYAv1QZ/X8Fx+
	6hRb61HHq2KsGtTN9kALhcROo4IabEyUiNc9CagBa8RIuFu8+AagkTpnt5guu/W8iZbeQZYyeWeDy
	T3w4a3c5tKJ7udc783ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcnyg-0005Ec-R2; Mon, 17 Jun 2019 09:31:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcnyP-0005Dd-89
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 09:30:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79858344;
 Mon, 17 Jun 2019 02:30:44 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7761A3F246;
 Mon, 17 Jun 2019 02:30:42 -0700 (PDT)
Date: Mon, 17 Jun 2019 10:30:40 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv5 18/20] PCI: mobiveil: Disable IB and OB windows set by
 bootloader
Message-ID: <20190617093040.GC18020@e121166-lin.cambridge.arm.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-19-Zhiqiang.Hou@nxp.com>
 <20190612162347.GF15747@redmoon>
 <AM0PR04MB67383C84D946045874B0F14A84E90@AM0PR04MB6738.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB67383C84D946045874B0F14A84E90@AM0PR04MB6738.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_023048_325731_FFB95DC4 
X-CRM114-Status: GOOD (  23.90  )
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
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBKdW4gMTUsIDIwMTkgYXQgMDU6MDM6MzNBTSArMDAwMCwgWi5xLiBIb3Ugd3JvdGU6
Cj4gSGkgTG9yZW56bywKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9t
OiBMb3JlbnpvIFBpZXJhbGlzaSBbbWFpbHRvOmxvcmVuem8ucGllcmFsaXNpQGFybS5jb21dCj4g
PiBTZW50OiAyMDE55bm0NuaciDEz5pelIDA6MjQKPiA+IFRvOiBaLnEuIEhvdSA8emhpcWlhbmcu
aG91QG54cC5jb20+OyBiaGVsZ2Fhc0Bnb29nbGUuY29tCj4gPiBDYzogbGludXgtcGNpQHZnZXIu
a2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOwo+ID4gZGV2
aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7Cj4g
PiByb2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOyBsLnN1YnJhaG1hbnlh
QG1vYml2ZWlsLmNvLmluOwo+ID4gc2hhd25ndW9Aa2VybmVsLm9yZzsgTGVvIExpIDxsZW95YW5n
LmxpQG54cC5jb20+Owo+ID4gY2F0YWxpbi5tYXJpbmFzQGFybS5jb207IHdpbGwuZGVhY29uQGFy
bS5jb207IE1pbmdrYWkgSHUKPiA+IDxtaW5na2FpLmh1QG54cC5jb20+OyBNLmguIExpYW4gPG1p
bmdodWFuLmxpYW5AbnhwLmNvbT47IFhpYW93ZWkgQmFvCj4gPiA8eGlhb3dlaS5iYW9AbnhwLmNv
bT4KPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0h2NSAxOC8yMF0gUENJOiBtb2JpdmVpbDogRGlzYWJs
ZSBJQiBhbmQgT0Igd2luZG93cyBzZXQKPiA+IGJ5IGJvb3Rsb2FkZXIKPiA+IAo+ID4gT24gRnJp
LCBBcHIgMTIsIDIwMTkgYXQgMDg6Mzc6MDBBTSArMDAwMCwgWi5xLiBIb3Ugd3JvdGU6Cj4gPiA+
IEZyb206IEhvdSBaaGlxaWFuZyA8WmhpcWlhbmcuSG91QG54cC5jb20+Cj4gPiA+Cj4gPiA+IERp
c2FibGUgYWxsIGluYm91bmQgYW5kIG91dGJvdW5kIHdpbmRvd3MgYmVmb3JlIHNldCB1cCB0aGUg
d2luZG93cyBpbgo+ID4gPiBrZXJuZWwsIGluIGNhc2UgdHJhbnNhY3Rpb25zIG1hdGNoIHRoZSB3
aW5kb3cgc2V0IGJ5IGJvb3Rsb2FkZXIuCj4gPiAKPiA+IFRoZXJlIG11c3QgYmUgbm8gUENJIHRy
YW5zYWN0aW9ucyBvbmdvaW5nIGF0IGJvb3Rsb2FkZXI8LT5PUyBoYW5kb3Zlci4KPiA+Cj4gCj4g
WWVzLCBleGFjdC4KPiAgCj4gPiBUaGUgYm9vdGxvYWRlciBuZWVkcyBmaXhpbmcgYW5kIHRoaXMg
cGF0Y2ggc2hvdWxkIGJlIGRyb3BwZWQsIHRoZSBob3N0IGJyaWRnZQo+ID4gZHJpdmVyIGFzc3Vt
ZXMgdGhlIGhvc3QgYnJpZGdlIHN0YXRlIGlzIGRpc2FibGVkLAo+IAo+IFRoZSBob3N0IGJyaWRn
ZSBkcml2ZXIgc2hvdWxkIG5vdCBhc3N1bWVzIHRoZSBob3N0IHN0YXRlIGlzIGRpc2FibGVkLAo+
IGFjdHVhbGx5IHUtYm9vdCBlbmFibGUvaW5pdGlhbGl6ZSB0aGUgaG9zdCBhbmQgd2l0aG91dCBk
aXNhYmxpbmcgaXQKPiB3aGVuIHRyYW5zZmVyIHRoZSBjb250cm9sIHRvIExpbnV4LgoKRml4IHRo
ZSBib290bG9hZGVyIGFuZCBkcm9wIHRoaXMgcGF0Y2gsIEkgZXhwbGFpbiB0byB5b3Ugd2h5LgoK
PiA+IGl0IHdpbGwgcHJvZ3JhbSB0aGUgYnJpZGdlCj4gPiBhcGVydHVyZXMgZnJvbSBzY3JhdGNo
IHdpdGggbm8gb25nb2luZyB0cmFuc2FjdGlvbnMsIGFueXRoaW5nIGRldmlhdGluZyBmcm9tCj4g
PiB0aGlzIGJlaGF2aW91ciBpcyBhIGJvb3Rsb2FkZXIgYnVnIGFuZCBhIHJlY2lwZSBmb3IgZGlz
YXN0ZXIuCj4gCj4gVGhlIHBvaW50IG9mIHRoaXMgcGF0Y2ggaXMgbm90IHRvIGZpeCB0aGUgb25n
b2luZyB0cmFuc2FjdGlvbiBpc3N1ZSwKPiBpdCBpcyB0byBhdm9pZCBhIHBvdGVudGlhbCBpc3N1
ZSB3aGljaCBpcyBjYXVzZWQgYnkgdGhlIG91dGJvdW5kCj4gd2luZG93IGVuYWJsZWQgYnkgYm9v
dGxvYWRlciBvdmVybGFwcGluZyB3aXRoIExpbnV4IGVuYWJsZWQuCgpTZWUgYWJvdmUuCgpMb3Jl
bnpvCgo+IFRoYW5rcywKPiBaaGlxaWFuZwo+ICAKPiA+IExvcmVuem8KPiA+IAo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBIb3UgWmhpcWlhbmcgPFpoaXFpYW5nLkhvdUBueHAuY29tPgo+ID4gPiBSZXZp
ZXdlZC1ieTogTWluZ2h1YW4gTGlhbiA8TWluZ2h1YW4uTGlhbkBueHAuY29tPgo+ID4gPiBSZXZp
ZXdlZC1ieTogU3VicmFobWFueWEgTGluZ2FwcGEgPGwuc3VicmFobWFueWFAbW9iaXZlaWwuY28u
aW4+Cj4gPiA+IC0tLQo+ID4gPiBWNToKPiA+ID4gIC0gTm8gZnVuY3Rpb25hbGl0eSBjaGFuZ2Uu
Cj4gPiA+Cj4gPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtbW9iaXZlaWwuYyB8IDI1
ICsrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNl
cnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L3BjaWUtbW9iaXZlaWwuYwo+ID4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1tb2Jp
dmVpbC5jCj4gPiA+IGluZGV4IDhkYzg3YzdhNjAwZS4uNDExZTk3NzlkYTEyIDEwMDY0NAo+ID4g
PiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtbW9iaXZlaWwuYwo+ID4gPiArKysg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtbW9iaXZlaWwuYwo+ID4gPiBAQCAtNTY1LDYg
KzU2NSwyNCBAQCBzdGF0aWMgaW50IG1vYml2ZWlsX2JyaW5ndXBfbGluayhzdHJ1Y3QKPiA+IG1v
Yml2ZWlsX3BjaWUgKnBjaWUpCj4gPiA+ICAJcmV0dXJuIC1FVElNRURPVVQ7Cj4gPiA+ICB9Cj4g
PiA+Cj4gPiA+ICtzdGF0aWMgdm9pZCBtb2JpdmVpbF9wY2llX2Rpc2FibGVfaWJfd2luKHN0cnVj
dCBtb2JpdmVpbF9wY2llICpwY2llLAo+ID4gPiAraW50IGlkeCkgewo+ID4gPiArCXUzMiB2YWw7
Cj4gPiA+ICsKPiA+ID4gKwl2YWwgPSBjc3JfcmVhZGwocGNpZSwgUEFCX1BFWF9BTUFQX0NUUkwo
aWR4KSk7Cj4gPiA+ICsJdmFsICY9IH4oMSA8PCBBTUFQX0NUUkxfRU5fU0hJRlQpOwo+ID4gPiAr
CWNzcl93cml0ZWwocGNpZSwgdmFsLCBQQUJfUEVYX0FNQVBfQ1RSTChpZHgpKTsgfQo+ID4gPiAr
Cj4gPiA+ICtzdGF0aWMgdm9pZCBtb2JpdmVpbF9wY2llX2Rpc2FibGVfb2Jfd2luKHN0cnVjdCBt
b2JpdmVpbF9wY2llICpwY2llLAo+ID4gPiAraW50IGlkeCkgewo+ID4gPiArCXUzMiB2YWw7Cj4g
PiA+ICsKPiA+ID4gKwl2YWwgPSBjc3JfcmVhZGwocGNpZSwgUEFCX0FYSV9BTUFQX0NUUkwoaWR4
KSk7Cj4gPiA+ICsJdmFsICY9IH4oMSA8PCBXSU5fRU5BQkxFX1NISUZUKTsKPiA+ID4gKwljc3Jf
d3JpdGVsKHBjaWUsIHZhbCwgUEFCX0FYSV9BTUFQX0NUUkwoaWR4KSk7IH0KPiA+ID4gKwo+ID4g
PiAgc3RhdGljIHZvaWQgbW9iaXZlaWxfcGNpZV9lbmFibGVfbXNpKHN0cnVjdCBtb2JpdmVpbF9w
Y2llICpwY2llKSAgewo+ID4gPiAgCXBoeXNfYWRkcl90IG1zZ19hZGRyID0gcGNpZS0+cGNpZV9y
ZWdfYmFzZTsgQEAgLTU4NSw2ICs2MDMsMTMgQEAKPiA+ID4gc3RhdGljIGludCBtb2JpdmVpbF9o
b3N0X2luaXQoc3RydWN0IG1vYml2ZWlsX3BjaWUgKnBjaWUpICB7Cj4gPiA+ICAJdTMyIHZhbHVl
LCBwYWJfY3RybCwgdHlwZTsKPiA+ID4gIAlzdHJ1Y3QgcmVzb3VyY2VfZW50cnkgKndpbjsKPiA+
ID4gKwlpbnQgaTsKPiA+ID4gKwo+ID4gPiArCS8qIERpc2FibGUgYWxsIGluYm91bmQvb3V0Ym91
bmQgd2luZG93cyAqLwo+ID4gPiArCWZvciAoaSA9IDA7IGkgPCBwY2llLT5hcGlvX3dpbnM7IGkr
KykKPiA+ID4gKwkJbW9iaXZlaWxfcGNpZV9kaXNhYmxlX29iX3dpbihwY2llLCBpKTsKPiA+ID4g
Kwlmb3IgKGkgPSAwOyBpIDwgcGNpZS0+cHBpb193aW5zOyBpKyspCj4gPiA+ICsJCW1vYml2ZWls
X3BjaWVfZGlzYWJsZV9pYl93aW4ocGNpZSwgaSk7Cj4gPiA+Cj4gPiA+ICAJLyogc2V0dXAgYnVz
IG51bWJlcnMgKi8KPiA+ID4gIAl2YWx1ZSA9IGNzcl9yZWFkbChwY2llLCBQQ0lfUFJJTUFSWV9C
VVMpOwo+ID4gPiAtLQo+ID4gPiAyLjE3LjEKPiA+ID4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
