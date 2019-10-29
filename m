Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBB1E9334
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 23:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3i7it6hrIekZsPB4LWbf3ri5q2lPqqKhezDtehAIpI=; b=p8c3ifqhWhnLNS
	Rn8fi+tegzPBkvzU7lj22POFteXQWvgfLR6JpDIP5neRRWeTNOe1q8FBvYqPYj/ReBfnZatooPBLi
	yTtYbq026LrHfx5uqrSUP4SYUJUfFPSCZTzKYVhtSRQxxKC6tJCFxZMQM/Vo+IS0PMT1iZS+N1ePU
	p0Stx3nylBJiC966M5r+UpLuwOoUIM0eBjjFdP0swYP6PmwXBY8hXESRGV+AYzn+HBT5RBK7xeJMH
	a44fHG3IitFKE0V0OB2DOJS3WKnm+S59XDCMR+VpsK4+39b8PgVdz4Ojj42mRIT4j5Kg0/paKPZ60
	ChJYpT/uVn6POFJuJYqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPaLp-0006Ux-I8; Tue, 29 Oct 2019 22:52:33 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPaLe-0006U6-1F
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 22:52:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572389538;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lYynz4GR5eOSd6n5cQs67I6ct64O6p/BlBconKMsNBU=;
 b=fdkWbchMrMra7M9oVGGPxOxQk026XQ4DLHTOn7VvdIi6RieFbkFbG2SvFo4eXIxVUg0Z7U
 56/KeZ97D3/jdqseKmrsWRX2HWyPk47tNuqUiQSsj8LRKyzuCmzaiWXCQvmU9MPX53wh50
 zgDvCt9AfDNk+LlIqOnrEX9BSgQI1Cs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-57-Z8l-CFl_NJWBKFINNW_lsQ-1; Tue, 29 Oct 2019 18:52:15 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C4F62800C80;
 Tue, 29 Oct 2019 22:52:13 +0000 (UTC)
Received: from [10.36.117.11] (ovpn-117-11.ams2.redhat.com [10.36.117.11])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AE53119D70;
 Tue, 29 Oct 2019 22:52:10 +0000 (UTC)
From: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH 3/3] KVM: arm/arm64: vgic: Don't rely on the wrong pending
 table
To: Zenghui Yu <yuzenghui@huawei.com>, Marc Zyngier <maz@kernel.org>
References: <20191029071919.177-1-yuzenghui@huawei.com>
 <20191029071919.177-4-yuzenghui@huawei.com> <86mudjykfa.wl-maz@kernel.org>
 <f8a30e65-7077-301a-1558-7fc504b5e891@huawei.com>
 <e2141f6a-c530-46d5-d5d9-26806b02d55b@redhat.com>
 <01638947-ce47-2e09-68f0-a95eb6e9b2d0@huawei.com>
