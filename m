Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DACA10B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 07:14:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/J75IPik4Ii5A4Gb2mu3zdA6lwU06MjB5jcWMGr9wIE=; b=LQngDVJhGt1FuR
	oTQAq+o+L+4TyKbjG4kRS5nTz/NSRQ7A2flBRSVt+SOOoWVDw+ScByq3GFLph4aavhPwwhTZzHWL0
	x+1yxZAMu67irJArFSXwDdUawOMu0kVMKa0Y0AzvMxGon8ARrJ0BOJYXU++QBN4hSLUvFODD7VC14
	jd/cZ/MfFYm7bR+fT2Z0eaEaM+SAx5vbxER6D8g8Pf0YICEKSbPrv0zH6E4UKUOZFubplxEUi+Xuk
	AahgmQ1pmDbE+U3YFQP+iMhNxUNQZTNdSsd1WL9xbJ/SqxhN7cs77u9U27dPdqplJ394fKv6vpwDm
	y0kbcZxnIZzLEAWbyHQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Cks-0004qV-Ug; Thu, 29 Aug 2019 05:13:55 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Cki-0004pu-17
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 05:13:45 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7T5DVQ1080368;
 Thu, 29 Aug 2019 00:13:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567055611;
 bh=LYyFnkusAO06maJIyAoLh4uHHcHnpkVbJ8SCEW6OJlg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=xAvXEf/1vTB129pEHtXkhBGqX8JXqhzbbly6gS1T+vqU0Wn+9Yi+jY+g4E3aPNqVZ
 bs2/RdD9XzUDZalkIWDSNadfyS+dVvioyPCUIQOo99sbAAb86ZifKDpYqA2RMaxQk3
 0uTYPMDWLATmZWbjfLTy8NyNqesUw632YUQfGKm0=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7T5DVgk118886
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 29 Aug 2019 00:13:31 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 29
 Aug 2019 00:13:31 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 29 Aug 2019 00:13:31 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7T5DOv7066185;
 Thu, 29 Aug 2019 00:13:25 -0500
Subject: Re: [PATCH v2 07/10] PCI: layerscape: Modify the MSIX to the doorbell
 way
To: Andrew Murray <andrew.murray@arm.com>, Xiaowei Bao <xiaowei.bao@nxp.com>, 
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
 <20190822112242.16309-7-xiaowei.bao@nxp.com>
 <20190823135816.GH14582@e119886-lin.cambridge.arm.com>
 <AM5PR04MB3299E50BA5D7579D41B8B4F9F5A70@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <20190827132504.GL14582@e119886-lin.cambridge.arm.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <e64a484c-7cf5-5f65-400c-47128ab45e52@ti.com>
Date: Thu, 29 Aug 2019 10:43:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827132504.GL14582@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_221344_154030_C8D48536 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

