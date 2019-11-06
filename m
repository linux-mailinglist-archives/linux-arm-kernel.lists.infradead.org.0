Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 125ABF1762
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 14:40:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZRKWY3xSd0S+AahSlkhjAaBZOA2A/TB1BeQGGSar+c=; b=ARZQdcGg9xpmZ7
	tLv4JU0eEC4OR5Z4DHhIO4lIf0CyHccSYeW1JZq0K7zPwIinivdt3TlEKU7uM8/LGTLyT4sPQ2pVX
	K23wP9JBntaiNeKonPi1eDY9KzKontz+ZuenNzhoSMryZyVH1jkYSOV0rX4bM4v9l3WNqwZ7zoY/u
	YUDstWcqZnA3Q9Tp7ujBiqMhX0p072nqjd7qc352arkzRWYDD7aI+82ItsMxANHqOiHMJtcANYgDp
	5vtdzeMJxfLtf0Z8QZGshN93S/CPxNuY4l5mlKi4qFoDtzMbRKssrl0N1N2CJor0nscGAT6ve8R53
	rTnNztnfMO1phMe+Dzrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLXg-0002TC-Um; Wed, 06 Nov 2019 13:40:12 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLXR-0002SY-IO
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 13:39:59 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA6DdjRd104694;
 Wed, 6 Nov 2019 07:39:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573047585;
 bh=B4AqWpvbkF9WwJU+qXr/4lM8+KtnmSOFmTVCwEr68/c=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=T6+hrNSEcYbMNGY8yQ8noGwJoc1vkj/nZLrAdWGY4qwTosk3QasLuy2seIDsn9tjG
 NW1S0DM+36C9zcG8uKT1PJYysjyv7gt3g/Hfr8bZz4icnETFcs9f+ysa30CDAj9YlX
 iBj+pEBwVXYN5BYoh3tnvYhOqTyM80B2C7xzBFJQ=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA6DdjmR071492;
 Wed, 6 Nov 2019 07:39:45 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 6 Nov
 2019 07:39:30 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 6 Nov 2019 07:39:30 -0600
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA6Dddi6039199;
 Wed, 6 Nov 2019 07:39:40 -0600
Subject: Re: [PATCH v2 07/10] PCI: layerscape: Modify the MSIX to the doorbell
 way
To: Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>, Andrew Murray
 <andrew.murray@arm.com>, Xiaowei Bao <xiaowei.bao@nxp.com>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
 <20190822112242.16309-7-xiaowei.bao@nxp.com>
 <20190823135816.GH14582@e119886-lin.cambridge.arm.com>
 <AM5PR04MB3299E50BA5D7579D41B8B4F9F5A70@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <20190827132504.GL14582@e119886-lin.cambridge.arm.com>
 <e64a484c-7cf5-5f65-400c-47128ab45e52@ti.com>
 <DM6PR12MB40107A9B97A8DAF32A4C651EDA790@DM6PR12MB4010.namprd12.prod.outlook.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <e34708a1-1116-89f9-c3f8-7f21b63c9d9c@ti.com>
