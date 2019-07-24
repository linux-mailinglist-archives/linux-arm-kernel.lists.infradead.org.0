Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FE47297B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QTi8m8s979XNU2TpgQ1xmtDNMX1G66UERnsYOdtLafI=; b=TATclN+LmuvMyC7rYv5iANoua
	cSs7ONAkwHZAufvrbbN1KVptMN2JCkDSdh0t37QP9vXm4CL+8S2Nx1BHRIHWonvJ9wosedGHvoAjv
	XzZ7Y4KPHhsTxrpCKp/YlFX9NiQVkLhCU0sqP/qERSkwIEwkw19nHCIoDuj3KTyu+3KO6mPD261dI
	QW+z5HE+LPdObG8LmbVC7giRJSvYyl/oDputnEah3Khnc6bXutjKiVJMujcr3cFk/rgazGzBn3XbK
	UB2X+136K+hbSeaHCE6MIcud/9xgAhRDt7YzcsPc9/nl0nwLTnFdXcJt8okUzpVLJfcKwilBXnAfw
	6S4FoYJfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCHB-0000u6-U5; Wed, 24 Jul 2019 08:05:30 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCGw-0000tW-Qu
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:05:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so20504960pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 01:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=I7CYszDrvy+reFYnb37zWErTiK7A3kRJaQqiQHkXdvQ=;
 b=XopkYn+C0zdVHgIkt66lfuYlcHVZEh0RvR2nPl7T7enil4q+4ukS6QPBJHMdwUe+at
 pVb11v30KjJTIhYhNFrnjzTG2t0YB5MBVUe0t9meobxy3Ox49svLqeoueqXv2q+jSy5w
 KsVEtk9flhxdsRWKQnnky5PxzUGpBTc0aWUhw6IX2+X7uFbURDFl3y9KcOKimWHV9/t6
 fpCjaGfM+MTjyl/oLgL7J9Okz7wcoQXVTukQTZZzE/K2It+44ctH9ZCWssR3UqzyLIZk
 9HS35r1WFqgZImkD6e1kz/jSZP8OAyYR8nY3xxow8A+3qxh27k7Em3kWdMt0oNzNU865
 +mlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=I7CYszDrvy+reFYnb37zWErTiK7A3kRJaQqiQHkXdvQ=;
 b=krbvMxJPExzdFrkOK5qbpFJsxVS7kvuocAv6zaizsyVyzBAfxjNSXQORfcYwB1pMAl
 XOSzFXmHO8H8bZ1SG+7eY8k/65Z3gI8JFbXFXErsvbfoD67zIOsyy7UaaCMa/iJtb0xp
 LFKmqFNoxdn7MU6S9B0PT44qsEBshtaHeK1Pb7xsDwdnuowBZMNZd4Txw2gQLxRyHOwH
 Z6AoGeOIsq9Px0wY+3NZhbh6O9DL7b95+YP1ilj0xjGA1Ii6ArHkEc1QlwsMxgWK/S7a
 +EjwzdGN6S++8c8GjGs0nB15fGO8+Kl2U4W6letP75sJJNIHhpimBSkVFPpo0zvd1eZs
 Vw8A==
X-Gm-Message-State: APjAAAWrrZ0xTSZKT3LjCNJlmqhwe+HSY5kJexJiWMPQN59Xck3lQBV2
 6uFacrtLxTPxULVcb4qQkjlYa8tn
X-Google-Smtp-Source: APXvYqzmDqmkC2d9/oClG6/UabpxPCen8k1387I2VEn/V7tCAoDJaKvuQbWQ9sWihPJv2dQ/R/pRnA==
X-Received: by 2002:a63:c70d:: with SMTP id n13mr79304761pgg.171.1563955513909; 
 Wed, 24 Jul 2019 01:05:13 -0700 (PDT)
Received: from [10.0.2.15] ([110.227.69.93])
 by smtp.gmail.com with ESMTPSA id v126sm2211091pgb.23.2019.07.24.01.05.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 01:05:13 -0700 (PDT)
