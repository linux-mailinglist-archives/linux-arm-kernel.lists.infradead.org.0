Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2791212972C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 15:20:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbWCGYIm6ALOBFDwh12d3OqezhJ02N6VnH9criP4bbc=; b=kbetbvmnMKXv6F
	c8iEQl9D/Zi57bErbcMj9HYb6pJSoOqhH1ThhVrw6w7aV0LP0MPz0bxtldnO278NCf+mmrg9kWh6+
	R9dviCn1lS9w92J0LMtt/eFweHp+rkeNykZvXXdhZe6Q2xd/vmGajqoPLQ/ucKReaOGij313p+6+4
	a4vMIoIZZkWpyvP8/HEUJLZqfMbWrQyJopawF6EWGFTuLkcVsQxWMtjknXKrczmPIN/LAiOm3tC52
	1Kkz2rowtZ5qFzp0fr/O2a7lne2k0czR2sOGTlsRMaN3Kpa9ab/DBo67lTdN72n8jGXQ2VN1c6IXg
	Z/Fl/BRwvrKfYbpOiSxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijOZA-0002VX-P9; Mon, 23 Dec 2019 14:20:12 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijOYr-0002Tk-Cp
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 14:19:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577110790;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mL7EP1HVEPCTfjY90+H+xu1r0sHEJd8rLQjw69yZex0=;
 b=e7KyPzIVg3QxvmjJbK2qkkEBkR2A9gRGKhekYI6t8RbToLy3zYCnd8cGmToJM3ScWj9NqZ
 k54FBvM0IDAM6740+FsOuNDR6l8ihQ0XDY/iKQkANXD05IlM7sT915EycarVDso6el8hDF
 XJHzU5XXtjj4IMkhE5w4viguPmXUa98=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-9-KzmNUHtbOzSZH2L4w0OQ9g-1; Mon, 23 Dec 2019 09:19:43 -0500
X-MC-Unique: KzmNUHtbOzSZH2L4w0OQ9g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 854A48017DF;
 Mon, 23 Dec 2019 14:19:41 +0000 (UTC)
