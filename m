Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A6A135783
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:57:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NbMQQYv3W1iJATxfweMJ1oBO8+Nrbinc5csxnctzPNM=; b=mrwiAllTmW7SVe456KXCPyydJ
	+UVXqKwXAKW/vib7bfFhxnWjmAGR3FaA9AYcOxiMBjYIhBaE17TIhqleAb9APB2Wgo+QBMIYSCjky
	mepcpYQ9Pf3i4+5Hl1/8VyRv1GONq5/dU+ECXiiRTpgeGNWXwcNX3FHFoyIgkBa69HkWf1j7aLzDo
	gPR76bM1GPUjj9PFodWfvDIobR8vreShBHIA2M1JXkEPFaTzCh4vMFGxjpTeewcPAGLdiq2dVjyuf
	Kjta0kh2vuW+SZBceVCMoKA2zEZFZidW9D+ZCVocgIMonH48iCRVQxbREHdFvPxdE/M+5+4k1+Qbw
	wCl8MzoqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVV9-0004hY-EF; Thu, 09 Jan 2020 10:57:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVUz-0004gP-Hk; Thu, 09 Jan 2020 10:57:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EAB9C31B;
 Thu,  9 Jan 2020 02:57:08 -0800 (PST)
Received: from [10.37.12.111] (unknown [10.37.12.111])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3DA023F703;
 Thu,  9 Jan 2020 02:57:05 -0800 (PST)
Subject: Re: [PATCH v2 02/11] PM / devfreq: Remove
 devfreq_get_devfreq_by_phandle function
To: Chanwoo Choi <cw00.choi@samsung.com>, robh+dt@kernel.org,
 krzk@kernel.org, heiko@sntech.de, leonard.crestez@nxp.com
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p4ce1c2017937a35de84eab720b9732df0@epcas1p4.samsung.com>
 <20191220002430.11995-3-cw00.choi@samsung.com>
 <b9a1ebe5-e114-3a6b-6081-c794e1341329@arm.com>
 <22cde618-d51e-2d4d-461e-e2d2c1b52af2@samsung.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <3cb1e237-84b2-f110-4eb3-6394151cecc4@arm.com>
Date: Thu, 9 Jan 2020 10:57:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <22cde618-d51e-2d4d-461e-e2d2c1b52af2@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_025709_679639_9D1F0E54 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com,
 myungjoo.ham@samsung.com, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxLzkvMjAgMTA6NTQgQU0sIENoYW53b28gQ2hvaSB3cm90ZToKPiBPbiAxLzkvMjAgNzoz
NyBQTSwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4+IEhpIENoYW53b28sCj4+Cj4+IE9uIDEyLzIwLzE5
IDEyOjI0IEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4+PiBQcmV2aW91c2x5LCBkZXZmcmVxIGNv
cmUgc3VwcG9ydCAnZGV2ZnJlcScgcHJvcGVydHkgaW4gb3JkZXIgdG8gZ2V0Cj4+PiB0aGUgZGV2
ZnJlcSBkZXZpY2UgYnkgcGhhbmRsZS4gQnV0LCAnZGV2ZnJlcScgcHJvcGVydHkgbmFtZSBpcyBu
b3QgcHJvcGVyCj4+PiBvbiBkZXZpY2V0cmVlIGJpbmRpbmcgYmVjYXVzZSB0aGlzIG5hbWUgZG9l
c24ndCBtZWFuIHRoZSBhbnkgaC93IGF0dHJpYnV0ZS4KPj4+Cj4+PiBUaGUgZGV2ZnJlcSBjb3Jl
IGhhbmQgb3ZlciB0aGUgcmlnaHQgdG8gZGVjaWRlIHRoZSBwcm9wZXJ0eSBuYW1lCj4+PiBmb3Ig
Z2V0dGluZyB0aGUgZGV2ZnJlcSBkZXZpY2Ugb24gZGV2aWNldHJlZS4gRWFjaCBkZXZmcmVxIGRy
aXZlcgo+Pj4gd2lsbCBkZWNpZGUgdGhlIHByb3BlcnR5IG5hbWUgb24gZGV2aWNldHJlZSBiaW5k
aW5nIGFuZCB0aGVuIGdldAo+Pj4gdGhlIGRldmZyZXEgZGV2aWNlIGJ5IHVzaW5nIGRldmZyZXFf
Z2V0X2RldmZyZXFfYnlfbm9kZSgpLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENoYW53b28gQ2hv
aSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tPgo+Pj4gLS0tCj4+PiAgwqAgZHJpdmVycy9kZXZmcmVx
L2RldmZyZXEuY8KgwqDCoCB8IDM1IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4+PiAgwqAgZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8IDEyICsrKysrKysrKysrLQo+
Pj4gIMKgIGluY2x1ZGUvbGludXgvZGV2ZnJlcS5owqDCoMKgwqDCoCB8wqAgOCAtLS0tLS0tLQo+
Pj4gIMKgIDMgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNDQgZGVsZXRpb25zKC0p
Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgYi9kcml2ZXJz
L2RldmZyZXEvZGV2ZnJlcS5jCj4+PiBpbmRleCBjYjhjYTgxYzg5NzMuLmMzZDNjN2M4MDJhMCAx
MDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPj4+ICsrKyBiL2RyaXZl
cnMvZGV2ZnJlcS9kZXZmcmVxLmMKPj4+IEBAIC05OTEsNDggKzk5MSwxMyBAQCBzdHJ1Y3QgZGV2
ZnJlcSAqZGV2ZnJlcV9nZXRfZGV2ZnJlcV9ieV9ub2RlKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9k
ZSkKPj4+ICDCoCDCoMKgwqDCoMKgIHJldHVybiBFUlJfUFRSKC1FTk9ERVYpOwo+Pj4gIMKgIH0K
Pj4+IC0KPj4+IC0vKgo+Pj4gLSAqIGRldmZyZXFfZ2V0X2RldmZyZXFfYnlfcGhhbmRsZSAtIEdl
dCB0aGUgZGV2ZnJlcSBkZXZpY2UgZnJvbSBkZXZpY2V0cmVlCj4+PiAtICogQGRldiAtIGluc3Rh
bmNlIHRvIHRoZSBnaXZlbiBkZXZpY2UKPj4+IC0gKiBAaW5kZXggLSBpbmRleCBpbnRvIGxpc3Qg
b2YgZGV2ZnJlcQo+Pj4gLSAqCj4+PiAtICogcmV0dXJuIHRoZSBpbnN0YW5jZSBvZiBkZXZmcmVx
IGRldmljZQo+Pj4gLSAqLwo+Pj4gLXN0cnVjdCBkZXZmcmVxICpkZXZmcmVxX2dldF9kZXZmcmVx
X2J5X3BoYW5kbGUoc3RydWN0IGRldmljZSAqZGV2LCBpbnQgaW5kZXgpCj4+PiAtewo+Pj4gLcKg
wqDCoCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGU7Cj4+PiAtwqDCoMKgIHN0cnVjdCBkZXZmcmVx
ICpkZXZmcmVxOwo+Pj4gLQo+Pj4gLcKgwqDCoCBpZiAoIWRldikKPj4+IC3CoMKgwqDCoMKgwqDC
oCByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPj4+IC0KPj4+IC3CoMKgwqAgaWYgKCFkZXYtPm9m
X25vZGUpCj4+PiAtwqDCoMKgwqDCoMKgwqAgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4+PiAt
Cj4+PiAtwqDCoMKgIG5vZGUgPSBvZl9wYXJzZV9waGFuZGxlKGRldi0+b2Zfbm9kZSwgImRldmZy
ZXEiLCBpbmRleCk7Cj4+PiAtwqDCoMKgIGlmICghbm9kZSkKPj4+IC3CoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gRVJSX1BUUigtRU5PREVWKTsKPj4+IC0KPj4+IC3CoMKgwqAgZGV2ZnJlcSA9IGRldmZy
ZXFfZ2V0X2RldmZyZXFfYnlfbm9kZShub2RlKTsKPj4+IC3CoMKgwqAgb2Zfbm9kZV9wdXQobm9k
ZSk7Cj4+PiAtCj4+PiAtwqDCoMKgIHJldHVybiBkZXZmcmVxOwo+Pj4gLX0KPj4+IC0KPj4+ICDC
oCAjZWxzZQo+Pj4gIMKgIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxX2dldF9kZXZmcmVxX2J5X25v
ZGUoc3RydWN0IGRldmljZV9ub2RlICpub2RlKQo+Pj4gIMKgIHsKPj4+ICDCoMKgwqDCoMKgIHJl
dHVybiBFUlJfUFRSKC1FTk9ERVYpOwo+Pj4gIMKgIH0KPj4+IC0KPj4+IC1zdHJ1Y3QgZGV2ZnJl
cSAqZGV2ZnJlcV9nZXRfZGV2ZnJlcV9ieV9waGFuZGxlKHN0cnVjdCBkZXZpY2UgKmRldiwgaW50
IGluZGV4KQo+Pj4gLXsKPj4+IC3CoMKgwqAgcmV0dXJuIEVSUl9QVFIoLUVOT0RFVik7Cj4+PiAt
fQo+Pj4gIMKgICNlbmRpZiAvKiBDT05GSUdfT0YgKi8KPj4+ICDCoCBFWFBPUlRfU1lNQk9MX0dQ
TChkZXZmcmVxX2dldF9kZXZmcmVxX2J5X25vZGUpOwo+Pj4gLUVYUE9SVF9TWU1CT0xfR1BMKGRl
dmZyZXFfZ2V0X2RldmZyZXFfYnlfcGhhbmRsZSk7Cj4+PiAgwqAgwqAgLyoqCj4+PiAgwqDCoCAq
IGRldm1fZGV2ZnJlcV9yZW1vdmVfZGV2aWNlKCkgLSBSZXNvdXJjZS1tYW5hZ2VkIGRldmZyZXFf
cmVtb3ZlX2RldmljZSgpCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1i
dXMuYyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPj4+IGluZGV4IDdmNTkxN2Q1OTA3
Mi4uMWJjNGUzYzgxMTE1IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1i
dXMuYwo+Pj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+Pj4gQEAgLTg2LDYg
Kzg2LDE2IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19nZXRfZXZlbnQoc3RydWN0IGV4eW5vc19i
dXMgKmJ1cywKPj4+ICDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+PiAgwqAgfQo+Pj4gIMKgICtz
dGF0aWMgc3RydWN0IGRldmZyZXEgKmV4eW5vc19idXNfZ2V0X3BhcmVudF9kZXZmcmVxKHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnApCj4+PiArewo+Pj4gK8KgwqDCoCBzdHJ1Y3QgZGV2aWNlX25vZGUg
Km5vZGUgPSBvZl9wYXJzZV9waGFuZGxlKG5wLCAiZGV2ZnJlcSIsIDApOwo+Pj4gKwo+Pj4gK8Kg
wqDCoCBpZiAoIW5vZGUpCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIEVSUl9QVFIoLUVOT0RF
Vik7Cj4+PiArCj4+PiArwqDCoMKgIHJldHVybiBkZXZmcmVxX2dldF9kZXZmcmVxX2J5X25vZGUo
bm9kZSk7Cj4+PiArfQo+Pj4gKwo+Pj4gIMKgIC8qCj4+PiAgwqDCoCAqIGRldmZyZXEgZnVuY3Rp
b24gZm9yIGJvdGggc2ltcGxlLW9uZGVtYW5kIGFuZCBwYXNzaXZlIGdvdmVybm9yCj4+PiAgwqDC
oCAqLwo+Pj4gQEAgLTM1Myw3ICszNjMsNyBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmls
ZV9pbml0X3Bhc3NpdmUoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKPj4+ICDCoMKgwqDCoMKgIHBy
b2ZpbGUtPmV4aXQgPSBleHlub3NfYnVzX3Bhc3NpdmVfZXhpdDsKPj4+ICDCoCDCoMKgwqDCoMKg
IC8qIEdldCB0aGUgaW5zdGFuY2Ugb2YgcGFyZW50IGRldmZyZXEgZGV2aWNlICovCj4+PiAtwqDC
oMKgIHBhcmVudF9kZXZmcmVxID0gZGV2ZnJlcV9nZXRfZGV2ZnJlcV9ieV9waGFuZGxlKGRldiwg
MCk7Cj4+PiArwqDCoMKgIHBhcmVudF9kZXZmcmVxID0gZXh5bm9zX2J1c19nZXRfcGFyZW50X2Rl
dmZyZXEoZGV2LT5vZl9ub2RlKTsKPj4+ICDCoMKgwqDCoMKgIGlmIChJU19FUlIocGFyZW50X2Rl
dmZyZXEpKQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVQUk9CRV9ERUZFUjsKPj4+
ICAgIAo+Pgo+PiBUaGVzZSBjaGFuZ2VzIHdvbid0IGFwcGx5LCBwcm9iYWJseSBJIG5lZWQgc29t
ZSBiYXNlIGZvciBpdC4KPiAKPiBJIGRldmVsb3BlZCBpdCBvbiBkZXZmcmVxLW5leHQgYnJhbmNo
WzFdCj4gWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L2NoYW53b28vbGludXguZ2l0L2xvZy8/aD1kZXZmcmVxLW5leHQKPiAKPiBBbmQgSSB0cnkgdG8g
YXBwbHkgdGhlc2UgcGF0Y2hzZXQgdG8gbGludXgtbmV4dFsyXSB3aXRoIHRhZ3MvbmV4dC0yMDIw
MDEwOS4KPiBCdXQsIHBhdGNoMTAvMTEgb2YgZGV2aWNlZXRyZWUgaGFzIHNvbWUgbWVyZ2UgY29u
ZmxpY3QKPiBiZWNhdXNlIHBhdGNoWzNdIHJlbGF0ZWQgdG8gZXh5bm9zLWJ1cyB3YXMgbWVyZ2Vk
Lgo+IFsyXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9u
ZXh0L2xpbnV4LW5leHQuZ2l0L2xvZy8KPiBbM10gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9jb3Zlci8xMTMwMzIzNS8KPiAgICAgIC0gW3YyLDAvMl0gRXh5bm9zNTQyMjogZml4IGJ1cyBy
ZWxhdGVkIE9QUHMgZm9yIE9kcm9pZCBYVTMvWFU0L0hDMQo+IAo+IE9uIG5leHQgdmVyc2lvbiwg
SSdsbCByZWJhc2UgaXQgb24gbGF0ZXN0IHBhdGNoZXMuCgpUaGFuayB5b3UgZm9yIHRoZSBpbmZv
cm1hdGlvbi4gSSB3aWxsIHVwZGF0ZSB0aGUgYmFzZSBhbmQgY29udGludWUgdGhlCnJldmlldy4K
Ckx1a2FzegoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
