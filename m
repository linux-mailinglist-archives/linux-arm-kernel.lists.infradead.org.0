Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 251C818BB69
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:44:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7MPMlPRi53UMWYNIwU/rbuoJLpPVMvTSsq+sb2MRyA=; b=i6VxEy9NzoWceb
	I/B/9DbHH5FtGHVjK1pGMkHEX/VKIFbrqfypjQdmUWBTzINyqLzuRxKE7MHRUexopiv5TUiAzfKFe
	CmZVg1a5FZkH4SJTI1Td4KI5JIZgIJUMjTKOKfknvO5w+5dv/YYSfuZJyuw64n2IKQ7CgybTJ7EtK
	xziLGvR/6zakb7uLGKbIaL0qV9KBqTNrXqU+1IDi76r3S8HMEvdj7HQMlLfXGfKkicNGgaix0Qd4m
	KSm6iFexY3pbKxdz33EhKSRs0SSv7ixGeJ/vBW63mPK3CAH8JQAyREyw6OZ1hBmdAeuYZowoSMlOa
	KZx9PoEyrCGCQhDyxWwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExLJ-0003Wo-3A; Thu, 19 Mar 2020 15:44:21 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExKO-0002q2-4s
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:43:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584632601;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lokpvkMQVoKd0lod8SVkg+xNqrbRc/YyD9IgFwSAqTc=;
 b=HZSwW80SeYaxWWnPtIzz5Xk0s2NlhXCh1uE6+UnzyxrZ044d96uampXDT2rHATM3MuwvSP
 nc8IoKWCX860bYU4N1DgHRdB8o2oQ8f2U3QLiCrxQtOemhUHrmucOm0DFTS4RpYN8rE0lo
 da9fTYxaWZ3air6gjdkVTpyetgZCPHQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-58-I-NX-DfHPpaC7toQ5qn_KQ-1; Thu, 19 Mar 2020 11:43:16 -0400
X-MC-Unique: I-NX-DfHPpaC7toQ5qn_KQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 82C16107ACC4;
 Thu, 19 Mar 2020 15:43:14 +0000 (UTC)
Received: from [10.36.113.142] (ovpn-113-142.ams2.redhat.com [10.36.113.142])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0AE829081F;
 Thu, 19 Mar 2020 15:43:10 +0000 (UTC)
Subject: Re: [PATCH v5 23/23] KVM: arm64: GICv4.1: Expose HW-based SGIs in
 debugfs
To: Marc Zyngier <maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-24-maz@kernel.org>
 <4cb4c3d4-7b02-bb77-cd7a-c185346b6a2f@redhat.com>
 <45c282bddd43420024633943c1befac3@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <33576d89-2b12-b98b-e392-3342b9b1265c@redhat.com>
