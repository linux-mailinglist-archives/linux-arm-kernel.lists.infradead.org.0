Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0725B151914
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 11:58:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Rh5Gw/irXwyeN5iq4d+0yr3f/tIdDkbdhJtGhfQ8tc=; b=b4GuRRSn+CXcSW
	8FizdJjL08JBOIx363VlI6JAAvV9OCag74ctlmRuGPA+6uTrcOK93gKXcgz1NyJSPEIvf7qGUdOQX
	ze3dDG08ntHfJ72BVuhE0F5S7V+e0MgDg2C+4U0eIFSdqsZklDa8uDnXRAKoItNFrmJnYb2hfzx/m
	AcAaeYAat9lVuDTQlOVlfHNemxD02KRmG2rdWBswkWgUbopM6S+MMzKKaYYW9TcnprEZr9KUfS2hS
	I0m/BKS9EtrGZJHosUpH/jN5YcatSnOPr1Dj85+EGCR2gKNC8CpStlbd+6WdIlYNKRmHDUvNC1JEY
	eST2JXFJ+VFvriOgstNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvuE-0000xb-Eu; Tue, 04 Feb 2020 10:58:10 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvu7-0000x2-8g
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 10:58:04 +0000
Received: by mail-qk1-x741.google.com with SMTP id g195so17379810qke.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 02:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NMkyhVQSWvkEio+aMy2Gad6E8U/YVr2WvfbqrIM79Ns=;
 b=dDsXTEAwh3dw/aFpDHOSx/OkiR/dsRVQgWaqh/SmX9VrwPf88A3B/TVUN0PSbdTQYj
 lZFmOK2ulhEsePjtkVF/4C/B4IupUXnqdIpRVSJRaWy9kyjY68vsl5j7PaoeyFdqU+o0
 jka4e73H48C6I9RUBHYWoNW28ZBnq55U0uLzMqC++YRHovqVCZYGUA99ljOsGx1AnWb7
 8SKe0YFxMl9p3OOcrGVxjKh74ghwXEPVw3pa8bDymu0VRIm6waXfy22wQQS1qWyqipCG
 9d8P1fB8zHSuh9ls6JnYc+Ds7FRQJE7aYXW0SpkwtFUa6JD5u8aLJtQbaApeGsf9KX9P
 HQZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NMkyhVQSWvkEio+aMy2Gad6E8U/YVr2WvfbqrIM79Ns=;
 b=EYNBzSJQzWpSqMRXPwSqDHs6u+C3EfoPNYO88vyU2UZGnNS5BgTlDVeJ5Hf9gLp+Fh
 0VtRXt6nqBn7llfYKHem147+SVairXz7DDDzGMMojQeLF9coyBDOQ403T9om8IxT82mo
 ZFTNesqLC4Pj5jrVaaHDfGQOAYkhWoMSz609uxY9Jwt/LEfFoUgAvwG3F7O028lJsQmr
 Tz7tm9LSX5C9t7cha1kRoXgH2U3r72oZ/S3/HoDoiM+p9flpcgZf/ktNaIM1mwVwfCEK
 uZoYi78wU30TPkEWj1G3+BLLGJ5/j6BdIpC+L0ufoV42umQHrpRRvCxEW9hIw7hsZbN+
 YQzQ==
X-Gm-Message-State: APjAAAU3fGS6uY4JeuKrxxrdaqOWMWfCz+ar8WWIYwbg0GUPEAsMbwTp
 WEEWzwX3q8mKXkVimogkxKyyqule/goeBEd1Qp4ssA==
X-Google-Smtp-Source: APXvYqzs7YECRnkA2CODtIe2tL8VK33eJyMjTkmUGRZ40CQfDGS6bPX1AvCyMG1yAkx4sNvxOLFawWhiHrXirYxrgv8=
X-Received: by 2002:a37:9c07:: with SMTP id f7mr28691354qke.103.1580813882093; 
 Tue, 04 Feb 2020 02:58:02 -0800 (PST)
MIME-Version: 1.0
References: <1579601632-7001-1-git-send-email-yannick.fertre@st.com>
 <2b967bed-c2fa-1575-3e06-ae5b19069e56@st.com>
