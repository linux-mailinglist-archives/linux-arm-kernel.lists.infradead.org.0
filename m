Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB0B47E69
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 11:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TiBNl3RLkGFDcsycxTlZyYlt/eoQ4QOD26vdczM2Ylw=; b=KfF9Kbv0r5jywu
	aO5HxuCGkH1whfEhqetP3gsJWV6Ej0Fm0KuLdnxIerW9y24U3P3duqe37IHzwxVTOX1g6wyrkF/uR
	6j8WX6Um+U2nsj6SKSxodq2rIeB9c70VMq0Lo9k1b5xBvPLCxs8xHUo8c/U4ZEtPJufGBPsulHcdL
	lm2QsdNZs07YsFNCXXqfAPPWQqXKKsFadzm287NMWPOOLvmGOsX6P+1pD4H6DteLzP43xUe3kdJUF
	m+VLR5PgEstV1LRwgyKSCnV4dVc0Zr+xUL+qeV1trJMnKqwujIlX0fGeqOO0xffU4Xhm+cAk9wl1m
	qSdGmVzrtVRPmyTuPpjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcnx3-0003Q2-5f; Mon, 17 Jun 2019 09:29:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcnwo-0003Pf-OH
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 09:29:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA6A1344;
 Mon, 17 Jun 2019 02:29:05 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E76ED3F246;
 Mon, 17 Jun 2019 02:29:03 -0700 (PDT)
Date: Mon, 17 Jun 2019 10:29:01 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv5 19/20] PCI: mobiveil: Add 8-bit and 16-bit register
 accessors
Message-ID: <20190617092901.GB18020@e121166-lin.cambridge.arm.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-20-Zhiqiang.Hou@nxp.com>
 <20190612135400.GB15747@redmoon>
 <AM0PR04MB673802CE0891BC898B61EBA384E90@AM0PR04MB6738.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB673802CE0891BC898B61EBA384E90@AM0PR04MB6738.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_022906_884070_A2AA6B4F 
X-CRM114-Status: GOOD (  18.63  )
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

