Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21CE184C23
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:14:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RjsBxWR75Z/8IOleF/2RTu61YjBbpYruBQHasAyA0SQ=; b=i36vQ0Xk8B9RyKsf5bcuxOgjW
	bsWSM9JsVRIQldBXVeikEOgrWxcLjmOu/kTWW6xPdtmjRCf1I3SxbZDcaqbh3xByYkTMD9843+WbZ
	Z3YOphPiMGr7sCU6WN3oQyM6ZPCHILdHyUYfR1gE6P05TJ1hpypgBnVECQ35djk9NotolvZ70dgv2
	rdIy4ZckSktWgSzjamDnJ0GTla3l0xiWmojEd2yREHfjt8TCVl2aE32EfQO0BaAeODEhYX6AIuHZ9
	30lUlaWQScGobpziKd48ym8Fqgd58ByzGv433OZe5Lqr4/X8Lh/3CJ//cX5T8xW9Qvyf/DLEq+6t3
	BjXHcmevA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmxS-0006Tp-Pi; Fri, 13 Mar 2020 16:14:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmxL-0006TT-Ak
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:14:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8638031B;
 Fri, 13 Mar 2020 09:14:38 -0700 (PDT)
Received: from [10.57.50.73] (unknown [10.57.50.73])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 15BA03F6CF;
 Fri, 13 Mar 2020 09:14:37 -0700 (PDT)
Subject: Re: [PATCH 2/6] arm64: uaccess: Use named asm operands for __in_range
To: Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
References: <20200311180416.6509-1-richard.henderson@linaro.org>
 <20200311180416.6509-3-richard.henderson@linaro.org>
 <2de143ee-ae9c-328c-a44d-2c84ea8f087b@arm.com>
 <d24cfd89-2ee4-38bd-d412-68a988e15831@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a3484e5c-97d1-fed1-658a-677a72afa12c@arm.com>
