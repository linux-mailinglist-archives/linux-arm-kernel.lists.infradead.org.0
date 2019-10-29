Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE3CE88B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:49:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7+GvYotLV7DEt6FkkcyJz0Ck+Pz874WxxA4IoUvju8=; b=kuzNBnEbrXmgzq
	hwqeu/jSBCUtTf0026eM72pHkt4l62+9+SSAWbWfM6oTTCWFvShi5+BGHJ6tTeN30XeXxPh98j0/d
	VmZ5SD0iU7+yoPAQGFgFUs+NDi7vRtxxdj41ztitvHYZZtW4pUvVv4j1qjsEv9mMI6iqkvOhgqy3t
	B3eluVXK1kyFrAgbk4hzCtQ0WlygotpWIWjt/t8pJ72xxpAJ3LcUcDOV2yybvu/+lDyBNxDAo/aDj
	a4FKNwx4mtSHE3TcKsrDpXqo7nrrNs8knHAqhx+tcQdzXbP+hf5C1Nj1u8TU2lneccdlD76UjVfKp
	0n9gW2Hz6wR1FytSb9vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQwK-0007mM-VV; Tue, 29 Oct 2019 12:49:36 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQw8-0007lB-KL
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572353362;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6BV4BcyOxaroiRY1nHh/W3bkCNLJ+ckD/r50Gn1yPT0=;
 b=TYes92p0H7fd2VFu+U+M2eu77wlbQnYZ0ej4bTRVTBXYvh6aWfiv72Bt+u/VbFhTINImZl
 1i+Zvhlao17RoXnXBm2RgtXbFO62ApQlG9tdm0gOI0m5gtgrhUHS9RWGqg2yKihaIdJM38
 mYfFxhyqm0WtniCGfwlhPsFbZq4qXyA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-281-xZ4E5mL8OxaCghK5UyvDWg-1; Tue, 29 Oct 2019 08:49:18 -0400
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30293800C80;
 Tue, 29 Oct 2019 12:49:17 +0000 (UTC)
Received: from [10.36.118.15] (unknown [10.36.118.15])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3123F600C4;
 Tue, 29 Oct 2019 12:49:13 +0000 (UTC)
Subject: Re: [PATCH 3/3] KVM: arm/arm64: vgic: Don't rely on the wrong pending
 table
To: Zenghui Yu <yuzenghui@huawei.com>, Marc Zyngier <maz@kernel.org>
References: <20191029071919.177-1-yuzenghui@huawei.com>
 <20191029071919.177-4-yuzenghui@huawei.com> <86mudjykfa.wl-maz@kernel.org>
 <f8a30e65-7077-301a-1558-7fc504b5e891@huawei.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <e2141f6a-c530-46d5-d5d9-26806b02d55b@redhat.com>
Date: Tue, 29 Oct 2019 13:49:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <f8a30e65-7077-301a-1558-7fc504b5e891@huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: xZ4E5mL8OxaCghK5UyvDWg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_054924_748146_742BC329 
X-CRM114-Status: GOOD (  23.17  )
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
 linux-arm-kernel@lists.infradead.org, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWmVuZ2h1aSwKCk9uIDEwLzI5LzE5IDE6MjcgUE0sIFplbmdodWkgWXUgd3JvdGU6Cj4gSGkg
