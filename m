Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E3F1FA4CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 01:52:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=O1EiXonFCz4+OoOi9j7jkSirz8+91VJ4tr7tmspmHGA=; b=S2Afbk9x5ZT8e1
	n8whAVQKrMn5IpV8stx0/lTp45/YHIBxLigz0qgk526oFDtkxb7XI4gvHCI+dNsqdGhHFA1xCDa2l
	Wr3JGOs3S9o6viYb6OcArAnpQj8aiR2QgHfhCJUWkwMy7BviX6ISAu+C0c9bhjAETdAXdCTYIZ2Aq
	JrlKi9pb3bKxFdoYm2rT6J6vmMnV+IwmpWxeFn8bq50oxwP7B2YrgeRQYqQVqRIPTUDoe4NKzDoR/
	/VT9YP4I82qgpngVB5ywv03StxuDNBNDsqfCc+DvyAKltfUsYTGR5Wu2gpL/0nZf/d+a2b3axCL0q
	zlJafPpRNJ6fv23rgzDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkyu3-0007Yu-QL; Mon, 15 Jun 2020 23:52:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkyto-0007YZ-7H
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 23:52:21 +0000
Received: from localhost (mobile-166-170-222-206.mycingular.net
 [166.170.222.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6A7B2068E;
 Mon, 15 Jun 2020 23:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592265139;
 bh=LAqX2guWt3SaWaTtIVptXEHktenJg7iaeDhOq75EGOc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=g2QUd2ngXMfEz2LsTipBItohXSvpmTBaOTiRrZKoSwAIbpdN01pkaTau0u7EATsXD
 1j1XCGLhCbt/rateSDFiTc7BcQViqtV3HMRlLm5J3nOOqe69N1HGAm870H7wKJjki0
 S+aXFOYX7SF+nnBPJxZUEPmc9FAaD8Y6tEO8/hiU=
Date: Mon, 15 Jun 2020 18:52:17 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Zhangfei Gao <zhangfei.gao@linaro.org>
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
Message-ID: <20200615235217.GA1921846@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8f9f6a77-4a65-afeb-0af9-e4868b52d7ce@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_165220_301704_B0BD4201 
X-CRM114-Status: GOOD (  36.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Thanu Rangarajan <Thanu.Rangarajan@arm.com>,
 jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci <linux-pci@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Wangzhou <wangzhou1@hisilicon.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, kenneth-lee-2012@foxmail.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBKdW4gMTMsIDIwMjAgYXQgMTA6MzA6NTZQTSArMDgwMCwgWmhhbmdmZWkgR2FvIHdy
b3RlOgo+IE9uIDIwMjAvNi8xMSDkuIvljYg5OjQ0LCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+ID4g
KysrIGIvZHJpdmVycy9pb21tdS9pb21tdS5jCj4gPiA+ID4gPiA+ID4gPiA+ID4gQEAgLTI0MTgs
NiArMjQxOCwxMCBAQCBpbnQgaW9tbXVfZndzcGVjX2luaXQoc3RydWN0IGRldmljZSAqZGV2LCBz
dHJ1Y3QKPiA+ID4gPiA+ID4gPiA+ID4gPiBmd25vZGVfaGFuZGxlICppb21tdV9md25vZGUsCj4g
PiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgZndzcGVjLT5pb21tdV9md25vZGUgPSBpb21t
dV9md25vZGU7Cj4gPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgZndzcGVjLT5vcHMgPSBv
cHM7Cj4gPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgZGV2X2lvbW11X2Z3c3BlY19zZXQo
ZGV2LCBmd3NwZWMpOwo+ID4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiA+ID4gPiAr
ICAgICAgIGlmIChkZXZfaXNfcGNpKGRldikpCj4gPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgIHBjaV9maXh1cF9kZXZpY2UocGNpX2ZpeHVwX2ZpbmFsLCB0b19wY2lfZGV2KGRldikp
Owo+ID4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
PiA+ID4gPiBUaGVuIHBjaV9maXh1cF9maW5hbCB3aWxsIGJlIGNhbGxlZCB0d2ljZSwgdGhlIGZp
cnN0IGluIHBjaV9idXNfYWRkX2RldmljZS4KPiA+ID4gPiA+ID4gPiA+ID4gPiBIZXJlIGluIGlv
bW11X2Z3c3BlY19pbml0IGlzIHRoZSBzZWNvbmQgdGltZSwgc3BlY2lmaWNhbGx5IGZvciBpb21t
dV9md3NwZWMuCj4gPiA+ID4gPiA+ID4gPiA+ID4gV2lsbCBzZW5kIHRoaXMgd2hlbiA1LjgtcmMx
IGlzIG9wZW4uCj4gPiA+ID4gPiA+ID4gPiA+IFdhaXQsIHRoaXMgd2hvbGUgZml4dXAgYXBwcm9h
Y2ggc2VlbXMgd3JvbmcgdG8gbWUuICBObyBtYXR0ZXIgaG93IHlvdQo+ID4gPiA+ID4gPiA+ID4g
PiBkbyB0aGUgZml4dXAsIGl0J3Mgc3RpbGwgYSBmaXh1cCwgd2hpY2ggbWVhbnMgaXQgcmVxdWly
ZXMgb25nb2luZwo+ID4gPiA+ID4gPiA+ID4gPiBtYWludGVuYW5jZS4gIFN1cmVseSB3ZSBkb24n
dCB3YW50IHRvIGhhdmUgdG8gYWRkIHRoZSBWZW5kb3IvRGV2aWNlIElECj4gPiA+ID4gPiA+ID4g
PiA+IGZvciBldmVyeSBuZXcgQU1CQSBkZXZpY2UgdGhhdCBjb21lcyBhbG9uZywgZG8gd2U/Cj4g
PiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gSGVyZSB0aGUgZmFrZSBwY2kgZGV2aWNl
IGhhcyBzdGFuZGFyZCBQQ0kgY2ZnIHNwYWNlLCBidXQgcGh5c2ljYWwKPiA+ID4gPiA+ID4gPiA+
IGltcGxlbWVudGF0aW9uIGlzIGJhc2Ugb24gQU1CQQo+ID4gPiA+ID4gPiA+ID4gVGhleSBjYW4g
cHJvdmlkZSBwYXNpZCBmZWF0dXJlLgo+ID4gPiA+ID4gPiA+ID4gSG93ZXZlciwKPiA+ID4gPiA+
ID4gPiA+IDEsIGRvZXMgbm90IHN1cHBvcnQgdGxwIHNpbmNlIHRoZXkgYXJlIG5vdCByZWFsIHBj
aSBkZXZpY2VzLgo+ID4gPiA+ID4gPiA+ID4gMi4gZG9lcyBub3Qgc3VwcG9ydCBwcmksIGluc3Rl
YWQgc3VwcG9ydCBzdGFsbCAocHJvdmlkZWQgYnkgc21tdSkKPiA+ID4gPiA+ID4gPiA+IEFuZCBz
dGFsbCBpcyBub3QgYSBwY2kgZmVhdHVyZSwgc28gaXQgaXMgbm90IGRlc2NyaWJlZCBpbiBzdHJ1
Y3QgcGNpX2RldiwKPiA+ID4gPiA+ID4gPiA+IGJ1dCBpbiBzdHJ1Y3QgaW9tbXVfZndzcGVjLgo+
ID4gPiA+ID4gPiA+ID4gU28gd2UgdXNlIHRoaXMgZml4dXAgdG8gdGVsbCBwY2kgc3lzdGVtIHRo
YXQgdGhlIGRldmljZXMgY2FuIHN1cHBvcnQgc3RhbGwsCj4gPiA+ID4gPiA+ID4gPiBhbmQgaGVy
ZWJ5IHN1cHBvcnQgcGFzaWQuCj4gPiA+ID4gPiA+ID4gVGhpcyBkaWQgbm90IGFuc3dlciBteSBx
dWVzdGlvbi4gIEFyZSB5b3UgcHJvcG9zaW5nIHRoYXQgd2UgdXBkYXRlIGEKPiA+ID4gPiA+ID4g
PiBxdWlyayBldmVyeSB0aW1lIGEgbmV3IEFNQkEgZGV2aWNlIGlzIHJlbGVhc2VkPyAgSSBkb24n
dCB0aGluayB0aGF0Cj4gPiA+ID4gPiA+ID4gd291bGQgYmUgYSBnb29kIG1vZGVsLgo+ID4gPiA+
ID4gPiBZZXMsIHlvdSBhcmUgcmlnaHQsIGJ1dCB3ZSBkbyBub3QgaGF2ZSBhbnkgYmV0dGVyIGlk
ZWEgeWV0Lgo+ID4gPiA+ID4gPiBDdXJyZW50bHkgd2UgaGF2ZSB0aHJlZSBmYWtlIHBjaSBkZXZp
Y2VzLCB3aGljaCBzdXBwb3J0IHN0YWxsIGFuZCBwYXNpZC4KPiA+ID4gPiA+ID4gV2UgaGF2ZSB0
byBsZXQgcGNpIHN5c3RlbSBrbm93IHRoZSBkZXZpY2UgY2FuIHN1cHBvcnQgcGFzaWQsIGJlY2F1
c2Ugb2YKPiA+ID4gPiA+ID4gc3RhbGwgZmVhdHVyZSwgdGhvdWdoIG5vdCBzdXBwb3J0IHByaS4K
PiA+ID4gPiA+ID4gRG8geW91IGhhdmUgYW55IG90aGVyIGlkZWFzPwo+ID4gPiA+ID4gSXQgc291
bmRzIGxpa2UgdGhlIGJlc3Qgd2F5IHdvdWxkIGJlIHRvIGFsbG9jYXRlIGEgUENJIGNhcGFiaWxp
dHkgZm9yIGl0LCBzbwo+ID4gPiA+ID4gZGV0ZWN0aW9uIGNhbiBiZSBkb25lIHRocm91Z2ggY29u
ZmlnIHNwYWNlLCBhdCBsZWFzdCBpbiBmdXR1cmUgZGV2aWNlcywKPiA+ID4gPiA+IG9yIHBvc3Np
Ymx5IGFmdGVyIGEgZmlybXdhcmUgdXBkYXRlIGlmIHRoZSBjb25maWcgc3BhY2UgaW4geW91ciBz
eXN0ZW0KPiA+ID4gPiA+IGlzIGNvbnRyb2xsZWQgYnkgZmlybXdhcmUgc29tZXdoZXJlLiAgT25j
ZSB0aGVyZSBpcyBhIHByb3BlciBtZWNoYW5pc20KPiA+ID4gPiA+IHRvIGRvIHRoaXMsIHVzaW5n
IGZpeHVwcyB0byBkZXRlY3QgdGhlIGVhcmx5IGRldmljZXMgdGhhdCBkb24ndCB1c2UgdGhhdAo+
ID4gPiA+ID4gc2hvdWxkIGJlIHVuY29udHJvdmVyc2lhbC4gSSBoYXZlIG5vIGlkZWEgd2hhdCB0
aGUgcHJvY2VzcyBvciB0aW1lbGluZQo+ID4gPiA+ID4gaXMgdG8gYWRkIG5ldyBjYXBhYmlsaXRp
ZXMgaW50byB0aGUgUENJZSBzcGVjaWZpY2F0aW9uLCBvciBpZiB0aGlzIG9uZQo+ID4gPiA+ID4g
d291bGQgYmUgYWNjZXB0YWJsZSB0byB0aGUgUENJIFNJRyBhdCBhbGwuCj4gPiA+ID4gVGhhdCBz
b3VuZHMgbGlrZSBhIHBvc3NpYmlsaXR5LiAgVGhlIHNwZWMgYWxyZWFkeSBkZWZpbmVzIGEKPiA+
ID4gPiBWZW5kb3ItU3BlY2lmaWMgRXh0ZW5kZWQgQ2FwYWJpbGl0eSAoUENJZSByNS4wLCBzZWMg
Ny45LjUpIHRoYXQgbWlnaHQKPiA+ID4gPiBiZSBhIGNhbmRpZGF0ZS4KPiA+ID4gV2lsbCBpbnZl
c3RpZ2F0ZSB0aGlzLCB0aGFua3MgQmpvcm4KPiA+IEZXSVcsIHRoZXJlJ3MgYWxzbyBhIFZlbmRv
ci1TcGVjaWZpYyBDYXBhYmlsaXR5IHRoYXQgY2FuIGFwcGVhciBpbiB0aGUKPiA+IGZpcnN0IDI1
NiBieXRlcyBvZiBjb25maWcgc3BhY2UgKHRoZSBWZW5kb3ItU3BlY2lmaWMgRXh0ZW5kZWQKPiA+
IENhcGFiaWxpdHkgbXVzdCBhcHBlYXIgaW4gdGhlICJFeHRlbmRlZCBDb25maWd1cmF0aW9uIFNw
YWNlIiBmcm9tCj4gPiAweDEwMC0weGZmZikuCj4gVW5mb3J0dW5hdGVseSBvdXIgc2lsaWNvbiBk
b2VzIG5vdCBoYXZlIGVpdGhlciBWZW5kb3ItU3BlY2lmaWPCoENhcGFiaWxpdHkgb3IKPiBWZW5k
b3ItU3BlY2lmaWPCoEV4dGVuZGVkIENhcGFiaWxpdHkuCj4gCj4gU3R1ZGllZCBjb21taXQgODUz
MWUyODNiZWU2NjA1MDczNGZiMGU4OWQ1M2U4NWZkNWNlMjRhNAo+IExvb2tzIHRoaXMgbWV0aG9k
IHJlcXVpcmVzIGFkZGluZyBtZW1iZXIgKGxpa2UgY2FuX3N0YWxsKSB0byBzdHJ1Y3QgcGNpX2Rl
diwKPiBsb29rcyBkaWZmaWN1bHQuCgpUaGUgcHJvYmxlbSBpcyB0aGF0IHdlIGRvbid0IHdhbnQg
dG8gYWRkIGRldmljZSBJRHMgZXZlcnkgdGltZSBhIG5ldwpjaGlwIGNvbWVzIG91dC4gIEFkZGlu
ZyBvbmUgb3IgdHdvIGRldmljZSBJRHMgZm9yIHNpbGljb24gdGhhdCdzCmFscmVhZHkgcmVsZWFz
ZWQgaXMgbm90IGEgcHJvYmxlbSBhcyBsb25nIGFzIHlvdSBoYXZlIGEgc3RyYXRlZ3kgZm9yCipm
dXR1cmUqIGRldmljZXMgc28gdGhleSBkb24ndCByZXF1aXJlIGEgcXVpcmsuCgo+ID4gPiA+ID4g
SWYgZGV0ZWN0aW9uIGNhbm5vdCBiZSBkb25lIHRocm91Z2ggUENJIGNvbmZpZyBzcGFjZSwgdGhl
IG5leHQgYmVzdAo+ID4gPiA+ID4gYWx0ZXJuYXRpdmUgaXMgdG8gcGFzcyBhdXhpbGlhcnkgZGF0
YSB0aHJvdWdoIGZpcm13YXJlLiBPbiBEVCBiYXNlZAo+ID4gPiA+ID4gbWFjaGluZXMsIHlvdSBj
YW4gbGlzdCBub24taG90cGx1Z2dhYmxlIFBDSWUgZGV2aWNlcyBhbmQgYWRkIGN1c3RvbQo+ID4g
PiA+ID4gcHJvcGVydGllcyB0aGF0IGNvdWxkIGJlIHJlYWQgZHVyaW5nIGRldmljZSBlbnVtZXJh
dGlvbi4gSSBhc3N1bWUKPiA+ID4gPiA+IEFDUEkgaGFzIHNvbWV0aGluZyBzaW1pbGFyLCBidXQg
SSBoYXZlIG5vdCBkb25lIHRoYXQuCj4gPiA+IFllcywgdGhhbmtzIEFybmQKPiA+ID4gPiBBQ1BJ
IGhhcyBfRFNNIChBQ1BJIHY2LjMsIHNlYyA5LjEuMSksIHdoaWNoIG1pZ2h0IGJlIGEgY2FuZGlk
YXRlLiAgSQo+ID4gPiA+IGxpa2UgdGhpcyBiZXR0ZXIgdGhhbiBhIFBDSSBjYXBhYmlsaXR5IGJl
Y2F1c2UgdGhlIHByb3BlcnR5IHlvdSBuZWVkCj4gPiA+ID4gdG8gZXhwb3NlIGlzIG5vdCBhIFBD
SSBwcm9wZXJ0eS4KPiA+ID4gX0RTTSBtYXkgbm90IHdvcmthYmxlLCBzaW5jZSBpdCBpcyB3b3Jr
aW5nIGluIHJ1bnRpbWUuCj4gPiA+IFdlIG5lZWQgc3RhbGwgaW5mb3JtYXRpb24gaW4gaW5pdCBz
dGFnZSwgbmVpdGhlciB0b28gZWFybHkgKGFmdGVyIGFsbG9jYXRpb24KPiA+ID4gb2YgaW9tbXVf
ZndzcGVjKQo+ID4gPiBub3IgdG9vIGxhdGUgKGJlZm9yZSBhcm1fc21tdV9hZGRfZGV2aWNlICku
Cj4gPiBJJ20gbm90IGF3YXJlIG9mIGEgcmVzdHJpY3Rpb24gb24gd2hlbiBfRFNNIGNhbiBiZSBl
dmFsdWF0ZWQuICBJJ20KPiA+IGxvb2tpbmcgYXQgQUNQSSB2Ni4zLCBzZWMgOS4xLjEuICBBcmUg
eW91IHNlZWluZyBzb21ldGhpbmcgZGlmZmVyZW50Pwo+IERTTSBtZXRob2Qgc2VlbXMgcmVxdWly
ZXMgdmVuZG9yIHNwZWNpZmljIGd1aWQsIGFuZCBjb2RlIHdvdWxkIGJlIHZlbmRvcgo+IHNwZWNp
ZmljLgoKX0RTTSBpbmRlZWQgcmVxdWlyZXMgYSB2ZW5kb3Itc3BlY2lmaWMgVVVJRCwgcHJlY2lz
ZWx5ICpiZWNhdXNlKgp2ZW5kb3JzIGFyZSBmcmVlIHRvIGRlZmluZSB0aGVpciBvd24gZnVuY3Rp
b25hbGl0eSB3aXRob3V0IHJlcXVpcmluZwpjaGFuZ2VzIHRvIHRoZSBBQ1BJIHNwZWMuICBGcm9t
IHRoZSBzcGVjIChBQ1BJIHY2LjMsIHNlYyA5LjEuMSk6CgogIE5ldyBVVUlEcyBtYXkgYWxzbyBi
ZSBjcmVhdGVkIGJ5IE9FTXMgYW5kIElIVnMgZm9yIGN1c3RvbSBkZXZpY2VzCiAgYW5kIG90aGVy
IGludGVyZmFjZSBvciBkZXZpY2UgZ292ZXJuaW5nIGJvZGllcyAoZS5nLiB0aGUgUENJIFNJRyks
CiAgYXMgbG9uZyBhcyB0aGUgVVVJRCBpcyBkaWZmZXJlbnQgZnJvbSBvdGhlciBwdWJsaXNoZWQg
VVVJRHMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
