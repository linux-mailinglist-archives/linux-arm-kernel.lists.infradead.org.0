Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 621531A319A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 11:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6WY50498DruOkz+ADaezClYg8os8nMutm8S4kuTdjVA=; b=AuW6VxJ9K6gcuYwYI3r9up64d
	6BoV/zMvQo25JJsrZlGafy/NKcBShRxnQBOBhsCL3pOY71JOcIzW2CuyB8fiW9XAN67etKfAOx5HJ
	/7g4Yxj9gIBmN4QdoU8jZW8IKXW5ZmnCDZMIUx/ucV34aGndVa2JbjK/oq3X1eLP0RO1T6aRl0v/L
	CMi0QRS5W1+bapEufFdQ7DdPjbx9/IL2uESzfARFElc68Ao8glI5tBGJ9VHWa5HeUQT8d6RnC7kxC
	uDqP56XCXqLe5YvxFGW+uUFs4ScJYhSkDOe70ceVP8FOcL9WIv12mSnHGo3iajlpY/TnMvUtc9dHE
	M7BgN7M7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMTEf-0007ym-KX; Thu, 09 Apr 2020 09:12:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMTEV-0007xk-PZ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 09:12:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8850331B;
 Thu,  9 Apr 2020 02:12:22 -0700 (PDT)
Received: from [10.37.12.112] (unknown [10.37.12.112])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A2AC3F73D;
 Thu,  9 Apr 2020 02:12:20 -0700 (PDT)
Subject: Re: [RFC PATCH] coresight: dynamic-replicator: Fix handling of
 multiple connections
To: saiprakash.ranjan@codeaurora.org
References: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
 <CAJ9a7VgQzK1XSCvLwuqODwkWfvo=6Wwps7Db+pL5xYDeCuktrg@mail.gmail.com>
 <6c0f45488f8a44bf860759e00fcabd09@codeaurora.org>
 <906d374d-a4d6-f2f2-6845-88b97a5ff7d9@arm.com>
 <39a2b3fff165a108fa59d72b630b5f14@codeaurora.org>
 <bb209f80-ac02-6321-dac4-ebf9ee6fa9a0@arm.com>
 <bd05b31c2391edfff5044f22f2f83edf@codeaurora.org>
 <e9c299c4-caeb-9eb8-f019-b311bfce756a@arm.com>
 <a7074f44ebbde720b5e0189801eab7c9@codeaurora.org>
 <20200408224347.GA388414@ewhatever.cambridge.arm.com>
 <9ad167836b0a22694d58d24f39db89a6@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <671892c3-b90d-73f0-4706-b74b40002260@arm.com>