Message-ID: <40c96640-49b3-942b-59f7-3f2f1592d8d6@redhat.com>
Date: Tue, 29 Oct 2019 23:52:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <01638947-ce47-2e09-68f0-a95eb6e9b2d0@huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: Z8l-CFl_NJWBKFINNW_lsQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_155222_153947_F8B2DCB6 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWmVuZ2h1aSwKCk9uIDEwLzI5LzE5IDI6MzEgUE0sIFplbmdodWkgWXUgd3JvdGU6Cj4gSGkg
RXJpYywKPiAKPiBPbiAyMDE5LzEwLzI5IDIwOjQ5LCBBdWdlciBFcmljIHdyb3RlOgo+PiBPbiAx
MC8yOS8xOSAxOjI3IFBNLCBaZW5naHVpIFl1IHdyb3RlOgo+Pj4gb2theSwgdGhlIHJlbWFpbmlu
ZyBxdWVzdGlvbiBpcyB0aGF0IGluIHZnaWNfdjNfc2F2ZV9wZW5kaW5nX3RhYmxlcygpOgo+Pj4K
Pj4+IMKgwqDCoMKgwqBzdG9yZWQgPSB2YWwgJiAoMVUgPDwgYml0X25yKTsKPj4+IMKgwqDCoMKg
wqBpZiAoc3RvcmVkID09IGlycS0+cGVuZGluZ19sYXRjaCkKPj4+IMKgwqDCoMKgwqDCoMKgwqAg
Y29udGludWU7Cj4+Pgo+Pj4gwqDCoMKgwqDCoGlmIChpcnEtPnBlbmRpbmdfbGF0Y2gpCj4+PiDC
oMKgwqDCoMKgwqDCoMKgIHZhbCB8PSAxIDw8IGJpdF9ucjsKPj4+IMKgwqDCoMKgwqBlbHNlCj4+
PiDCoMKgwqDCoMKgwqDCoMKgIHZhbCAmPSB+KDEgPDwgYml0X25yKTsKPj4+Cj4+PiBEbyB3ZSBy
ZWFsbHkgaGF2ZSBhIHNjZW5hcmlvIHdoZXJlIGlycS0+cGVuZGluZ19sYXRjaD09ZmFsc2UgYW5k
Cj4+PiBzdG9yZWQ9PXRydWUgKGNvcnJlc3BvbmRzIHRvIHRoZSBhYm92ZSAiZWxzZSIpIGFuZCB0
aGVuIHdlIGNsZWFyCj4+PiBwZW5kaW5nIHN0YXR1cyBvZiB0aGlzIExQSSBpbiBndWVzdCBtZW1v
cnk/Cj4+PiBJIGNhbiBub3QgdGhpbmsgb3V0IG9uZSBub3cuCj4+Cj4+IGlmIHlvdSBzYXZlLCBy
ZXN0b3JlIGFuZCBzYXZlIGFnYWluLiBPbiB0aGUgMXN0IHNhdmUgdGhlIExQSSBtYXkgYmUKPj4g
cGVuZGluZywgaXQgZ2V0cyBzdG9yZWQuIE9uIHRoZSBzZWNvbmQgc2F2ZSB0aGUgTFBJIG1heSBi
ZSBub3QgcGVuZGluZwo+PiBhbnltb3JlPwo+IAo+IEkgYXNzdW1lIHlvdSBtZWFuIHRoZSAicmVz
dG9yZSIgYnkgdmdpY19pdHNfcmVzdG9yZV9pdGUoKS4KCnllcyB0aGF0J3Mgd2hhdCBJIG1lYW50
Cgo+IAo+IFdoaWxlIHJlc3RvcmluZyBhIExQSSwgd2Ugd2lsbCBzeW5jIHRoZSBwZW5kaW5nIHN0
YXR1cyBmcm9tIGd1ZXN0Cj4gcGVuZGluZyB0YWJsZSAoaW50byB0aGUgc29mdHdhcmUgcGVuZGlu
Z19sYXRjaCksIGFuZCBjbGVhciB0aGUKPiBjb3JyZXNwb25kaW5nIGJpdCBpbiBndWVzdCBtZW1v
cnkuCj4gU2VlIHZnaWNfdjNfbHBpX3N5bmNfcGVuZGluZ19zdGF0dXMoKS4KPiAKPiBTbyBvbiB0
aGUgc2Vjb25kIHNhdmUsIHRoZSBMUEkgY2FuIGJlIG5vdCBwZW5kaW5nLCB0aGUgZ3Vlc3QgcGVu
ZGluZwo+IHRhYmxlIHdpbGwgYWxzbyBpbmRpY2F0ZSBub3QgcGVuZGluZy4KCllvdSdyZSByaWdo
dDsgSSBkaWQgbm90IHJlbWVtYmVyIHZnaWNfdjNfbHBpX3N5bmNfcGVuZGluZ19zdGF0dXMgKGNh
bGxlZApmcm9tIHZnaWNfaXRzX3Jlc3RvcmVfaXRlL3ZnaWNfYWRkX2xwaSkgImNsZWFyZWQgdGhl
IGNvbnN1bWVkIGRhdGEiCig0NGRlOWQ2ODM4NDcgIEtWTTogYXJtNjQ6IHZnaWMtdjM6IHZnaWNf
djNfbHBpX3N5bmNfcGVuZGluZ19zdGF0dXMpLgoKU28gZWZmZWN0aXZlbHkgYWZ0ZXIgcmVzdG9y
ZSB0aGUgcGVuZGluZyB0YWJsZSBpcyB6ZXJvZWQgYW5kIHRoZSBhYm92ZQpjb2RlIHNob3VsZCBi
ZSByZXdyaXR0YWJsZSBpbiBhIG1vcmUgc2ltcGxlIG1hbm5lciwgaWUuIGp1c3QgdXBkYXRlIHRo
ZQpieXRlIGluIGNhc2UgdGhlIHBlbmRpbmdfbGF0Y2ggaXMgc2V0LgoKTmV0aGVydGhlbGVzcyB5
b3VyIHBhdGNoIGluZGVlZCBmaXhlcyBhbiBhY3R1YWwgYnVnIGluZGVwZW5kZW50bHkgb24KdGhp
cyBjbGVhbnVwLCBpZS4gdGhlIHdyaXR0ZW4gYnl0ZSBtYXkgYmUgaW5jb3JyZWN0IGlmIExQSXMg
YmVsb25naW5nIHRvCnRoaXMgYnl0ZSB0YXJnZXQgZGlmZmVyZW50IFJESVNULgoKVGhhbmtzCgpF
cmljCj4gCj4gCj4gVGhhbmtzLAo+IFplbmdodWkKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
