Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951529A620
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 05:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dlZfi7aJhtknO/Cj3/sUUACwSxxjMET38fHbv8dTivw=; b=S9SYdNtI6T0LT+KfvTlhyNSei/
	w799Q88oetaa0fPmrFS18M08Gh6o9UHXMmIKCktMQz4GHuQlNEP09nwmNhmzWVB/gpJyuEV63MAZD
	o42v2XmpsPgJ3QaCSiWMORFHTBpmbI6Kbr1xiJQxencH9Qtm9II3CzAIKiEBwnISNCIyiktueQrD3
	17iubiujlBhOKqMOS7wOUyJiOKAA+Y5Pn1k1REWbpnTOO0COiB1eN4mqz8TP1pcfQn4bvsQ/6ISKw
	Th02zST3RlWwtVbARF+19ggmU1a5d7DScHqC73S5p7JavT8dLSt+jd70kKk6Z8YTx9lMmPyLxip2u
	G6L50dTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i10Qz-0004eo-RL; Fri, 23 Aug 2019 03:40:17 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i10Ql-00042k-C5
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 03:40:05 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7N3dsco056152;
 Thu, 22 Aug 2019 22:39:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566531594;
 bh=81SSEYa5Fp4dwV5qila9E6vwCoCXnItQiSYD67zCfW8=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=JWV4ioQFP6IoggZOdMcyoaMP1ZYasXYOhchN4C+7LKmF5GWY/fxycdv4+VTJvOnBp
 CG/i6CCa5N2V806C2ZUm4j1Uvw9GWhxQp1m80ztT3LFuMkB56p1qu+TsGUuUsqEtiH
 l2geahbl0GLEirpyHJqBtlG/34hOoHWZDlmJRhBY=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7N3dsgV012046
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 22 Aug 2019 22:39:54 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 22
 Aug 2019 22:39:54 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 22 Aug 2019 22:39:54 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7N3dmoK102238;
 Thu, 22 Aug 2019 22:39:49 -0500
Subject: Re: [PATCH v2 06/10] PCI: layerscape: Modify the way of getting
 capability with different PEX
To: Xiaowei Bao <xiaowei.bao@nxp.com>, "bhelgaas@google.com"
 <bhelgaas@google.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>,
 "lorenzo.pieralisi@arm.co" <lorenzo.pieralisi@arm.com>, "arnd@arndb.de"
 <arnd@arndb.de>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "M.h. Lian" <minghuan.lian@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>, Roy
 Zang <roy.zang@nxp.com>, "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linuxppc-dev@lists.ozlabs.org"
 <linuxppc-dev@lists.ozlabs.org>, "andrew.murray@arm.com"
 <andrew.murray@arm.com>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
 <20190822112242.16309-6-xiaowei.bao@nxp.com>
 <0c02ac52-e4b1-8071-bf9e-d10b28fc9029@ti.com>
 <AM5PR04MB3299DE7B57F31EA405E4FCBCF5A40@AM5PR04MB3299.eurprd04.prod.outlook.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <11e9b2c3-f4d0-2f82-bb14-45c38a1419e4@ti.com>
