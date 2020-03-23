Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA9818F4D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:40:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sOHnlnTs2+zPqQKcpNIrm3E5BKnNHmwFqX5ELcHnHb0=; b=R5dkd940txPSAK1J/XOzdJn3n
	DakRLjr0O9KbhhqKNWyjcUMoYj+ELWCOS8XXEQTaf1uXj3CtTgCKgctYO3gQuK0qgLVYYqu7oHIsM
	mybeXqLC6+TuDCW/N+CwCVNbH9kZWc1iGDrEhXLdTFLXYrMEdwvkISgIXy/xrD2MBLcGiOVP2nGqo
	IiQH6GEZtsl99THisj4cAL/qIEer90drXK91Rr13CzoeP/Kdqe1N1vUSk16u3Bq2z71Z0UX6oOcA5
	RNQPDLck3hiK80eEC5T5vYRJAVAI4mBx0jWSk6ZvC777Yx7cD1mNSY5FYrbjAUentIWYjbnGsovKs
	+cOzfxaYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMNi-0003Ks-Jn; Mon, 23 Mar 2020 12:40:38 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMNX-0003Ja-M5
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:40:29 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 63E252ECE21C08DF8A96;
 Mon, 23 Mar 2020 20:40:18 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Mon, 23 Mar 2020
 20:40:11 +0800
Subject: Re: [PATCH v5 20/23] KVM: arm64: GICv4.1: Plumb SGI implementation
 selection in the distributor
To: Marc Zyngier <maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-21-maz@kernel.org>
 <72832f51-bbde-8502-3e03-189ac20a0143@huawei.com>
 <4a06fae9c93e10351276d173747d17f4@kernel.org>
 <1c9fdfc8-bdb2-88b6-4bdc-2b9254dfa55c@huawei.com>
 <256b58a9679412c96600217f316f424f@kernel.org>
 <cf5d7cf3-076f-47a7-83cf-717a619dc13e@huawei.com>
 <1c10593ac5b75f37c6853fbc74daa481@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <49fedfb3-ea4a-a18b-f453-86f43be7f18f@huawei.com>
Date: Mon, 23 Mar 2020 20:40:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <1c10593ac5b75f37c6853fbc74daa481@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_054027_901720_670CD6FE 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org, Eric
 Auger <eric.auger@redhat.com>, Robert
 Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>, Julien
 Thierry <julien.thierry.kdev@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMjAvMy8yMyAxNjoyNSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIFpl
