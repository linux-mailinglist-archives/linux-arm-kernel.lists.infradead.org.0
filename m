Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AA990045
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 12:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YUC6M2InotenwVXvQ+eauRJbOftx1LbtAoNA73eI9xU=; b=Pyq28rO/lx8jqh
	e9omzx3wM7hkJEvhvN35Ahxdzz1iUfJWEsvsYNKASMiJAHtXg5yNJArOg7B07qc24K3KD636wABmi
	bjDNqI5eMut3ZwvGaV+XyBRe+pJAs7jVWSpPHIVNeXMNGPG6i97uNK0JLNdT2cDWVwuhu5Hmtvp/0
	vouemGTfNX8AICxnxype74fJSFydYFWEd/WW2W1nbb6xu0YzQDk3Ls1HIiJmQYSuxWXu7eZd9GyvA
	T2T98LcJ37IxSiutIF1Ir9jQgK1PgRdChRHJywuueS54DSRqzBk8EHFRCZVxQkT2C1ntleGw0KQM6
	VxsCaqbBPMa7psxdG8Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyZq3-00051j-T2; Fri, 16 Aug 2019 10:52:07 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyZpp-00051N-HT
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 10:51:55 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7GApdHN004849;
 Fri, 16 Aug 2019 05:51:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565952699;
 bh=hn8fy2leOOJ2v5vDgwq8C00AfqgX3leZ0vhsRcjx8Kc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=D58NfWon6bgolsIr719N63cAQowNbSydh3J9Dt6vskmGUNY9McMH6xZEFtYU9Y/jE
 qoCCFFrtaTIcdYpaXFj7CjGEoLDXrQRX9u58x+iEOvDnyh9mHsFQ2aY5gVb/NWhB+1
 r2AVDLGnnEqvOkAaq8NvlRSISc/GpIWJZcYskhM8=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7GApdDJ001483
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 16 Aug 2019 05:51:39 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 16
 Aug 2019 05:51:39 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 16 Aug 2019 05:51:39 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7GApXr5015579;
 Fri, 16 Aug 2019 05:51:34 -0500
Subject: Re: [PATCH 02/10] PCI: designware-ep: Add the doorbell mode of MSI-X
 in EP mode
To: Xiaowei Bao <xiaowei.bao@nxp.com>, Andrew Murray <andrew.murray@arm.com>
References: <20190815083716.4715-1-xiaowei.bao@nxp.com>
 <20190815083716.4715-2-xiaowei.bao@nxp.com>
 <20190815115340.GG43882@e119886-lin.cambridge.arm.com>
 <AM5PR04MB329973845D6396624AFDE547F5AF0@AM5PR04MB3299.eurprd04.prod.outlook.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <02cf2f3d-336c-85bb-1fb5-a141c5a9cf79@ti.com>
