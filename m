Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE0112974C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 15:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Op5o4RjCWBSiw542DiJ4GIt3e7HguD4zcBw17nQgkOk=; b=Z3RkKLMSxQEM7o
	ZYdPOkfo/IEvL4dUq8kMvu0lTgYAT1e8iE6LBiUlrjuvIE0YZ6xRqoofp8ebfLlV50uEzLcWsw3Kj
	mE8mOliZtybOjvaqiJIuHG/IJ38YjS4QYKhTwZqlxJvS23KO4LQMDq7wIbGi8dzmuIGj/z2WzG7M5
	TdGKua7qrR3AhsQfCJuF9a6qJoAFQMrAlXjawenH/5tMxCT7P9fRZrecd0IM6FEyiG0CvgH7DXmio
	j1lQZCXtOCmDbEy/PhFI6H+jNEuEegKOmyaGnHCCBWqxlVEiv2Ean5H72dxqjea0v0JXHUMto7x2n
	oZ0KWEbQvGaDna8nB7mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijOek-0006Zh-GD; Mon, 23 Dec 2019 14:25:58 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijOea-0006Yq-2o
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 14:25:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577111146;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nTyEDFusLKumYW0h03qshyTMkbaeVnlSIDHnGUWtv+s=;
 b=Ewoc3B0KQjcgBD9KakSZiDQbax3ns5fj/AEf4UOCKUjLmA5dbGTeyXckGzxYuxJSvbI4sw
 2qJ1L64BQgGMvjEP6oJWwOJsc5Bt1L4oDsocLS4a1C8LnB4n/QduZ6+4nmzMyPkweKJxWl
 DxXHetv3ax6QOa4E37QDshQVw9jNFtM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-49-eooe5S9dObea5djAYhn2sA-1; Mon, 23 Dec 2019 09:25:43 -0500
X-MC-Unique: eooe5S9dObea5djAYhn2sA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D36A11005502;
 Mon, 23 Dec 2019 14:25:41 +0000 (UTC)
