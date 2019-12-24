Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D953F129D8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 05:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Noi89xOjtKhRwPZeADWjLcdSF8NEMM4nazWAQhz2gF0=; b=srmlCsjKd5Qez0
	L/+P5wG8YVyoZTQIy0BfByZbUAPip8g14lhMk71KdKwRiDIiwjZEl+Q7dsA4f0/KY/7ltCFXfnmql
	tHQNZvYFJoc2NcL1y/JvP+PQP5jyfBoLO0IoGDGrgEDWJ0o0jvHj5mtyXyXhl10DRVnePLAlsR+cf
	M9D+aJWdWntwzQZQisTwwxu34UGF0FreSWNlA0bxQYmCd8dvYjEUU0qkrdLPrQdG2skPZcCaUBf7z
	cxGsEheIKaMQWM6ViJ+StK6QkbS1W3vyLK5onWbKvrgFHa33g2kD912atCOmC3NNczcwrGzMtwJqn
	HPCZX7DQuyrjV3jsFZLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijc4s-0003h8-QJ; Tue, 24 Dec 2019 04:45:50 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijc4g-0003g8-1f
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 04:45:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577162736;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0QvQOGSsD6BCQ/KZZeRtn8Sn6aNp+vhwPhxNJ2ctz9g=;
 b=IODJAb5YkV0f/9y3hJkAi4RdgBm3yBq2CGIGecVmP9qsSYVFQbDe7hOVw0H4GRr7NRRmNP
 XP7bFgEtc46+ZIjfx+LDaVtnwxC6S7+3RVnATbERivPoOyo9waq3Jfl7Z3QWOdBNldpvms
 RFMtGxi8gSq+yfkShllvsInz9rJURe4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-65-Hoek3P4zOCSlBGu07fty_A-1; Mon, 23 Dec 2019 23:45:32 -0500
X-MC-Unique: Hoek3P4zOCSlBGu07fty_A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CAEBB184B461;
 Tue, 24 Dec 2019 04:45:30 +0000 (UTC)
