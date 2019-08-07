Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D4384E50
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCDgiZ5Ph+5wHpqR8BZNIzGmCd6Z5qB1IAXVF2kHnFU=; b=Bl2RxwCbnQeAQQ
	c6WC+ZnvDXeYpI7DyhSYVETQDpZJfB0REqoHAmL0Lu1VqJJBgUH31YeDalr59hVWWboO7T/neIQWZ
	cbsjOhpBRXRgbkHkB0u009j+c+j/Us2pj1TwKfB6TZUyMX93Ujj/jdv/MHXAFAx+BZOj/XPWYgg1Y
	Rq9bG6sbG8KpGXSo0IkEEyngiuBqVYlGr3/UOqGdRW5a63LaPHw0Qc0JPN/W+h7YUzOxPaN4oZ2gk
	ECDuHdJC8IKhoexQt/3Q6UKjFgNDjDoysiXpMOt5khpWcKICxAW/eXsHVwDUcB+8SgCyRiVG4Lk3w
	P8gCrQ8nR3sFEiwT6r0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMds-0005XY-8O; Wed, 07 Aug 2019 14:10:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvMdb-0005Gs-Sv
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:10:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id q12so1268166wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 07:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8P+JKtORiZRJabp4sESC8XKmOksCngbysZjXEptja+0=;
 b=R5aNVQR/Zr5XXg+JSCwyOrBgkarTJu4ymMWR1oyqVZt9sPBs0M4CJhc6feTDUU09vw
 HakGXm9ThUB8dUJqsXHf0GPSgInIMSGjDNgQhZWNjYn+Ixh5PpRD1OlNnxb6mdzvsEJP
 MWjdIkqp1lJaQgxR7+d4NCH9gVhtRbLkirGPWYe1jQf/0YHfd294j9lyjz0LFBSKNZWn
 pFzPhLUV2QdEInpATUfjHjFX1VafcUh8bs3ryiAfvzK2NElmL+W9zGE3b2oCdqc/yB7r
 tgcYbvaoRw6Av8jnhkxZqMBxi2XTQ0j4OhrUM0y0wnN1rUq5spEbtbJRJTBVkB8LgG4H
 oVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=8P+JKtORiZRJabp4sESC8XKmOksCngbysZjXEptja+0=;
 b=LRb6WzLBBauG/c9uup4aZ0F6rnxmw2u0U8+oCK7m4ZNpb+WIxcFrUudo+YxH3lJVZp
 ZuwJm3CDfYwDF8yrD/LdAgJAPVwyyzqWh2EQ5dF4ccKMIYxYrjEE0MytBsHVWMb2qHuC
 MkMntyWJ2xEW5yUR6m38ElAP4J/lDHdq05LFunnwDMsl3aEu4W490bmFmriNzX6Jz8BH
 yfBOhA6B7ZKqaplxInLLmZecSPmDs8kwo8GBtYRPJzxwFluZTlBacuzrLiQ4dWpTxlNV
 WmG9ME+mtS0XHENAwAwOoA/GgcUvG+FohT2rM2dhPlvtQmH6zIfsAVXcrSwGImWJcvgN
 qf+Q==
X-Gm-Message-State: APjAAAU6OMPpAOlMTOSK/bbm+H5Kdoe88H7kAlMKPMjuS1jGIvrNrV24
 DDnMT2V9wbP/0T9xuiDhARbvT8+Nznw=
X-Google-Smtp-Source: APXvYqw1zu7dyeOWbUlt6iOQ3bmwEov7DZ6aOdAYqu9LGuZMuC9LroPrFK0sQlCSwpzHSD4tRPsCdg==
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr11066543wrw.323.1565186997270; 
 Wed, 07 Aug 2019 07:09:57 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:90cb:64c9:c238:a704?
 ([2a01:e34:ed2f:f020:90cb:64c9:c238:a704])
 by smtp.googlemail.com with ESMTPSA id f7sm92809346wrv.38.2019.08.07.07.09.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 07:09:56 -0700 (PDT)