T24gU2F0LCBKdW4gMTUsIDIwMTkgYXQgMDE6MTM6NDhBTSArMDAwMCwgWi5xLiBIb3Ugd3JvdGU6
Cj4gSGkgTG9yZW56bywKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9t
OiBMb3JlbnpvIFBpZXJhbGlzaSBbbWFpbHRvOmxvcmVuem8ucGllcmFsaXNpQGFybS5jb21dCj4g
PiBTZW50OiAyMDE55bm0NuaciDEy5pelIDIxOjU0Cj4gPiBUbzogWi5xLiBIb3UgPHpoaXFpYW5n
LmhvdUBueHAuY29tPgo+ID4gQ2M6IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiA+IGRldmljZXRyZWVAdmdlci5rZXJuZWwu
b3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOwo+ID4gYmhlbGdhYXNAZ29vZ2xlLmNv
bTsgcm9iaCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsKPiA+IGwuc3VicmFo
bWFueWFAbW9iaXZlaWwuY28uaW47IHNoYXduZ3VvQGtlcm5lbC5vcmc7IExlbyBMaQo+ID4gPGxl
b3lhbmcubGlAbnhwLmNvbT47IGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tOyB3aWxsLmRlYWNvbkBh
cm0uY29tOwo+ID4gTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsgTS5oLiBMaWFuIDxt
aW5naHVhbi5saWFuQG54cC5jb20+Owo+ID4gWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5j
b20+Cj4gPiBTdWJqZWN0OiBSZTogW1BBVENIdjUgMTkvMjBdIFBDSTogbW9iaXZlaWw6IEFkZCA4
LWJpdCBhbmQgMTYtYml0IHJlZ2lzdGVyCj4gPiBhY2Nlc3NvcnMKPiA+IAo+ID4gT24gRnJpLCBB
cHIgMTIsIDIwMTkgYXQgMDg6Mzc6MDVBTSArMDAwMCwgWi5xLiBIb3Ugd3JvdGU6Cj4gPiA+IEZy
b206IEhvdSBaaGlxaWFuZyA8WmhpcWlhbmcuSG91QG54cC5jb20+Cj4gPiA+Cj4gPiA+IFRoZXJl
IGFyZSBzb21lIDgtYml0IGFuZCAxNi1iaXQgcmVnaXN0ZXJzIGluIFBDSWUgY29uZmlndXJhdGlv
biBzcGFjZSwKPiA+ID4gc28gYWRkIGFjY2Vzc29ycyBmb3IgdGhlbS4KPiA+ID4KPiA+ID4gU2ln
bmVkLW9mZi1ieTogSG91IFpoaXFpYW5nIDxaaGlxaWFuZy5Ib3VAbnhwLmNvbT4KPiA+ID4gUmV2
aWV3ZWQtYnk6IE1pbmdodWFuIExpYW4gPE1pbmdodWFuLkxpYW5AbnhwLmNvbT4KPiA+ID4gUmV2
aWV3ZWQtYnk6IFN1YnJhaG1hbnlhIExpbmdhcHBhIDxsLnN1YnJhaG1hbnlhQG1vYml2ZWlsLmNv
LmluPgo+ID4gPiAtLS0KPiA+ID4gVjU6Cj4gPiA+ICAtIENvcnJlY3RlZCBhbmQgcmV0b3VjaGVk
IHRoZSBzdWJqZWN0IGFuZCBjaGFuZ2Vsb2cuCj4gPiA+ICAtIE5vIGZ1bmN0aW9uYWxpdHkgY2hh
bmdlLgo+ID4gPgo+ID4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1vYml2ZWlsLmMg
fCAyMCArKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDIwIGluc2Vy
dGlvbnMoKykKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
cGNpZS1tb2JpdmVpbC5jCj4gPiA+IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1vYml2
ZWlsLmMKPiA+ID4gaW5kZXggNDExZTk3NzlkYTEyLi40NTZhZGZlZTM5M2MgMTAwNjQ0Cj4gPiA+
IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5jCj4gPiA+ICsrKyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5jCj4gPiA+IEBAIC0yNjgsMTEg
KzI2OCwzMSBAQCBzdGF0aWMgdTMyIGNzcl9yZWFkbChzdHJ1Y3QgbW9iaXZlaWxfcGNpZSAqcGNp
ZSwKPiA+IHUzMiBvZmYpCj4gPiA+ICAJcmV0dXJuIGNzcl9yZWFkKHBjaWUsIG9mZiwgMHg0KTsK
PiA+ID4gIH0KPiA+ID4KPiA+ID4gK3N0YXRpYyB1MzIgY3NyX3JlYWR3KHN0cnVjdCBtb2JpdmVp
bF9wY2llICpwY2llLCB1MzIgb2ZmKSB7Cj4gPiA+ICsJcmV0dXJuIGNzcl9yZWFkKHBjaWUsIG9m
ZiwgMHgyKTsKPiA+ID4gK30KPiA+ID4gKwo+ID4gPiArc3RhdGljIHUzMiBjc3JfcmVhZGIoc3Ry
dWN0IG1vYml2ZWlsX3BjaWUgKnBjaWUsIHUzMiBvZmYpIHsKPiA+ID4gKwlyZXR1cm4gY3NyX3Jl
YWQocGNpZSwgb2ZmLCAweDEpOwo+ID4gPiArfQo+ID4gPiArCj4gPiA+ICBzdGF0aWMgdm9pZCBj
c3Jfd3JpdGVsKHN0cnVjdCBtb2JpdmVpbF9wY2llICpwY2llLCB1MzIgdmFsLCB1MzIgb2ZmKQo+
ID4gPiB7Cj4gPiA+ICAJY3NyX3dyaXRlKHBjaWUsIHZhbCwgb2ZmLCAweDQpOwo+ID4gPiAgfQo+
ID4gPgo+ID4gPiArc3RhdGljIHZvaWQgY3NyX3dyaXRldyhzdHJ1Y3QgbW9iaXZlaWxfcGNpZSAq
cGNpZSwgdTMyIHZhbCwgdTMyIG9mZikKPiA+ID4gK3sKPiA+ID4gKwljc3Jfd3JpdGUocGNpZSwg
dmFsLCBvZmYsIDB4Mik7Cj4gPiA+ICt9Cj4gPiA+ICsKPiA+ID4gK3N0YXRpYyB2b2lkIGNzcl93
cml0ZWIoc3RydWN0IG1vYml2ZWlsX3BjaWUgKnBjaWUsIHUzMiB2YWwsIHUzMiBvZmYpCj4gPiA+
ICt7Cj4gPiA+ICsJY3NyX3dyaXRlKHBjaWUsIHZhbCwgb2ZmLCAweDEpOwo+ID4gPiArfQo+ID4g
PiArCj4gPiAKPiA+IFRoZXkgYXJlIG5vdCB1c2VkIHNvIHlvdSBzaG91bGQgZHJvcCB0aGlzIHBh
dGNoLgo+IAo+IE5YUCBMYXllcnNjYXBlIFBDSWUgR2VuNCBjb250cm9sbGVyIGRyaXZlciB3aWxs
IHVzZSB0aGVtLCBzbyBkb24ndAo+IGRyb3AgaXQuCgpZb3UgYWRkIGZ1bmN0aW9ucyB3aGVuIHRo
ZXkgYXJlIG5lZWRlZCwgc28gZHJvcCB0aGlzIHBhdGNoIGFuZApzcXVhc2ggaXQgdG8gdGhlIHBh
dGNoIHRoYXQgdXNlIHRoZXNlIGZ1bmN0aW9ucy4KCkxvcmVuem8KCj4gVGhhbmtzLAo+IFpoaXFp
YW5nCj4gCj4gPiAKPiA+IExvcmVuem8KPiA+IAo+ID4gPiAgc3RhdGljIGJvb2wgbW9iaXZlaWxf
cGNpZV9saW5rX3VwKHN0cnVjdCBtb2JpdmVpbF9wY2llICpwY2llKSAgewo+ID4gPiAgCXJldHVy
biAoY3NyX3JlYWRsKHBjaWUsIExUU1NNX1NUQVRVUykgJgo+ID4gPiAtLQo+ID4gPiAyLjE3LjEK
PiA+ID4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
