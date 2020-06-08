Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E00401F1D9C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 18:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=B/9e+MojdVX+Mr7OjIRq/KWIF59tuwm54PoE1Vxt8/I=; b=TGmVBMbVKGnvQJ
	X3ayJrtOnxNr4C7EbxpHmHPRo21E/i1J6a+OmV/16E8k4gHwFLorbCgeJuJUrhqTEa8wp+35WlEZ8
	EkTF5TBamcfzYU5EV8NtuugKtfp2442B4e9gBgGpUQJdUAWpcR+WtLmuuy+UdzhwPxyMk7QOK9g7B
	5+ambbVy4wv50oF8OSj0ULFJ2XdNdBtPhbVtTaH55HkjQ3y3lm0SLilikwwhKdcilmhTGntx9yjUL
	IgWkxPETE9DfFulq8hoSUXsafY/c2JxAXELkmTkpImL4Mgi+2jFKCBCdVVszdszOedkdKniEs+BqD
	LkVq8dJC1RqsZIbbNbYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiKqb-00032v-S3; Mon, 08 Jun 2020 16:42:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiKqS-00031w-RK
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 16:41:58 +0000
Received: from localhost (mobile-166-175-190-200.mycingular.net
 [166.175.190.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94E0D206A4;
 Mon,  8 Jun 2020 16:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591634515;
 bh=9+wSpwKeMW/wdGvPemQJqQQABIsLkQPW2K8a1nmcHm0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=vcbz31UJVkE9u265rOeW3ymi3j4Td/cEnamY/yY9ERI7XDF6hwJNBbYLuVspo03w5
 +nCy5Z6r28j/PRn+D0ikGuvRbXbN8X1Cx89vEnnUVpdAtfUfJ5pVag/p6J2pakmzHc
 k/V+AhP42zscGFN8csMJ506cA5x/mPmtM2EEkY74=
Date: Mon, 8 Jun 2020 11:41:48 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Zhangfei Gao <zhangfei.gao@linaro.org>
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
Message-ID: <20200608164148.GA1394249@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be91b0f0-c685-789d-6868-1c8ebd62b770@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_094156_924258_4DDE7983 
X-CRM114-Status: GOOD (  28.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-acpi@vger.kernel.org,
 Wangzhou <wangzhou1@hisilicon.com>, linux-crypto@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 kenneth-lee-2012@foxmail.com, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMDgsIDIwMjAgYXQgMTA6NTQ6MTVBTSArMDgwMCwgWmhhbmdmZWkgR2FvIHdy
b3RlOgo+IE9uIDIwMjAvNi82IOS4iuWNiDc6MTksIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4gPiBP
biBUaHUsIEp1biAwNCwgMjAyMCBhdCAwOTozMzowN1BNICswODAwLCBaaGFuZ2ZlaSBHYW8gd3Jv
dGU6Cj4gPiA+IE9uIDIwMjAvNi8yIOS4iuWNiDE6NDEsIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4g
PiA+ID4gT24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMDk6MzM6NDRBTSArMDIwMCwgSm9lcmcgUm9l
ZGVsIHdyb3RlOgo+ID4gPiA+ID4gT24gV2VkLCBNYXkgMjcsIDIwMjAgYXQgMDE6MTg6NDJQTSAt
MDUwMCwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiA+ID4gPiA+ID4gSXMgdGhpcyBzbG93ZG93biBz
aWduaWZpY2FudD8gIFdlIGFscmVhZHkgaXRlcmF0ZSBvdmVyIGV2ZXJ5IGRldmljZQo+ID4gPiA+
ID4gPiB3aGVuIGFwcGx5aW5nIFBDSV9GSVhVUF9GSU5BTCBxdWlya3MsIHNvIGlmIHdlIHVzZWQg
dGhlIGV4aXN0aW5nCj4gPiA+ID4gPiA+IFBDSV9GSVhVUF9GSU5BTCwgd2Ugd291bGRuJ3QgYmUg
YWRkaW5nIGEgbmV3IGxvb3AuICBXZSB3b3VsZCBvbmx5IGJlCj4gPiA+ID4gPiA+IGFkZGluZyB0
d28gbW9yZSBpdGVyYXRpb25zIHRvIHRoZSBsb29wIGluIHBjaV9kb19maXh1cHMoKSB0aGF0IHRy
aWVzCj4gPiA+ID4gPiA+IHRvIG1hdGNoIHF1aXJrcyBhZ2FpbnN0IHRoZSBjdXJyZW50IGRldmlj
ZS4gIEkgZG91YnQgdGhhdCB3b3VsZCBiZSBhCj4gPiA+ID4gPiA+IG1lYXN1cmFibGUgc2xvd2Rv
d24uCj4gPiA+ID4gPiBJIGRvbid0IGtub3cgaG93IHNpZ25pZmljYW50IGl0IGlzLCBidXQgSSBy
ZW1lbWJlciBwZW9wbGUgY29tcGxhaW5pbmcKPiA+ID4gPiA+IGFib3V0IGFkZGluZyBuZXcgUENJ
IHF1aXJrcyBiZWNhdXNlIGl0IHRha2VzIHRvbyBsb25nIGZvciB0aGVtIHRvIHJ1bgo+ID4gPiA+
ID4gdGhlbSBhbGwuIFRoYXQgd2FzIGluIHRoZSBkaXNjdXNzaW9uIGFib3V0IHRoZSBxdWlyayBk
aXNhYmxpbmcgQVRTIG9uCj4gPiA+ID4gPiBBTUQgU3RvbmV5IHN5c3RlbXMuCj4gPiA+ID4gPiAK
PiA+ID4gPiA+IFNvIGl0IHByb2JhYmx5IGRlcGVuZHMgb24gaG93IG1hbnkgUENJIGRldmljZXMg
YXJlIGluIHRoZSBzeXN0ZW0gd2hldGhlcgo+ID4gPiA+ID4gaXQgY2F1c2VzIGFueSBtZWFzdXJl
YWJsZSBzbG93ZG93bi4KPiA+ID4gPiBJIGZvdW5kIHRoaXMgWzFdIGZyb20gUGF1bCBNZW56ZWws
IHdoaWNoIHdhcyBhIHNsb3dkb3duIGNhdXNlZCBieQo+ID4gPiA+IHF1aXJrX3VzYl9lYXJseV9o
YW5kb2ZmKCkuICBJIHRoaW5rIHRoZSByZWFsIHByb2JsZW0gaXMgaW5kaXZpZHVhbAo+ID4gPiA+
IHF1aXJrcyB0aGF0IHRha2UgYSBsb25nIHRpbWUuCj4gPiA+ID4gCj4gPiA+ID4gVGhlIFBDSV9G
SVhVUF9JT01NVSB0aGluZ3Mgd2UncmUgdGFsa2luZyBhYm91dCBzaG91bGQgYmUgZmFzdCwgYW5k
IG9mCj4gPiA+ID4gY291cnNlLCB0aGV5J3JlIG9ubHkgcnVuIGZvciBtYXRjaGluZyBkZXZpY2Vz
IGFueXdheS4gIFNvIEknZCByYXRoZXIKPiA+ID4gPiBrZWVwIHRoZW0gYXMgUENJX0ZJWFVQX0ZJ
TkFMIHRoYW4gYWRkIGEgd2hvbGUgbmV3IHBoYXNlLgo+ID4gPiA+IAo+ID4gPiBUaGFua3MgQmpv
cm4gZm9yIHRha2luZyB0aW1lIGZvciB0aGlzLgo+ID4gPiBJZiBzbywgaXQgd291bGQgYmUgbXVj
aCBzaW1wbGVyLgo+ID4gPiAKPiA+ID4gKysrIGIvZHJpdmVycy9pb21tdS9pb21tdS5jCj4gPiA+
IEBAIC0yNDE4LDYgKzI0MTgsMTAgQEAgaW50IGlvbW11X2Z3c3BlY19pbml0KHN0cnVjdCBkZXZp
Y2UgKmRldiwgc3RydWN0Cj4gPiA+IGZ3bm9kZV9oYW5kbGUgKmlvbW11X2Z3bm9kZSwKPiA+ID4g
IMKgwqDCoMKgwqDCoMKgIGZ3c3BlYy0+aW9tbXVfZndub2RlID0gaW9tbXVfZndub2RlOwo+ID4g
PiAgwqDCoMKgwqDCoMKgwqAgZndzcGVjLT5vcHMgPSBvcHM7Cj4gPiA+ICDCoMKgwqDCoMKgwqDC
oCBkZXZfaW9tbXVfZndzcGVjX3NldChkZXYsIGZ3c3BlYyk7Cj4gPiA+ICsKPiA+ID4gK8KgwqDC
oMKgwqDCoCBpZiAoZGV2X2lzX3BjaShkZXYpKQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBwY2lfZml4dXBfZGV2aWNlKHBjaV9maXh1cF9maW5hbCwgdG9fcGNpX2RldihkZXYp
KTsKPiA+ID4gKwo+ID4gPiAKPiA+ID4gVGhlbiBwY2lfZml4dXBfZmluYWwgd2lsbCBiZSBjYWxs
ZWQgdHdpY2UsIHRoZSBmaXJzdCBpbiBwY2lfYnVzX2FkZF9kZXZpY2UuCj4gPiA+IEhlcmUgaW4g
aW9tbXVfZndzcGVjX2luaXQgaXMgdGhlIHNlY29uZCB0aW1lLCBzcGVjaWZpY2FsbHkgZm9yIGlv
bW11X2Z3c3BlYy4KPiA+ID4gV2lsbCBzZW5kIHRoaXMgd2hlbiA1LjgtcmMxIGlzIG9wZW4uCj4g
Pgo+ID4gV2FpdCwgdGhpcyB3aG9sZSBmaXh1cCBhcHByb2FjaCBzZWVtcyB3cm9uZyB0byBtZS4g
IE5vIG1hdHRlciBob3cgeW91Cj4gPiBkbyB0aGUgZml4dXAsIGl0J3Mgc3RpbGwgYSBmaXh1cCwg
d2hpY2ggbWVhbnMgaXQgcmVxdWlyZXMgb25nb2luZwo+ID4gbWFpbnRlbmFuY2UuICBTdXJlbHkg
d2UgZG9uJ3Qgd2FudCB0byBoYXZlIHRvIGFkZCB0aGUgVmVuZG9yL0RldmljZSBJRAo+ID4gZm9y
IGV2ZXJ5IG5ldyBBTUJBIGRldmljZSB0aGF0IGNvbWVzIGFsb25nLCBkbyB3ZT8KPiA+IAo+IEhl
cmUgdGhlIGZha2UgcGNpIGRldmljZSBoYXMgc3RhbmRhcmQgUENJIGNmZyBzcGFjZSwgYnV0IHBo
eXNpY2FsCj4gaW1wbGVtZW50YXRpb24gaXMgYmFzZSBvbiBBTUJBCj4gVGhleSBjYW4gcHJvdmlk
ZSBwYXNpZCBmZWF0dXJlLgo+IEhvd2V2ZXIsCj4gMSwgZG9lcyBub3Qgc3VwcG9ydCB0bHAgc2lu
Y2UgdGhleSBhcmUgbm90IHJlYWwgcGNpIGRldmljZXMuCj4gMi4gZG9lcyBub3Qgc3VwcG9ydCBw
cmksIGluc3RlYWQgc3VwcG9ydCBzdGFsbCAocHJvdmlkZWQgYnkgc21tdSkKPiBBbmQgc3RhbGwg
aXMgbm90IGEgcGNpIGZlYXR1cmUsIHNvIGl0IGlzIG5vdCBkZXNjcmliZWQgaW4gc3RydWN0IHBj
aV9kZXYsCj4gYnV0IGluIHN0cnVjdCBpb21tdV9md3NwZWMuCj4gU28gd2UgdXNlIHRoaXMgZml4
dXAgdG8gdGVsbCBwY2kgc3lzdGVtIHRoYXQgdGhlIGRldmljZXMgY2FuIHN1cHBvcnQgc3RhbGws
Cj4gYW5kIGhlcmVieSBzdXBwb3J0IHBhc2lkLgoKVGhpcyBkaWQgbm90IGFuc3dlciBteSBxdWVz
dGlvbi4gIEFyZSB5b3UgcHJvcG9zaW5nIHRoYXQgd2UgdXBkYXRlIGEKcXVpcmsgZXZlcnkgdGlt
ZSBhIG5ldyBBTUJBIGRldmljZSBpcyByZWxlYXNlZD8gIEkgZG9uJ3QgdGhpbmsgdGhhdAp3b3Vs
ZCBiZSBhIGdvb2QgbW9kZWwuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
