Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74ACE47E87
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 11:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZf7olVGXDG1ktZ34E7OSkATG73khtdgs0kxNNZUm+E=; b=mQ2raUG6zY9FjO
	3PVkhR0tGNMDEDS5oKSe2PYmOTlv8y4rgfGot8k3ZD/E4Mdp84aKE35S++ZFnNRpxFTKw+3GOo+Jy
	agspliuvTOrKsXx1fegeocZPlsqu2ha6dng/KUNdLDAiAEEWsThXDsvz/qwIWa2G2HaoNw4ldP5YD
	H1Bnx0q/ovC2yo44BaO2ncfFts4iGESYRzekRx4FiF06PZKIepg2aFS6AzmLyGvv2zVAB7a+BJJKA
	bLyGq3u2SvR/4enkWq3x6WZHj/uQrN2kLHeQaBgukZCDvmc1WtFhhBWscA3/FTMtlvXivVPdfbv2J
	h+J0ysxgZ6CCTMjaOLjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hco1V-0006FG-Ok; Mon, 17 Jun 2019 09:33:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hco1G-0006Eq-Jf
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 09:33:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A35D8344;
 Mon, 17 Jun 2019 02:33:41 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9CA903F246;
 Mon, 17 Jun 2019 02:33:39 -0700 (PDT)
Date: Mon, 17 Jun 2019 10:33:37 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv5 04/20] PCI: mobiveil: Remove the flag
 MSI_FLAG_MULTI_PCI_MSI
Message-ID: <20190617093337.GD18020@e121166-lin.cambridge.arm.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-5-Zhiqiang.Hou@nxp.com>
 <20190611165935.GA22836@redmoon>
 <AM0PR04MB67383023B81AEB33DAF9C35584EC0@AM0PR04MB6738.eurprd04.prod.outlook.com>
 <20190612130813.GA15747@redmoon>
 <AM0PR04MB6738B93C7F1B5BE433753CF584E90@AM0PR04MB6738.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB6738B93C7F1B5BE433753CF584E90@AM0PR04MB6738.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_023342_738462_A181FDCE 
X-CRM114-Status: GOOD (  26.20  )
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

