Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 219C0F0755
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 21:55:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8cSBZHWmB3eAAMItDesC+w6DbPDN97H5FlLZ8SZjcpo=; b=lo8Zq2CEnsF0Nv
	pVSawIdPZvu8md14wjGIi47G0TE7Qr8HTNDj7wE/8UF6YGnpa0UpBLDvBZn91Tr98EXezzk7JKbCA
	IY4LYxg/B5t3+Oo2bYtlt/mFS4GU5Um0YM+aqQrsTsykDL1XzjY5ftOYdfMLRHza6s4oTFk8yqngP
	Np39YkzGuwpKjbl53pi7JkUpb7adKyK6DGK0daDwvY6FJNV1fEUeVSBy6ff/RKprYOX1OUONq717u
	LOeUMm/EeRKtoZqbdGeihWcjjQajb9ldraZZUhFeAGBu0hS7C/d7yJuD1XXMM6m6NXFq9bu6QVVc3
	NOxt8xbl0FVOWUMySORg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5r0-0002e3-P5; Tue, 05 Nov 2019 20:55:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5qr-0002bQ-3u
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:54:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 36D7C30E;
 Tue,  5 Nov 2019 12:54:56 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A0CB4014A;
 Tue,  5 Nov 2019 04:37:41 -0800 (PST)
Date: Tue, 5 Nov 2019 12:37:39 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v2 07/10] PCI: layerscape: Modify the MSIX to the
 doorbell way
Message-ID: <20191105123739.GB26960@e121166-lin.cambridge.arm.com>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
 <20190822112242.16309-7-xiaowei.bao@nxp.com>
 <20190823135816.GH14582@e119886-lin.cambridge.arm.com>
 <AM5PR04MB3299E50BA5D7579D41B8B4F9F5A70@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <20190827132504.GL14582@e119886-lin.cambridge.arm.com>
 <e64a484c-7cf5-5f65-400c-47128ab45e52@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e64a484c-7cf5-5f65-400c-47128ab45e52@ti.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_125457_251919_50C4E49F 