Received: from [10.36.116.117] (ovpn-116-117.ams2.redhat.com [10.36.116.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 141505DA60;
 Tue, 24 Dec 2019 04:45:20 +0000 (UTC)
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Handle GICR_PENDBASER.PTZ filed as
 RAZ
To: Zenghui Yu <yuzenghui@huawei.com>, Marc Zyngier <maz@kernel.org>
References: <20191220111833.1422-1-yuzenghui@huawei.com>
 <3a729559-d0eb-e042-d6bd-b69bacb0dd23@huawei.com>
 <c084aa29c029f97cdfb1b5dc9e6b29ac@www.loen.fr>
 <1225d839-3cf7-d513-778e-698e12e94875@huawei.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <12a1e25b-617d-6b04-6a5a-4c67a39565a5@redhat.com>
Date: Tue, 24 Dec 2019 05:45:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <1225d839-3cf7-d513-778e-698e12e94875@huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_204538_170463_D2AFB498 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andre.przywara@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wanghaibin.wang@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWmVuZ2h1aSwKCk9uIDEyLzI0LzE5IDM6NTIgQU0sIFplbmdodWkgWXUgd3JvdGU6Cj4gSGkg
TWFyYywgRXJpYywKPiAKPiBPbiAyMDE5LzEyLzIzIDIyOjA3LCBNYXJjIFp5bmdpZXIgd3JvdGU6
Cj4+IEhpIFplbmdodWksCj4+Cj4+IE9uIDIwMTktMTItMjMgMTM6NDMsIFplbmdodWkgWXUgd3Jv
dGU6Cj4+PiBPbiAyMDE5LzEyLzIwIDE5OjE4LCBaZW5naHVpIFl1IHdyb3RlOgo+Pj4+IEFsdGhv
dWdoIGd1ZXN0IHdpbGwgaGFyZGx5IHJlYWQgYW5kIHVzZSB0aGUgUFRaIChQZW5kaW5nIFRhYmxl
IFplcm8pCj4+Pj4gYml0IGluIEdJQ1JfUEVOREJBU0VSLCBsZXQgdXMgZW11bGF0ZSB0aGUgYXJj
aGl0ZWN0dXJlIHN0cmljdGx5Lgo+Pj4+IEFzIHBlciBJSEkgMDA2OUUgOS4xMS4zMCwgUFRaIGZp
ZWxkIGlzIFdPLCBhbmQgcmVhZHMgYXMgMC4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBaZW5naHVpIFl1
IDx5dXplbmdodWlAaHVhd2VpLmNvbT4KPj4+PiAtLS0KPj4+PiBOb3RpY2VkIHdoZW4gY2hlY2tp
bmcgYWxsIGZpZWxkcyBvZiBHSUNSX1BFTkRCQVNFUiByZWdpc3Rlci4KPj4+PiBCdXQgX25vdF8g
c3VyZSB3aGV0aGVyIGl0J3Mgd29ydGggYSBmaXgsIGFzIExpbnV4IG5ldmVyIHNldHMKPj4+PiB0
aGUgUFRaIGJpdCBiZWZvcmUgZW5hYmxpbmcgTFBJIChzZXQgR0lDUl9DVExSX0VOQUJMRV9MUElT
KS4KPj4+PiBBbmQgSSB3b25kZXIgdW5kZXIgd2hpY2ggc2NlbmFyaW9zIGNhbiB0aGlzIGJpdCBi
ZSB3cml0dGVuIGFzIDEuCj4+Pj4gSXQgc2VlbXMgZGlmZmljdWx0IGZvciBzb2Z0d2FyZSB0byBk
ZXRlcm1pbmUgd2hldGhlciB0aGUgcGVuZGluZwo+Pj4+IHRhYmxlIGNvbnRhaW5zIGFsbCB6ZXJv
cyB3aGVuIHdyaXRpbmcgdGhpcyBiaXQuCj4+Pj4gdmlydC9rdm0vYXJtL3ZnaWMvdmdpYy1tbWlv
LXYzLmMgfCA1ICsrKystCj4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+Pj4+IGRpZmYgLS1naXQgYS92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLW1t
aW8tdjMuYwo+Pj4+IGIvdmlydC9rdm0vYXJtL3ZnaWMvdmdpYy1tbWlvLXYzLmMKPj4+PiBpbmRl
eCA3ZGZkMTVkYmIzMDguLmViYzIxODg0MGZjMiAxMDA2NDQKPj4+PiAtLS0gYS92aXJ0L2t2bS9h
cm0vdmdpYy92Z2ljLW1taW8tdjMuYwo+Pj4+ICsrKyBiL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMt
bW1pby12My5jCj4+Pj4gQEAgLTQxNCw4ICs0MTQsMTEgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcK
Pj4+PiB2Z2ljX21taW9fcmVhZF9wZW5kYmFzZShzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsCj4+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBncGFf
dCBhZGRyLCB1bnNpZ25lZCBpbnQgbGVuKQo+Pj4+IMKgIHsKPj4+PiDCoMKgwqDCoMKgIHN0cnVj
dCB2Z2ljX2NwdSAqdmdpY19jcHUgPSAmdmNwdS0+YXJjaC52Z2ljX2NwdTsKPj4+PiArwqDCoMKg
IHU2NCB2YWx1ZSA9IHZnaWNfY3B1LT5wZW5kYmFzZXI7Cj4+Pj4gwqAgLcKgwqDCoCByZXR1cm4g
ZXh0cmFjdF9ieXRlcyh2Z2ljX2NwdS0+cGVuZGJhc2VyLCBhZGRyICYgNywgbGVuKTsKPj4+PiAr
wqDCoMKgIHZhbHVlICY9IH5HSUNSX1BFTkRCQVNFUl9QVFo7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAg
cmV0dXJuIGV4dHJhY3RfYnl0ZXModmFsdWUsIGFkZHIgJiA3LCBsZW4pOwo+Pj4+IMKgIH0KPj4+
PiDCoCBzdGF0aWMgdm9pZCB2Z2ljX21taW9fd3JpdGVfcGVuZGJhc2Uoc3RydWN0IGt2bV92Y3B1
ICp2Y3B1LAo+Pj4+Cj4+Pgo+Pj4gSSBub3RpY2VkIHRoZXJlIGlzIG5vIHVzZXJzcGFjZSBhY2Nl
c3MgY2FsbGJhY2tzIGZvciBHSUNSX1BFTkRCQVNFUiwKPj4+IHNvIHRoaXMgcGF0Y2ggd2lsbCBt
YWtlIHRoZSBQVFogZmllbGQgYWxzbyAnUmVhZCBBcyBaZXJvJyBieSB1c2Vyc3BhY2UuCj4+PiBT
aG91bGQgd2UgY29uc2lkZXIgYWRkaW5nIGEgdWFjY2Vzc19yZWFkIGNhbGxiYWNrIGZvciBHSUNS
X1BFTkRCQVNFUgo+Pj4gd2hpY2gganVzdCByZXR1cm5zIHRoZSB1bmNoYW5nZWQgdmdpY19jcHUt
PnBlbmRiYXNlciB0byB1c2Vyc3BhY2U/Cj4+PiAoVGhvdWdoIHRoaXMgaXMgcmVhbGx5IG5vdCBh
IGJpZyBkZWFsLiBXZSBub3cgYWx3YXlzIGVtdWxhdGUgdGhlIFBUWgo+Pj4gZmllbGQgdG8gZ3Vl
c3QgYXMgUkFaLiBBbmQgJ3ZnaWNfY3B1LT5wZW5kYmFzZXIgJiBHSUNSX1BFTkRCQVNFUl9QVFon
Cj4+PiBvbmx5IGluZGljYXRlcyB3aGV0aGVyIEtWTSB3aWxsIG9wdGltaXplIHRoZSBMUEkgZW5h
YmxpbmcgcHJvY2VzcywKPj4+IHdoZXJlIFJlYWQgQXMgWmVybyBpbmRpY2F0ZXMgbmV2ZXIgb3B0
aW1pemUuLikKPj4KPj4gSSBkb24ndCB0aGluayBhZGRpbmcgYSB1c2Vyc3BhY2UgYWNjZXNzb3Ig
d291bGQgaGVscCBtdWNoLiBBbGwgdGhpcwo+PiBiaXQgdGVsbHMgdXNlcnNwYWNlIGlzIHRoYXQg
dGhlIGd1ZXN0IGhhcyBwcm9ncmFtbWVkIGEgemVybyBmaWxsZWQKPj4gdGFibGUuIE9uIHJlc3Rv
cmUsIHdlJ2QgYXZvaWQgYSByZXNjYW4gb2YgdGhlIHRhYmxlIGlmIHRoZXJlIHdhcwo+PiBubyBM
UEkgbWFwcGVkLgo+IAo+IFllcywgSSBhZ3JlZS4KPiAKPj4gQW5kIHRoaW5raW5nIG9mIGl0LCB0
aGlzIGZpeGVzIGEgYnVnIGZvciBub24tTGludXggZ3Vlc3RzOiBJZiB5b3Ugd3JpdGUKPj4gUFRa
PTEsIHdlIG5ldmVyIGNsZWFyIGl0LiBXaGljaCBtZWFucyB0aGF0IGlmIHVzZXJzcGFjZSBzYXZl
cyBhbmQKPj4gcmVzdG9yZXMKPj4gUEVOREJBU0VSIHdpdGggUFRaIHNldCwgd2UnbGwgbmV2ZXIg
cmVzdG9yZSB0aGUgcGVuZGluZyBiaXRzLCB3aGljaCBpcwo+PiBwcmV0dHkgYmFkIChzZWUgdmdp
Y19lbmFibGVfbHBpcygpKS4KPiAKPiBCdXQgSSdtIGFmcmFpZCBJIGNhbid0IGZvbGxvdyB0aGlz
IHBvaW50LiBBZnRlciByZWFkaW5nIHRoZSBjb2RlICh3aXRoCj4gUWVtdSkgYSBiaXQgZnVydGhl
ciwgdGhlIFJlZGlzdHJpYnV0b3JzIGFyZSByZXN0b3JlZCBiZWZvcmUgdGhlIElUUy4KClRoaXMg
aXMgYWxzbyBwYXJ0IG9mIHRoZSBrZXJuZWwgZG9jdW1lbnRhdGlvbjoKRG9jdW1lbnRhdGlvbi92
aXJ0L2t2bS9kZXZpY2VzL2FybS12Z2ljLWl0cy50eHQgKElUUyByZXN0b3JlIHNlcXVlbmNlKQog
U28KPiB0aGVyZSBzaG91bGQgYmUgX25vXyBMUEkgaGFzIGJlZW4gbWFwcGVkIHdoZW4gd2UncmUg
cmVzdG9yaW5nIEdJQ1JfQ1RMUgo+IGFuZCBlbmFibGluZyBMUEksIHdoaWNoIHNheXMgd2Ugd2ls
bCBub3Qgc2NhbiB0aGUgd2hvbGUgcGVuZGluZyB0YWJsZQo+IGFuZCByZXN0b3JlIHBlbmRpbmcg
YnkgdmdpY19lbmFibGVfbHBpcygpL2l0c19zeW5jX2xwaV9wZW5kaW5nX3RhYmxlKCksCj4gcmVn
YXJkbGVzcyBvZiB3aGF0IHRoZSBQVFogaXMuCj4gCj4gSW5zdGVhZCwgdmdpY19pdHNfcmVzdG9y
ZV9pdGUoKS92Z2ljX3YzX2xwaV9zeW5jX3BlbmRpbmdfc3RhdHVzKCkgaXMKPiB3aGVyZSB3ZSBh
Y3R1YWxseSByZWFkIHRoZSBndWVzdCBSQU0gYW5kIHJlc3RvcmUgdGhlIExQSSBwZW5kaW5nIHN0
YXRlLgp5ZXMgdGhlIHBlbmRpbmcgc3RhdGUgaXMgcmVzdG9yZWQgZnJvbQp2Z2ljX2l0c19yZXN0
b3JlX2l0ZS92Z2ljX2FkZF9scGkvdmdpY192M19scGlfc3luY19wZW5kaW5nX3N0YXR1cyBhbmQK
dGhpcyBwYXRoIGlnbm9yZXMgdGhlIFBUWi4KClRoYW5rcwoKRXJpYwo+IFdoaWNoIG1lYW5zIHdl
IHdpbGwgc3RpbGwgZG8gdGhlIHJpZ2h0IHRoaW5nIGV2ZW4gZm9yIG5vbi1MaW51eCBndWVzdHMu
Cj4gTm90IHN1cmUgaWYgSSd2ZSBnb3QgdGhpbmdzIGNvcnJlY3RseSBoZXJlLgo+IAo+IEluIHRo
ZSBlbmQsIGxldCdzIGtlZXAgdGhlIHBhdGNoIGFzIGl0IGlzLgo+IAo+Pgo+PiBUaGlzIHBhdGNo
IG9uIGl0cyBvd24gZml4ZXMgbW9yZSB0aGFuIG9uZSBidWchCj4+Cj4gCj4gSWYgc28sIGp1c3Qg
YnkgbHVjayA7LSkKPiAKPiAKPiBUaGFua3MsCj4gWmVuZ2h1aQo+IAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