R3VzdGF2bywKCk9uIDI3LzA4LzE5IDY6NTUgUE0sIEFuZHJldyBNdXJyYXkgd3JvdGU6Cj4gT24g
U2F0LCBBdWcgMjQsIDIwMTkgYXQgMTI6MDg6NDBBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3JvdGU6
Cj4+Cj4+Cj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+Pj4gRnJvbTogQW5kcmV3IE11
cnJheSA8YW5kcmV3Lm11cnJheUBhcm0uY29tPgo+Pj4gU2VudDogMjAxOeW5tDjmnIgyM+aXpSAy
MTo1OAo+Pj4gVG86IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPgo+Pj4gQ2M6IGJo
ZWxnYWFzQGdvb2dsZS5jb207IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5j
b207Cj4+PiBzaGF3bmd1b0BrZXJuZWwub3JnOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47
IGtpc2hvbkB0aS5jb207Cj4+PiBsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY287IGFybmRAYXJuZGIu
ZGU7IGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnOyBNLmguCj4+PiBMaWFuIDxtaW5naHVhbi5s
aWFuQG54cC5jb20+OyBNaW5na2FpIEh1IDxtaW5na2FpLmh1QG54cC5jb20+OyBSb3kKPj4+IFph
bmcgPHJveS56YW5nQG54cC5jb20+OyBqaW5nb29oYW4xQGdtYWlsLmNvbTsKPj4+IGd1c3Rhdm8u
cGltZW50ZWxAc3lub3BzeXMuY29tOyBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOwo+Pj4gZGV2
aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7Cj4+
PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4cHBjLWRldkBsaXN0
cy5vemxhYnMub3JnCj4+PiBTdWJqZWN0OiBSZTogW1BBVENIIHYyIDA3LzEwXSBQQ0k6IGxheWVy
c2NhcGU6IE1vZGlmeSB0aGUgTVNJWCB0byB0aGUKPj4+IGRvb3JiZWxsIHdheQo+Pj4KPj4+IE9u
IFRodSwgQXVnIDIyLCAyMDE5IGF0IDA3OjIyOjM5UE0gKzA4MDAsIFhpYW93ZWkgQmFvIHdyb3Rl
Ogo+Pj4+IFRoZSBsYXllcnNjYXBlIHBsYXRmb3JtIHVzZSB0aGUgZG9vcmJlbGwgd2F5IHRvIHRy
aWdnZXIgTVNJWCBpbnRlcnJ1cHQKPj4+PiBpbiBFUCBtb2RlLgo+Pj4+Cj4+Pgo+Pj4gSSBoYXZl
IG5vIHByb2JsZW1zIHdpdGggdGhpcyBwYXRjaCwgaG93ZXZlci4uLgo+Pj4KPj4+IEFyZSB5b3Ug
YWJsZSB0byBhZGQgdG8gdGhpcyBtZXNzYWdlIGEgcmVhc29uIGZvciB3aHkgeW91IGFyZSBtYWtp
bmcgdGhpcwo+Pj4gY2hhbmdlPyBEaWQgZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2lycSBub3Qgd29y
ayB3aGVuIGZ1bmNfbm8gIT0gMD8gT3IgZGlkCj4+PiBpdCB3b3JrIHlldCBkd19wY2llX2VwX3Jh
aXNlX21zaXhfaXJxX2Rvb3JiZWxsIGlzIG1vcmUgZWZmaWNpZW50Pwo+Pgo+PiBUaGUgZmFjdCBp
cyB0aGF0LCB0aGlzIGRyaXZlciBpcyB2ZXJpZmllZCBpbiBsczEwNDZhIHBsYXRmb3JtIG9mIE5Y
UCBiZWZvcmUsIGFuZCBsczEwNDZhIGRvbid0Cj4+IHN1cHBvcnQgTVNJWCBmZWF0dXJlLCBzbyBJ
IHNldCB0aGUgbXNpeF9jYXBhYmxlIG9mIHBjaV9lcGNfZmVhdHVyZXMgc3RydWN0IGlzIGZhbHNl
LAo+PiBidXQgaW4gb3RoZXIgcGxhdGZvcm0sIGUuZy4gbHMxMDg4YSwgaXQgc3VwcG9ydCB0aGUg
TVNJWCBmZWF0dXJlLCBJIHZlcmlmaWVkIHRoZSBNU0lYCj4+IGZlYXR1cmUgaW4gbHMxMDg4YSwg
aXQgaXMgbm90IE9LLCBzbyBJIGNoYW5nZWQgdG8gYW5vdGhlciB3YXkuIFRoYW5rcy4KPiAKPiBS
aWdodCwgc28gdGhlIGV4aXN0aW5nIHBjaS1sYXllcnNjYXBlLWVwLmMgZHJpdmVyIG5ldmVyIHN1
cHBvcnRlZCBNU0lYIHlldCBpdAo+IGVycm9uZW91c2x5IGhhZCBhIHN3aXRjaCBjYXNlIHN0YXRl
bWVudCB0byBjYWxsIGR3X3BjaWVfZXBfcmFpc2VfbXNpeF9pcnEgd2hpY2gKPiB3b3VsZCBuZXZl
ciBnZXQgdXNlZC4KPiAKPiBOb3cgdGhhdCB3ZSdyZSBhZGRpbmcgYSBwbGF0Zm9ybSB3aXRoIE1T
SVggc3VwcG9ydCB0aGUgZXhpc3RpbmcKPiBkd19wY2llX2VwX3JhaXNlX21zaXhfaXJxIGRvZXNu
J3Qgd29yayAoZm9yIHRoaXMgcGxhdGZvcm0pIHNvIHdlIGFyZSBhZGRpbmcgYQo+IGRpZmZlcmVu
dCBtZXRob2QuCgpHdXN0YXZvLCBjYW4geW91IGNvbmZpcm0gZHdfcGNpZV9lcF9yYWlzZV9tc2l4
X2lycSgpIHdvcmtzIGZvciBkZXNpZ253YXJlIGFzIGl0CmRpZG4ndCB3b3JrIGZvciBib3RoIG1l
IGFuZCBYaWFvd2VpPwoKVGhhbmtzCktpc2hvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