Subject: Re: [PATCH] dma: qcom: hidma_mgmt: Add of_node_put() before goto
To: Robin Murphy <robin.murphy@arm.com>, okaya@kernel.org, agross@kernel.org, 
 vkoul@kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 dmaengine@vger.kernel.org
References: <20190723103543.7888-1-nishkadg.linux@gmail.com>
 <b5b76ef6-c5f3-bab0-e981-cd47c7264959@arm.com>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <6ef666c3-a155-130d-24bc-8c04b3485d44@gmail.com>
Date: Wed, 24 Jul 2019 13:35:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <b5b76ef6-c5f3-bab0-e981-cd47c7264959@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_010514_904564_60C9541B 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gMjMvMDcvMTkgNTozMiBQTSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIzLzA3LzIwMTkg
MTE6MzUsIE5pc2hrYSBEYXNndXB0YSB3cm90ZToKPj4gRWFjaCBpdGVyYXRpb24gb2YgZm9yX2Vh
Y2hfYXZhaWxhYmxlX2NoaWxkX29mX25vZGUgcHV0cyB0aGUgcHJldmlvdXMKPj4gbm9kZSwgYnV0
IGluIHRoZSBjYXNlIG9mIGEgZ290byBmcm9tIHRoZSBtaWRkbGUgb2YgdGhlIGxvb3AsIHRoZXJl
IGlzCj4+IG5vIHB1dCwgdGh1cyBjYXVzaW5nIGEgbWVtb3J5IGxlYWsuIEFkZCBhbiBvZl9ub2Rl
X3B1dCBiZWZvcmUgdGhlCj4+IGdvdG8gaW4gNCBwbGFjZXMuCj4gCj4gV2h5IG5vdCBqdXN0IGFk
ZCBpdCBvbmNlIGF0IHRoZSAib3V0IiBsYWJlbCBpdHNlbGY/IChDb25zaWRlciB0aGUgCj4gY29u
ZGl0aW9ucyBmb3IgdGhlIGxvb3AgdGVybWluYXRpbmcgbmF0dXJhbGx5KQoKSWYgdGhlIGxvb3Ag
dGVybWluYXRlcyBuYXR1cmFsbHkgdGhlbiwgYXMgZmFyIGFzIEkgdW5kZXJzdGFuZCwgY2hpbGQg
CndpbGwgYmUgcHV0IGJ5IHRoZSBsb29wIGl0c2VsZjsgdGhlbiBhbiBleHRyYSBvZl9ub2RlX3B1
dCgpIHVuZGVyIHRoZSAKb3V0IGxhYmVsIHdvdWxkIHB1dCB0aGUgY2hpbGQgbm9kZSBldmVuIHRo
b3VnaCBpdCBoYXMgYWxyZWFkeSBiZWVuIHB1dC4gCklmIEknbSB1bmRlcnN0YW5kaW5nIHRoaXMg
Y29ycmVjdGx5IChhbmQgSSBtaWdodCBub3QgYmUpIGlzIGl0IG9rYXkgdG8gCmRlY3JlbWVudCBy
ZWZjb3VudCBtb3JlIHRpbWVzIHRoYXQgaXQgaXMgaW5jcmVtZW50ZWQ/Cgo+IEFuZCBpZiB5b3Un
cmUgY2xlYW5pbmcgdXAgdGhlIHJlZmNvdW50aW5nIGhlcmUgYW55d2F5IHRoZW4gSSdkIGFsc28g
bm90ZSAKPiB0aGF0IHRoZSByZWZlcmVuY2UgaGVsZCBieSB0aGUgbG9vcCBpdGVyYXRvciBtYWtl
cyB0aGUgZXh0cmEgZ2V0L3B1dCAKPiBpbnNpZGUgdGhhdCBsb29wIGVudGlyZWx5IHJlZHVuZGFu
dC4gSXQncyBhbHdheXMgd29ydGggdGFraW5nIGEgbG9vayBhdCAKPiB0aGUgd2lkZXIgY29udGV4
dCByYXRoZXIgdGhhbiBqdXN0IGJsaW5kbHkgZm9jdXNpbmcgb24gd2hhdCBhIGdpdmVuIAo+IHNj
cmlwdCBwaWNrcyB1cCAtIGl0J3MgZmFpcmx5IHJhcmUgdGhhdCBhIHBpZWNlIG9mIGNvZGUgaGFz
IG9uZSBvYnZpb3VzIAo+IGlzc3VlIGJ1dCBpcyBvdGhlcndpc2UgcGVyZmVjdC4KClRoYW5rICB5
b3UgZm9yIHBvaW50aW5nIHRoaXMgb3V0OyBJJ3ZlIGFkZGVkIGl0IGluIHYyLgoKVGhhbmtpbmcg
eW91LApOaXNoa2EKPiBSb2Jpbi4KPiAKPj4gSXNzdWUgZm91bmQgd2l0aCBDb2NjaW5lbGxlLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBOaXNoa2EgRGFzZ3VwdGEgPG5pc2hrYWRnLmxpbnV4QGdtYWls
LmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZG1hL3Fjb20vaGlkbWFfbWdtdC5jIHwgMTMgKysr
KysrKysrKy0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hL3Fjb20vaGlkbWFfbWdtdC5j
IAo+PiBiL2RyaXZlcnMvZG1hL3Fjb20vaGlkbWFfbWdtdC5jCj4+IGluZGV4IDMwMjJkNjZlN2Ez
My4uMjA5YWRjNmNlYWJlIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2RtYS9xY29tL2hpZG1hX21n
bXQuYwo+PiArKysgYi9kcml2ZXJzL2RtYS9xY29tL2hpZG1hX21nbXQuYwo+PiBAQCAtMzYyLDE2
ICszNjIsMjIgQEAgc3RhdGljIGludCBfX2luaXQgCj4+IGhpZG1hX21nbXRfb2ZfcG9wdWxhdGVf
Y2hhbm5lbHMoc3RydWN0IGRldmljZV9ub2RlICpucCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKm5ld19wZGV2Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
ID0gb2ZfYWRkcmVzc190b19yZXNvdXJjZShjaGlsZCwgMCwgJnJlc1swXSk7Cj4+IC3CoMKgwqDC
oMKgwqDCoCBpZiAoIXJldCkKPj4gK8KgwqDCoMKgwqDCoMKgIGlmICghcmV0KSB7Cj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG9mX25vZGVfcHV0KGNoaWxkKTsKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZ290byBvdXQ7Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqDC
oMKgwqDCoCByZXQgPSBvZl9hZGRyZXNzX3RvX3Jlc291cmNlKGNoaWxkLCAxLCAmcmVzWzFdKTsK
Pj4gLcKgwqDCoMKgwqDCoMKgIGlmICghcmV0KQo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKCFyZXQp
IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2Zfbm9kZV9wdXQoY2hpbGQpOwo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4gK8KgwqDCoMKgwqDCoMKgIH0KPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IG9mX2lycV90b19yZXNvdXJjZShjaGlsZCwgMCwgJnJl
c1syXSk7Cj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAocmV0IDw9IDApCj4+ICvCoMKgwqDCoMKgwqDC
oCBpZiAocmV0IDw9IDApIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2Zfbm9kZV9wdXQo
Y2hpbGQpOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4gK8KgwqDC
oMKgwqDCoMKgIH0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIG1lbXNldCgmcGRldmluZm8sIDAsIHNp
emVvZihwZGV2aW5mbykpOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcGRldmluZm8uZndub2RlID0g
JmNoaWxkLT5md25vZGU7Cj4+IEBAIC0zODYsNiArMzkyLDcgQEAgc3RhdGljIGludCBfX2luaXQg
Cj4+IGhpZG1hX21nbXRfb2ZfcG9wdWxhdGVfY2hhbm5lbHMoc3RydWN0IGRldmljZV9ub2RlICpu
cCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIG5ld19wZGV2ID0gcGxhdGZvcm1fZGV2aWNlX3JlZ2lz
dGVyX2Z1bGwoJnBkZXZpbmZvKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChJU19FUlIobmV3
X3BkZXYpKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IFBUUl9FUlIobmV3
X3BkZXYpOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZl9ub2RlX3B1dChjaGlsZCk7Cj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgfQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgb2Zfbm9kZV9nZXQoY2hpbGQpOwo+PgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