Date: Fri, 13 Mar 2020 16:14:40 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <d24cfd89-2ee4-38bd-d412-68a988e15831@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_091439_415226_E115C9BD 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMy0xMSA5OjQ4IHBtLCBSaWNoYXJkIEhlbmRlcnNvbiB3cm90ZToKPiBPbiAzLzEx
LzIwIDEyOjA4IFBNLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+IE9uIDExLzAzLzIwMjAgNjowNCBw
bSwgUmljaGFyZCBIZW5kZXJzb24gd3JvdGU6Cj4+PiBXaXRoIHplcm8gY2hhbmdlIG9mIGJlaGF2
aW9yLCB1c2UgJVtdIHN5bnRheCBmb3IgdGhlIGFzbQo+Pj4gb3BlcmFuZHMgaW5zdGVhZCBvZiBu
dW1iZXJlZCBvcGVyYW5kcy4KPj4KPj4gRm9yIGFueSBwYXJ0aWN1bGFyIHJlYXNvbj8KPiAKPiBX
aGVuIHdlIGdldCB0byB0aGUgdGhpcmQgcGF0Y2ggYW5kIGFkZCBDQ19TRVQobGUpLCBhbGwgb2Yg
dGhlIG9wZXJhbmQgbnVtYmVycwo+IHdpbGwgY2hhbmdlLCBhbmQgSSBmb3VuZCB0aGF0IG1vcmUg
Y29uZnVzaW5nIHRoYW4gbm90Lgo+IAo+PiBJbgo+PiBwYXJ0aWN1bGFyLCB0aGUgdmFsdWUgcmVw
cmVzZW50ZWQgYnkgJTAgKHRoZSBjb25jZXB0dWFsIFgnKSBuZXZlciBjb3JyZXNwb25kcwo+PiB0
byB0aGUgdmFyaWFibGUgImFkZHIiLCBzbyBuYW1pbmcgaXQgImFkZHIiIHByb3ZpZGVzIHRoZSBv
cHBvc2l0ZSBvZiBjbGFyaXR5Lgo+IAo+IFdvdWxkIHlvdSBzaW1wbHkgcHJlZmVyIGEgZGlmZmVy
ZW50IG5hbWUgZm9yIHRoZSBvcGVyYW5kPwoKSWYgd2Ugd2VyZSB0byBnbyBkb3duIHRoaXMgcm91
dGUsIEkgdGhpbmsgaXQgbWlnaHQgYWN0dWFsbHkgbWFrZSBzZW5zZSAKdG8gc3BsaXQgaXQgdXAg
ZnVydGhlciB0byBzZXBhcmF0ZSB0aGUgInByaXZhdGUgc2NyYXRjaCByZWdpc3RlciIgYW5kIAoi
cmV0dXJuIHZhbHVlIiBjb25jZXJucy4KClJvYmluLgoKPiAKPiAKPiByfgo+IAo+IAo+Pj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vdWFjY2Vzcy5oIGIvYXJjaC9hcm02NC9p
bmNsdWRlL2FzbS91YWNjZXNzLmgKPj4+IGluZGV4IDMyZmM4MDYxYWE3Ni4uY2ViMWQ3OWVhYjA5
IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS91YWNjZXNzLmgKPj4+ICsr
KyBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vdWFjY2Vzcy5oCj4+PiBAQCAtNzUsMTkgKzc1LDIx
IEBAIHN0YXRpYyBpbmxpbmUgdW5zaWduZWQgbG9uZyBfX3JhbmdlX29rKGNvbnN0IHZvaWQgX191
c2VyCj4+PiAqYWRkciwgdW5zaWduZWQgbG9uZyBzaQo+Pj4gIMKgwqDCoMKgwqAgYXNtIHZvbGF0
aWxlKAo+Pj4gIMKgwqDCoMKgwqAgLy8gQSArIEIgPD0gQyArIDEgZm9yIGFsbCBBLEIsQywgaW4g
Zm91ciBlYXN5IHN0ZXBzOgo+Pj4gIMKgwqDCoMKgwqAgLy8gMTogWCA9IEEgKyBCOyBYJyA9IFgg
JSAyXjY0Cj4+PiAtwqDCoMKgICLCoMKgwqAgYWRkc8KgwqDCoCAlMCwgJTMsICUyXG4iCj4+PiAr
wqDCoMKgICLCoMKgwqAgYWRkc8KgwqDCoCAlW2FkZHJdLCAlW2FkZHJdLCAlW3NpemVdXG4iCj4+
PiAgwqDCoMKgwqDCoCAvLyAyOiBTZXQgQyA9IDAgaWYgWCA+IDJeNjQsIHRvIGd1YXJhbnRlZSBY
JyA+IEMgaW4gc3RlcCA0Cj4+PiAtwqDCoMKgICLCoMKgwqAgY3NlbMKgwqDCoCAlMSwgeHpyLCAl
MSwgaGlcbiIKPj4+ICvCoMKgwqAgIsKgwqDCoCBjc2VswqDCoMKgICVbbGltaXRdLCB4enIsICVb
bGltaXRdLCBoaVxuIgo+Pj4gIMKgwqDCoMKgwqAgLy8gMzogU2V0IFgnID0gfjAgaWYgWCA+PSAy
XjY0LiBGb3IgWCA9PSAyXjY0LCB0aGlzIGRlY3JlbWVudHMgWCcKPj4+ICDCoMKgwqDCoMKgIC8v
wqDCoMKgIHRvIGNvbXBlbnNhdGUgZm9yIHRoZSBjYXJyeSBmbGFnIGJlaW5nIHNldCBpbiBzdGVw
IDQuIEZvcgo+Pj4gIMKgwqDCoMKgwqAgLy/CoMKgwqAgWCA+IDJeNjQsIFgnIG1lcmVseSBoYXMg
dG8gcmVtYWluIG5vbnplcm8sIHdoaWNoIGl0IGRvZXMuCj4+PiAtwqDCoMKgICLCoMKgwqAgY3Np
bnbCoMKgwqAgJTAsICUwLCB4enIsIGNjXG4iCj4+PiArwqDCoMKgICLCoMKgwqAgY3NpbnbCoMKg
wqAgJVthZGRyXSwgJVthZGRyXSwgeHpyLCBjY1xuIgo+Pj4gIMKgwqDCoMKgwqAgLy8gNDogRm9y
IFggPCAyXjY0LCB0aGlzIGdpdmVzIHVzIFgnIC0gQyAtIDEgPD0gMCwgd2hlcmUgdGhlIC0xCj4+
PiAgwqDCoMKgwqDCoCAvL8KgwqDCoCBjb21lcyBmcm9tIHRoZSBjYXJyeSBpbiBiZWluZyBjbGVh
ci4gT3RoZXJ3aXNlLCB3ZSBhcmUKPj4+ICDCoMKgwqDCoMKgIC8vwqDCoMKgIHRlc3RpbmcgWCcg
LSBDID09IDAsIHN1YmplY3QgdG8gdGhlIHByZXZpb3VzIGFkanVzdG1lbnRzLgo+Pj4gLcKgwqDC
oCAiwqDCoMKgIHNiY3PCoMKgwqAgeHpyLCAlMCwgJTFcbiIKPj4+IC3CoMKgwqAgIsKgwqDCoCBj
c2V0wqDCoMKgICUwLCBsc1xuIgo+Pj4gLcKgwqDCoCA6ICI9JnIiIChyZXQpLCAiK3IiIChsaW1p
dCkgOiAiSXIiIChzaXplKSwgIjAiIChhZGRyKSA6ICJjYyIpOwo+Pj4gK8KgwqDCoCAiwqDCoMKg
IHNiY3PCoMKgwqAgeHpyLCAlW2FkZHJdLCAlW2xpbWl0XVxuIgo+Pj4gK8KgwqDCoCAiwqDCoMKg
wqDCoMKgIGNzZXTCoMKgwqAgJVthZGRyXSwgbHNcbiIKPj4+ICvCoMKgwqAgOiBbYWRkcl0gIj0m
ciIgKHJldCksIFtsaW1pdF0gIityIiAobGltaXQpCj4+PiArwqDCoMKgIDogW3NpemVdICJJciIg
KHNpemUpLCAiMCIgKGFkZHIpCj4+PiArwqDCoMKgIDogImNjIik7Cj4+PiAgwqAgwqDCoMKgwqDC
oCByZXR1cm4gcmV0Owo+Pj4gIMKgIH0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