TWFyYywKPiAKPiBPbiAyMDE5LzEwLzI5IDE3OjIzLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+IE9u
IFR1ZSwgMjkgT2N0IDIwMTkgMDc6MTk6MTkgKzAwMDAsCj4+IFplbmdodWkgWXUgPHl1emVuZ2h1
aUBodWF3ZWkuY29tPiB3cm90ZToKPj4+Cj4+PiBJdCdzIHBvc3NpYmxlIHRoYXQgdHdvIExQSXMg
bG9jYXRlIGluIHRoZSBzYW1lICJieXRlX29mZnNldCIgYnV0IHRhcmdldAo+Pj4gdHdvIGRpZmZl
cmVudCB2Y3B1cywgd2hlcmUgdGhlaXIgcGVuZGluZyBzdGF0dXMgYXJlIGluZGljYXRlZCBieSB0
d28KPj4+IGRpZmZlcmVudCBwZW5kaW5nIHRhYmxlcy7CoCBJbiBzdWNoIGEgc2NlbmFyaW8sIHVz
aW5nIGxhc3RfYnl0ZV9vZmZzZXQKPj4+IG9wdGltaXphdGlvbiB3aWxsIGxlYWQgS1ZNIHJlbHlp
bmcgb24gdGhlIHdyb25nIHBlbmRpbmcgdGFibGUgZW50cnkuCj4+PiBMZXQgdXMgdXNlIGxhc3Rf
cHRyIGluc3RlYWQsIHdoaWNoIGNhbiBiZSB0cmVhdGVkIGFzIGEgYnl0ZSBpbmRleCBpbnRvCj4+
PiBhIHBlbmRpbmcgdGFibGUgYW5kIGFsc28sIGNhbiBiZSB2Y3B1IHNwZWNpZmljLgo+Pj4KPj4+
IFNpZ25lZC1vZmYtYnk6IFplbmdodWkgWXUgPHl1emVuZ2h1aUBodWF3ZWkuY29tPgo+Pj4gLS0t
Cj4+Pgo+Pj4gSWYgdGhpcyBwYXRjaCBoYXMgZG9uZSB0aGUgcmlnaHQgdGhpbmcsIHdlIGNhbiBl
dmVuIGFkZCB0aGU6Cj4+Pgo+Pj4gRml4ZXM6IDI4MDc3MTI1MmMxYiAoIktWTTogYXJtNjQ6IHZn
aWMtdjM6Cj4+PiBLVk1fREVWX0FSTV9WR0lDX1NBVkVfUEVORElOR19UQUJMRVMiKQo+Pj4KPj4+
IEJ1dCB0byBiZSBob25lc3QsIEknbSBub3QgY2xlYXIgYWJvdXQgd2hhdCBoYXMgdGhpcyBwYXRj
aCBhY3R1YWxseQo+Pj4gZml4ZWQuCj4+PiBQZW5kaW5nIHRhYmxlcyBzaG91bGQgY29udGFpbiBh
bGwgemVyb3MgYmVmb3JlIHdlIGZsdXNoIHZnaWNfaXJxJ3MKPj4+IHBlbmRpbmcKPj4+IHN0YXR1
cyBpbnRvIGd1ZXN0J3MgUkFNICh0aGlua2luZyB0aGF0IGd1ZXN0IHNob3VsZCBuZXZlciB3cml0
ZSBhbnl0aGluZwo+Pj4gaW50byBpdCkuIFNvIHRoZSBwZW5kaW5nIHRhYmxlIGVudHJ5IHdlJ3Zl
IHJlYWQgZnJvbSB0aGUgZ3Vlc3QgbWVtb3J5Cj4+PiBzZWVtcyBhbHdheXMgYmUgemVyby4gQW5k
IHdlIHdpbGwgYWx3YXlzIGRvIHRoZSByaWdodCB0aGluZyBldmVuIGlmIHdlCj4+PiByZWx5IG9u
IHRoZSB3cm9uZyBwZW5kaW5nIHRhYmxlIGVudHJ5Lgo+Pj4KPj4+IEkgdGhpbmsgSSBtdXN0IGhh
dmUgc29tZSBtaXN1bmRlcnN0YW5kaW5nIGhlcmUuLi4gUGxlYXNlIGZpeCBtZS4KPj4KPj4gSSB0
aGluayB5b3UncmUgc3BvdCBvbiwgYW5kIGl0IGlzIHRoZSBjb2RlIG5lZWRzIGZpeGluZywgbm90
IHlvdSEgVGhlCj4+IHByb2JsZW0gaXMgdGhhdCB3ZSBvbmx5IHJlYWQgYSBieXRlIG9uY2UsIGly
cmVzcGVjdGl2ZSBvZiB0aGUgdmNwdSB0aGUKPj4gaW50ZXJydXB0cyBpcyByb3V0ZWQgdG8uIElm
IHdlIHN3aXRjaCB0byBhbm90aGVyIHZjcHUgZm9yIHRoZSBzYW1lCj4+IGJ5dGUgb2Zmc2V0LCB3
ZSBtdXN0IHJlbG9hZCBpdC4KPj4KPj4gVGhpcyBjYW4gYmUgZG9uZSBieSBlaXRoZXIgY2hlY2tp
bmcgdGhlIHZjcHUsIG9yIGJ5IHRyYWNraW5nIHRoZSBndWVzdAo+PiBhZGRyZXNzIHRoYXQgd2Ug
cmVhZCBmcm9tIChqdXN0IGxpa2UgeW91IGRvIGhlcmUpLgo+IAo+IG9rYXksIHRoZSByZW1haW5p
bmcgcXVlc3Rpb24gaXMgdGhhdCBpbiB2Z2ljX3YzX3NhdmVfcGVuZGluZ190YWJsZXMoKToKPiAK
PiDCoMKgwqDCoHN0b3JlZCA9IHZhbCAmICgxVSA8PCBiaXRfbnIpOwo+IMKgwqDCoMKgaWYgKHN0
b3JlZCA9PSBpcnEtPnBlbmRpbmdfbGF0Y2gpCj4gwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4g
Cj4gwqDCoMKgwqBpZiAoaXJxLT5wZW5kaW5nX2xhdGNoKQo+IMKgwqDCoMKgwqDCoMKgIHZhbCB8
PSAxIDw8IGJpdF9ucjsKPiDCoMKgwqDCoGVsc2UKPiDCoMKgwqDCoMKgwqDCoCB2YWwgJj0gfigx
IDw8IGJpdF9ucik7Cj4gCj4gRG8gd2UgcmVhbGx5IGhhdmUgYSBzY2VuYXJpbyB3aGVyZSBpcnEt
PnBlbmRpbmdfbGF0Y2g9PWZhbHNlIGFuZAo+IHN0b3JlZD09dHJ1ZSAoY29ycmVzcG9uZHMgdG8g
dGhlIGFib3ZlICJlbHNlIikgYW5kIHRoZW4gd2UgY2xlYXIKPiBwZW5kaW5nIHN0YXR1cyBvZiB0
aGlzIExQSSBpbiBndWVzdCBtZW1vcnk/Cj4gSSBjYW4gbm90IHRoaW5rIG91dCBvbmUgbm93LgoK
aWYgeW91IHNhdmUsIHJlc3RvcmUgYW5kIHNhdmUgYWdhaW4uIE9uIHRoZSAxc3Qgc2F2ZSB0aGUg
TFBJIG1heSBiZQpwZW5kaW5nLCBpdCBnZXRzIHN0b3JlZC4gT24gdGhlIHNlY29uZCBzYXZlIHRo
ZSBMUEkgbWF5IGJlIG5vdCBwZW5kaW5nCmFueW1vcmU/CgpUaGFua3MKCkVyaWMKPiAKPj4KPj4g
QSBzbWFsbCBjb21tZW50IGJlbG93Ogo+Pgo+Pj4gwqAgdmlydC9rdm0vYXJtL3ZnaWMvdmdpYy12
My5jIHwgNiArKystLS0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMt
djMuYyBiL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtdjMuYwo+Pj4gaW5kZXggNWVmOTNlNTA0MWUx
Li43Y2QyZTJmODE1MTMgMTAwNjQ0Cj4+PiAtLS0gYS92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLXYz
LmMKPj4+ICsrKyBiL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtdjMuYwo+Pj4gQEAgLTM2Myw4ICsz
NjMsOCBAQCBpbnQgdmdpY192M19scGlfc3luY19wZW5kaW5nX3N0YXR1cyhzdHJ1Y3Qga3ZtCj4+
PiAqa3ZtLCBzdHJ1Y3QgdmdpY19pcnEgKmlycSkKPj4+IMKgIGludCB2Z2ljX3YzX3NhdmVfcGVu
ZGluZ190YWJsZXMoc3RydWN0IGt2bSAqa3ZtKQo+Pj4gwqAgewo+Pj4gwqDCoMKgwqDCoCBzdHJ1
Y3QgdmdpY19kaXN0ICpkaXN0ID0gJmt2bS0+YXJjaC52Z2ljOwo+Pj4gLcKgwqDCoCBpbnQgbGFz
dF9ieXRlX29mZnNldCA9IC0xOwo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgdmdpY19pcnEgKmlycTsK
Pj4+ICvCoMKgwqAgZ3BhX3QgbGFzdF9wdHIgPSAtMTsKPj4KPj4gVGhpcyBzaG91bGQgYmUgd3Jp
dHRlbiBhcwo+Pgo+PiDCoMKgwqDCoMKgIGdwYV90IGxhc3RfcHRyID0gfihncGFfdCkwOwo+IAo+
IFRoYW5rcyBmb3IgcG9pbnRpbmcgaXQgb3V0Lgo+IAo+Pgo+Pj4gwqDCoMKgwqDCoCBpbnQgcmV0
Owo+Pj4gwqDCoMKgwqDCoCB1OCB2YWw7Cj4+PiDCoCBAQCAtMzg0LDExICszODQsMTEgQEAgaW50
IHZnaWNfdjNfc2F2ZV9wZW5kaW5nX3RhYmxlcyhzdHJ1Y3Qga3ZtICprdm0pCj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgYml0X25yID0gaXJxLT5pbnRpZCAlIEJJVFNfUEVSX0JZVEU7Cj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgcHRyID0gcGVuZGJhc2UgKyBieXRlX29mZnNldDsKPj4+IMKgIC3CoMKg
wqDCoMKgwqDCoCBpZiAoYnl0ZV9vZmZzZXQgIT0gbGFzdF9ieXRlX29mZnNldCkgewo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGlmIChwdHIgIT0gbGFzdF9wdHIpIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldCA9IGt2bV9yZWFkX2d1ZXN0X2xvY2soa3ZtLCBwdHIsICZ2YWwsIDEpOwo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGxhc3RfYnl0ZV9vZmZzZXQgPSBieXRlX29mZnNldDsKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGxhc3RfcHRyID0gcHRyOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+IMKgIMKg
wqDCoMKgwqDCoMKgwqDCoCBzdG9yZWQgPSB2YWwgJiAoMVUgPDwgYml0X25yKTsKPj4KPj4gT3Ro
ZXJ3aXNlLCB0aGlzIGxvb2tzIGdvb2QgdG8gbWUgKG5vIG5lZWQgdG8gcmVzcGluIGZvciB0aGUg
YWJvdmUKPj4gbml0KS4KPiAKPiBUaGFua3MsCj4gCj4gWmVuZ2h1aQo+IAo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