Date: Thu, 19 Mar 2020 16:43:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <45c282bddd43420024633943c1befac3@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_084324_280884_19CF200A 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDMvMTkvMjAgNDoyMSBQTSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIEVy
aWMsCj4gCj4gT24gMjAyMC0wMy0xOSAxNTowNSwgQXVnZXIgRXJpYyB3cm90ZToKPj4gSGkgTWFy
YywKPj4KPj4gT24gMy80LzIwIDk6MzMgUE0sIE1hcmMgWnluZ2llciB3cm90ZToKPj4+IFRoZSB2
Z2ljLXN0YXRlIGRlYnVnZnMgZmlsZSBjb3VsZCBkbyB3aXRoIHNob3dpbmcgdGhlIHBlbmRpbmcg
c3RhdGUKPj4+IG9mIHRoZSBIVy1iYWNrZWQgU0dJcy4gUGx1ZyBpdCBpbnRvIHRoZSBsb3ctbGV2
ZWwgY29kZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwu
b3JnPgo+Pj4gLS0tCj4+PiDCoHZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtZGVidWcuYyB8IDE0ICsr
KysrKysrKysrKystCj4+PiDCoDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtZGVi
dWcuYwo+Pj4gYi92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLWRlYnVnLmMKPj4+IGluZGV4IGNjMTJm
ZTliMmRmMy4uYjEzYTllM2Y5OWRkIDEwMDY0NAo+Pj4gLS0tIGEvdmlydC9rdm0vYXJtL3ZnaWMv
dmdpYy1kZWJ1Zy5jCj4+PiArKysgYi92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLWRlYnVnLmMKPj4+
IEBAIC0xNzgsNiArMTc4LDggQEAgc3RhdGljIHZvaWQgcHJpbnRfaXJxX3N0YXRlKHN0cnVjdCBz
ZXFfZmlsZSAqcywKPj4+IHN0cnVjdCB2Z2ljX2lycSAqaXJxLAo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGt2bV92Y3B1ICp2Y3B1KQo+Pj4gwqB7Cj4+PiDCoMKg
wqDCoCBjaGFyICp0eXBlOwo+Pj4gK8KgwqDCoCBib29sIHBlbmRpbmc7Cj4+IG5pdDogY2FuIGJl
IGRpcmVjdGx5IGluaXRpYWxpemVkIHRvIGlycS0+cGVuZGluZ19sYXRjaAo+Pj4gKwo+Pj4gwqDC
oMKgwqAgaWYgKGlycS0+aW50aWQgPCBWR0lDX05SX1NHSVMpCj4+PiDCoMKgwqDCoMKgwqDCoMKg
IHR5cGUgPSAiU0dJIjsKPj4+IMKgwqDCoMKgIGVsc2UgaWYgKGlycS0+aW50aWQgPCBWR0lDX05S
X1BSSVZBVEVfSVJRUykKPj4+IEBAIC0xOTAsNiArMTkyLDE2IEBAIHN0YXRpYyB2b2lkIHByaW50
X2lycV9zdGF0ZShzdHJ1Y3Qgc2VxX2ZpbGUgKnMsCj4+PiBzdHJ1Y3QgdmdpY19pcnEgKmlycSwK
Pj4+IMKgwqDCoMKgIGlmIChpcnEtPmludGlkID09MCB8fCBpcnEtPmludGlkID09IFZHSUNfTlJf
UFJJVkFURV9JUlFTKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBwcmludF9oZWFkZXIocywgaXJxLCB2
Y3B1KTsKPj4+Cj4+PiArwqDCoMKgIHBlbmRpbmcgPSBpcnEtPnBlbmRpbmdfbGF0Y2g7Cj4+PiAr
wqDCoMKgIGlmIChpcnEtPmh3ICYmIHZnaWNfaXJxX2lzX3NnaShpcnEtPmludGlkKSkgewo+Pj4g
K8KgwqDCoMKgwqDCoMKgIGludCBlcnI7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqAgZXJyID0g
aXJxX2dldF9pcnFjaGlwX3N0YXRlKGlycS0+aG9zdF9pcnEsCj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJUlFDSElQX1NUQVRFX1BFTkRJTkcsCj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmcGVuZGlu
Zyk7Cj4+PiArwqDCoMKgwqDCoMKgwqAgV0FSTl9PTl9PTkNFKGVycik7Cj4+PiArwqDCoMKgIH0K
Pj4+ICsKPj4+IMKgwqDCoMKgIHNlcV9wcmludGYocywgIsKgwqDCoMKgwqDCoCAlcyAlNGQgIgo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiwqDCoMKgICUyZCAiCj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICIlZCVkJWQlZCVkJWQlZCAiCj4+PiBAQCAtMjAxLDcgKzIx
Myw3IEBAIHN0YXRpYyB2b2lkIHByaW50X2lycV9zdGF0ZShzdHJ1Y3Qgc2VxX2ZpbGUgKnMsCj4+
PiBzdHJ1Y3QgdmdpY19pcnEgKmlycSwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
IlxuIiwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0eXBlLCBpcnEtPmludGlkLAo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChpcnEtPnRhcmdldF92Y3B1KSA/IGlycS0+dGFyZ2V0
X3ZjcHUtPnZjcHVfaWQgOiAtMSwKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlycS0+cGVu
ZGluZ19sYXRjaCwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBlbmRpbmcsCj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaXJxLT5saW5lX2xldmVsLAo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGlycS0+YWN0aXZlLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlycS0+
ZW5hYmxlZCwKPj4+Cj4+IFRoZSBwYXRjaCBsb29rcyBnb29kIHRvIG1lIGJ1dCBJIGFtIG5vdyBs
b3N0IGFib3V0IGhvdyB3ZSByZXRyaWV2ZSB0aGUKPj4gcGVuZGluZyBzdGF0IG9mIG90aGVyIGh3
IG1hcHBlZCBpbnRlcnJ1cHRzLiBMb29rcyB3ZSB1c2UKPj4gaXJxLT5wZW5kaW5nX2xhdGNoIGFs
d2F5cy4gSXMgdGhhdCBjb3JyZWN0Pwo+IAo+IENvcnJlY3QuIEdJQ3Y0LjAgZG9lc24ndCBnaXZl
IHVzIGFuIGFyY2hpdGVjdHVyYWwgd2F5IHRvIGxvb2sgYXQgdGhlCj4gdkxQSSBwZW5kaW5nIHN0
YXRlICh0aGVyZSBpc24ndCBldmVuIGEgZ3VhcmFudGVlIGFib3V0IHdoZW4gdGhlIEdJQwo+IHdp
bGwgc3RvcCB3cml0aW5nIHRvIG1lbW9yeSwgaWYgaXQgZXZlciBkb2VzKS4KPiAKPiBXaXRoIEdJ
Q3Y0LjEsIHlvdSBjYW4gaW50cm9zcGVjdCB0aGUgSFcgc3RhdGUgZm9yIFNHSXMuIFlvdSBjYW4g
YWxzbwo+IGxvb2sgYXQgdGhlIHZMUEkgc3RhdGUgYnkgcGVla2luZyBhdCB0aGUgdmlydHVhbCBw
ZW5kaW5nIHRhYmxlLCBidXQKPiB5b3UnZCBuZWVkIHRvIHVubWFwIHRoZSBWUEUgZmlyc3QsIHdo
aWNoIEkgb2J2aW91c2x5IGRvbid0IHdhbnQgdG8gZG8KPiBmb3IgdGhpcyBkZWJ1ZyBpbnRlcmZh
Y2UsIHNwZWNpYWxseSBhcyBpdCBjYW4gYmUgdXNlZCB3aGlsc3QgdGhlIGd1ZXN0Cj4gaXMgdXAg
YW5kIHJ1bm5pbmcuCk9LIGZvciB2TFBJcywgd2hhdCBhYm91dCBvdGhlciBIVyBtYXBwZWQgSVJR
cyAoYXJjaCB0aW1lcj8pCgpFcmljCj4gCj4gSW4gdGhlIGZ1dHVyZSwgd2UnbGwgaGF2ZSB0byBp
bXBsZW1lbnQgdGhhdCBpbiBvcmRlciB0byBzdXBwb3J0IGd1ZXN0Cj4gc2F2ZS9yZXN0b3JlIGZy
b20gYSBHSUN2NC4xIHN5c3RlbS4gSSBoYXZlbid0IGdpdmVuIG11Y2ggdGhvdWdodCB0byBpdAo+
IHRob3VnaC4KPiAKPj4gRm9yIHRoZSBwYXRjaDoKPj4gUmV2aWV3ZWQtYnk6IEVyaWMgQXVnZXIg
PGVyaWMuYXVnZXJAcmVkaGF0LmNvbT4KPiAKPiBUaGFua3MsCj4gCj4gwqDCoMKgwqDCoMKgwqAg
TS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