Received: from [10.36.116.117] (ovpn-116-117.ams2.redhat.com [10.36.116.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4687A10375CC;
 Mon, 23 Dec 2019 14:19:35 +0000 (UTC)
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Handle GICR_PENDBASER.PTZ filed as
 RAZ
To: Zenghui Yu <yuzenghui@huawei.com>, maz@kernel.org
References: <20191220111833.1422-1-yuzenghui@huawei.com>
 <3a729559-d0eb-e042-d6bd-b69bacb0dd23@huawei.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <fd6ec914-0940-a4bd-fc06-f1c211eba5ee@redhat.com>
Date: Mon, 23 Dec 2019 15:19:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <3a729559-d0eb-e042-d6bd-b69bacb0dd23@huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_061953_514199_D3EB3448 
X-CRM114-Status: GOOD (  21.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
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

SGkgWmVuZ2h1aSwKCk9uIDEyLzIzLzE5IDI6NDMgUE0sIFplbmdodWkgWXUgd3JvdGU6Cj4gT24g
MjAxOS8xMi8yMCAxOToxOCwgWmVuZ2h1aSBZdSB3cm90ZToKPj4gQWx0aG91Z2ggZ3Vlc3Qgd2ls
bCBoYXJkbHkgcmVhZCBhbmQgdXNlIHRoZSBQVFogKFBlbmRpbmcgVGFibGUgWmVybykKPj4gYml0
IGluIEdJQ1JfUEVOREJBU0VSLCBsZXQgdXMgZW11bGF0ZSB0aGUgYXJjaGl0ZWN0dXJlIHN0cmlj
dGx5Lgo+PiBBcyBwZXIgSUhJIDAwNjlFIDkuMTEuMzAsIFBUWiBmaWVsZCBpcyBXTywgYW5kIHJl
YWRzIGFzIDAuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFplbmdodWkgWXUgPHl1emVuZ2h1aUBodWF3
ZWkuY29tPgo+PiAtLS0KPj4KPj4gTm90aWNlZCB3aGVuIGNoZWNraW5nIGFsbCBmaWVsZHMgb2Yg
R0lDUl9QRU5EQkFTRVIgcmVnaXN0ZXIuCj4+IEJ1dCBfbm90XyBzdXJlIHdoZXRoZXIgaXQncyB3
b3J0aCBhIGZpeCwgYXMgTGludXggbmV2ZXIgc2V0cwo+PiB0aGUgUFRaIGJpdCBiZWZvcmUgZW5h
YmxpbmcgTFBJIChzZXQgR0lDUl9DVExSX0VOQUJMRV9MUElTKS4KPj4KPj4gQW5kIEkgd29uZGVy
IHVuZGVyIHdoaWNoIHNjZW5hcmlvcyBjYW4gdGhpcyBiaXQgYmUgd3JpdHRlbiBhcyAxLgo+PiBJ
dCBzZWVtcyBkaWZmaWN1bHQgZm9yIHNvZnR3YXJlIHRvIGRldGVybWluZSB3aGV0aGVyIHRoZSBw
ZW5kaW5nCj4+IHRhYmxlIGNvbnRhaW5zIGFsbCB6ZXJvcyB3aGVuIHdyaXRpbmcgdGhpcyBiaXQu
Cj4+Cj4+IMKgIHZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtbW1pby12My5jIHwgNSArKysrLQo+PiDC
oCAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRp
ZmYgLS1naXQgYS92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLW1taW8tdjMuYwo+PiBiL3ZpcnQva3Zt
L2FybS92Z2ljL3ZnaWMtbW1pby12My5jCj4+IGluZGV4IDdkZmQxNWRiYjMwOC4uZWJjMjE4ODQw
ZmMyIDEwMDY0NAo+PiAtLS0gYS92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLW1taW8tdjMuYwo+PiAr
KysgYi92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLW1taW8tdjMuYwo+PiBAQCAtNDE0LDggKzQxNCwx
MSBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZwo+PiB2Z2ljX21taW9fcmVhZF9wZW5kYmFzZShzdHJ1
Y3Qga3ZtX3ZjcHUgKnZjcHUsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgZ3BhX3QgYWRkciwgdW5zaWduZWQgaW50IGxlbikKPj4gwqAgewo+
PiDCoMKgwqDCoMKgIHN0cnVjdCB2Z2ljX2NwdSAqdmdpY19jcHUgPSAmdmNwdS0+YXJjaC52Z2lj
X2NwdTsKPj4gK8KgwqDCoCB1NjQgdmFsdWUgPSB2Z2ljX2NwdS0+cGVuZGJhc2VyOwo+PiDCoCAt
wqDCoMKgIHJldHVybiBleHRyYWN0X2J5dGVzKHZnaWNfY3B1LT5wZW5kYmFzZXIsIGFkZHIgJiA3
LCBsZW4pOwo+PiArwqDCoMKgIHZhbHVlICY9IH5HSUNSX1BFTkRCQVNFUl9QVFo7Cj4+ICsKPj4g
K8KgwqDCoCByZXR1cm4gZXh0cmFjdF9ieXRlcyh2YWx1ZSwgYWRkciAmIDcsIGxlbik7Cj4+IMKg
IH0KPj4gwqAgwqAgc3RhdGljIHZvaWQgdmdpY19tbWlvX3dyaXRlX3BlbmRiYXNlKHN0cnVjdCBr
dm1fdmNwdSAqdmNwdSwKPj4KPiAKPiBJIG5vdGljZWQgdGhlcmUgaXMgbm8gdXNlcnNwYWNlIGFj
Y2VzcyBjYWxsYmFja3MgZm9yIEdJQ1JfUEVOREJBU0VSLAo+IHNvIHRoaXMgcGF0Y2ggd2lsbCBt
YWtlIHRoZSBQVFogZmllbGQgYWxzbyAnUmVhZCBBcyBaZXJvJyBieSB1c2Vyc3BhY2UuCj4gU2hv
dWxkIHdlIGNvbnNpZGVyIGFkZGluZyBhIHVhY2Nlc3NfcmVhZCBjYWxsYmFjayBmb3IgR0lDUl9Q
RU5EQkFTRVIKPiB3aGljaCBqdXN0IHJldHVybnMgdGhlIHVuY2hhbmdlZCB2Z2ljX2NwdS0+cGVu
ZGJhc2VyIHRvIHVzZXJzcGFjZT8KPiAoVGhvdWdoIHRoaXMgaXMgcmVhbGx5IG5vdCBhIGJpZyBk
ZWFsLiBXZSBub3cgYWx3YXlzIGVtdWxhdGUgdGhlIFBUWgo+IGZpZWxkIHRvIGd1ZXN0IGFzIFJB
Wi4gQW5kICd2Z2ljX2NwdS0+cGVuZGJhc2VyICYgR0lDUl9QRU5EQkFTRVJfUFRaJwo+IG9ubHkg
aW5kaWNhdGVzIHdoZXRoZXIgS1ZNIHdpbGwgb3B0aW1pemUgdGhlIExQSSBlbmFibGluZyBwcm9j
ZXNzLAo+IHdoZXJlIFJlYWQgQXMgWmVybyBpbmRpY2F0ZXMgbmV2ZXIgb3B0aW1pemUuLikKWW91
J3JlIHJpZ2h0LiBJZiB3ZSBzdGFydCBhIG1pZ3JhdGlvbiB3aGVuIHRoZSBQVFogaGFzIGp1c3Qg
YmVlbiBzZXQgYnkKdGhlIFNXLCB0aGVuIHdlIHdpbGwgbWlzcyBpdCBvbiB0aGUgZGVzdGluYXRp
b24gc2lkZS4KClNvIGZvciBpbnN0YW5jZSBpbiB0aGUgbGFzdCBLVk0gdW5pdCB0ZXN0IG9mIG15
IHNlcmllcwooaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcva3ZtYXJtLzIwMTkxMjE2MTQwMjM1LjEw
NzUxLTE3LWVyaWMuYXVnZXJAcmVkaGF0LmNvbS8pLAppbiB0ZXN0X2l0c19wZW5kaW5nX21pZ3Jh
dGlvbigpLCBpZiB5b3Uga2ljayB0aGUgbWlncmF0aW9uIGJlZm9yZQplbmFibGluZyBMUEkncyBh
dCByZWRpc3QgbGV2ZWwsIHlvdSBzaG91bGRuJ3Qgc2VlIGFueSBMUEkgaGl0dGluZyBvbiB0aGUK
dGFyZ2V0IHdoaWNoIGlzIHRoZW9yZXRpY2FsbHkgd3JvbmcuIFNvIGltcGxlbWVudGluZyBhIHVh
Y2Nlc3NfcmVhZCgpCndvdWxkIGJlIGJldHRlciBJIHRoaW5rLgoKVGhhbmtzCgpFcmljCgorCXB0
ciA9IGdpY3YzX2RhdGEucmVkaXN0X2Jhc2VbbnJfY3B1cyAtIDFdICsgR0lDUl9QRU5EQkFTRVI7
CisJcGVuZGJhc2VyID0gcmVhZHEocHRyKTsKKwl3cml0ZXEocGVuZGJhc2VyICYgfkdJQ1JfUEVO
REJBU0VSX1BUWiwgcHRyKTsKKworCXB0ciA9IGdpY3YzX2RhdGEucmVkaXN0X2Jhc2VbbnJfY3B1
cyAtIDJdICsgR0lDUl9QRU5EQkFTRVI7CisJcGVuZGJhc2VyID0gcmVhZHEocHRyKTsKKwl3cml0
ZXEocGVuZGJhc2VyICYgfkdJQ1JfUEVOREJBU0VSX1BUWiwgcHRyKTsKCisJcHV0cygiTm93IG1p
Z3JhdGUgdGhlIFZNLCB0aGVuIHByZXNzIGEga2V5IHRvIGNvbnRpbnVlLi4uXG4iKTsKKwkodm9p
ZClnZXRjaGFyKCk7CisJcmVwb3J0KHRydWUsICJNaWdyYXRpb24gY29tcGxldGUiKTsKKworCWdp
Y3YzX3JkaXN0X2N0cmxfbHBpKG5yX2NwdXMgLSAxLCB0cnVlKTsKKwlnaWN2M19yZGlzdF9jdHJs
X2xwaShucl9jcHVzIC0gMiwgdHJ1ZSk7CisKPiAKPiAKPiBUaGFua3MsCj4gWmVuZ2h1aQo+IAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