Date: Thu, 9 Apr 2020 10:17:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <9ad167836b0a22694d58d24f39db89a6@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_021223_914221_6634B277 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 swboyd@chromium.org, leo.yan@linaro.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2FpLAoKClRoYW5rcyBmb3IgdGhlIHF1aWNrIHRlc3RpbmcgISBQbGVhc2Ugc2VlIGJlbG93
IGZvciB0aGUKdG1jX2V0ciBwcm9iZSBmYWlsdXJlLgoKT24gMDQvMDkvMjAyMCAwODo1MSBBTSwg
U2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+IEhpIFN1enVraSwKPiAKPiBPbiAyMDIwLTA0LTA5
IDA0OjEzLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+PiBPbiBUdWUsIEFwciAwNywgMjAyMCBh
dCAwODo0ODo1NFBNICswNTMwLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4+Cj4+IFBsZWFz
ZSBmaW5kIHRoZSB1bnRlc3RlZCBwYXRjaCBiZWxvdy4KPj4KPj4gLS0tOD4tLS0KPj4KPj4gW3Vu
dGVzdGVkXSBjb3Jlc2lnaHQ6IEZpeCBzdXBwb3J0IGZvciBzcGFyc2UgcG9ydCBudW1iZXJzCj4+
Cj4+IE9uIHNvbWUgc3lzdGVtcyB0aGUgZmlybXdhcmUgbWF5IG5vdCBkZXNjcmliZSBhbGwgdGhl
IHBvcnRzCj4+IGNvbm5lY3RlZCB0byBhIGNvbXBvbmVudCAoZS5nLCBmb3Igc2VjdXJpdHkgcmVh
c29ucykuIFRoaXMKPj4gY291bGQgYmUgZXNwZWNpYWxseSBwcm9ibGVtYXRpYyBmb3IgImZ1bm5l
bHMiIHdoZXJlIHdlIGNvdWxkCj4+IGVuZCB1cCBpbiBtb2RpZnlpbmcgbWVtb3J5IGJleW9uZCB0
aGUgYWxsb2NhdGVkIHNwYWNlIGZvcgo+PiByZWZjb3VudHMuCj4+Cj4+IGUuZywgZm9yIGEgZnVu
bmVsIHdpdGggaW5wdXQgcG9ydHMgbGlzdGVkIDAsIDMsIDUsIG5yX2lucG9ydCA9IDMuCj4+IEhv
d2V2ZXIgdGhlIHdlIGNvdWxkIGFjY2VzcyByZWZjbnRzWzVdIHdoaWxlIGNoZWNraW5nIGZvcgo+
PiByZWZlcmVuY2VzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTdXp1a2kgSyBQb3Vsb3NlIDxzdXp1
a2kucG91bG9zZUBhcm0uY29tPgo+PiAtLS0KPj4gwqAuLi4vaHd0cmFjaW5nL2NvcmVzaWdodC9j
b3Jlc2lnaHQtcGxhdGZvcm0uY8KgIHwgNzQgKysrKysrKysrKysrLS0tLS0tLQo+PiDCoGRyaXZl
cnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQuY8KgwqDCoMKgwqDCoCB8wqAgOCArLQo+
PiDCoDIgZmlsZXMgY2hhbmdlZCwgNTYgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCj4+
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LXBs
YXRmb3JtLmMKPj4gYi9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LXBsYXRm
b3JtLmMKPj4gaW5kZXggM2M1YmVlNDI5MTA1Li4xYzYxMGQ2ZTk0NGIgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtcGxhdGZvcm0uYwo+PiArKysg
Yi9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LXBsYXRmb3JtLmMKPj4gQEAg
LTY3LDYgKzY3LDcgQEAgc3RhdGljIHZvaWQgb2ZfY29yZXNpZ2h0X2dldF9wb3J0c19sZWdhY3ko
Y29uc3QKClsuLi5dCgo+PiBAQCAtNjg0LDggKzcwMiwxMyBAQCBzdGF0aWMgaW50IGFjcGlfY29y
ZXNpZ2h0X3BhcnNlX2dyYXBoKHN0cnVjdAo+PiBhY3BpX2RldmljZSAqYWRldiwKPj4gwqDCoMKg
wqDCoMKgwqDCoCByZXR1cm4gcmM7Cj4+Cj4+IMKgwqDCoMKgIC8qIENvcHkgdGhlIGNvbm5lY3Rp
b24gaW5mb3JtYXRpb24gdG8gdGhlIGZpbmFsIGxvY2F0aW9uICovCj4+IC3CoMKgwqAgZm9yIChp
ID0gMDsgaSA8IHBkYXRhLT5ucl9vdXRwb3J0OyBpKyspCj4+IC3CoMKgwqDCoMKgwqDCoCBwZGF0
YS0+Y29ubnNbaV0gPSBjb25uc1tpXTsKPj4gK8KgwqDCoCBmb3IgKGkgPSAwOyBjb25ucyArIGkg
PCBwdHI7IGkrKykgewo+PiArwqDCoMKgwqDCoMKgwqAgaW50IHBvcnQgPSBjb25uc1tpXS5vdXRw
b3J0Owo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBEdXBsaWNhdGUgb3V0cHV0IHBvcnQgKi8K
Pj4gK8KgwqDCoMKgwqDCoMKgIFdBUk5fT04ocGRhdGEtPmNvbm5zW3BvcnRdLmNoaWxkX2Z3bm9k
ZSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBwZGF0YS0+Y29ubnNbcG9ydF0gPSBjb25uc1tpXTsKPj4g
K8KgwqDCoCB9Cj4+Cj4+IMKgwqDCoMKgIGRldm1fa2ZyZWUoJmFkZXYtPmRldiwgY29ubnMpOwo+
PiDCoMKgwqDCoCByZXR1cm4gMDsKPj4gQEAgLTc4Nyw2ICs4MTAsNyBAQCBjb3Jlc2lnaHRfZ2V0
X3BsYXRmb3JtX2RhdGEoc3RydWN0IGRldmljZSAqZGV2KQo+PiDCoMKgwqDCoMKgwqDCoMKgIGdv
dG8gZXJyb3I7Cj4+Cj4+IMKgwqDCoMKgIHBkYXRhID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9m
KCpwZGF0YSksIEdGUF9LRVJORUwpOwo+PiArwqDCoMKgIHBkYXRhLT5ucl9vdXRwb3J0ID0gcGRh
dGEtPm5yX2lucG9ydCA9IC0xOwoKClBsZWFzZSBjb3VsZCB5b3UgcmVtb3ZlIHRoaXMgaHVuayBh
bmQgdGVzdCBpdCA/IEkgZm9yZ290IHRvIHVwZGF0ZSB0aGUKY29tbWl0IGJlZm9yZSBJIHNlbnQg
dGhpcyBvdmVyLgoKCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBEb2VzIGl0IG1hdGNo
IHRoaXMgbmV3bHkgYWRkZWQgZGV2aWNlPyAqLwo+PiBAQCAtMTAyOSw2ICsxMDMyLDkgQEAgc3Rh
dGljIHZvaWQgY29yZXNpZ2h0X2ZpeHVwX2RldmljZV9jb25ucyhzdHJ1Y3QKPj4gY29yZXNpZ2h0
X2RldmljZSAqY3NkZXYpCj4+IMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGNvcmVzaWdodF9jb25u
ZWN0aW9uICpjb25uID0gJmNzZGV2LT5wZGF0YS0+Y29ubnNbaV07Cj4+IMKgwqDCoMKgwqDCoMKg
wqAgc3RydWN0IGRldmljZSAqZGV2ID0gTlVMTDsKPj4KPj4gK8KgwqDCoMKgwqDCoMKgIGlmICgh
Y29ubi0+Y2hpbGRfZndub2RlKQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTsK
Pj4gKwo+PiDCoMKgwqDCoMKgwqDCoMKgIGRldiA9IGJ1c19maW5kX2RldmljZV9ieV9md25vZGUo
JmNvcmVzaWdodF9idXN0eXBlLCAKPj4gY29ubi0+Y2hpbGRfZndub2RlKTsKPj4gwqDCoMKgwqDC
oMKgwqDCoCBpZiAoZGV2KSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25uLT5jaGls
ZF9kZXYgPSB0b19jb3Jlc2lnaHRfZGV2aWNlKGRldik7Cj4+IEBAIC0xMDYxLDcgKzEwNjcsNyBA
QCBzdGF0aWMgaW50IGNvcmVzaWdodF9yZW1vdmVfbWF0Y2goc3RydWN0IGRldmljZQo+PiAqZGV2
LCB2b2lkICpkYXRhKQo+PiDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgaXRlcmF0b3ItPnBkYXRh
LT5ucl9vdXRwb3J0OyBpKyspIHsKPj4gwqDCoMKgwqDCoMKgwqDCoCBjb25uID0gJml0ZXJhdG9y
LT5wZGF0YS0+Y29ubnNbaV07Cj4+Cj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAoY29ubi0+Y2hpbGRf
ZGV2ID09IE5VTEwpCj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoY29ubi0+Y2hpbGRfZGV2ID09IE5V
TEwgfHwgY29ubi0+Y2hpbGRfZndub2RlID09IE5VTEwpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb250aW51ZTsKPj4KPj4gwqDCoMKgwqDCoMKgwqDCoCBpZiAoY3NkZXYtPmRldi5md25v
ZGUgPT0gY29ubi0+Y2hpbGRfZndub2RlKSB7Cj4gCj4gCj4gVGhhbmtzIFN1enVraSwgSSBkb24n
dCBzZWUgdGhlIEtBU0FOIHdhcm5pbmcgYW55bW9yZSB3aXRoIHRoaXMgcGF0Y2guCj4gQnV0IHNv
bWVob3cgdG1jX2V0ciBwcm9iZSBmYWlscyB3aXRoIGVycm9yIC0xMihFTk9NRU0pLgoKU2VlIHRo
ZSBhYm92ZSBzdWdnZXN0aW9uLgoKQ2hlZXJzClN1enVraQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
