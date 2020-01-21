Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAECB144836
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 00:18:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/nxyhMyFtko1SV/2b7TdMNzxBxwikDjDWdpy4Yjnos=; b=j9OCykvf0+cxIV
	bw4QezrPH5Z1YTLaKIELX6uHDKvMN2eTrx2Yn4AvUwJLKqs6gXTwYWHyAynHvaFVXoEPoyoUKUYbd
	r73kJthQsaO+2Ssd/nQCs3UpD1pA56SOgrmTHSUay+rzc0kTwCXnDyg29p5kMvdx+BmPxfDD/F627
	iKUIk5grbLzfisR9ImLvPGs7sDzEwCcxn5Oo0WUk4yyqPu17QVoldv7fHruAUDVCQvXjh2PDjOCaF
	K/CfQ1pv/EZ9xS1qgSKGIGh55FLPPihGiyZqyiH6SB75zSD5KSEU2ofex4OEsNHKKNvMm2vxkXUGr
	5WMorsXv3GQLG6avTE3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu2nH-0006qz-Rh; Tue, 21 Jan 2020 23:18:47 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu2n5-0006qC-28
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 23:18:38 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 15:18:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; d="scan'208";a="227493488"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by orsmga003.jf.intel.com with ESMTP; 21 Jan 2020 15:18:33 -0800
Date: Tue, 21 Jan 2020 15:18:33 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v2 12/45] KVM: PPC: Allocate vcpu struct in common PPC code
Message-ID: <20200121231833.GB12692@linux.intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-13-sean.j.christopherson@intel.com>
 <20200120040412.GF14307@blackberry>
 <fcd2aaf1-6f6e-303a-d7c6-f6b0c0a4555c@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fcd2aaf1-6f6e-303a-d7c6-f6b0c0a4555c@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_151835_115137_3E72EB64 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Cornelia Huck <cohuck@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, David Hildenbrand <david@redhat.com>,
 linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Greg Kurz <groug@kaod.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 James Hogan <jhogan@kernel.org>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKYW4gMjEsIDIwMjAgYXQgMTI6MDU6MDBQTSArMDEwMCwgUGFvbG8gQm9uemluaSB3
