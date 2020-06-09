Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C3E1F415A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 18:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=BGsisdBu6NnSvU3QoWlF+ggJe8dnjVEWxiALuLcfbBU=; b=p6/iXswMVPon3y
	UsDEOseFdbCA2lnuekFgqH1X1LXHYUIFyW27N7oTSOs/kfqUmEEbihCtcoCVL1QTKAg2SkS0qNHho
	lzycxfl1SvkjgtuBPD82uTTij0PeQTmBCokO7DM4oLJgHHFNr16gfMalERuOVzDklA2udkYR773ck
	ZupXPhCwmj8f+QaE3JbLgiqzszVCCyO644KEvwupIrnK3MbMqhKWf+DEFC6zJ17XRH9dd/1vpqH4t
	D3rqiHES9ts5Gstd230FlAN0EtgvZxIe0K3589bmtICNPqsjMZDw2/GQN7xVvwDnqG9Z+MOuQfEYP
	Crr6VALAhtGoUZo26MRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jihRT-0008Kx-1a; Tue, 09 Jun 2020 16:49:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jihRJ-0008KR-Go
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 16:49:30 +0000
Received: from localhost (mobile-166-170-222-206.mycingular.net
 [166.170.222.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D1D420737;
 Tue,  9 Jun 2020 16:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591721368;
 bh=5Q7RvyofmbZbrB/I38g1tWmxg8QS/w1w0oFGJk1TAAE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=dvG4keriVYERu7ME7jmTxlggF24dPHuT8ZHwsHgyeBv8aHb5TopY1KdfJVDndSoXl
 RxQiw2j9xiinR8ke3p9Ltba3X4AhyTf4XbSb9RwT2AqKWdKTjRg+cV7DgApD257z37
 fAvyNM3ngOAOHRMuIGrK7cGIhRs7rGlN9Hoz8zWA=
Date: Tue, 9 Jun 2020 11:49:26 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
Message-ID: <20200609164926.GA1452092@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a38bhE_VO_eVcsfsGKgED=gmSEntQmrhwbLkeA6Si0qaw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_094929_597939_F02101CE 
X-CRM114-Status: GOOD (  27.44  )
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
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-pci <linux-pci@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 kenneth-lee-2012@foxmail.com,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Wangzhou <wangzhou1@hisilicon.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Zhangfei Gao <zhangfei.gao@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMDksIDIwMjAgYXQgMTE6MTU6MDZBTSArMDIwMCwgQXJuZCBCZXJnbWFubiB3
cm90ZToKPiBPbiBUdWUsIEp1biA5LCAyMDIwIGF0IDY6MDIgQU0gWmhhbmdmZWkgR2FvIDx6aGFu
Z2ZlaS5nYW9AbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiBPbiAyMDIwLzYvOSDkuIrljYgxMjo0MSwg
Qmpvcm4gSGVsZ2FhcyB3cm90ZToKPiA+ID4gT24gTW9uLCBKdW4gMDgsIDIwMjAgYXQgMTA6NTQ6
MTVBTSArMDgwMCwgWmhhbmdmZWkgR2FvIHdyb3RlOgo+ID4gPj4gT24gMjAyMC82LzYg5LiK5Y2I
NzoxOSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiA+ID4+Pj4gKysrIGIvZHJpdmVycy9pb21tdS9p
b21tdS5jCj4gPiA+Pj4+IEBAIC0yNDE4LDYgKzI0MTgsMTAgQEAgaW50IGlvbW11X2Z3c3BlY19p
bml0KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0Cj4gPiA+Pj4+IGZ3bm9kZV9oYW5kbGUgKmlv
bW11X2Z3bm9kZSwKPiA+ID4+Pj4gICAgICAgICAgIGZ3c3BlYy0+aW9tbXVfZndub2RlID0gaW9t
bXVfZndub2RlOwo+ID4gPj4+PiAgICAgICAgICAgZndzcGVjLT5vcHMgPSBvcHM7Cj4gPiA+Pj4+
ICAgICAgICAgICBkZXZfaW9tbXVfZndzcGVjX3NldChkZXYsIGZ3c3BlYyk7Cj4gPiA+Pj4+ICsK
PiA+ID4+Pj4gKyAgICAgICBpZiAoZGV2X2lzX3BjaShkZXYpKQo+ID4gPj4+PiArICAgICAgICAg
ICAgICAgcGNpX2ZpeHVwX2RldmljZShwY2lfZml4dXBfZmluYWwsIHRvX3BjaV9kZXYoZGV2KSk7
Cj4gPiA+Pj4+ICsKPiA+ID4+Pj4KPiA+ID4+Pj4gVGhlbiBwY2lfZml4dXBfZmluYWwgd2lsbCBi
ZSBjYWxsZWQgdHdpY2UsIHRoZSBmaXJzdCBpbiBwY2lfYnVzX2FkZF9kZXZpY2UuCj4gPiA+Pj4+
IEhlcmUgaW4gaW9tbXVfZndzcGVjX2luaXQgaXMgdGhlIHNlY29uZCB0aW1lLCBzcGVjaWZpY2Fs
bHkgZm9yIGlvbW11X2Z3c3BlYy4KPiA+ID4+Pj4gV2lsbCBzZW5kIHRoaXMgd2hlbiA1LjgtcmMx
IGlzIG9wZW4uCj4gPiA+Pj4gV2FpdCwgdGhpcyB3aG9sZSBmaXh1cCBhcHByb2FjaCBzZWVtcyB3
cm9uZyB0byBtZS4gIE5vIG1hdHRlciBob3cgeW91Cj4gPiA+Pj4gZG8gdGhlIGZpeHVwLCBpdCdz
IHN0aWxsIGEgZml4dXAsIHdoaWNoIG1lYW5zIGl0IHJlcXVpcmVzIG9uZ29pbmcKPiA+ID4+PiBt
YWludGVuYW5jZS4gIFN1cmVseSB3ZSBkb24ndCB3YW50IHRvIGhhdmUgdG8gYWRkIHRoZSBWZW5k
b3IvRGV2aWNlIElECj4gPiA+Pj4gZm9yIGV2ZXJ5IG5ldyBBTUJBIGRldmljZSB0aGF0IGNvbWVz
IGFsb25nLCBkbyB3ZT8KPiA+ID4+Pgo+ID4gPj4gSGVyZSB0aGUgZmFrZSBwY2kgZGV2aWNlIGhh
cyBzdGFuZGFyZCBQQ0kgY2ZnIHNwYWNlLCBidXQgcGh5c2ljYWwKPiA+ID4+IGltcGxlbWVudGF0
aW9uIGlzIGJhc2Ugb24gQU1CQQo+ID4gPj4gVGhleSBjYW4gcHJvdmlkZSBwYXNpZCBmZWF0dXJl
Lgo+ID4gPj4gSG93ZXZlciwKPiA+ID4+IDEsIGRvZXMgbm90IHN1cHBvcnQgdGxwIHNpbmNlIHRo
ZXkgYXJlIG5vdCByZWFsIHBjaSBkZXZpY2VzLgo+ID4gPj4gMi4gZG9lcyBub3Qgc3VwcG9ydCBw
cmksIGluc3RlYWQgc3VwcG9ydCBzdGFsbCAocHJvdmlkZWQgYnkgc21tdSkKPiA+ID4+IEFuZCBz
dGFsbCBpcyBub3QgYSBwY2kgZmVhdHVyZSwgc28gaXQgaXMgbm90IGRlc2NyaWJlZCBpbiBzdHJ1
Y3QgcGNpX2RldiwKPiA+ID4+IGJ1dCBpbiBzdHJ1Y3QgaW9tbXVfZndzcGVjLgo+ID4gPj4gU28g
d2UgdXNlIHRoaXMgZml4dXAgdG8gdGVsbCBwY2kgc3lzdGVtIHRoYXQgdGhlIGRldmljZXMgY2Fu
IHN1cHBvcnQgc3RhbGwsCj4gPiA+PiBhbmQgaGVyZWJ5IHN1cHBvcnQgcGFzaWQuCj4gPiA+IFRo
aXMgZGlkIG5vdCBhbnN3ZXIgbXkgcXVlc3Rpb24uICBBcmUgeW91IHByb3Bvc2luZyB0aGF0IHdl
IHVwZGF0ZSBhCj4gPiA+IHF1aXJrIGV2ZXJ5IHRpbWUgYSBuZXcgQU1CQSBkZXZpY2UgaXMgcmVs
ZWFzZWQ/ICBJIGRvbid0IHRoaW5rIHRoYXQKPiA+ID4gd291bGQgYmUgYSBnb29kIG1vZGVsLgo+
ID4KPiA+IFllcywgeW91IGFyZSByaWdodCwgYnV0IHdlIGRvIG5vdCBoYXZlIGFueSBiZXR0ZXIg
aWRlYSB5ZXQuCj4gPiBDdXJyZW50bHkgd2UgaGF2ZSB0aHJlZSBmYWtlIHBjaSBkZXZpY2VzLCB3
aGljaCBzdXBwb3J0IHN0YWxsIGFuZCBwYXNpZC4KPiA+IFdlIGhhdmUgdG8gbGV0IHBjaSBzeXN0
ZW0ga25vdyB0aGUgZGV2aWNlIGNhbiBzdXBwb3J0IHBhc2lkLCBiZWNhdXNlIG9mCj4gPiBzdGFs
bCBmZWF0dXJlLCB0aG91Z2ggbm90IHN1cHBvcnQgcHJpLgo+ID4gRG8geW91IGhhdmUgYW55IG90
aGVyIGlkZWFzPwo+IAo+IEl0IHNvdW5kcyBsaWtlIHRoZSBiZXN0IHdheSB3b3VsZCBiZSB0byBh
bGxvY2F0ZSBhIFBDSSBjYXBhYmlsaXR5IGZvciBpdCwgc28KPiBkZXRlY3Rpb24gY2FuIGJlIGRv
bmUgdGhyb3VnaCBjb25maWcgc3BhY2UsIGF0IGxlYXN0IGluIGZ1dHVyZSBkZXZpY2VzLAo+IG9y
IHBvc3NpYmx5IGFmdGVyIGEgZmlybXdhcmUgdXBkYXRlIGlmIHRoZSBjb25maWcgc3BhY2UgaW4g
eW91ciBzeXN0ZW0KPiBpcyBjb250cm9sbGVkIGJ5IGZpcm13YXJlIHNvbWV3aGVyZS4gIE9uY2Ug
dGhlcmUgaXMgYSBwcm9wZXIgbWVjaGFuaXNtCj4gdG8gZG8gdGhpcywgdXNpbmcgZml4dXBzIHRv
IGRldGVjdCB0aGUgZWFybHkgZGV2aWNlcyB0aGF0IGRvbid0IHVzZSB0aGF0Cj4gc2hvdWxkIGJl
IHVuY29udHJvdmVyc2lhbC4gSSBoYXZlIG5vIGlkZWEgd2hhdCB0aGUgcHJvY2VzcyBvciB0aW1l
bGluZQo+IGlzIHRvIGFkZCBuZXcgY2FwYWJpbGl0aWVzIGludG8gdGhlIFBDSWUgc3BlY2lmaWNh
dGlvbiwgb3IgaWYgdGhpcyBvbmUKPiB3b3VsZCBiZSBhY2NlcHRhYmxlIHRvIHRoZSBQQ0kgU0lH
IGF0IGFsbC4KClRoYXQgc291bmRzIGxpa2UgYSBwb3NzaWJpbGl0eS4gIFRoZSBzcGVjIGFscmVh
ZHkgZGVmaW5lcyBhClZlbmRvci1TcGVjaWZpYyBFeHRlbmRlZCBDYXBhYmlsaXR5IChQQ0llIHI1
LjAsIHNlYyA3LjkuNSkgdGhhdCBtaWdodApiZSBhIGNhbmRpZGF0ZS4KCj4gSWYgZGV0ZWN0aW9u
IGNhbm5vdCBiZSBkb25lIHRocm91Z2ggUENJIGNvbmZpZyBzcGFjZSwgdGhlIG5leHQgYmVzdAo+
IGFsdGVybmF0aXZlIGlzIHRvIHBhc3MgYXV4aWxpYXJ5IGRhdGEgdGhyb3VnaCBmaXJtd2FyZS4g
T24gRFQgYmFzZWQKPiBtYWNoaW5lcywgeW91IGNhbiBsaXN0IG5vbi1ob3RwbHVnZ2FibGUgUENJ
ZSBkZXZpY2VzIGFuZCBhZGQgY3VzdG9tCj4gcHJvcGVydGllcyB0aGF0IGNvdWxkIGJlIHJlYWQg
ZHVyaW5nIGRldmljZSBlbnVtZXJhdGlvbi4gSSBhc3N1bWUKPiBBQ1BJIGhhcyBzb21ldGhpbmcg
c2ltaWxhciwgYnV0IEkgaGF2ZSBub3QgZG9uZSB0aGF0LgoKQUNQSSBoYXMgX0RTTSAoQUNQSSB2
Ni4zLCBzZWMgOS4xLjEpLCB3aGljaCBtaWdodCBiZSBhIGNhbmRpZGF0ZS4gIEkKbGlrZSB0aGlz
IGJldHRlciB0aGFuIGEgUENJIGNhcGFiaWxpdHkgYmVjYXVzZSB0aGUgcHJvcGVydHkgeW91IG5l
ZWQKdG8gZXhwb3NlIGlzIG5vdCBhIFBDSSBwcm9wZXJ0eS4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