bmdodWksCj4gCj4gWy4uLl0KPiAKPj4+IEFuZCBhY3R1YWxseSwgbWF5YmUgd2UgY2FuIGhhbmRs
ZSB0aGF0IHByZXR0eSBjaGVhcGx5LiBJZiB1c2Vyc3BhY2UKPj4+IHRyaWVzIHRvIHJlc3RvcmUg
R0lDRF9UWVBFUjIgdG8gYSB2YWx1ZSB0aGF0IGlzbid0IHdoYXQgS1ZNIGNhbgo+Pj4gb2ZmZXIs
IHdlIGp1c3QgcmV0dXJuIGFuIGVycm9yLiBFeGFjdGx5IGxpa2Ugd2UgZG8gZm9yIEdJQ0RfSUlE
Ui4KPj4+IEhlbmNlIHRoZSBmb2xsb3dpbmcgcGF0Y2g6Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL3Zp
cnQva3ZtL2FybS92Z2ljL3ZnaWMtbW1pby12My5jIAo+Pj4gYi92aXJ0L2t2bS9hcm0vdmdpYy92
Z2ljLW1taW8tdjMuYwo+Pj4gaW5kZXggMjhiNjM5ZmQxYWJjLi5lNzJkY2M0NTQyNDcgMTAwNjQ0
Cj4+PiAtLS0gYS92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLW1taW8tdjMuYwo+Pj4gKysrIGIvdmly
dC9rdm0vYXJtL3ZnaWMvdmdpYy1tbWlvLXYzLmMKPj4+IEBAIC0xNTYsNiArMTU2LDcgQEAgc3Rh
dGljIGludCB2Z2ljX21taW9fdWFjY2Vzc193cml0ZV92M19taXNjKHN0cnVjdCAKPj4+IGt2bV92
Y3B1ICp2Y3B1LAo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgdmdpY19kaXN0ICpkaXN0ID0gJnZjcHUt
Pmt2bS0+YXJjaC52Z2ljOwo+Pj4KPj4+IMKgwqDCoMKgwqAgc3dpdGNoIChhZGRyICYgMHgwYykg
ewo+Pj4gK8KgwqDCoCBjYXNlIEdJQ0RfVFlQRVIyOgo+Pj4gwqDCoMKgwqDCoCBjYXNlIEdJQ0Rf
SUlEUjoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAodmFsICE9IHZnaWNfbW1pb19yZWFkX3Yz
X21pc2ModmNwdSwgYWRkciwgbGVuKSkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
dHVybiAtRUlOVkFMOwo+Pj4KPj4+IEJlaW5nIGEgUk8gcmVnaXN0ZXIsIHdyaXRpbmcgc29tZXRo
aW5nIHRoYXQgaXNuJ3QgY29tcGF0aWJsZSB3aXRoIHRoZQo+Pj4gcG9zc2libGUgYmVoYXZpb3Vy
IG9mIHRoZSBoeXBlcnZpc29yIHdpbGwganVzdCByZXR1cm4gYW4gZXJyb3IuCj4+Cj4+IFRoaXMg
aXMgcmVhbGx5IGEgbmljZSBwb2ludCB0byBhZGRyZXNzIG15IGNvbmNlcm4hIEknbSBoYXBweSB0
byBzZWUKPj4gdGhpcyBpbiB2NiBub3cuCj4+Cj4+Pgo+Pj4gV2hhdCBkbyB5b3UgdGhpbms/Cj4+
Cj4+IEkgYWdyZWVkIHdpdGggeW91LCB3aXRoIGEgYml0IG5lcnZvdXMgdGhvdWdoLiBTb21lIG9s
ZCBndWVzdHMgKHdoaWNoCj4+IGhhdmUgbm8ga25vd2xlZGdlIGFib3V0IEdJQ3Y0LjEgdlNHSXMg
YW5kIGRvbid0IGNhcmUgYWJvdXQgbkFTU0dJY2FwCj4+IGF0IGFsbCkgd2lsbCBhbHNvIGZhaWwg
dG8gbWlncmF0ZSBmcm9tIEEgdG8gQiwganVzdCBiZWNhdXNlIG5vdyB3ZQo+PiBwcmVzZW50IHR3
byBkaWZmZXJlbnQgKHVudXNlZCkgR0lDRF9UWVBFUjIgcmVnaXN0ZXJzIHRvIHRoZW0uCj4+Cj4+
IElzIGl0IGEgbGl0dGxlIHVuZmFpciB0byB0aGVtIDotKSA/Cj4gCj4gSSBuZXZlciBwcmV0ZW5k
ZWQgdG8gYmUgZmFpciEgOy0pCj4gCj4gSSdtIGhhcHB5IHRvIHByZXZlbnQgbWlncmF0aW5nIGZy
b20gYSB2NC4xIHN5c3RlbSAoQSkgdG8gYSB2NC4wCj4gc3lzdGVtIChCKS4gQXMgc29vbiBhcyB0
aGUgZ3Vlc3QgaGFzIHJ1biwgaXQgaXNuJ3Qgc2FmZSB0byBkbyBzbwo+IChpdCBtYXkgaGF2ZSBy
ZWFkIFRZUEVSMiwgYW5kIG5vdyBrbm93cyBhYm91dCB2U0dJcykuIFdlICpjb3VsZCoKPiB0cmFj
ayB0aGlzIGFuZCBmaW5kIHdheXMgdG8gbWlncmF0ZSB0aGlzIHN0YXRlIGFzIHdlbGwsIGJ1dCBp
dAo+IGZlZWxzIGZyYWdpbGUuCj4gCj4gTWlncmF0aW5nIGZyb20gQiB0byBBIGlzIG1vcmUgYXBw
ZWFsaW5nLiBJdCBzaG91bGQgYmUgcG9zc2libGUgdG8KPiBkbyBzbyB3aXRob3V0IG11Y2ggZGlm
ZmljdWx0eSAoanVzdCBjaGVjayB0aGF0IHRoZSBuQVNTR0ljYXAgYml0Cj4gaXMgZWl0aGVyIDAg
b3IgZXF1YWwgdG8gS1ZNJ3MgdmlldyBvZiB0aGUgY2FwYWJpbGl0eSkuCj4gCj4gQnV0IG92ZXJh
bGwgSSBzZXJpb3VzbHkgZG91YnQgd2UgY2FuIGVhc2lseSBtaWdyYXRlIGd1ZXN0cyBhY3Jvc3MK
PiB2ZXJ5IGRpZmZlcmVudCBIVy4gV2UndmUgYmVlbiB0YWxraW5nIGFib3V0IHRoaXMgZm9yIHll
YXJzLCBhbmQKPiB3ZSBzdGlsbCBkb24ndCBoYXZlIGEgZ29vZCBzb2x1dGlvbiBmb3IgaXQgZ2l2
ZW4gdGhlIGRpdmVyc2l0eQo+IG9mIHRoZSBlY29zeXN0ZW0uLi4gOi0vCgpGYWlyIGVub3VnaC4g
VGhhbmtzIGZvciB5b3VyIGRldGFpbGVkIGV4cGxhbmF0aW9uIQoKClplbmdodWkKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