Subject: Re: [PATCH 3/6] drivers: firmware: psci: Decouple checker from
 generic ARM CPUidle
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pm@vger.kernel.org
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <20190722153745.32446-4-lorenzo.pieralisi@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <fe87dffb-91f9-01b3-b1b8-7f5776e1274c@linaro.org>
Date: Wed, 7 Aug 2019 16:09:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722153745.32446-4-lorenzo.pieralisi@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_070959_963249_8A7C8DF0 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIvMDcvMjAxOSAxNzozNywgTG9yZW56byBQaWVyYWxpc2kgd3JvdGU6Cj4gVGhlIFBTQ0kg
Y2hlY2tlciBjdXJyZW50bHkgcmVsaWVzIG9uIHRoZSBnZW5lcmljIEFSTSBDUFVpZGxlCj4gaW5m
cmFzdHJ1Y3R1cmUgdG8gZW50ZXIgYW4gaWRsZSBzdGF0ZSwgd2hpY2ggaW4gdHVybiBjcmVhdGVz
Cj4gYSBkZXBlbmRlbmN5IHRoYXQgaXMgbm90IHJlYWxseSBuZWVkZWQuCj4gCj4gVGhlIFBTQ0kg
Y2hlY2tlciBjb2RlIHRvIHRlc3QgUFNDSSBDUFUgc3VzcGVuZCBpcyBidWlsdCBvbgo+IHRvcCBv
ZiB0aGUgQ1BVaWRsZSBmcmFtZXdvcmsgYW5kIGNhbiBlYXNpbHkgcmV1c2UgdGhlCj4gc3RydWN0
IGNwdWlkbGVfc3RhdGUuZW50ZXIoKSBmdW5jdGlvbiAocHJldmlvdXNseSBpbml0aWFsaXplZAo+
IGJ5IGFuIGlkbGUgZHJpdmVyLCB3aXRoIGEgUFNDSSBiYWNrLWVuZCkgdG8gdHJpZ2dlciBhbiBl
bnRyeQo+IGludG8gYW4gaWRsZSBzdGF0ZSwgZGVjb3VwbGluZyB0aGUgUFNDSSBjaGVja2VyIGZy
b20gdGhlCj4gZ2VuZXJpYyBBUk0gQ1BVaWRsZSBpbmZyYXN0cnVjdHVyZSBhbmQgc2ltcGx5Zmlu
ZyB0aGUgY29kZQo+IGluIHRoZSBwcm9jZXNzLgo+IAo+IENvbnZlcnQgdGhlIFBTQ0kgY2hlY2tl
ciBzdXNwZW5kIGVudHJ5IGZ1bmN0aW9uIHRvIHVzZQo+IHRoZSBzdHJ1Y3QgY3B1aWRsZV9zdGF0
ZS5lbnRlcigpIGZ1bmN0aW9uIGNhbGxiYWNrLgo+IAo+IFNpZ25lZC1vZmYtYnk6IExvcmVuem8g
UGllcmFsaXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPgo+IENjOiBTdWRlZXAgSG9sbGEg
PHN1ZGVlcC5ob2xsYUBhcm0uY29tPgo+IENjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBh
cm0uY29tPgoKQWNrZWQtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8u
b3JnPgoKPiAtLS0KPiAgZHJpdmVycy9maXJtd2FyZS9wc2NpL3BzY2lfY2hlY2tlci5jIHwgMTYg
KysrKysrKy0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA5IGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Zpcm13YXJlL3BzY2kvcHNjaV9j
aGVja2VyLmMgYi9kcml2ZXJzL2Zpcm13YXJlL3BzY2kvcHNjaV9jaGVja2VyLmMKPiBpbmRleCBm
MzY1OTQ0M2Y4YzIuLjZhNDQ1Mzk3NzcxYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Zpcm13YXJl
L3BzY2kvcHNjaV9jaGVja2VyLmMKPiArKysgYi9kcml2ZXJzL2Zpcm13YXJlL3BzY2kvcHNjaV9j
aGVja2VyLmMKPiBAQCAtMjI4LDggKzIyOCwxMSBAQCBzdGF0aWMgaW50IGhvdHBsdWdfdGVzdHMo
dm9pZCkKPiAgCj4gIHN0YXRpYyB2b2lkIGR1bW15X2NhbGxiYWNrKHN0cnVjdCB0aW1lcl9saXN0
ICp1bnVzZWQpIHt9Cj4gIAo+IC1zdGF0aWMgaW50IHN1c3BlbmRfY3B1KGludCBpbmRleCwgYm9v
bCBicm9hZGNhc3QpCj4gK3N0YXRpYyBpbnQgc3VzcGVuZF9jcHUoc3RydWN0IGNwdWlkbGVfZGV2
aWNlICpkZXYsCj4gKwkJICAgICAgIHN0cnVjdCBjcHVpZGxlX2RyaXZlciAqZHJ2LCBpbnQgaW5k
ZXgpCj4gIHsKPiArCXN0cnVjdCBjcHVpZGxlX3N0YXRlICpzdGF0ZSA9ICZkcnYtPnN0YXRlc1tp
bmRleF07Cj4gKwlib29sIGJyb2FkY2FzdCA9IHN0YXRlLT5mbGFncyAmIENQVUlETEVfRkxBR19U
SU1FUl9TVE9QOwo+ICAJaW50IHJldDsKPiAgCj4gIAlhcmNoX2NwdV9pZGxlX2VudGVyKCk7Cj4g
QEAgLTI1NCwxMSArMjU3LDcgQEAgc3RhdGljIGludCBzdXNwZW5kX2NwdShpbnQgaW5kZXgsIGJv
b2wgYnJvYWRjYXN0KQo+ICAJCX0KPiAgCX0KPiAgCj4gLQkvKgo+IC0JICogUmVwbGljYXRlIHRo
ZSBjb21tb24gQVJNIGNwdWlkbGUgZW50ZXIgZnVuY3Rpb24KPiAtCSAqIChhcm1fZW50ZXJfaWRs
ZV9zdGF0ZSkuCj4gLQkgKi8KPiAtCXJldCA9IENQVV9QTV9DUFVfSURMRV9FTlRFUihhcm1fY3B1
aWRsZV9zdXNwZW5kLCBpbmRleCk7Cj4gKwlyZXQgPSBzdGF0ZS0+ZW50ZXIoZGV2LCBkcnYsIGlu
ZGV4KTsKPiAgCj4gIAlpZiAoYnJvYWRjYXN0KQo+ICAJCXRpY2tfYnJvYWRjYXN0X2V4aXQoKTsK
PiBAQCAtMzAxLDkgKzMwMCw4IEBAIHN0YXRpYyBpbnQgc3VzcGVuZF90ZXN0X3RocmVhZCh2b2lk
ICphcmcpCj4gIAkJICogZG9lc24ndCB1c2UgUFNDSSkuCj4gIAkJICovCj4gIAkJZm9yIChpbmRl
eCA9IDE7IGluZGV4IDwgZHJ2LT5zdGF0ZV9jb3VudDsgKytpbmRleCkgewo+IC0JCQlzdHJ1Y3Qg
Y3B1aWRsZV9zdGF0ZSAqc3RhdGUgPSAmZHJ2LT5zdGF0ZXNbaW5kZXhdOwo+IC0JCQlib29sIGJy
b2FkY2FzdCA9IHN0YXRlLT5mbGFncyAmIENQVUlETEVfRkxBR19USU1FUl9TVE9QOwo+ICAJCQlp
bnQgcmV0Owo+ICsJCQlzdHJ1Y3QgY3B1aWRsZV9zdGF0ZSAqc3RhdGUgPSAmZHJ2LT5zdGF0ZXNb
aW5kZXhdOwo+ICAKPiAgCQkJLyoKPiAgCQkJICogU2V0IHRoZSB0aW1lciB0byB3YWtlIHRoaXMg
Q1BVIHVwIGluIHNvbWUgdGltZSAod2hpY2gKPiBAQCAtMzE4LDcgKzMxNiw3IEBAIHN0YXRpYyBp
bnQgc3VzcGVuZF90ZXN0X3RocmVhZCh2b2lkICphcmcpCj4gIAkJCS8qIElSUXMgbXVzdCBiZSBk
aXNhYmxlZCBkdXJpbmcgc3VzcGVuZCBvcGVyYXRpb25zLiAqLwo+ICAJCQlsb2NhbF9pcnFfZGlz
YWJsZSgpOwo+ICAKPiAtCQkJcmV0ID0gc3VzcGVuZF9jcHUoaW5kZXgsIGJyb2FkY2FzdCk7Cj4g
KwkJCXJldCA9IHN1c3BlbmRfY3B1KGRldiwgZHJ2LCBpbmRleCk7Cj4gIAo+ICAJCQkvKgo+ICAJ
CQkgKiBXZSBoYXZlIHdva2VuIHVwLiBSZS1lbmFibGUgSVJRcyB0byBoYW5kbGUgYW55Cj4gCgoK
LS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ug
c29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJv
b2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xp
bmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBC
bG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
