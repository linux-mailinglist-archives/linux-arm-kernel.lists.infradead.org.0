Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3215B123318
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 18:01:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MAY0aNJbxAj6lAVaYM5POX6HSeEvbWiqHcx0i7VwBfU=; b=ST5U9Hb+hLfDA8mvTyocB5gT9
	zWioiidiZ5zp+uAd8cNNf4pLVsZhkh9UzxZWjqaIcc1M6CByuWGQMnhOBcKQSfjKApuMv5+hBYVEX
	rRBUZ1rGrnfTZdN61t4vEauXLun0Q7Lmq6OrWWiNk/ULS6tfuUMO7rA9KxzQUOVB6Bm7UhVf2jzMs
	Gczu+ke3UX9gPVH9fw9aIpKnsv/IEU8Qnf8+xeRVPZa0DhuADk/J+XwK5+b5khLumQJhKE0XIknOF
	qBfGmiozI5nP4LpsKMUbR/Rp2QkXPOQvRypkmpF5qsK0hGYXlqRUJM02O3QHEl1qlxja+hStdxMV1
	Bt23oOgjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihGEC-0006w3-K3; Tue, 17 Dec 2019 17:01:44 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihGE1-0006vl-5z
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 17:01:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y7ZEAcmZPxFwg+aGOU54UCujclnLtD57QbAxYvqOMRQ=; b=gtbQJaictnRaTNkCxdck5VVg2H
 LGqleXJD3bKMyrPr2ARsd9cPSVspytbXmTApXBo063i9jieYAXn426jEWKo6Zi1c1H+kiuoqmTLT4
 yab2SEEa/7iruaUEfF8slxX3lUJEvX16T330+qjVUEQLDTZpYCNCkxcSVs+zcUtxj0q7JU1jbeiiO
 7LYlVP8962lr+Kec4YHd4TF7MvEvOWFjfH1kSRHIw/GLB2j/M76CSczf+kT1yJw2rjDbM5qmZXdBJ
 so5oaj3ZmDD6fxreuqGJ3reCn47VUo9t/EIXS3MxhaTl7PQMr4muVJl2PK2z8hIF/EWHjfWOAF2+o
 SQuOrvxg==;
Received: from [2600:1700:4830:165f::fb2] (port=57660)
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1ihGDx-0002LF-EA; Tue, 17 Dec 2019 12:01:29 -0500
Subject: Re: [PATCH 1/3] clocksource: davinci: work around a clocksource
 problem on dm365 SoC
To: Bartosz Golaszewski <brgl@bgdev.pl>
References: <20191213162453.15691-1-brgl@bgdev.pl>
 <20191213162453.15691-2-brgl@bgdev.pl>
 <b9a28314-4fce-ebbd-be20-b0ffa2f1f15f@lechnology.com>
 <CAMRc=McRKwYkUcY9J8cEkwoMnGYxs7SkTnOnFsVMDZD2DkJ1Zw@mail.gmail.com>
From: David Lechner <david@lechnology.com>
Message-ID: <a68ca8a5-77c6-4aac-f3b6-67edbf42a9bf@lechnology.com>
Date: Tue, 17 Dec 2019 11:01:28 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAMRc=McRKwYkUcY9J8cEkwoMnGYxs7SkTnOnFsVMDZD2DkJ1Zw@mail.gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_090133_392451_4B57B4B6 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kevin Hilman <khilman@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMTcvMTkgMjowMCBBTSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiBwb24uLCAx
NiBncnUgMjAxOSBvIDE4OjU4IERhdmlkIExlY2huZXIgPGRhdmlkQGxlY2hub2xvZ3kuY29tPiBu
YXBpc2HFgihhKToKPj4KPj4+Cj4+PiArc3RhdGljIHVuc2lnbmVkIGludCBkYXZpbmNpX2Nsb2Nr
c291cmNlX3RpbTMyX21vZGU7Cj4+Cj4+IHN0YXRpYyB1bnNpZ25lZCBib29sIGRhdmluY2lfY2xv
Y2tzb3VyY2VfaW5pdGlhbGl6ZWQ7Cj4+Cj4+PiArCj4+PiAgICBzdGF0aWMgc3RydWN0IGRhdmlu
Y2lfY2xvY2tldmVudCAqCj4+PiAgICB0b19kYXZpbmNpX2Nsb2NrZXZlbnQoc3RydWN0IGNsb2Nr
X2V2ZW50X2RldmljZSAqY2xvY2tldmVudCkKPj4+ICAgIHsKPj4+IEBAIC05NCw3ICs5Niw3IEBA
IHN0YXRpYyB2b2lkIGRhdmluY2lfdGltMTJfc2h1dGRvd24odm9pZCBfX2lvbWVtICpiYXNlKQo+
Pj4gICAgICAgICAqIGhhbHZlcy4gSW4gdGhpcyBjYXNlIFRJTTM0IHJ1bnMgaW4gcGVyaW9kaWMg
bW9kZSBhbmQgd2UgbXVzdAo+Pj4gICAgICAgICAqIG5vdCBtb2RpZnkgaXQuCj4+PiAgICAgICAg
ICovCj4+PiAtICAgICB0Y3IgfD0gREFWSU5DSV9USU1FUl9FTkFNT0RFX1BFUklPRElDIDw8Cj4+
PiArICAgICB0Y3IgfD0gZGF2aW5jaV9jbG9ja3NvdXJjZV90aW0zMl9tb2RlIDw8Cj4+PiAgICAg
ICAgICAgICAgICBEQVZJTkNJX1RJTUVSX0VOQU1PREVfU0hJRlRfVElNMzQ7Cj4+Cj4+ICAgICAg
ICAgIGlmIChkYXZpbmNpX2Nsb2Nrc291cmNlX2luaXRpYWxpemVkKQo+PiAgICAgICAgICAgICAg
ICAgIHRjciB8PSBEQVZJTkNJX1RJTUVSX0VOQU1PREVfUEVSSU9ESUMgPDwKPj4gICAgICAgICAg
ICAgICAgICAgICAgICAgIERBVklOQ0lfVElNRVJfRU5BTU9ERV9TSElGVF9USU0zNDsKPiAKPiBJ
IHRob3VnaHQgYWJvdXQgZG9pbmcgdGhpcyBpbml0aWFsbHksIGJ1dCB0aGVuIGZpZ3VyZWQgdGhp
cyBjb2RlIHdvdWxkCj4gYmUgY2FsbGVkIGEgbG90LCBzbyB3aHkgbm90IGF2b2lkIGJyYW5jaGlu
ZyBhbmQganVzdCBzdG9yZSB0aGUgcmlnaHQKPiB2YWx1ZT8gQWx0ZXJuYXRpdmVseSB3ZSBjYW4g
ZG86Cj4gCj4gICAgICBpZiAobGlrZWx5KGRhdmluY2lfY2xvY2tzb3VyY2VfaW5pdGlhbGl6ZWQp
Cj4gICAgICAgICAgLi4uLgo+IAoKVW5sZXNzIHRoZXJlIGlzIGEgbWVhc3VyYWJsZSBwZXJmb3Jt
YW5jZSBkaWZmZXJlbmNlLCBJIHRoaW5rIGl0CndvdWxkIGJlIGJldHRlciB3aXRoIGlmL2xpa2Vs
eS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