X-CRM114-Status: GOOD (  19.60  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "lorenzo.pieralisi@arm.co" <lorenzo.pieralisi@arm.co>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMTA6NDM6MThBTSArMDUzMCwgS2lzaG9uIFZpamF5IEFi
cmFoYW0gSSB3cm90ZToKPiBHdXN0YXZvLAo+IAo+IE9uIDI3LzA4LzE5IDY6NTUgUE0sIEFuZHJl
dyBNdXJyYXkgd3JvdGU6Cj4gPiBPbiBTYXQsIEF1ZyAyNCwgMjAxOSBhdCAxMjowODo0MEFNICsw
MDAwLCBYaWFvd2VpIEJhbyB3cm90ZToKPiA+Pgo+ID4+Cj4gPj4+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tCj4gPj4+IEZyb206IEFuZHJldyBNdXJyYXkgPGFuZHJldy5tdXJyYXlAYXJtLmNv
bT4KPiA+Pj4gU2VudDogMjAxOeW5tDjmnIgyM+aXpSAyMTo1OAo+ID4+PiBUbzogWGlhb3dlaSBC
YW8gPHhpYW93ZWkuYmFvQG54cC5jb20+Cj4gPj4+IENjOiBiaGVsZ2Fhc0Bnb29nbGUuY29tOyBy
b2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOwo+ID4+PiBzaGF3bmd1b0Br
ZXJuZWwub3JnOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IGtpc2hvbkB0aS5jb207Cj4g
Pj4+IGxvcmVuem8ucGllcmFsaXNpQGFybS5jbzsgYXJuZEBhcm5kYi5kZTsgZ3JlZ2toQGxpbnV4
Zm91bmRhdGlvbi5vcmc7IE0uaC4KPiA+Pj4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsg
TWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsgUm95Cj4gPj4+IFphbmcgPHJveS56YW5n
QG54cC5jb20+OyBqaW5nb29oYW4xQGdtYWlsLmNvbTsKPiA+Pj4gZ3VzdGF2by5waW1lbnRlbEBz
eW5vcHN5cy5jb207IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7Cj4gPj4+IGRldmljZXRyZWVA
dmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOwo+ID4+PiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4cHBjLWRldkBsaXN0cy5vemxh
YnMub3JnCj4gPj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMDcvMTBdIFBDSTogbGF5ZXJzY2Fw
ZTogTW9kaWZ5IHRoZSBNU0lYIHRvIHRoZQo+ID4+PiBkb29yYmVsbCB3YXkKPiA+Pj4KPiA+Pj4g
T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMDc6MjI6MzlQTSArMDgwMCwgWGlhb3dlaSBCYW8gd3Jv
dGU6Cj4gPj4+PiBUaGUgbGF5ZXJzY2FwZSBwbGF0Zm9ybSB1c2UgdGhlIGRvb3JiZWxsIHdheSB0
byB0cmlnZ2VyIE1TSVggaW50ZXJydXB0Cj4gPj4+PiBpbiBFUCBtb2RlLgo+ID4+Pj4KPiA+Pj4K
PiA+Pj4gSSBoYXZlIG5vIHByb2JsZW1zIHdpdGggdGhpcyBwYXRjaCwgaG93ZXZlci4uLgo+ID4+
Pgo+ID4+PiBBcmUgeW91IGFibGUgdG8gYWRkIHRvIHRoaXMgbWVzc2FnZSBhIHJlYXNvbiBmb3Ig
d2h5IHlvdSBhcmUgbWFraW5nIHRoaXMKPiA+Pj4gY2hhbmdlPyBEaWQgZHdfcGNpZV9lcF9yYWlz
ZV9tc2l4X2lycSBub3Qgd29yayB3aGVuIGZ1bmNfbm8gIT0gMD8gT3IgZGlkCj4gPj4+IGl0IHdv
cmsgeWV0IGR3X3BjaWVfZXBfcmFpc2VfbXNpeF9pcnFfZG9vcmJlbGwgaXMgbW9yZSBlZmZpY2ll
bnQ/Cj4gPj4KPiA+PiBUaGUgZmFjdCBpcyB0aGF0LCB0aGlzIGRyaXZlciBpcyB2ZXJpZmllZCBp
biBsczEwNDZhIHBsYXRmb3JtIG9mIE5YUCBiZWZvcmUsIGFuZCBsczEwNDZhIGRvbid0Cj4gPj4g
c3VwcG9ydCBNU0lYIGZlYXR1cmUsIHNvIEkgc2V0IHRoZSBtc2l4X2NhcGFibGUgb2YgcGNpX2Vw
Y19mZWF0dXJlcyBzdHJ1Y3QgaXMgZmFsc2UsCj4gPj4gYnV0IGluIG90aGVyIHBsYXRmb3JtLCBl
LmcuIGxzMTA4OGEsIGl0IHN1cHBvcnQgdGhlIE1TSVggZmVhdHVyZSwgSSB2ZXJpZmllZCB0aGUg
TVNJWAo+ID4+IGZlYXR1cmUgaW4gbHMxMDg4YSwgaXQgaXMgbm90IE9LLCBzbyBJIGNoYW5nZWQg
dG8gYW5vdGhlciB3YXkuIFRoYW5rcy4KPiA+IAo+ID4gUmlnaHQsIHNvIHRoZSBleGlzdGluZyBw
Y2ktbGF5ZXJzY2FwZS1lcC5jIGRyaXZlciBuZXZlciBzdXBwb3J0ZWQgTVNJWCB5ZXQgaXQKPiA+
IGVycm9uZW91c2x5IGhhZCBhIHN3aXRjaCBjYXNlIHN0YXRlbWVudCB0byBjYWxsIGR3X3BjaWVf
ZXBfcmFpc2VfbXNpeF9pcnEgd2hpY2gKPiA+IHdvdWxkIG5ldmVyIGdldCB1c2VkLgo+ID4gCj4g
PiBOb3cgdGhhdCB3ZSdyZSBhZGRpbmcgYSBwbGF0Zm9ybSB3aXRoIE1TSVggc3VwcG9ydCB0aGUg
ZXhpc3RpbmcKPiA+IGR3X3BjaWVfZXBfcmFpc2VfbXNpeF9pcnEgZG9lc24ndCB3b3JrIChmb3Ig
dGhpcyBwbGF0Zm9ybSkgc28gd2UgYXJlIGFkZGluZyBhCj4gPiBkaWZmZXJlbnQgbWV0aG9kLgo+
IAo+IEd1c3Rhdm8sIGNhbiB5b3UgY29uZmlybSBkd19wY2llX2VwX3JhaXNlX21zaXhfaXJxKCkg
d29ya3MgZm9yCj4gZGVzaWdud2FyZSBhcyBpdCBkaWRuJ3Qgd29yayBmb3IgYm90aCBtZSBhbmQg
WGlhb3dlaT8KClRoaXMgcXVlc3Rpb24gbmVlZHMgYW4gYW5zd2VyLgoKVGhhbmtzLApMb3Jlbnpv
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