Date: Fri, 23 Aug 2019 09:09:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <AM5PR04MB3299DE7B57F31EA405E4FCBCF5A40@AM5PR04MB3299.eurprd04.prod.outlook.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_204003_534995_5875961F 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgooRml4ZWQgTG9yZW56bydzIGVtYWlsIGFkZHJlc3MuIEFsbCB0aGUgcGF0Y2hlcyBpbiB0
aGUgc2VyaWVzIGhhdmUgd3JvbmcgZW1haWwgaWQpCgpPbiAyMy8wOC8xOSA4OjA5IEFNLCBYaWFv
d2VpIEJhbyB3cm90ZToKPiAKPiAKPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJv
bTogS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4KPj4gU2VudDogMjAxOeW5
tDjmnIgyMuaXpSAxOTo0NAo+PiBUbzogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+
OyBiaGVsZ2Fhc0Bnb29nbGUuY29tOwo+PiByb2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFu
ZEBhcm0uY29tOyBzaGF3bmd1b0BrZXJuZWwub3JnOyBMZW8gTGkKPj4gPGxlb3lhbmcubGlAbnhw
LmNvbT47IGxvcmVuem8ucGllcmFsaXNpQGFybS5jbzsgYXJuZEBhcm5kYi5kZTsKPj4gZ3JlZ2to
QGxpbnV4Zm91bmRhdGlvbi5vcmc7IE0uaC4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsg
TWluZ2thaQo+PiBIdSA8bWluZ2thaS5odUBueHAuY29tPjsgUm95IFphbmcgPHJveS56YW5nQG54
cC5jb20+Owo+PiBqaW5nb29oYW4xQGdtYWlsLmNvbTsgZ3VzdGF2by5waW1lbnRlbEBzeW5vcHN5
cy5jb207Cj4+IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJu
ZWwub3JnOwo+PiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmc7Cj4+IGxpbnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3JnOyBh
bmRyZXcubXVycmF5QGFybS5jb20KPj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAwNi8xMF0gUENJ
OiBsYXllcnNjYXBlOiBNb2RpZnkgdGhlIHdheSBvZiBnZXR0aW5nCj4+IGNhcGFiaWxpdHkgd2l0
aCBkaWZmZXJlbnQgUEVYCj4+Cj4+IEhpLAo+Pgo+PiBPbiAyMi8wOC8xOSA0OjUyIFBNLCBYaWFv
d2VpIEJhbyB3cm90ZToKPj4+IFRoZSBkaWZmZXJlbnQgUENJZSBjb250cm9sbGVyIGluIG9uZSBi
b2FyZCBtYXkgYmUgaGF2ZSBkaWZmZXJlbnQKPj4+IGNhcGFiaWxpdHkgb2YgTVNJIG9yIE1TSVgs
IHNvIGNoYW5nZSB0aGUgd2F5IG9mIGdldHRpbmcgdGhlIE1TSQo+Pj4gY2FwYWJpbGl0eSwgbWFr
ZSBpdCBtb3JlIGZsZXhpYmxlLgo+Pgo+PiBwbGVhc2UgdXNlIGRpZmZlcmVudCBwY2lfZXBjX2Zl
YXR1cmVzIHRhYmxlIGZvciBkaWZmZXJlbnQgYm9hcmRzLgo+IFRoYW5rcywgSSB0aGluayB0aGF0
IGl0IHdpbGwgYmUgbW9yZSBmbGV4aWJsZSB0byBkeW5hbWljYWxseSBnZXQgTVNJIG9yIE1TSVgg
Y2FwYWJpbGl0eSwKPiBUaHVzLCB3ZSB3aWxsIG5vdCBuZWVkIHRvIGRlZmluZSB0aGUgcGNpX2Vw
Y19mZWF0dXJlIGZvciBkaWZmZXJlbnQgYm9hcmRzLgoKSXMgdGhlIHJlc3RyaWN0aW9uIGJlY2F1
c2UgeW91IGNhbm5vdCBoYXZlIGRpZmZlcmVudCBjb21wYXRpYmxlIGZvciBkaWZmZXJlbnQKYm9h
cmRzPwoKVGhhbmtzCktpc2hvbgoKPj4KPj4gVGhhbmtzCj4+IEtpc2hvbgo+Pj4KPj4+IFNpZ25l
ZC1vZmYtYnk6IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPgo+Pj4gLS0tCj4+PiB2
MjoKPj4+ICAtIFJlbW92ZSB0aGUgcmVwZWF0ZWQgYXNzaWdubWVudCBjb2RlLgo+Pj4KPj4+ICBk
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jIHwgMjYKPj4+ICsr
KysrKysrKysrKysrKysrKystLS0tLS0tCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMKPj4+IGIvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpLWxheWVyc2NhcGUtZXAuYwo+Pj4gaW5kZXggNGU5MmE5NS4uODQ2MWY2MiAx
MDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBl
LWVwLmMKPj4+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBl
LWVwLmMKPj4+IEBAIC0yMiw2ICsyMiw3IEBACj4+Pgo+Pj4gIHN0cnVjdCBsc19wY2llX2VwIHsK
Pj4+ICAJc3RydWN0IGR3X3BjaWUJCSpwY2k7Cj4+PiArCXN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVz
CSpsc19lcGM7Cj4+PiAgfTsKPj4+Cj4+PiAgI2RlZmluZSB0b19sc19wY2llX2VwKHgpCWRldl9n
ZXRfZHJ2ZGF0YSgoeCktPmRldikKPj4+IEBAIC00MCwyNSArNDEsMjYgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBvZl9kZXZpY2VfaWQKPj4gbHNfcGNpZV9lcF9vZl9tYXRjaFtdID0gewo+Pj4gIAl7
IH0sCj4+PiAgfTsKPj4+Cj4+PiAtc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVz
IGxzX3BjaWVfZXBjX2ZlYXR1cmVzID0gewo+Pj4gLQkubGlua3VwX25vdGlmaWVyID0gZmFsc2Us
Cj4+PiAtCS5tc2lfY2FwYWJsZSA9IHRydWUsCj4+PiAtCS5tc2l4X2NhcGFibGUgPSBmYWxzZSwK
Pj4+IC19Owo+Pj4gLQo+Pj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcyog
IGxzX3BjaWVfZXBfZ2V0X2ZlYXR1cmVzKHN0cnVjdAo+Pj4gZHdfcGNpZV9lcCAqZXApICB7Cj4+
PiAtCXJldHVybiAmbHNfcGNpZV9lcGNfZmVhdHVyZXM7Cj4+PiArCXN0cnVjdCBkd19wY2llICpw
Y2kgPSB0b19kd19wY2llX2Zyb21fZXAoZXApOwo+Pj4gKwlzdHJ1Y3QgbHNfcGNpZV9lcCAqcGNp
ZSA9IHRvX2xzX3BjaWVfZXAocGNpKTsKPj4+ICsKPj4+ICsJcmV0dXJuIHBjaWUtPmxzX2VwYzsK
Pj4+ICB9Cj4+Pgo+Pj4gIHN0YXRpYyB2b2lkIGxzX3BjaWVfZXBfaW5pdChzdHJ1Y3QgZHdfcGNp
ZV9lcCAqZXApICB7Cj4+PiAgCXN0cnVjdCBkd19wY2llICpwY2kgPSB0b19kd19wY2llX2Zyb21f
ZXAoZXApOwo+Pj4gKwlzdHJ1Y3QgbHNfcGNpZV9lcCAqcGNpZSA9IHRvX2xzX3BjaWVfZXAocGNp
KTsKPj4+ICAJZW51bSBwY2lfYmFybm8gYmFyOwo+Pj4KPj4+ICAJZm9yIChiYXIgPSBCQVJfMDsg
YmFyIDw9IEJBUl81OyBiYXIrKykKPj4+ICAJCWR3X3BjaWVfZXBfcmVzZXRfYmFyKHBjaSwgYmFy
KTsKPj4+ICsKPj4+ICsJcGNpZS0+bHNfZXBjLT5tc2lfY2FwYWJsZSA9IGVwLT5tc2lfY2FwID8g
dHJ1ZSA6IGZhbHNlOwo+Pj4gKwlwY2llLT5sc19lcGMtPm1zaXhfY2FwYWJsZSA9IGVwLT5tc2l4
X2NhcCA/IHRydWUgOiBmYWxzZTsKPj4+ICB9Cj4+Pgo+Pj4gIHN0YXRpYyBpbnQgbHNfcGNpZV9l
cF9yYWlzZV9pcnEoc3RydWN0IGR3X3BjaWVfZXAgKmVwLCB1OCBmdW5jX25vLCBAQAo+Pj4gLTEx
OCw2ICsxMjAsNyBAQCBzdGF0aWMgaW50IF9faW5pdCBsc19wY2llX2VwX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UKPj4gKnBkZXYpCj4+PiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2
LT5kZXY7Cj4+PiAgCXN0cnVjdCBkd19wY2llICpwY2k7Cj4+PiAgCXN0cnVjdCBsc19wY2llX2Vw
ICpwY2llOwo+Pj4gKwlzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcyAqbHNfZXBjOwo+Pj4gIAlzdHJ1
Y3QgcmVzb3VyY2UgKmRiaV9iYXNlOwo+Pj4gIAlpbnQgcmV0Owo+Pj4KPj4+IEBAIC0xMjksNiAr
MTMyLDEwIEBAIHN0YXRpYyBpbnQgX19pbml0IGxzX3BjaWVfZXBfcHJvYmUoc3RydWN0Cj4+IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPj4+ICAJaWYgKCFwY2kpCj4+PiAgCQlyZXR1cm4gLUVOT01F
TTsKPj4+Cj4+PiArCWxzX2VwYyA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqbHNfZXBjKSwg
R0ZQX0tFUk5FTCk7Cj4+PiArCWlmICghbHNfZXBjKQo+Pj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4+
PiArCj4+PiAgCWRiaV9iYXNlID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlX2J5bmFtZShwZGV2LCBJ
T1JFU09VUkNFX01FTSwKPj4gInJlZ3MiKTsKPj4+ICAJcGNpLT5kYmlfYmFzZSA9IGRldm1fcGNp
X3JlbWFwX2NmZ19yZXNvdXJjZShkZXYsIGRiaV9iYXNlKTsKPj4+ICAJaWYgKElTX0VSUihwY2kt
PmRiaV9iYXNlKSkKPj4+IEBAIC0xMzksNiArMTQ2LDExIEBAIHN0YXRpYyBpbnQgX19pbml0IGxz
X3BjaWVfZXBfcHJvYmUoc3RydWN0Cj4+IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+ICAJcGNp
LT5vcHMgPSAmbHNfcGNpZV9lcF9vcHM7Cj4+PiAgCXBjaWUtPnBjaSA9IHBjaTsKPj4+Cj4+PiAr
CWxzX2VwYy0+bGlua3VwX25vdGlmaWVyID0gZmFsc2UsCj4+PiArCWxzX2VwYy0+YmFyX2ZpeGVk
XzY0Yml0ID0gKDEgPDwgQkFSXzIpIHwgKDEgPDwgQkFSXzQpLAo+Pj4gKwo+Pj4gKwlwY2llLT5s
c19lcGMgPSBsc19lcGM7Cj4+PiArCj4+PiAgCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHBj
aWUpOwo+Pj4KPj4+ICAJcmV0ID0gbHNfYWRkX3BjaWVfZXAocGNpZSwgcGRldik7Cj4+PgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