Date: Fri, 16 Aug 2019 16:19:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <AM5PR04MB329973845D6396624AFDE547F5AF0@AM5PR04MB3299.eurprd04.prod.outlook.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_035153_731731_6AF11303 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="gbk"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxNi8wOC8xOSA4OjI4IEFNLCBYaWFvd2VpIEJhbyB3cm90ZToKPiAKPiAKPj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogQW5kcmV3IE11cnJheSA8YW5kcmV3Lm11
cnJheUBhcm0uY29tPgo+PiBTZW50OiAyMDE5xOo41MIxNcjVIDE5OjU0Cj4+IFRvOiBYaWFvd2Vp
IEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4KPj4gQ2M6IGppbmdvb2hhbjFAZ21haWwuY29tOyBn
dXN0YXZvLnBpbWVudGVsQHN5bm9wc3lzLmNvbTsKPj4gYmhlbGdhYXNAZ29vZ2xlLmNvbTsgcm9i
aCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsKPj4gc2hhd25ndW9Aa2VybmVs
Lm9yZzsgTGVvIExpIDxsZW95YW5nLmxpQG54cC5jb20+OyBraXNob25AdGkuY29tOwo+PiBsb3Jl
bnpvLnBpZXJhbGlzaUBhcm0uY29tOyBhcm5kQGFybmRiLmRlOyBncmVna2hAbGludXhmb3VuZGF0
aW9uLm9yZzsKPj4gTS5oLiBMaWFuIDxtaW5naHVhbi5saWFuQG54cC5jb20+OyBNaW5na2FpIEh1
IDxtaW5na2FpLmh1QG54cC5jb20+Owo+PiBSb3kgWmFuZyA8cm95LnphbmdAbnhwLmNvbT47IGxp
bnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7Cj4+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBs
aW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOwo+PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmc7IGxpbnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3JnCj4+IFN1YmplY3Q6IFJl
OiBbUEFUQ0ggMDIvMTBdIFBDSTogZGVzaWdud2FyZS1lcDogQWRkIHRoZSBkb29yYmVsbCBtb2Rl
IG9mCj4+IE1TSS1YIGluIEVQIG1vZGUKPj4KPj4gT24gVGh1LCBBdWcgMTUsIDIwMTkgYXQgMDQ6
Mzc6MDhQTSArMDgwMCwgWGlhb3dlaSBCYW8gd3JvdGU6Cj4+PiBBZGQgdGhlIGRvb3JiZWxsIG1v
ZGUgb2YgTVNJLVggaW4gRVAgbW9kZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBYaWFvd2VpIEJh
byA8eGlhb3dlaS5iYW9AbnhwLmNvbT4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1lcC5jIHwgMTQgKysrKysrKysrKysrKysKPj4+ICBkcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaCAgICB8IDE0ICsrKysrKysr
KysrKysrCj4+PiAgMiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1lcC5j
Cj4+PiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1lcC5jCj4+
PiBpbmRleCA3NWUyOTU1Li5lM2E3Y2RmIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWVwLmMKPj4+ICsrKyBiL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1lcC5jCj4+PiBAQCAtNDU0LDYgKzQ1NCwyMCBA
QCBpbnQgZHdfcGNpZV9lcF9yYWlzZV9tc2lfaXJxKHN0cnVjdCBkd19wY2llX2VwCj4+ICplcCwg
dTggZnVuY19ubywKPj4+ICAJcmV0dXJuIDA7Cj4+PiAgfQo+Pj4KPj4+ICtpbnQgZHdfcGNpZV9l
cF9yYWlzZV9tc2l4X2lycV9kb29yYmVsbChzdHJ1Y3QgZHdfcGNpZV9lcCAqZXAsIHU4Cj4+IGZ1
bmNfbm8sCj4+PiArCQkJCSAgICAgICB1MTYgaW50ZXJydXB0X251bSkKPj4+ICt7Cj4+PiArCXN0
cnVjdCBkd19wY2llICpwY2kgPSB0b19kd19wY2llX2Zyb21fZXAoZXApOwo+Pj4gKwl1MzIgbXNn
X2RhdGE7Cj4+PiArCj4+PiArCW1zZ19kYXRhID0gKGZ1bmNfbm8gPDwgUENJRV9NU0lYX0RPT1JC
RUxMX1BGX1NISUZUKSB8Cj4+PiArCQkgICAoaW50ZXJydXB0X251bSAtIDEpOwo+Pj4gKwo+Pj4g
Kwlkd19wY2llX3dyaXRlbF9kYmkocGNpLCBQQ0lFX01TSVhfRE9PUkJFTEwsIG1zZ19kYXRhKTsK
Pj4+ICsKPj4+ICsJcmV0dXJuIDA7Cj4+PiArfQo+Pj4gKwo+Pj4gIGludCBkd19wY2llX2VwX3Jh
aXNlX21zaXhfaXJxKHN0cnVjdCBkd19wY2llX2VwICplcCwgdTggZnVuY19ubywKPj4+ICAJCQkg
ICAgICB1MTYgaW50ZXJydXB0X251bSkKPj4KPj4gSGF2ZSBJIHVuZGVyc3Rvb2QgY29ycmVjdGx5
IHRoYXQgdGhlIGhhcmR3YXJlIHByb3ZpZGVzIGFuIGFsdGVybmF0aXZlCj4+IG1lY2hhbmlzbSB0
aGF0IGFsbG93cyBmb3IgcmFpc2luZyBNU0ktWCBpbnRlcnJ1cHRzIHdpdGhvdXQgdGhlIGJvdGhl
ciBvZgo+PiByZWFkaW5nIHRoZSBjYXBhYmlsaXRpZXMgcmVnaXN0ZXJzPwo+IFllcywgdGhlIGhh
cmR3YXJlIHByb3ZpZGUgdHdvIHdheSB0byBNU0ktWCwgcGxlYXNlIGNoZWNrIHRoZSBwYWdlIDQ5
MiBvZiAKPiBEV0NfcGNpZV9kbV9yZWdpc3RlcnNfNC4zMCBNZW51Lgo+IE1TSVhfRE9PUkJFTExf
T0ZGIG9uIHBhZ2UgNDkyIDB4OTQ4IERlc2NyaXB0aW9uOiBNU0ktWCBEb29yYmVsbCBSZWdpc3Rl
ci4uLi4+Cj4+Cj4+IElmIHNvIGlzIHRoZXJlIGFueSBnb29kIHJlYXNvbiB0byBrZWVwIGR3X3Bj
aWVfZXBfcmFpc2VfbXNpeF9pcnE/IChBbmQgdGh1cwo+PiB1c2UgaXQgaW4gZHdfcGxhdF9wY2ll
X2VwX3JhaXNlX2lycSBhbHNvKT8KPiBJIGFtIG5vdCBzdXJlLCBidXQgSSB0aGluayB0aGUgZHdf
cGNpZV9lcF9yYWlzZV9tc2l4X2lycSBmdW5jdGlvbiBpcyBub3QgY29ycmVjdCwgCj4gYmVjYXVz
ZSBJIHRoaW5rIHdlIGNhbid0IGdldCB0aGUgTVNJWCB0YWJsZSBmcm9tIHRoZSBhZGRyZXNzIGVw
LT5waHlzX2Jhc2UgKyB0YmxfYWRkciwgCj4gYnV0IEkgYWxzbyBkb24ndCBrbm93IHdoZXJlIEkg
Y2FuIGdldCB0aGUgY29ycmVjdCBNU0lYIHRhYmxlLgoKU29tZXRpbWUgYmFjayB3aGVuIEkgdHJp
ZWQgcmFpc2luZyBNU0ktWCBmcm9tIEVQLCBpdCB3YXMgZmFpbGluZy4gSXQncyBxdWl0ZQpwb3Nz
aWJsZSBkd19wY2llX2VwX3JhaXNlX21zaXhfaXJxIGZ1bmN0aW9uIGlzIG5vdCBjb3JyZWN0LgoK
TVNJLVggdGFibGUgY2FuIGJlIG9idGFpbmVkIGZyb20gdGhlIGluYm91bmQgQVRVIGNvcnJlc3Bv
bmRpbmcgdG8gdGhlIE1TSVggYmFyLgpJTU8gTVNJLVggc3VwcG9ydCBpbiBFUCBtb2RlIG5lZWRz
IHJld29yay4gRm9yIGluc3RhbmNlIHNldF9tc2l4IHNob3VsZCBhbHNvCnRha2UgQkFSIG51bWJl
ciBhcyBpbnB1dCB0byBiZSBjb25maWd1cmVkIGluIHRoZSBNU0ktWCBjYXBhYmlsaXR5LiBUaGUg
ZnVuY3Rpb24KZHJpdmVyIChwY2ktZXBmLXRlc3QuYykgc2hvdWxkIGFsbG9jYXRlIG1lbW9yeSB0
YWtpbmcgaW50byBhY2NvdW50IHRoZSBNU0ktWCB0YWJsZS4KClRoYW5rcwpLaXNob24KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
