Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 749F2DD16B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 23:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VeE8Vw//Ua/R066KMjqdAKn/g5kh2RgcLSFX5Ahboc0=; b=KyZ5rECUK4Utxy
	K7gLCTSDR2vcxOoWnGynOyirm+Zg/N3ADap6GDBF1ahRO2Pjf96dzOKFact6ADktUEvfCef0+d/xQ
	gj+qeGq7d4ofMin2GpeTligkeL+EZKNGaU6Lkzr/eru6i/rXw+P2rsuOBm0Gy0Tm5czsRrYyabHzh
	Qec3iTm/UT44nBqo3X4i/X7VhoNtSC3GRajP6pq1Wj8YDbUdA7ay/IH+7/W3hIUf0bZkTuwvmkCWK
	Beb6rciz+bNpkAmyQU6/5HfHYWVTkMwA1c/th/LZR9C0wL0qjzSTFQEt9lpp6Mq70jTTXse1kN2o+
	72Y88FemJ7YRw+gVH+zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLaDP-0007Vd-PR; Fri, 18 Oct 2019 21:55:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLaDB-0006i1-EX
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 21:55:11 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4B51D307C65B;
 Fri, 18 Oct 2019 21:55:04 +0000 (UTC)
Received: from llong.remote.csb (ovpn-120-190.rdu2.redhat.com [10.10.120.190])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A5E5A5D713;
 Fri, 18 Oct 2019 21:55:01 +0000 (UTC)