Date: Wed, 6 Nov 2019 19:09:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <DM6PR12MB40107A9B97A8DAF32A4C651EDA790@DM6PR12MB4010.namprd12.prod.outlook.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_053957_693570_2F847F7B 
X-CRM114-Status: GOOD (  31.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "lorenzo.pieralisi@arm.co" <lorenzo.pieralisi@arm.co>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

R3VzdGF2bywKCk9uIDA2LzExLzE5IDM6MTAgUE0sIEd1c3Rhdm8gUGltZW50ZWwgd3JvdGU6Cj4g
T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgNjoxMzoxOCwgS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8
a2lzaG9uQHRpLmNvbT4gCj4gd3JvdGU6Cj4gCj4gSGksIHRoaXMgZW1haWwgc2xpcCBhd2F5IGZy
b20gbXkgYXR0ZW50aW9uLi4uCj4gCj4+IEd1c3Rhdm8sCj4+Cj4+IE9uIDI3LzA4LzE5IDY6NTUg
UE0sIEFuZHJldyBNdXJyYXkgd3JvdGU6Cj4+PiBPbiBTYXQsIEF1ZyAyNCwgMjAxOSBhdCAxMjow
ODo0MEFNICswMDAwLCBYaWFvd2VpIEJhbyB3cm90ZToKPj4+Pgo+Pj4+Cj4+Pj4+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCj4+Pj4+IEZyb206IEFuZHJldyBNdXJyYXkgPGFuZHJldy5tdXJy
YXlAYXJtLmNvbT4KPj4+Pj4gU2VudDogMjAxOeW5tDjmnIgyM+aXpSAyMTo1OAo+Pj4+PiBUbzog
WGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+Cj4+Pj4+IENjOiBiaGVsZ2Fhc0Bnb29n
bGUuY29tOyByb2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOwo+Pj4+PiBz
aGF3bmd1b0BrZXJuZWwub3JnOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IGtpc2hvbkB0
aS5jb207Cj4+Pj4+IGxvcmVuem8ucGllcmFsaXNpQGFybS5jbzsgYXJuZEBhcm5kYi5kZTsgZ3Jl
Z2toQGxpbnV4Zm91bmRhdGlvbi5vcmc7IE0uaC4KPj4+Pj4gTGlhbiA8bWluZ2h1YW4ubGlhbkBu
eHAuY29tPjsgTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsgUm95Cj4+Pj4+IFphbmcg
PHJveS56YW5nQG54cC5jb20+OyBqaW5nb29oYW4xQGdtYWlsLmNvbTsKPj4+Pj4gZ3VzdGF2by5w
aW1lbnRlbEBzeW5vcHN5cy5jb207IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7Cj4+Pj4+IGRl
dmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOwo+
Pj4+PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4cHBjLWRldkBs
aXN0cy5vemxhYnMub3JnCj4+Pj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMDcvMTBdIFBDSTog
bGF5ZXJzY2FwZTogTW9kaWZ5IHRoZSBNU0lYIHRvIHRoZQo+Pj4+PiBkb29yYmVsbCB3YXkKPj4+
Pj4KPj4+Pj4gT24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMDc6MjI6MzlQTSArMDgwMCwgWGlhb3dl
aSBCYW8gd3JvdGU6Cj4+Pj4+PiBUaGUgbGF5ZXJzY2FwZSBwbGF0Zm9ybSB1c2UgdGhlIGRvb3Ji
ZWxsIHdheSB0byB0cmlnZ2VyIE1TSVggaW50ZXJydXB0Cj4+Pj4+PiBpbiBFUCBtb2RlLgo+Pj4+
Pj4KPj4+Pj4KPj4+Pj4gSSBoYXZlIG5vIHByb2JsZW1zIHdpdGggdGhpcyBwYXRjaCwgaG93ZXZl
ci4uLgo+Pj4+Pgo+Pj4+PiBBcmUgeW91IGFibGUgdG8gYWRkIHRvIHRoaXMgbWVzc2FnZSBhIHJl
YXNvbiBmb3Igd2h5IHlvdSBhcmUgbWFraW5nIHRoaXMKPj4+Pj4gY2hhbmdlPyBEaWQgZHdfcGNp
ZV9lcF9yYWlzZV9tc2l4X2lycSBub3Qgd29yayB3aGVuIGZ1bmNfbm8gIT0gMD8gT3IgZGlkCj4+
Pj4+IGl0IHdvcmsgeWV0IGR3X3BjaWVfZXBfcmFpc2VfbXNpeF9pcnFfZG9vcmJlbGwgaXMgbW9y
ZSBlZmZpY2llbnQ/Cj4+Pj4KPj4+PiBUaGUgZmFjdCBpcyB0aGF0LCB0aGlzIGRyaXZlciBpcyB2
ZXJpZmllZCBpbiBsczEwNDZhIHBsYXRmb3JtIG9mIE5YUCBiZWZvcmUsIGFuZCBsczEwNDZhIGRv
bid0Cj4+Pj4gc3VwcG9ydCBNU0lYIGZlYXR1cmUsIHNvIEkgc2V0IHRoZSBtc2l4X2NhcGFibGUg
b2YgcGNpX2VwY19mZWF0dXJlcyBzdHJ1Y3QgaXMgZmFsc2UsCj4+Pj4gYnV0IGluIG90aGVyIHBs
YXRmb3JtLCBlLmcuIGxzMTA4OGEsIGl0IHN1cHBvcnQgdGhlIE1TSVggZmVhdHVyZSwgSSB2ZXJp
ZmllZCB0aGUgTVNJWAo+Pj4+IGZlYXR1cmUgaW4gbHMxMDg4YSwgaXQgaXMgbm90IE9LLCBzbyBJ
IGNoYW5nZWQgdG8gYW5vdGhlciB3YXkuIFRoYW5rcy4KPj4+Cj4+PiBSaWdodCwgc28gdGhlIGV4
aXN0aW5nIHBjaS1sYXllcnNjYXBlLWVwLmMgZHJpdmVyIG5ldmVyIHN1cHBvcnRlZCBNU0lYIHll
dCBpdAo+Pj4gZXJyb25lb3VzbHkgaGFkIGEgc3dpdGNoIGNhc2Ugc3RhdGVtZW50IHRvIGNhbGwg
ZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2lycSB3aGljaAo+Pj4gd291bGQgbmV2ZXIgZ2V0IHVzZWQu
Cj4+Pgo+Pj4gTm93IHRoYXQgd2UncmUgYWRkaW5nIGEgcGxhdGZvcm0gd2l0aCBNU0lYIHN1cHBv
cnQgdGhlIGV4aXN0aW5nCj4+PiBkd19wY2llX2VwX3JhaXNlX21zaXhfaXJxIGRvZXNuJ3Qgd29y
ayAoZm9yIHRoaXMgcGxhdGZvcm0pIHNvIHdlIGFyZSBhZGRpbmcgYQo+Pj4gZGlmZmVyZW50IG1l
dGhvZC4KPj4KPj4gR3VzdGF2bywgY2FuIHlvdSBjb25maXJtIGR3X3BjaWVfZXBfcmFpc2VfbXNp
eF9pcnEoKSB3b3JrcyBmb3IgZGVzaWdud2FyZSBhcyBpdAo+PiBkaWRuJ3Qgd29yayBmb3IgYm90
aCBtZSBhbmQgWGlhb3dlaT8KPiAKPiBXaGVuIEkgaW1wbGVtZW50ZWQgdGhlIGR3X3BjaWVfZXBf
cmFpc2VfbXNpeF9pcnEoKSwgdGhlIGltcGxlbWVudGF0aW9uIAo+IHdhcyB3b3JraW5nIHF1aXRl
IGZpbmUgb24gRGVzaWduV2FyZSBzb2x1dGlvbi4gT3RoZXJ3aXNlLCBJIHdvdWxkbid0IAo+IHN1
Ym1pdCBpdCB0byB0aGUga2VybmVsLgo+IEZyb20gd2hhdCBJIGhhdmUgc2VlbiBhbmQgaWYgSSBy
ZWNhbGwgd2VsbCwgWGlhb3dlaSBpbXBsZW1lbnRhdGlvbiB3YXMgCj4gZG9uZSBoYXZpbmcgUEYn
cyBjb25maWd1cmF0ZWQgb24gaGlzIHNvbHV0aW9uLCB3aGljaCBpcyBhIGNvbmZpZ3VyYXRpb24g
Cj4gdGhhdCBJIGRvbid0IGhhdmUgaW4gbXkgc29sdXRpb24sIEkgYmVsaWV2ZSB0aGlzIGNvdWxk
IGJlIHRoZSBtaXNzaW5nIAo+IHBpZWNlIHRoYXQgZGlmZmVycyBiZXR3ZWVuIG91ciAyIGltcGxl
bWVudGF0aW9ucy4KCkkgaGF2ZW4ndCBkZWJ1Z2dlZCB0aGUgaXNzdWUgeWV0IGJ1dCBpbiBteSB1
bmRlcnN0YW5kaW5nIHRoZSBNU0ktWCB0YWJsZSBzaG91bGQKYmUgaW4gdGhlIG1lbW9yeSAoRERS
KSBvZiBFUCBzeXN0ZW0uIFRoaXMgdGFibGUgd2lsbCBiZSBwb3B1bGF0ZWQgYnkgUkMgd2hpbGUK
Y29uZmlndXJpbmcgTVNJLVggKHdpdGggbXNnIGFkZHJlc3MgYW5kIG1zZyBkYXRhKS4gVGhlIEVQ
IHdpbGwgdXNlIHRoZQpwb3B1bGF0ZWQgbXNnIGFkZHJlc3MgYW5kIG1zZyBkYXRhIGZvciByYWlz
aW5nIE1TSS1YIGludGVycnVwdC4KCkZyb20gdGhlIGR3X3BjaWVfZXBfcmFpc2VfbXNpeF9pcnEo
KSAoY29waWVkIGJlbG93KSwgbm93aGVyZSB0aGUgTVNJLVggdGFibGUgaXMKYmVpbmcgcmVhZCBm
cm9tIHRoZSBtZW1vcnkgb2YgRVAgc3lzdGVtLiBJJ3ZlIGdpdmVuIG15IGNvbW1lbnRzIGJlbG93
LgoKaW50IGR3X3BjaWVfZXBfcmFpc2VfbXNpeF9pcnEoc3RydWN0IGR3X3BjaWVfZXAgKmVwLCB1
OCBmdW5jX25vLAoJCQkgICAgIHUxNiBpbnRlcnJ1cHRfbnVtKQp7CgkuCgkuCglyZWcgPSBQQ0lf
QkFTRV9BRERSRVNTXzAgKyAoNCAqIGJpcik7CgliYXJfYWRkcl91cHBlciA9IDA7CgliYXJfYWRk
cl9sb3dlciA9IGR3X3BjaWVfcmVhZGxfZGJpKHBjaSwgcmVnKTsKCkJBUiByZWdpc3RlciB3aWxs
IGhvbGQgdGhlICJQQ0kgYWRkcmVzcyIgcHJvZ3JhbW1lZCBieSB0aGUgaG9zdC4gU28KImJhcl9h
ZGRyX2xvd2VyIiB3aWxsIGhhdmUgUENJIGFkZHJlc3MuCgoJcmVnX3U2NCA9IChiYXJfYWRkcl9s
b3dlciAmIFBDSV9CQVNFX0FERFJFU1NfTUVNX1RZUEVfTUFTSyk7CglpZiAocmVnX3U2NCA9PSBQ
Q0lfQkFTRV9BRERSRVNTX01FTV9UWVBFXzY0KQoJCWJhcl9hZGRyX3VwcGVyID0gZHdfcGNpZV9y
ZWFkbF9kYmkocGNpLCByZWcgKyA0KTsKCgl0YmxfYWRkciA9ICgodTY0KSBiYXJfYWRkcl91cHBl
cikgPDwgMzIgfCBiYXJfYWRkcl9sb3dlcjsKClRoZSAidGJsX2FkZHIiIG5vdyBoYXMgdGhlIFBD
SSBhZGRyZXNzIHByb2dyYW1tZWQgYnkgdGhlIGhvc3QuCgoJdGJsX2FkZHIgKz0gKHRibF9vZmZz
ZXQgKyAoKGludGVycnVwdF9udW0gLSAxKSAqIFBDSV9NU0lYX0VOVFJZX1NJWkUpKTsKCXRibF9h
ZGRyICY9IFBDSV9CQVNFX0FERFJFU1NfTUVNX01BU0s7CgoJbXNpeF90YmwgPSBpb3JlbWFwX25v
Y2FjaGUoZXAtPnBoeXNfYmFzZSArIHRibF9hZGRyLAoJCQkJICAgUENJX01TSVhfRU5UUllfU0la
RSk7CgoiZXAtPnBoeXNfYmFzZSIgd2lsbCBoYXZlIEVQcyBvdXRib3VuZCBtZW1vcnkgYWRkcmVz
cyBhbmQgInRibF9hZGRyIiB3aWxsIGhhdmUKUENJIGFkZHJlc3MuIFNvIG1zaXhfdGJsIHBvaW50
cyB0byB0aGUgRVBzIG91dGJvdW5kIG1lbW9yeSByZWdpb24uCglpZiAoIW1zaXhfdGJsKQoJCXJl
dHVybiAtRUlOVkFMOwoKCW1zZ19hZGRyX2xvd2VyID0gcmVhZGwobXNpeF90YmwgKyBQQ0lfTVNJ
WF9FTlRSWV9MT1dFUl9BRERSKTsKCW1zZ19hZGRyX3VwcGVyID0gcmVhZGwobXNpeF90YmwgKyBQ
Q0lfTVNJWF9FTlRSWV9VUFBFUl9BRERSKTsKCkhlcmUgYW4gYWNjZXNzIHRvIHRoZSBFUCBvdXRi
b3VuZCByZWdpb24gaXMgbWFkZSAoYW5kIHRoZSB0cmFuc2FjdGlvbiB3aWxsIGJlCmJhc2VkIG9u
IEFUVSBjb25maWd1cmF0aW9uKS4KVGhlIG1lc3NhZ2UgYWRkcmVzcyBzaG91bGQgaWRlYWxseSBi
ZSBvYnRhaW5lZCBmcm9tIHRoZSBNU0ktWCB0YWJsZSBwcmVzZW50IGluCnRoZSBFUCBzeXN0ZW0u
IFRoZXJlIG5lZWQgbm90IGJlIGFueSBhY2Nlc3MgdG8gdGhlIE9CIHJlZ2lvbiBmb3IgZ2V0dGlu
ZyBkYXRhCmZyb20gTVNJLVggdGFibGUuCgoJbXNnX2FkZHIgPSAoKHU2NCkgbXNnX2FkZHJfdXBw
ZXIpIDw8IDMyIHwgbXNnX2FkZHJfbG93ZXI7Cgltc2dfZGF0YSA9IHJlYWRsKG1zaXhfdGJsICsg
UENJX01TSVhfRU5UUllfREFUQSk7Cgl2ZWNfY3RybCA9IHJlYWRsKG1zaXhfdGJsICsgUENJX01T
SVhfRU5UUllfVkVDVE9SX0NUUkwpOwoKQWxsIHRoaXMgc2hvdWxkIGJlIG9idGFpbmVkIGZyb20g
dGhlIG1lbW9yeSBvZiBFUC4KCS4KCS4KfQoKSSdtIG5vdCBzdXJlIGhvdyB0aGlzIHdvcmtlZCBm
b3IgeW91LgoKVGhhbmtzCktpc2hvbgoKPiAKPiBTaW5jZSBwYXRjaCBzdWJtaXNzaW9uIGludG8g
dGhlIGtlcm5lbCByZWxhdGVkIHRvIG1zaXggZmVhdHVyZSBvbiBwY2l0ZXN0IAo+IHRvb2wsIEkg
ZGlkbid0IHRvdWNoIG9yIHJlLXRlc3RlZCB0aGUgbXNpeCBmZWF0dXJlIGJ5IGxhY2sgb2YgdGlt
ZSAob3RoZXIgCj4gcHJvamVjdHMgcmVxdWlyZXMgbXkgZnVsbCBhdHRlbnRpb24gZm9yIG5vdyku
IEhvd2V2ZXIgaXMgb24gbXkgcm9hZG1hcCB0byAKPiBjYW1lIGJhY2sgdG8gYWRkIHNvbWUgb3Ro
ZXIgZmVhdHVyZXMgb24gRGVzaWduV2FyZSBlRE1BIGRyaXZlciBhbmQgSSBjYW4gCj4gZG8gYXQg
dGhhdCB0aW1lIHNvbWUgdGVzdHMgdG8gc2VlIGlmIHRoZSAKPiBkd19wY2llX2VwX3JhaXNlX21z
aXhfaXJxX2Rvb3JiZWxsKCkgaXMgY29tcGF0aWJsZSBvciBub3Qgd2l0aCBteSAKPiBzb2x1dGlv
bi4gSWYgc28sIEkgY2FuIGRvIHNvbWUgcGF0Y2ggdG8gc2ltcGxpZnkgYW5kIHVzZSB0aGUgCj4g
ZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2lycV9kb29yYmVsbCgpIGlmIGl0IHN0aWxsIHdvcmtzIGFz
IGV4cGVjdGVkIGxpa2UgCj4gb24gZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2lycSgpLiBBZ3JlZT8K
PiAKPiBHdXN0YXZvCj4gCj4+Cj4+IFRoYW5rcwo+PiBLaXNob24KPiAKPiAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
