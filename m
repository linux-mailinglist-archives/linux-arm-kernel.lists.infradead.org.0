Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DA58D065
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gjDIt4rSwwigk1J/mWP4SMkhvKKsJnNQcNxRAoF5I8=; b=mru5oRULvqSoKU
	2I55TAF00P8WxVR7+Y1QuPIgcs7dJVORKeMPTChP9n/c4j2W+oMiL7gCUxNmpGVmrsLmfg14kXaPh
	tJq7tz+260AYvol9bxw2SQ9rZ+lFr7V7mIvuaYHR6Auk/VBXM2TuCmQ6YsYayyxTUn2LTDofTPXj3
	Xa58Okzma5/bchG+gRwOKxypIBdWeo9xACkk+GNiIUn03qv8rKv336WynUeFeYnLdcOJkpVDFueKH
	iWtOOc4oaduYwk23RFq0WcIkxOQyLm6jAme9QYd7vcQUNVeKqHZB+7E+5LCX6H8nrLZc6HfoEeVDB
	jfvjsXFjHEulW9e/sm8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqFQ-0006BR-JI; Wed, 14 Aug 2019 10:11:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqFH-0006Ak-Da
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:11:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A79F3344;
 Wed, 14 Aug 2019 03:11:06 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6EC253F706;
 Wed, 14 Aug 2019 03:11:05 -0700 (PDT)
Date: Wed, 14 Aug 2019 11:11:00 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCHv6 1/2] PCI: layerscape: Add the bar_fixed_64bit property
 in EP driver.
Message-ID: <20190814101100.GA29414@e121166-lin.cambridge.arm.com>
References: <20190814020330.12133-1-xiaowei.bao@nxp.com>
 <20190814092952.GA26840@e121166-lin.cambridge.arm.com>
 <AM5PR04MB32994A55A2951DD071C19F66F5AD0@AM5PR04MB3299.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR04MB32994A55A2951DD071C19F66F5AD0@AM5PR04MB3299.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_031107_547475_07A041BD 
