Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAE21B0432
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 10:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gJF0IEjXw2xQUXTJhgel44CE6VRhHMa4BpRkprwwJM=; b=kdRwkhhoXFASkV
	aWWF51ezLDCBXoTmuYr5v3x4trJraCS4JgykKKLRRYqsuGjPeVwc4xB58yI8KCRMudrwIwVHKuguM
	+qqrw8YNWbff7XPh85JyiBAmiH9/CTRV67fFAXmLpqEkejYN4mFNi0wkj++3ukaxMM3FnklKgd2gE
	AL43rX8d0R19nOm2nRiM+rDkoSKXezrFgoqecwMABxrys3KM0+7TSyn+RuV0RG3u9atc3J1tpYDaj
	zdOhq8c05V0pVea5zwYiO1mFDJcgEVnO1yvuTVLutC2SFG3VUdnFryiMYJlW6V5/eQwzwDnTGRX24
	NIgCXssynTbtSI9KGicQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQRed-0003bZ-2t; Mon, 20 Apr 2020 08:19:47 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQReT-0003aa-R4
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:19:39 +0000
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id 68634388
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Mon, 20 Apr 2020 01:19:16 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id BCD734F569;
 Mon, 20 Apr 2020 08:19:07 +0000 (UTC)
Message-ID: <13564b9a57f734524357a26665c48211e436e305.camel@aosc.io>
Subject: Re: [RFC PATCH] PCI: dwc: add support for Allwinner SoCs' PCIe
 controller
From: Icenowy Zheng <icenowy@aosc.io>
To: Maxime Ripard <maxime@cerno.tech>
Date: Mon, 20 Apr 2020 16:18:58 +0800
In-Reply-To: <20200406082732.nt5d7puwn65j4nvl@gilmour.lan>
References: <20200402160549.296203-1-icenowy@aosc.io>
 <20200406082732.nt5d7puwn65j4nvl@gilmour.lan>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1587370752;
 h=from:subject:date:message-id:to:cc:mime-version:content-type:content-transfer-encoding:in-reply-to:references;
 bh=pvH6iSsYcrlSeIVQKlxTDceU5G6X0/BLxZ6SjrM8hqs=;
 b=jWJHu3CfoBStlnD7HAMF8CReqSqLOEfzgiTCkOcL0L3EaFstbOzaX6XfzDESmGnFOaWKMx
 MFVRRdsirVgRlt+3h6O6GWmgG+K2n16Ow54t3v7gEK3myO/5F/386kvhaIiJdakasAxr8I
 1ZA+7o372FXcMxh8rqGr0ZSU7sTaK84=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_011937_916234_E03A9CCC 