cm90ZToKPiBPbiAyMC8wMS8yMCAwNTowNCwgUGF1bCBNYWNrZXJyYXMgd3JvdGU6Cj4gPiBPbiBX
ZWQsIERlYyAxOCwgMjAxOSBhdCAwMTo1NDo1N1BNIC0wODAwLCBTZWFuIENocmlzdG9waGVyc29u
IHdyb3RlOgo+ID4+IE1vdmUgYWxsb2NhdGlvbiBvZiBhbGwgZmxhdm9ycyBvZiBQUEMgdkNQVXMg
dG8gY29tbW9uIFBQQyBjb2RlLiAgQWxsCj4gPj4gdmFyaWFudHMgZWl0aGVyIGFsbG9jYXRlICdz
dHJ1Y3Qga3ZtX3ZjcHUnIGRpcmVjdGx5LCBvciByZXF1aXJlIHRoYXQKPiA+PiB0aGUgZW1iZWRk
ZWQgJ3N0cnVjdCBrdm1fdmNwdScgbWVtYmVyIGJlIGxvY2F0ZWQgYXQgb2Zmc2V0IDAsIGkuZS4K
PiA+PiBndWFyYW50ZWUgdGhhdCB0aGUgYWxsb2NhdGlvbiBjYW4gYmUgZGlyZWN0bHkgaW50ZXJw
cmV0ZWQgYXMgYSAnc3RydWN0Cj4gPj4ga3ZtX3ZjcHUnIG9iamVjdC4KPiA+Pgo+ID4+IFJlbW92
ZSB0aGUgbWVzc2FnZSBmcm9tIHRoZSBidWlsZC10aW1lIGFzc2VydGlvbiByZWdhcmRpbmcgcGxh
Y2VtZW50IG9mCj4gPj4gdGhlIHN0cnVjdCwgYXMgY29tcGF0aWJpbGl0eSB3aXRoIHRoZSBhcmNo
IHVzZXJjb3B5IHJlZ2lvbiBpcyBubyBsb25nZXIKPiA+PiB0aGUgc29sZSBkZXBlbmRlbnQgb24g
J3N0cnVjdCBrdm1fdmNwdScgYmVpbmcgYXQgb2Zmc2V0IHplcm8uCj4gPj4KPiA+PiBTaWduZWQt
b2ZmLWJ5OiBTZWFuIENocmlzdG9waGVyc29uIDxzZWFuLmouY2hyaXN0b3BoZXJzb25AaW50ZWwu
Y29tPgo+ID4gCj4gPiBUaGlzIGZhaWxzIHRvIGNvbXBpbGUgZm9yIEJvb2sgRSBjb25maWdzOgo+
ID4gCj4gPiAgIENDICAgICAgYXJjaC9wb3dlcnBjL2t2bS9lNTAwLm8KPiA+IC9ob21lL3BhdWx1
cy9rZXJuZWwva3ZtL2FyY2gvcG93ZXJwYy9rdm0vZTUwMC5jOiBJbiBmdW5jdGlvbiDigJhrdm1w
cGNfY29yZV92Y3B1X2NyZWF0ZV9lNTAw4oCZOgo+ID4gL2hvbWUvcGF1bHVzL2tlcm5lbC9rdm0v
YXJjaC9wb3dlcnBjL2t2bS9lNTAwLmM6NDY0Ojk6IGVycm9yOiByZXR1cm4gbWFrZXMgaW50ZWdl
ciBmcm9tIHBvaW50ZXIgd2l0aG91dCBhIGNhc3QgWy1XZXJyb3I9aW50LWNvbnZlcnNpb25dCj4g
PiAgIHJldHVybiB2Y3B1Owo+ID4gICAgICAgICAgXgo+ID4gY2MxOiBhbGwgd2FybmluZ3MgYmVp
bmcgdHJlYXRlZCBhcyBlcnJvcnMKPiA+IG1ha2VbM106ICoqKiBbL2hvbWUvcGF1bHVzL2tlcm5l
bC9rdm0vc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNjY6IGFyY2gvcG93ZXJwYy9rdm0vZTUwMC5v
XSBFcnJvciAxCj4gPiAKPiA+IFRoZXJlIGlzIGEgInJldHVybiB2Y3B1IiBzdGF0ZW1lbnQgaW4g
a3ZtcHBjX2NvcmVfdmNwdV9jcmVhdGVfZTUwMCgpLAo+ID4gYW5kIGFub3RoZXIgaW4ga3ZtcHBj
X2NvcmVfdmNwdV9jcmVhdGVfZTUwMG1jKCksIHdoaWNoIGJvdGggbmVlZCB0byBiZQo+ID4gY2hh
bmdlZCB0byAicmV0dXJuIDAiLgo+ID4gCj4gPiAoQnkgdGhlIHdheSwgSSBkbyBhcHByZWNpYXRl
IHlvdSBmaXhpbmcgdGhlIFBQQyBjb2RlLCBldmVuIGlmIHRoZXJlCj4gPiBhcmUgc29tZSBlcnJv
cnMuKQo+IAo+IFNxdWFzaGVkOgoKVGhhbmtzIGZvciBjbGVhbmluZyB1cCBhZnRlciBtZSwgbm90
IGhhdmluZyB0byByZWJhc2UgYW5kIHJlc2VuZCB0aGlzCnNlcmllcyBtYWRlIG15IGRheSA6LSkg
Cgo+IGRpZmYgLS1naXQgYS9hcmNoL3Bvd2VycGMva3ZtL2U1MDAuYyBiL2FyY2gvcG93ZXJwYy9r
dm0vZTUwMC5jCj4gaW5kZXggOTZkOWNkZTNkMmUzLi5mNWRkMmM3YWRjZDQgMTAwNjQ0Cj4gLS0t
IGEvYXJjaC9wb3dlcnBjL2t2bS9lNTAwLmMKPiArKysgYi9hcmNoL3Bvd2VycGMva3ZtL2U1MDAu
Ywo+IEBAIC00NjEsNyArNDYxLDcgQEAgc3RhdGljIGludCBrdm1wcGNfY29yZV92Y3B1X2NyZWF0
ZV9lNTAwKHN0cnVjdCBrdm0gKmt2bSwgc3RydWN0IGt2bV92Y3B1ICp2Y3B1LAo+ICAJCWdvdG8g
dW5pbml0X3RsYjsKPiAgCX0KPiAgCj4gLQlyZXR1cm4gdmNwdTsKPiArCXJldHVybiAwOwo+ICAK
PiAgdW5pbml0X3RsYjoKPiAgCWt2bXBwY19lNTAwX3RsYl91bmluaXQodmNwdV9lNTAwKTsKPiBk
aWZmIC0tZ2l0IGEvYXJjaC9wb3dlcnBjL2t2bS9lNTAwbWMuYyBiL2FyY2gvcG93ZXJwYy9rdm0v
ZTUwMG1jLmMKPiBpbmRleCBhZWE1ODhmNzNiZjcuLjdjMGQzOTJmNjY3YSAxMDA2NDQKPiAtLS0g
YS9hcmNoL3Bvd2VycGMva3ZtL2U1MDBtYy5jCj4gKysrIGIvYXJjaC9wb3dlcnBjL2t2bS9lNTAw
bWMuYwo+IEBAIC0zMjcsNyArMzI3LDcgQEAgc3RhdGljIGludCBrdm1wcGNfY29yZV92Y3B1X2Ny
ZWF0ZV9lNTAwbWMoc3RydWN0IGt2bSAqa3ZtLCBzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUKPiAgCQln
b3RvIHVuaW5pdF90bGI7Cj4gIAl9Cj4gIAo+IC0JcmV0dXJuIHZjcHU7Cj4gKwlyZXR1cm4gMDsK
PiAgCj4gIHVuaW5pdF90bGI6Cj4gIAlrdm1wcGNfZTUwMF90bGJfdW5pbml0KHZjcHVfZTUwMCk7
Cj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