X-CRM114-Status: GOOD (  23.11  )
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
Cc: Roy Zang <roy.zang@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "M.h. Lian" <minghuan.lian@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMDk6NDg6MDBBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3Jv
dGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogTG9yZW56
byBQaWVyYWxpc2kgPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+Cj4gPiBTZW50OiAyMDE55bm0
OOaciDE05pelIDE3OjMwCj4gPiBUbzogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+
Cj4gPiBDYzogTS5oLiBMaWFuIDxtaW5naHVhbi5saWFuQG54cC5jb20+OyBNaW5na2FpIEh1Cj4g
PiA8bWluZ2thaS5odUBueHAuY29tPjsgUm95IFphbmcgPHJveS56YW5nQG54cC5jb20+Owo+ID4g
YmhlbGdhYXNAZ29vZ2xlLmNvbTsgbGludXhwcGMtZGV2QGxpc3RzLm96bGFicy5vcmc7Cj4gPiBs
aW51eC1wY2lAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmc7Cj4gPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCj4gPiBTdWJqZWN0OiBSZTog
W1BBVENIdjYgMS8yXSBQQ0k6IGxheWVyc2NhcGU6IEFkZCB0aGUgYmFyX2ZpeGVkXzY0Yml0IHBy
b3BlcnR5Cj4gPiBpbiBFUCBkcml2ZXIuCgpEbyBub3QgcXVvdGUgdGhlIGVtYWlsIGhlYWRlciBp
biB5b3VyIHJlcGxpZXMuCgo+ID4gSSBhc2tlZCB5b3UgdG8gcmVtb3ZlIHRoZSBwZXJpb2QgYXQg
dGhlIGVuZCBvZiB0aGUgcGF0Y2ggJFNVQkpFQ1QgYW5kIHlvdQo+ID4gZGlkIG5vdCwgZWl0aGVy
IHlvdSBkbyBub3QgcmVhZCB3aGF0IEkgd3JpdGUgb3IgZXhwbGFpbiBtZSB3aGF0J3MgZ29pbmcg
b24uCj4gU29ycnksIEkgZGlkbid0IHVuZGVyc3RhbmQgdGhlIG1lYW5pbmcgb2YgcGVyaW9kIGNv
cnJlY3RseSBiZWZvcmUuIAo+ID4gCj4gPiBPbiBXZWQsIEF1ZyAxNCwgMjAxOSBhdCAxMDowMzoy
OUFNICswODAwLCBYaWFvd2VpIEJhbyB3cm90ZToKPiA+ID4gVGhlIFBDSWUgY29udHJvbGxlciBv
ZiBsYXllcnNjYXBlIGp1c3QgaGF2ZSA0IEJBUnMsIEJBUjAgYW5kIEJBUjEgaXMKPiA+ID4gMzJi
aXQsIEJBUjIgYW5kIEJBUjQgaXMgNjRiaXQsIHRoaXMgaXMgZGV0ZXJtaW5lZCBieSBoYXJkd2Fy
ZSwgc28gc2V0Cj4gPiA+IHRoZSBiYXJfZml4ZWRfNjRiaXQgd2l0aCAweDE0Lgo+ID4gPgo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4KPiA+IAo+
ID4gS2lzaG9uIEFDSydlZCB0aGlzIHBhdGNoIGFuZCB5b3UgaGF2ZSBub3QgY2FycmllZCBoaXMg
dGFnLgo+ID4gCj4gPiBJIHdpbGwgbWFrZSB0aGVzZSBjaGFuZ2VzIGJ1dCB0aGF0J3MgdGhlIGxh
c3QgdGltZSBJIGRvIHRoYXQgZm9yIHlvdS4KPiBUaGFua3MgYSBsb3QsIHlvdXIgbWVhbnMgaXMg
dGhhdCBJIGRvbid0IG5lZWQgdG8gc2VuZCB0aGUgdjcgcGF0Y2ggYW5kIHlvdSBoZWxwIG1lIHRv
Cj4gQ29ycmVjdCB0aGlzIHBhdGNoLCB5ZXM/IFRoYW5rcyBhIGxvdCBmb3IgeW91ciBoZWxwIGFi
b3V0IHRoZSBydWxlcyBvZiB0aGUgdXBzdHJlYW0uIEkgd2lsbAo+IENvcnJlY3QgdGhpcyBlcnJv
ciBuZXh0IHRpbWUuIF4uXiAKCkkgZml4ZWQgdGhhdCB1cCBhbmQgcHVzaGVkIG91dCwgcGNpL2xh
eWVyc2NhcGUsIGZvciB2NS40LgoKVGhhbmtzLApMb3JlbnpvCgo+ID4gTG9yZW56bwo+ID4gCj4g
PiA+IC0tLQo+ID4gPiB2MjoKPiA+ID4gIC0gUmVwbGFjZSB2YWx1ZSAweDE0IHdpdGggYSBtYWNy
by4KPiA+ID4gdjM6Cj4gPiA+ICAtIE5vIGNoYW5nZS4KPiA+ID4gdjQ6Cj4gPiA+ICAtIHNlbmQg
dGhlIHBhdGNoIGFnYWluIHdpdGggJy0tdG8nLgo+ID4gPiB2NToKPiA+ID4gIC0gZml4IHRoZSBj
b21taXQgbWVzc2FnZS4KPiA+ID4gdjY6Cj4gPiA+ICAtIHJlbW92ZSB0aGUgW0VYVF0gdGFnIG9m
IHRoZSAkU1VCSkVDVCBpbiBlbWFpbC4KPiA+ID4KPiA+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMgfCAxICsKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpLWxheWVyc2NhcGUtZXAuYwo+ID4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMKPiA+ID4gaW5kZXggYmU2MWQ5Ni4uY2E5YWE0NSAx
MDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2Nh
cGUtZXAuYwo+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJz
Y2FwZS1lcC5jCj4gPiA+IEBAIC00NCw2ICs0NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGNp
X2VwY19mZWF0dXJlcwo+ID4gbHNfcGNpZV9lcGNfZmVhdHVyZXMgPSB7Cj4gPiA+ICAJLmxpbmt1
cF9ub3RpZmllciA9IGZhbHNlLAo+ID4gPiAgCS5tc2lfY2FwYWJsZSA9IHRydWUsCj4gPiA+ICAJ
Lm1zaXhfY2FwYWJsZSA9IGZhbHNlLAo+ID4gPiArCS5iYXJfZml4ZWRfNjRiaXQgPSAoMSA8PCBC
QVJfMikgfCAoMSA8PCBCQVJfNCksCj4gPiA+ICB9Owo+ID4gPgo+ID4gPiAgc3RhdGljIGNvbnN0
IHN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVzKgo+ID4gPiAtLQo+ID4gPiAyLjkuNQo+ID4gPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