T24gU2F0LCBKdW4gMTUsIDIwMTkgYXQgMDE6MzA6MzlBTSArMDAwMCwgWi5xLiBIb3Ugd3JvdGU6
Cj4gSGkgTG9yZW56bywKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9t
OiBMb3JlbnpvIFBpZXJhbGlzaSBbbWFpbHRvOmxvcmVuem8ucGllcmFsaXNpQGFybS5jb21dCj4g
PiBTZW50OiAyMDE55bm0NuaciDEy5pelIDIxOjA4Cj4gPiBUbzogWi5xLiBIb3UgPHpoaXFpYW5n
LmhvdUBueHAuY29tPgo+ID4gQ2M6IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiA+IGRldmljZXRyZWVAdmdlci5rZXJuZWwu
b3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOwo+ID4gYmhlbGdhYXNAZ29vZ2xlLmNv
bTsgcm9iaCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsKPiA+IGwuc3VicmFo
bWFueWFAbW9iaXZlaWwuY28uaW47IHNoYXduZ3VvQGtlcm5lbC5vcmc7IExlbyBMaQo+ID4gPGxl
b3lhbmcubGlAbnhwLmNvbT47IGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tOyB3aWxsLmRlYWNvbkBh
cm0uY29tOwo+ID4gTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsgTS5oLiBMaWFuIDxt
aW5naHVhbi5saWFuQG54cC5jb20+Owo+ID4gWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5j
b20+Cj4gPiBTdWJqZWN0OiBSZTogW1BBVENIdjUgMDQvMjBdIFBDSTogbW9iaXZlaWw6IFJlbW92
ZSB0aGUgZmxhZwo+ID4gTVNJX0ZMQUdfTVVMVElfUENJX01TSQo+ID4gCj4gPiBPbiBXZWQsIEp1
biAxMiwgMjAxOSBhdCAxMTozNDo1MUFNICswMDAwLCBaLnEuIEhvdSB3cm90ZToKPiA+ID4gSGkg
TG9yZW56bywKPiA+ID4KPiA+ID4gVGhhbmtzIGEgbG90IGZvciB5b3VyIGNvbW1lbnRzIQo+ID4g
Pgo+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiA+ID4gRnJvbTogTG9yZW56
byBQaWVyYWxpc2kgPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+Cj4gPiA+ID4gU2VudDogMjAx
OeW5tDbmnIgxMuaXpSAxOjAwCj4gPiA+ID4gVG86IFoucS4gSG91IDx6aGlxaWFuZy5ob3VAbnhw
LmNvbT4KPiA+ID4gPiBDYzogbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOwo+ID4gPiA+IGRldmljZXRyZWVAdmdlci5rZXJuZWwu
b3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOwo+ID4gPiA+IGJoZWxnYWFzQGdvb2ds
ZS5jb207IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207Cj4gPiA+ID4g
bC5zdWJyYWhtYW55YUBtb2JpdmVpbC5jby5pbjsgc2hhd25ndW9Aa2VybmVsLm9yZzsgTGVvIExp
Cj4gPiA+ID4gPGxlb3lhbmcubGlAbnhwLmNvbT47IGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tOwo+
ID4gd2lsbC5kZWFjb25AYXJtLmNvbTsKPiA+ID4gPiBNaW5na2FpIEh1IDxtaW5na2FpLmh1QG54
cC5jb20+OyBNLmguIExpYW4KPiA+IDxtaW5naHVhbi5saWFuQG54cC5jb20+Owo+ID4gPiA+IFhp
YW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPgo+ID4gPiA+IFN1YmplY3Q6IFJlOiBbUEFU
Q0h2NSAwNC8yMF0gUENJOiBtb2JpdmVpbDogUmVtb3ZlIHRoZSBmbGFnCj4gPiA+ID4gTVNJX0ZM
QUdfTVVMVElfUENJX01TSQo+ID4gPiA+Cj4gPiA+ID4gT24gRnJpLCBBcHIgMTIsIDIwMTkgYXQg
MDg6MzU6MzZBTSArMDAwMCwgWi5xLiBIb3Ugd3JvdGU6Cj4gPiA+ID4gPiBGcm9tOiBIb3UgWmhp
cWlhbmcgPFpoaXFpYW5nLkhvdUBueHAuY29tPgo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoZSBjdXJy
ZW50IGNvZGUgZG9lcyBub3Qgc3VwcG9ydCBtdWx0aXBsZSBNU0lzLCBzbyByZW1vdmUgdGhlCj4g
PiA+ID4gPiBjb3JyZXNwb25kaW5nIGZsYWcgZnJvbSB0aGUgbXNpX2RvbWFpbl9pbmZvIHN0cnVj
dHVyZS4KPiA+ID4gPgo+ID4gPiA+IFBsZWFzZSBleHBsYWluIG1lIHdoYXQncyB0aGUgcHJvYmxl
bSBiZWZvcmUgcmVtb3ZpbmcgbXVsdGkgTVNJIHN1cHBvcnQuCj4gPiA+Cj4gPiA+IE5YUCBMWDIg
UENJZSB1c2UgdGhlIEdJQy1JVFMgaW5zdGVhZCBvZiBNb2JpdmVpbCBJUCBpbnRlcm5hbCBNU0kK
PiA+ID4gY29udHJvbGxlciwgc28sIEkgZGlkbid0IGVuY291bnRlciBwcm9ibGVtLgo+ID4gCj4g
PiBXZWxsLCB5b3Ugc2VudCBhIHBhdGNoIHRvIGZpeCBhbiBpc3N1ZSwgZXhwbGFpbiBtZSB0aGUg
aXNzdWUgeW91IGFyZSBmaXhpbmcgdGhlbiwKPiA+IGFrYSB3aGF0IGhhdmUgeW91IHNlbnQgdGhp
cyBwYXRjaCBmb3IgPwo+IAo+IEkgZGlkIG5vdCBmYWNlIGlzc3VlLCBhcyBJIGhhdmUgZXhwbGFp
bmVkIE5YUCBkb2VzIG5vdCB1c2UgdGhlCj4gTW9iaXZlaWwgSVAncyBNU0kgY29udHJvbGxlci4g
IEJ1dCBvYnZpb3VzbHkgdGhlIE1TSSBhbGxvY2F0ZSBmdW5jdGlvbgo+IGRvZXMgbm90IHN1cHBv
cnQgbXVsdGlwbGUgTVNJLCBzbyBJIHN1Ym1pdHRlZCB0aGlzIHBhdGNoLgoKVGhlcmUgaXMgbm90
aGluZyBvYnZpb3VzLiBXcml0ZSB3aGF0IHlvdSBhcmUgZml4aW5nIGluIHRoZSBjb21taXQgbG9n
CmFuZCBJIHdpbGwgYXBwbHkgdGhlIHBhdGNoLCBJIHdvbid0IHdyaXRlIHRoZSBjb21taXQgbG9n
IGZvciB5b3UuIEFueW9uZQpzaG91bGQgYmUgYWJsZSB0byB1bmRlcnN0YW5kIHdoeSBhIHBhdGNo
IHdhcyBuZWVkZWQgYnkgcmVhZGluZyB0aGUKY29tbWl0IGxvZywgaXQgaXMgYXMgaW1wb3J0YW50
IGFzIHdyaXRpbmcgdGhlIGNvZGUgaXRzZWxmLgoKVGhhbmtzLApMb3JlbnpvCgo+IFRoYW5rcywK
PiBaaGlxaWFuZwo+IAo+ID4gCj4gPiBMb3JlbnpvCj4gPiAKPiA+ID4gU3ViYnUsIGRpZCB5b3Ug
dGVzdCB3aXRoIEVuZHBvaW50IHN1cHBvcnRpbmcgbXVsdGkgTVNJPwo+ID4gPgo+ID4gPiBUaGFu
a3MsCj4gPiA+IFpoaXFpYW5nCj4gPiA+Cj4gPiA+ID4KPiA+ID4gPiBUaGFua3MsCj4gPiA+ID4g
TG9yZW56bwo+ID4gPiA+Cj4gPiA+ID4gPiBGaXhlczogMWU5MTNlNTgzMzVmICgiUENJOiBtb2Jp
dmVpbDogQWRkIE1TSSBzdXBwb3J0IikKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEhvdSBaaGlx
aWFuZyA8WmhpcWlhbmcuSG91QG54cC5jb20+Cj4gPiA+ID4gPiBSZXZpZXdlZC1ieTogTWluZ2h1
YW4gTGlhbiA8TWluZ2h1YW4uTGlhbkBueHAuY29tPgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiBW
NToKPiA+ID4gPiA+ICAtIENvcnJlY3RlZCB0aGUgc3ViamVjdC4KPiA+ID4gPiA+Cj4gPiA+ID4g
PiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1vYml2ZWlsLmMgfCAyICstCj4gPiA+ID4g
PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+ID4g
Pgo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1tb2Jp
dmVpbC5jCj4gPiA+ID4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5j
Cj4gPiA+ID4gPiBpbmRleCA1NjMyMTBlNzMxZDMuLmEwZGQzMzdjNjIxNCAxMDA2NDQKPiA+ID4g
PiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5jCj4gPiA+ID4g
PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtbW9iaXZlaWwuYwo+ID4gPiA+ID4g
QEAgLTcwMyw3ICs3MDMsNyBAQCBzdGF0aWMgc3RydWN0IGlycV9jaGlwIG1vYml2ZWlsX21zaV9p
cnFfY2hpcCA9Cj4gPiA+ID4gPiB7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gIHN0YXRpYyBzdHJ1Y3Qg
bXNpX2RvbWFpbl9pbmZvIG1vYml2ZWlsX21zaV9kb21haW5faW5mbyA9IHsKPiA+ID4gPiA+ICAJ
LmZsYWdzCT0gKE1TSV9GTEFHX1VTRV9ERUZfRE9NX09QUyB8Cj4gPiA+ID4gTVNJX0ZMQUdfVVNF
X0RFRl9DSElQX09QUyB8Cj4gPiA+ID4gPiAtCQkgICBNU0lfRkxBR19NVUxUSV9QQ0lfTVNJIHwg
TVNJX0ZMQUdfUENJX01TSVgpLAo+ID4gPiA+ID4gKwkJICAgTVNJX0ZMQUdfUENJX01TSVgpLAo+
ID4gPiA+ID4gIAkuY2hpcAk9ICZtb2JpdmVpbF9tc2lfaXJxX2NoaXAsCj4gPiA+ID4gPiAgfTsK
PiA+ID4gPiA+Cj4gPiA+ID4gPiAtLQo+ID4gPiA+ID4gMi4xNy4xCj4gPiA+ID4gPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