Received: from [10.36.116.117] (ovpn-116-117.ams2.redhat.com [10.36.116.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 54E7860BF4;
 Mon, 23 Dec 2019 14:25:37 +0000 (UTC)
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Handle GICR_PENDBASER.PTZ filed as
 RAZ
From: Auger Eric <eric.auger@redhat.com>
To: Zenghui Yu <yuzenghui@huawei.com>, maz@kernel.org
References: <20191220111833.1422-1-yuzenghui@huawei.com>
 <3a729559-d0eb-e042-d6bd-b69bacb0dd23@huawei.com>
 <fd6ec914-0940-a4bd-fc06-f1c211eba5ee@redhat.com>
Message-ID: <4817b05f-1822-7fc7-99a5-e7d5deae1055@redhat.com>
Date: Mon, 23 Dec 2019 15:25:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <fd6ec914-0940-a4bd-fc06-f1c211eba5ee@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_062548_204055_F2C28D86 
X-CRM114-Status: GOOD (  24.01  )
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

SGkgWmVuZ2h1aSwgTWFyYywKT24gMTIvMjMvMTkgMzoxOSBQTSwgQXVnZXIgRXJpYyB3cm90ZToK
PiBIaSBaZW5naHVpLAo+IAo+IE9uIDEyLzIzLzE5IDI6NDMgUE0sIFplbmdodWkgWXUgd3JvdGU6
Cj4+IE9uIDIwMTkvMTIvMjAgMTk6MTgsIFplbmdodWkgWXUgd3JvdGU6Cj4+PiBBbHRob3VnaCBn
dWVzdCB3aWxsIGhhcmRseSByZWFkIGFuZCB1c2UgdGhlIFBUWiAoUGVuZGluZyBUYWJsZSBaZXJv
KQo+Pj4gYml0IGluIEdJQ1JfUEVOREJBU0VSLCBsZXQgdXMgZW11bGF0ZSB0aGUgYXJjaGl0ZWN0
dXJlIHN0cmljdGx5Lgo+Pj4gQXMgcGVyIElISSAwMDY5RSA5LjExLjMwLCBQVFogZmllbGQgaXMg
V08sIGFuZCByZWFkcyBhcyAwLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFplbmdodWkgWXUgPHl1
emVuZ2h1aUBodWF3ZWkuY29tPgo+Pj4gLS0tCj4+Pgo+Pj4gTm90aWNlZCB3aGVuIGNoZWNraW5n
IGFsbCBmaWVsZHMgb2YgR0lDUl9QRU5EQkFTRVIgcmVnaXN0ZXIuCj4+PiBCdXQgX25vdF8gc3Vy
ZSB3aGV0aGVyIGl0J3Mgd29ydGggYSBmaXgsIGFzIExpbnV4IG5ldmVyIHNldHMKPj4+IHRoZSBQ
VFogYml0IGJlZm9yZSBlbmFibGluZyBMUEkgKHNldCBHSUNSX0NUTFJfRU5BQkxFX0xQSVMpLgo+
Pj4KPj4+IEFuZCBJIHdvbmRlciB1bmRlciB3aGljaCBzY2VuYXJpb3MgY2FuIHRoaXMgYml0IGJl
IHdyaXR0ZW4gYXMgMS4KPj4+IEl0IHNlZW1zIGRpZmZpY3VsdCBmb3Igc29mdHdhcmUgdG8gZGV0
ZXJtaW5lIHdoZXRoZXIgdGhlIHBlbmRpbmcKPj4+IHRhYmxlIGNvbnRhaW5zIGFsbCB6ZXJvcyB3
aGVuIHdyaXRpbmcgdGhpcyBiaXQuCj4+Pgo+Pj4gwqAgdmlydC9rdm0vYXJtL3ZnaWMvdmdpYy1t
bWlvLXYzLmMgfCA1ICsrKystCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL3ZpcnQva3ZtL2FybS92Z2ljL3Zn
aWMtbW1pby12My5jCj4+PiBiL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtbW1pby12My5jCj4+PiBp
bmRleCA3ZGZkMTVkYmIzMDguLmViYzIxODg0MGZjMiAxMDA2NDQKPj4+IC0tLSBhL3ZpcnQva3Zt
L2FybS92Z2ljL3ZnaWMtbW1pby12My5jCj4+PiArKysgYi92aXJ0L2t2bS9hcm0vdmdpYy92Z2lj
LW1taW8tdjMuYwo+Pj4gQEAgLTQxNCw4ICs0MTQsMTEgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcK
Pj4+IHZnaWNfbW1pb19yZWFkX3BlbmRiYXNlKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ3BhX3Qg
YWRkciwgdW5zaWduZWQgaW50IGxlbikKPj4+IMKgIHsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHZn
aWNfY3B1ICp2Z2ljX2NwdSA9ICZ2Y3B1LT5hcmNoLnZnaWNfY3B1Owo+Pj4gK8KgwqDCoCB1NjQg
dmFsdWUgPSB2Z2ljX2NwdS0+cGVuZGJhc2VyOwo+Pj4gwqAgLcKgwqDCoCByZXR1cm4gZXh0cmFj
dF9ieXRlcyh2Z2ljX2NwdS0+cGVuZGJhc2VyLCBhZGRyICYgNywgbGVuKTsKPj4+ICvCoMKgwqAg
dmFsdWUgJj0gfkdJQ1JfUEVOREJBU0VSX1BUWjsKPj4+ICsKPj4+ICvCoMKgwqAgcmV0dXJuIGV4
dHJhY3RfYnl0ZXModmFsdWUsIGFkZHIgJiA3LCBsZW4pOwo+Pj4gwqAgfQo+Pj4gwqAgwqAgc3Rh
dGljIHZvaWQgdmdpY19tbWlvX3dyaXRlX3BlbmRiYXNlKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwK
Pj4+Cj4+Cj4+IEkgbm90aWNlZCB0aGVyZSBpcyBubyB1c2Vyc3BhY2UgYWNjZXNzIGNhbGxiYWNr
cyBmb3IgR0lDUl9QRU5EQkFTRVIsCj4+IHNvIHRoaXMgcGF0Y2ggd2lsbCBtYWtlIHRoZSBQVFog
ZmllbGQgYWxzbyAnUmVhZCBBcyBaZXJvJyBieSB1c2Vyc3BhY2UuCj4+IFNob3VsZCB3ZSBjb25z
aWRlciBhZGRpbmcgYSB1YWNjZXNzX3JlYWQgY2FsbGJhY2sgZm9yIEdJQ1JfUEVOREJBU0VSCj4+
IHdoaWNoIGp1c3QgcmV0dXJucyB0aGUgdW5jaGFuZ2VkIHZnaWNfY3B1LT5wZW5kYmFzZXIgdG8g
dXNlcnNwYWNlPwo+PiAoVGhvdWdoIHRoaXMgaXMgcmVhbGx5IG5vdCBhIGJpZyBkZWFsLiBXZSBu
b3cgYWx3YXlzIGVtdWxhdGUgdGhlIFBUWgo+PiBmaWVsZCB0byBndWVzdCBhcyBSQVouIEFuZCAn
dmdpY19jcHUtPnBlbmRiYXNlciAmIEdJQ1JfUEVOREJBU0VSX1BUWicKPj4gb25seSBpbmRpY2F0
ZXMgd2hldGhlciBLVk0gd2lsbCBvcHRpbWl6ZSB0aGUgTFBJIGVuYWJsaW5nIHByb2Nlc3MsCj4+
IHdoZXJlIFJlYWQgQXMgWmVybyBpbmRpY2F0ZXMgbmV2ZXIgb3B0aW1pemUuLikKPiBZb3UncmUg
cmlnaHQuIElmIHdlIHN0YXJ0IGEgbWlncmF0aW9uIHdoZW4gdGhlIFBUWiBoYXMganVzdCBiZWVu
IHNldCBieQo+IHRoZSBTVywgdGhlbiB3ZSB3aWxsIG1pc3MgaXQgb24gdGhlIGRlc3RpbmF0aW9u
IHNpZGUuCj4gCj4gU28gZm9yIGluc3RhbmNlIGluIHRoZSBsYXN0IEtWTSB1bml0IHRlc3Qgb2Yg
bXkgc2VyaWVzCj4gKGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2t2bWFybS8yMDE5MTIxNjE0MDIz
NS4xMDc1MS0xNy1lcmljLmF1Z2VyQHJlZGhhdC5jb20vKSwKPiBpbiB0ZXN0X2l0c19wZW5kaW5n
X21pZ3JhdGlvbigpLCBpZiB5b3Uga2ljayB0aGUgbWlncmF0aW9uIGJlZm9yZQo+IGVuYWJsaW5n
IExQSSdzIGF0IHJlZGlzdCBsZXZlbCwgeW91IHNob3VsZG4ndCBzZWUgYW55IExQSSBoaXR0aW5n
IG9uIHRoZQo+IHRhcmdldCB3aGljaCBpcyB0aGVvcmV0aWNhbGx5IHdyb25nLiBTbyBpbXBsZW1l
bnRpbmcgYSB1YWNjZXNzX3JlYWQoKQo+IHdvdWxkIGJlIGJldHRlciBJIHRoaW5rLgo+IAo+IFRo
YW5rcwo+IAo+IEVyaWMKPiAKPiArCXB0ciA9IGdpY3YzX2RhdGEucmVkaXN0X2Jhc2VbbnJfY3B1
cyAtIDFdICsgR0lDUl9QRU5EQkFTRVI7Cj4gKwlwZW5kYmFzZXIgPSByZWFkcShwdHIpOwo+ICsJ
d3JpdGVxKHBlbmRiYXNlciAmIH5HSUNSX1BFTkRCQVNFUl9QVFosIHB0cik7Cj4gKwo+ICsJcHRy
ID0gZ2ljdjNfZGF0YS5yZWRpc3RfYmFzZVtucl9jcHVzIC0gMl0gKyBHSUNSX1BFTkRCQVNFUjsK
PiArCXBlbmRiYXNlciA9IHJlYWRxKHB0cik7Cj4gKwl3cml0ZXEocGVuZGJhc2VyICYgfkdJQ1Jf
UEVOREJBU0VSX1BUWiwgcHRyKTsKVGhhdCdzIGEgY2xlYXIgYWN0dWFsbHkuIFNvIE1hcmMgaXMg
cmlnaHQsIGZvcmdldCB3aGF0IEkgaGF2ZSBqdXN0IHNhaWQuClRoaXMgd2lsbCB3b3JrIG9uIGRl
c3RpbmF0aW9uIHNpemUgYXMgd2Ugd2lsbCB3cml0ZSAwLgoKU29ycnkgZm9yIHRoZSBub2lzZQoK
SG9wZWZ1bGx5IENocmlzdG1hcyBicmVhayBpcyBjb21pbmcgOy0pCgpCZXN0IFJlZ2FyZHMKCkVy
aWMKPiAKPiArCXB1dHMoIk5vdyBtaWdyYXRlIHRoZSBWTSwgdGhlbiBwcmVzcyBhIGtleSB0byBj
b250aW51ZS4uLlxuIik7Cj4gKwkodm9pZClnZXRjaGFyKCk7Cj4gKwlyZXBvcnQodHJ1ZSwgIk1p
Z3JhdGlvbiBjb21wbGV0ZSIpOwo+ICsKPiArCWdpY3YzX3JkaXN0X2N0cmxfbHBpKG5yX2NwdXMg
LSAxLCB0cnVlKTsKPiArCWdpY3YzX3JkaXN0X2N0cmxfbHBpKG5yX2NwdXMgLSAyLCB0cnVlKTsK
PiArCj4+Cj4+Cj4+IFRoYW5rcywKPj4gWmVuZ2h1aQo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdAo+PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCj4+
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