In-Reply-To: <2b967bed-c2fa-1575-3e06-ae5b19069e56@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Tue, 4 Feb 2020 11:57:51 +0100
Message-ID: <CA+M3ks5FFZgnWnNcgz7YM7AWbtSNqkQ2-P29ss5FyfDzd6PxeA@mail.gmail.com>
Subject: Re: [PATCH] drm/stm: ltdc: add number of interrupts
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_025803_310605_9E96B35B 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1LiAyMyBqYW52LiAyMDIwIMOgIDEwOjQ5LCBQaGlsaXBwZSBDT1JOVSA8cGhpbGlwcGUu
Y29ybnVAc3QuY29tPiBhIMOpY3JpdCA6Cj4KPiBEZWFyIFlhbm5pY2ssCj4gVGhhbmsgeW91IGZv
ciB5b3VyIHBhdGNoLAo+Cj4gQWNrZWQtYnk6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3Ju
dUBzdC5jb20+Cj4KPiBQaGlsaXBwZSA6LSkKPgo+IE9uIDEvMjEvMjAgMTE6MTMgQU0sIFlhbm5p
Y2sgRmVydHJlIHdyb3RlOgo+ID4gVGhlIG51bWJlciBvZiBpbnRlcnJ1cHRzIGRlcGVuZHMgb24g
dGhlIGx0ZGMgdmVyc2lvbi4KPiA+IERvbid0IHRyeSB0byBnZXQgaW50ZXJydXB0IHdoaWNoIG5v
dCBleGlzdCwgYXZvaWRpbmcKPiA+IGtlcm5lbCB3YXJuaW5nIG1lc3NhZ2VzLgoKQXBwbGllZCBv
biBkcm0tbWlzYy1uZXh0LgoKVGhhbmtzLApCZW5qYW1pbgoKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBZYW5uaWNrIEZlcnRyZSA8eWFubmljay5mZXJ0cmVAc3QuY29tPgo+ID4gLS0tCj4gPiAgIGRy
aXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jIHwgMzAgKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0t
LS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5oIHwgIDEgKwo+ID4gICAyIGZpbGVz
IGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0v
bHRkYy5jCj4gPiBpbmRleCBjMjgxNWU4Li41ODA5MmIwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3N0bS9sdGRjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5j
Cj4gPiBAQCAtMTE0NiwxMiArMTE0NiwxNCBAQCBzdGF0aWMgaW50IGx0ZGNfZ2V0X2NhcHMoc3Ry
dWN0IGRybV9kZXZpY2UgKmRkZXYpCj4gPiAgICAgICAgICAgICAgIGxkZXYtPmNhcHMucGFkX21h
eF9mcmVxX2h6ID0gOTAwMDAwMDA7Cj4gPiAgICAgICAgICAgICAgIGlmIChsZGV2LT5jYXBzLmh3
X3ZlcnNpb24gPT0gSFdWRVJfMTAyMDApCj4gPiAgICAgICAgICAgICAgICAgICAgICAgbGRldi0+
Y2Fwcy5wYWRfbWF4X2ZyZXFfaHogPSA2NTAwMDAwMDsKPiA+ICsgICAgICAgICAgICAgbGRldi0+
Y2Fwcy5uYl9pcnEgPSAyOwo+ID4gICAgICAgICAgICAgICBicmVhazsKPiA+ICAgICAgIGNhc2Ug
SFdWRVJfMjAxMDE6Cj4gPiAgICAgICAgICAgICAgIGxkZXYtPmNhcHMucmVnX29mcyA9IFJFR19P
RlNfNDsKPiA+ICAgICAgICAgICAgICAgbGRldi0+Y2Fwcy5waXhfZm10X2h3ID0gbHRkY19waXhf
Zm10X2ExOwo+ID4gICAgICAgICAgICAgICBsZGV2LT5jYXBzLm5vbl9hbHBoYV9vbmx5X2wxID0g
ZmFsc2U7Cj4gPiAgICAgICAgICAgICAgIGxkZXYtPmNhcHMucGFkX21heF9mcmVxX2h6ID0gMTUw
MDAwMDAwOwo+ID4gKyAgICAgICAgICAgICBsZGV2LT5jYXBzLm5iX2lycSA9IDQ7Cj4gPiAgICAg
ICAgICAgICAgIGJyZWFrOwo+ID4gICAgICAgZGVmYXVsdDoKPiA+ICAgICAgICAgICAgICAgcmV0
dXJuIC1FTk9ERVY7Cj4gPiBAQCAtMTI1MSwxMyArMTI1MywyMSBAQCBpbnQgbHRkY19sb2FkKHN0
cnVjdCBkcm1fZGV2aWNlICpkZGV2KQo+ID4gICAgICAgcmVnX2NsZWFyKGxkZXYtPnJlZ3MsIExU
RENfSUVSLAo+ID4gICAgICAgICAgICAgICAgIElFUl9MSUUgfCBJRVJfUlJJRSB8IElFUl9GVUlF
IHwgSUVSX1RFUlJJRSk7Cj4gPgo+ID4gLSAgICAgZm9yIChpID0gMDsgaSA8IE1BWF9JUlE7IGkr
Kykgewo+ID4gKyAgICAgcmV0ID0gbHRkY19nZXRfY2FwcyhkZGV2KTsKPiA+ICsgICAgIGlmIChy
ZXQpIHsKPiA+ICsgICAgICAgICAgICAgRFJNX0VSUk9SKCJoYXJkd2FyZSBpZGVudGlmaWVyICgw
eCUwOHgpIG5vdCBzdXBwb3J0ZWQhXG4iLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgbGRl
di0+Y2Fwcy5od192ZXJzaW9uKTsKPiA+ICsgICAgICAgICAgICAgZ290byBlcnI7Cj4gPiArICAg
ICB9Cj4gPiArCj4gPiArICAgICBEUk1fREVCVUdfRFJJVkVSKCJsdGRjIGh3IHZlcnNpb24gMHgl
MDh4XG4iLCBsZGV2LT5jYXBzLmh3X3ZlcnNpb24pOwo+ID4gKwo+ID4gKyAgICAgZm9yIChpID0g
MDsgaSA8IGxkZXYtPmNhcHMubmJfaXJxOyBpKyspIHsKPiA+ICAgICAgICAgICAgICAgaXJxID0g
cGxhdGZvcm1fZ2V0X2lycShwZGV2LCBpKTsKPiA+IC0gICAgICAgICAgICAgaWYgKGlycSA9PSAt
RVBST0JFX0RFRkVSKQo+ID4gKyAgICAgICAgICAgICBpZiAoaXJxIDwgMCkgewo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIHJldCA9IGlycTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBnb3Rv
IGVycjsKPiA+IC0KPiA+IC0gICAgICAgICAgICAgaWYgKGlycSA8IDApCj4gPiAtICAgICAgICAg
ICAgICAgICAgICAgY29udGludWU7Cj4gPiArICAgICAgICAgICAgIH0KPiA+Cj4gPiAgICAgICAg
ICAgICAgIHJldCA9IGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoZGV2LCBpcnEsIGx0ZGNfaXJx
LAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGx0ZGNf
aXJxX3RocmVhZCwgSVJRRl9PTkVTSE9ULAo+ID4gQEAgLTEyNjgsMTYgKzEyNzgsNiBAQCBpbnQg
bHRkY19sb2FkKHN0cnVjdCBkcm1fZGV2aWNlICpkZGV2KQo+ID4gICAgICAgICAgICAgICB9Cj4g
PiAgICAgICB9Cj4gPgo+ID4gLQo+ID4gLSAgICAgcmV0ID0gbHRkY19nZXRfY2FwcyhkZGV2KTsK
PiA+IC0gICAgIGlmIChyZXQpIHsKPiA+IC0gICAgICAgICAgICAgRFJNX0VSUk9SKCJoYXJkd2Fy
ZSBpZGVudGlmaWVyICgweCUwOHgpIG5vdCBzdXBwb3J0ZWQhXG4iLAo+ID4gLSAgICAgICAgICAg
ICAgICAgICAgICAgbGRldi0+Y2Fwcy5od192ZXJzaW9uKTsKPiA+IC0gICAgICAgICAgICAgZ290
byBlcnI7Cj4gPiAtICAgICB9Cj4gPiAtCj4gPiAtICAgICBEUk1fREVCVUdfRFJJVkVSKCJsdGRj
IGh3IHZlcnNpb24gMHglMDh4XG4iLCBsZGV2LT5jYXBzLmh3X3ZlcnNpb24pOwo+ID4gLQo+ID4g
ICAgICAgLyogQWRkIGVuZHBvaW50cyBwYW5lbHMgb3IgYnJpZGdlcyBpZiBhbnkgKi8KPiA+ICAg
ICAgIGZvciAoaSA9IDA7IGkgPCBNQVhfRU5EUE9JTlRTOyBpKyspIHsKPiA+ICAgICAgICAgICAg
ICAgaWYgKHBhbmVsW2ldKSB7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0bS9s
dGRjLmggYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuaAo+ID4gaW5kZXggYTFhZDBhZS4uMzEw
ZTg3ZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5oCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuaAo+ID4gQEAgLTE5LDYgKzE5LDcgQEAgc3RydWN0
IGx0ZGNfY2FwcyB7Cj4gPiAgICAgICBjb25zdCB1MzIgKnBpeF9mbXRfaHc7ICAvKiBzdXBwb3J0
ZWQgcGl4ZWwgZm9ybWF0cyAqLwo+ID4gICAgICAgYm9vbCBub25fYWxwaGFfb25seV9sMTsgLyog
bm9uLW5hdGl2ZSBuby1hbHBoYSBmb3JtYXRzIG9uIGxheWVyIDEgKi8KPiA+ICAgICAgIGludCBw
YWRfbWF4X2ZyZXFfaHo7ICAgIC8qIG1heCBmcmVxdWVuY3kgc3VwcG9ydGVkIGJ5IHBhZCAqLwo+
ID4gKyAgICAgaW50IG5iX2lycTsgICAgICAgICAgICAgLyogbnVtYmVyIG9mIGhhcmR3YXJlIGlu
dGVycnVwdHMgKi8KPiA+ICAgfTsKPiA+Cj4gPiAgICNkZWZpbmUgTFREQ19NQVhfTEFZRVIgICAg
ICA0Cj4gPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