X-CRM114-Status: GOOD (  28.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:8001:184d:5400:2ff:fe7b:e8bd listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

5ZyoIDIwMjAtMDQtMDbmmJ/mnJ/kuIDnmoQgMTA6MjcgKzAyMDDvvIxNYXhpbWUgUmlwYXJk5YaZ
6YGT77yaCj4gSGksCj4gCj4gT24gRnJpLCBBcHIgMDMsIDIwMjAgYXQgMTI6MDU6NDlBTSArMDgw
MCwgSWNlbm93eSBaaGVuZyB3cm90ZToKPiA+IFRoZSBBbGx3aW5uZXIgSDYgU29DIHVzZXMgRGVz
aWduV2FyZSdzIFBDSWUgY29udHJvbGxlciB0byBwcm92aWRlIGEKPiA+IFBDSWUKPiA+IGhvc3Qu
Cj4gPiAKPiA+IEhvd2V2ZXIsIG9uIEFsbHdpbm5lciBINiwgdGhlIFBDSWUgaG9zdCBoYXMgYmFk
IE1NSU8sIHdoaWNoIG5lZWRzCj4gPiB0byBiZQo+ID4gd29ya2Fyb3VuZGVkLiBBIHdvcmthcm91
bmQgd2l0aCB0aGUgRUwyIGh5cGVydmlzb3IgZnVuY3Rpb25hbGl0eSBvZgo+ID4gQVJNCj4gPiBD
b3J0ZXggY29yZXMgaXMgbm93IGF2YWlsYWJsZSwgd2hpY2ggd3JhcHMgTU1JTyBvcGVyYXRpb25z
Lgo+ID4gCj4gPiBUaGlzIHBhdGNoIGlzIGdvaW5nIHRvIGFkZCBhIGRyaXZlciBmb3IgdGhlIERX
QyBQQ0llIGNvbnRyb2xsZXIKPiA+IGF2YWlsYWJsZSBpbiBBbGx3aW5uZXIgU29DcywgZWl0aGVy
IHRoZSBINiBvbmUgd2hlbiB3cmFwcGVkIGJ5IHRoZQo+ID4gaHlwZXJ2aXNvciAoc28gdGhhdCB0
aGUgZHJpdmVyIGNhbiBjb25zaWRlciBpdCBhcyBhbiBvcmRpbmFyeSBQQ0llCj4gPiBjb250cm9s
bGVyKSBvciBmdXJ0aGVyIG5vdCBidWdneSBvbmVzLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBJ
Y2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFvc2MuaW8+Cj4gPiAtLS0KPiA+IFRoZXJlJ3Mgbm8gZGV2
aWNlIHRyZWUgYmluZGluZyBwYXRjaCBhdmFpbGFibGUsIGJlY2F1c2UgSSBzdGlsbAo+ID4gaGF2
ZQo+ID4gcXVlc3Rpb25zIG9uIHRoZSBkZXZpY2UgdHJlZSBjb21wYXRpYmxlIHN0cmluZy4gSSB3
YW50IHRvIHVzZSBpdCB0bwo+ID4gZGVzY3JpYmUgdGhhdCB0aGlzIGRyaXZlciBkb2Vzbid0IHN1
cHBvcnQgdGhlICJuYXRpdmUgQWxsd2lubmVyIEg2Cj4gPiBQQ0llCj4gPiBjb250cm9sbGVyIiwg
YnV0IGEgd3JhcHBlZCB2ZXJzaW9uIHdpdGggbXkgaHlwZXJ2aXNvci4KPiA+IAo+ID4gSSB0aGlu
ayBzdXBwb3J0aW5nIGEgInBhcmEtcGh5c2ljYWwiIGRldmljZSBpcyBzb21lIG5ldyB0aGluZywg
c28KPiA+IHRoaXMKPiA+IHBhdGNoIGlzIFJGQy4KPiA+IAo+ID4gTXkgaHlwZXJ2aXNvciBpcyBh
dCBbMV0sIGFuZCBzb21lIGJhc2ljIHVzYWdlIGRvY3VtZW50YXRpb24gaXMgYXQKPiA+IFsyXS4K
PiA+IAo+ID4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9JY2Vub3d5L2F3LWVsMi1iYXJlYm9uZQo+
ID4gWzJdIAo+ID4gaHR0cHM6Ly9mb3J1bS5hcm1iaWFuLmNvbS90b3BpYy8xMzUyOS1hLXRyeS1v
bi11dGlsaXppbmctaDYtcGNpZS13aXRoLXZpcnR1YWxpemF0aW9uLwo+IAo+IEknbSBhIGJpdCBj
b25jZXJuZWQgdG8gdGhyb3cgeWV0IGFub3RoZXIgbWFuZGF0b3J5LCBkaWZmaWN1bHQgdG8KPiB1
cGRhdGUsIGNvbXBvbmVudCBpbiB0aGUgYWxyZWFkeSBxdWl0ZSBsb25nIGJvb3QgY2hhaW4uCj4g
Cj4gR2V0dGluZyBmaXhlcyBkZXBsb3llZCBpbiBBVEYgb3IgVS1Cb290IGlzIGFscmVhZHkgcHJl
dHR5IGxvbmcsCj4gaGF2aW5nCj4gYW5vdGhlciBjb21wb25lbnQgaW4gdGhlcmUgd2lsbCBqdXN0
IG1ha2UgaXQgd29yc2UsIGFuZCBpdCdzIGFub3RoZXIKPiBoYXJkIHRvIGRlYnVnIGNvbXBvbmVu
dCB0aGF0IHdlIHRocm93IGludG8gdGhlIG1peC4KPiAKPiBBbmQgdGhpcyBwcmV2ZW50cyBhbnkg
dXNlIG9mIHZpcnR1YWxpc2F0aW9uIG9uIHRoZSBwbGF0Zm9ybS4KPiAKPiBJIGhhdmVuJ3QgZm91
bmQgYW4gZXhwbGFuYXRpb24gb24gd2hhdCB0aGF0IGh5cGVydmlzb3IgaXMgZG9pbmcKPiBleGFj
dGx5LCBidXQgZnJvbSBhIGxvb2sgYXQgaXQgaXQgc2VlbXMgdGhhdCBpdCB3aWxsIHRyYXAgYWxs
IHRoZQo+IGFjY2Vzc2VzIHRvIHRoZSBQQ0llIG1lbW9yeSByZWdpb24gdG8gZW11bGF0ZSBhIHJl
Z3VsYXIgc3BhY2Ugb24gdG9wCj4gb2YgdGhlIHJlc3RyaWN0ZWQgb25lIHdlIGhhdmU/Cj4gCj4g
SWYgc28sIGNhbid0IHdlIGRvIHRoYXQgZnJvbSB0aGUga2VybmVsIGRpcmVjdGx5IGJ5IHVzaW5n
IGEgbWVtb3J5Cj4gcmVnaW9uIHRoYXQgYWx3YXlzIGZhdWx0IHdpdGggYSBmYXVsdCBoYW5kbGVy
IGxpa2UgRnJhbWVidWZmZXIncwo+IGRlZmVycmVkX2lvIGlzIGRvaW5nIChkcml2ZXJzL3ZpZGVv
L2ZiZGV2L2NvcmUvZmJfZGVmaW8uYykgPwoKSSBkb24ndCBrbm93IHdlbGwgYWJvdXQgdGhlIG1l
bW9yeSBtYW5hZ2VtZW50IG9mIHRoZSBrZXJuZWwuIEhvd2V2ZXIsCmZvciBQQ0llIG1lbW9yeSBz
cGFjZSwgdGhlIGtlcm5lbCBhbGxvd3Mgc2ltcGxlIGlvcmVtYXAoKSBvbiBpdC4gU28Kd3JhcHBp
bmcgaXQgc2hvdWxkbid0IGJlIHNvIGVhc3kuCgpBbmQgSSB0aGluayB0aGUgbWFpbnRhaW5lciBv
ZiBwY2llLXRhbmdvIHN1ZmZlcnMgZnJvbSBhIGV2ZW4gbW9yZQpzaW1wbGUgaXNzdWUgLS0gUENJ
IGNvbmZpZyBzcGFjZSBhbmQgTU1JTyBzcGFjZSBhcmUgbXV4ZWQuIFRoZXkgZmFpbGVkCnRvIHdy
YXAgTU1JTyBJL08sIGFuZCBtYWtlIGEgd2FybmluZyBhbmQgdGFpbnQgdGhlIGtlcm5lbC4gcGNp
ZS10YW5nbwppcyBtZW50aW9uZWQgaW4gbXkgcHJldmlvdXMgZGlzY3Vzc2lvbiBvbiBINiBQQ0ll
LCBzZWUgWzFdLgoKWzFdIGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4LXBjaS9t
c2c3MDA2NC5odG1sCgo+IAo+IE1heGltZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