Subject: Re: [PATCH v5 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
To: Alex Kogan <alex.kogan@oracle.com>
References: <20191016042903.61081-1-alex.kogan@oracle.com>
 <20191016042903.61081-4-alex.kogan@oracle.com>
 <6ce50aeb-6b87-5d1c-9011-4329e8dadfec@redhat.com>
 <1B59E517-D418-46DF-BC58-174BAFC5EC23@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <3b8afb53-18e8-bd1d-9def-e1e7bdc73087@redhat.com>
Date: Fri, 18 Oct 2019 17:55:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1B59E517-D418-46DF-BC58-174BAFC5EC23@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Fri, 18 Oct 2019 21:55:04 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_145505_539602_44D690F0 
X-CRM114-Status: GOOD (  26.09  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arch@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 dave.dice@oracle.com, Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Rahul Yadav <rahul.x.yadav@oracle.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMTgvMTkgNTozNyBQTSwgQWxleCBLb2dhbiB3cm90ZToKPj4gT24gT2N0IDE4LCAyMDE5
LCBhdCAxMjowMyBQTSwgV2FpbWFuIExvbmcgPGxvbmdtYW5AcmVkaGF0LmNvbT4gd3JvdGU6Cj4+
Cj4+IE9uIDEwLzE2LzE5IDEyOjI5IEFNLCBBbGV4IEtvZ2FuIHdyb3RlOgo+Pj4gK3N0YXRpYyBp
bmxpbmUgdm9pZCBjbmFfcGFzc19sb2NrKHN0cnVjdCBtY3Nfc3BpbmxvY2sgKm5vZGUsCj4+PiAr
CQkJCSBzdHJ1Y3QgbWNzX3NwaW5sb2NrICpuZXh0KQo+Pj4gK3sKPj4+ICsJc3RydWN0IGNuYV9u
b2RlICpjbiA9IChzdHJ1Y3QgY25hX25vZGUgKilub2RlOwo+Pj4gKwlzdHJ1Y3QgbWNzX3NwaW5s
b2NrICpuZXh0X2hvbGRlciA9IG5leHQsICp0YWlsXzJuZDsKPj4+ICsJdTMyIHZhbCA9IDE7Cj4+
PiArCj4+PiArCXUzMiBzY2FuID0gY24tPnByZV9zY2FuX3Jlc3VsdDsKPj4+ICsKPj4+ICsJLyoK
Pj4+ICsJICogY2hlY2sgaWYgYSBzdWNjZXNzb3IgZnJvbSB0aGUgc2FtZSBudW1hIG5vZGUgaGFz
IG5vdCBiZWVuIGZvdW5kIGluCj4+PiArCSAqIHByZS1zY2FuLCBhbmQgaWYgc28sIHRyeSB0byBm
aW5kIGl0IGluIHBvc3Qtc2NhbiBzdGFydGluZyBmcm9tIHRoZQo+Pj4gKwkgKiBub2RlIHdoZXJl
IHByZS1zY2FuIHN0b3BwZWQgKHN0b3JlZCBpbiBAcHJlX3NjYW5fcmVzdWx0KQo+Pj4gKwkgKi8K
Pj4+ICsJaWYgKHNjYW4gPiAwKQo+Pj4gKwkJc2NhbiA9IGNuYV9zY2FuX21haW5fcXVldWUobm9k
ZSwgZGVjb2RlX3RhaWwoc2NhbikpOwo+Pj4gKwo+Pj4gKwlpZiAoIXNjYW4pIHsgLyogaWYgZm91
bmQgYSBzdWNjZXNzb3IgZnJvbSB0aGUgc2FtZSBudW1hIG5vZGUgKi8KPj4+ICsJCW5leHRfaG9s
ZGVyID0gbm9kZS0+bmV4dDsKPj4+ICsJCS8qCj4+PiArCQkgKiBtYWtlIHN1cmUgQHZhbCBnZXRz
IDEgaWYgY3VycmVudCBob2xkZXIncyBAbG9ja2VkIGlzIDAgYXMKPj4+ICsJCSAqIHdlIGhhdmUg
dG8gc3RvcmUgYSBub24temVybyB2YWx1ZSBpbiBzdWNjZXNzb3IncyBAbG9ja2VkCj4+PiArCQkg
KiB0byBwYXNzIHRoZSBsb2NrCj4+PiArCQkgKi8KPj4+ICsJCXZhbCA9IG5vZGUtPmxvY2tlZCAr
IChub2RlLT5sb2NrZWQgPT0gMCk7Cj4+IG5vZGUtPmxvY2tlZCBjYW4gYmUgMCB3aGVuIHRoZSBj
cHUgZW50ZXJzIGludG8gYW4gZW1wdHkgTUNTIHF1ZXVlLiBXZQo+PiBjb3VsZCB1bmNvbmRpdGlv
bmFsbHkgc2V0IG5vZGUtPmxvY2tlZCB0byAxIGZvciB0aGlzIGNhc2UgaW4gcXNwaW5sb2NrLmMK
Pj4gb3Igd2l0aCB5b3VyIGFib3ZlIGNvZGUuCj4gUmlnaHQsIEkgd2FzIGRvaW5nIHRoYXQgaW4g
dGhlIGZpcnN0IHR3byB2ZXJzaW9ucyBvZiB0aGUgc2VyaWVzLiBJdCBhZGRzIAo+IHVubmVjZXNz
YXJ5IHN0b3JlIGludG8gQGxvY2tlZCBmb3Igbm9uLUNOQSB2YXJpYW50cywgYW5kIGV2ZW4gaWYg
aXQgZG9lcyBub3QKPiBoYXZlIGFueSByZWFsIHBlcmZvcm1hbmNlIGltcGxpY2F0aW9ucywgSSB0
aGluayBQZXRlciBkaWQgbm90IGxpa2UgdGhhdCAob3IsIAo+IGF0IGxlYXN0LCB0aGUgY29tbWVu
dCBJIGhhZCB0byBleHBsYWluIHdoeSB3ZSBuZWVkZWQgdGhhdCBzdG9yZSkuCj4KPj4gUGVyaGFw
cywgYSBjb21tZW50IGFib3V0IHdoZW4gbm9kZS0+bG9ja2VkIHdpbGwKPj4gYmUgMC4KPiBZZWFo
LCBJIHdhcyB0aW5rZXJpbmcgd2l0aCB0aGlzIGNvbW1lbnQuIEhlcmUgaXMgaG93IGl0IHJlYWQg
aW4gdjM6Cj4gLyoKPiAgKiBXZSB1bmxvY2sgYSBzdWNjZXNzb3IgYnkgcGFzc2luZyBhIG5vbi16
ZXJvIHZhbHVlLAo+ICAqIHNvIHNldCBAdmFsIHRvIDEgaWZmIEBsb2NrZWQgaXMgMCwgd2hpY2gg
d2lsbCBoYXBwZW4KPiAgKiBpZiB3ZSBhY3F1aXJlZCB0aGUgTUNTIGxvY2sgd2hlbiBpdHMgcXVl
dWUgd2FzIGVtcHR5Cj4gICovCj4KPiBJIGNhbiBjaGFuZ2UgYmFjayB0byBzb21ldGhpbmcgbGlr
ZSB0aGF0IGlmIGl0IGlzIGJldHRlci4KVGhhdCBsb29rcyBPSy4KPj4gSXQgbWF5IGJlIGVhc2ll
ciB0byB1bmRlcnN0YW5kIGlmIHlvdSBqdXN0IGRvCj4+Cj4+ICAgICB2YWwgPSBub2RlLT5sb2Nr
ZWQgPyBub2RlLT5sb2NrZWQgOiAxOwo+IFlvdeKAmXJlIHJpZ2h0LCB0aGF04oCZcyBhbm90aGVy
IHBvc3NpYmlsaXR5Lgo+IEhvd2V2ZXIsIGl0IGFkZHMgeWV0IGFub3RoZXIgaWYtc3RhdGVtZW50
IG9uIHRoZSBjcml0aWNhbCBwYXRoLCB3aGljaCBJIHdhcwo+IHRyeWluZyB0byBhdm9pZCB0aGF0
LgoKSGF2ZSB5b3UgY29tcGFyZWQgdGhlIGdlbmVyYXRlZCBhc3NlbWJseSBjb2RlIGlmIG9uZSBp
cyBiZXR0ZXIgdGhhbiB0aGUKb3RoZXI/IEkgYW0gT0sgd2l0aCB3aGF0ZXZlciBvbmUgZ2VuZXJh
dGVzIGEgYmV0dGVyIGNvZGUsIGJ1dCBvZnRlbiB0aW1lCmNtb3ZlIGlzIHVzZWQgZm9yID86IHN0
YXRlbWVudHMuIElmIHRoZSBzYW1lIGNvZGUgaXMgZ2VuZXJhdGVkLCBJIHdpbGwKcHJlZmVyIGFu
IGVhc2llciB0byB1bmRlcnN0YW5kIHN0YXRlbWVudC4KCkNoZWVycywKTG9uZ21hbgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
