Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DAE763C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeYsQUpyHJ3EwpmaRo/oFyjbI3SVWCKumRmW4AYZiO0=; b=DdgXnA8C2iWNoL
	2UhWLTG79UG8oZPWLVoL/1HZG0eqvVyJ65pdZOrSwGsGFBKEBRc/5/EUu0QsDV9ju4o3RtAXKGksC
	f65tHiMXCw4wU3NBqDEMBlFZ2B3SJL9Fjq7ePkF/qtwLkKyC/i7b5kBM/MgelAE2Vh+WKu0T5Jv4v
	zW+L0TlJv+EVnBRP0w0GHykR/NH4rjuyWVAE40c1krW6dJTVxHb9nNIbcmDSqpPXD5lqL+BRbHEjo
	bp5C0R/W3wqsUNexac6xFif7iLEE17seYBzPMOcurL/s/ODVkIiay0S6xmI9nwUI4b1bC/6lbqLFx
	qUObDMP0ZAPgYlK6qNyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxgC-0001fB-6Z; Fri, 26 Jul 2019 10:42:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxg1-0001ec-Nr
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:42:19 +0000
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 141CB22C7E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 10:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564137737;
 bh=X7zomnphSoatQ2ExsZCymGrIKUnr+7mD1sl02mTPfh4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xOIT7hQdaE/9saCJ016SORI9yKJR4VdvxCbG1H173OLs1s6mHJXKyd7rc897GqvTd
 gKGbYk2M0FXGKg+ThrcP47kYqY52jrdZIUTa1y2tkWazRdgbUglzRXmdiVxFD9JWf4
 /rjQ/hqg3pM0VOSD8zR3w9k9kqGBqh95ky+LeizI=
Received: by mail-lj1-f169.google.com with SMTP id v24so51120080ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 03:42:16 -0700 (PDT)
X-Gm-Message-State: APjAAAXNcDTSpCf4U7NHCKSLKHf2xmR26cnnMeBJJWIA2Axs1Oh5TsHt
 J9WpK29EhnF1ejuMAEt7tE0R8VkVMtExtW1nufU=
X-Google-Smtp-Source: APXvYqwjjPIUcxkurCk45AI+olnU8bXwOyRqJMGB5KvMZHbMvG1vzBey1kV3fpe6+DzCzU8EHqwv22xT+qk5FHRVVEY=
X-Received: by 2002:a2e:b4d4:: with SMTP id r20mr23905543ljm.5.1564137735265; 
 Fri, 26 Jul 2019 03:42:15 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190723122022eucas1p1266d90873d564894bd852c20140f8474@eucas1p1.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <20190723122016.30279-2-a.swigon@partner.samsung.com>
 <CAGTfZH0JE0PmiCHaT3vMrDaP0-8eZ3afyHy_zT9aFmMOGNTR8g@mail.gmail.com>
In-Reply-To: <CAGTfZH0JE0PmiCHaT3vMrDaP0-8eZ3afyHy_zT9aFmMOGNTR8g@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 26 Jul 2019 12:42:03 +0200
X-Gmail-Original-Message-ID: <CAJKOXPe4nOjjuA2MXLP1n=dPa7o6egjLZScSBNhyi9agHqqM7A@mail.gmail.com>
Message-ID: <CAJKOXPe4nOjjuA2MXLP1n=dPa7o6egjLZScSBNhyi9agHqqM7A@mail.gmail.com>
Subject: Re: [RFC PATCH 01/11] devfreq: exynos-bus: Extract
 exynos_bus_profile_init()
To: cwchoi00@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_034217_817947_A076961B 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Inki Dae <inki.dae@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, devicetree <devicetree@vger.kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, georgi.djakov@linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyNSBKdWwgMjAxOSBhdCAxNDo0NCwgQ2hhbndvbyBDaG9pIDxjd2Nob2kwMEBnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gMjAxOeuFhCA37JuUIDI07J28ICjsiJgpIOyYpOyghCA4OjA5LCBB
cnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT7ri5jsnbQg7J6R7ISx
Ogo+ID4KPiA+IFRoaXMgcGF0Y2ggYWRkcyBhIG5ldyBzdGF0aWMgZnVuY3Rpb24sIGV4eW5vc19i
dXNfcHJvZmlsZV9pbml0KCksIGV4dHJhY3RlZAo+ID4gZnJvbSBleHlub3NfYnVzX3Byb2JlKCku
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIu
c2Ftc3VuZy5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwg
MTA2ICsrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDYwIGluc2VydGlvbnMoKyksIDQ2IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1i
dXMuYwo+ID4gaW5kZXggZDlmMzc3OTEyYzEwLi5kOGYxZWZhZjJkNDkgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gPiArKysgYi9kcml2ZXJzL2RldmZyZXEv
ZXh5bm9zLWJ1cy5jCj4gPiBAQCAtMzcyLDEyICszNzIsNjkgQEAgc3RhdGljIGludCBleHlub3Nf
YnVzX3BhcnNlX29mKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4gPiAgICAgICAgIHJldHVybiBy
ZXQ7Cj4gPiAgfQo+ID4KPiA+ICtzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KHN0
cnVjdCBleHlub3NfYnVzICpidXMsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHN0cnVjdCBkZXZmcmVxX2Rldl9wcm9maWxlICpwcm9maWxlKQo+ID4gK3sKPiA+ICsgICAg
ICAgc3RydWN0IGRldmljZSAqZGV2ID0gYnVzLT5kZXY7Cj4gPiArICAgICAgIHN0cnVjdCBkZXZm
cmVxX3NpbXBsZV9vbmRlbWFuZF9kYXRhICpvbmRlbWFuZF9kYXRhOwo+ID4gKyAgICAgICBpbnQg
cmV0Owo+ID4gKwo+ID4gKyAgICAgICAvKiBJbml0aWFsaXplIHRoZSBzdHJ1Y3QgcHJvZmlsZSBh
bmQgZ292ZXJub3IgZGF0YSBmb3IgcGFyZW50IGRldmljZSAqLwo+ID4gKyAgICAgICBwcm9maWxl
LT5wb2xsaW5nX21zID0gNTA7Cj4gPiArICAgICAgIHByb2ZpbGUtPnRhcmdldCA9IGV4eW5vc19i
dXNfdGFyZ2V0Owo+ID4gKyAgICAgICBwcm9maWxlLT5nZXRfZGV2X3N0YXR1cyA9IGV4eW5vc19i
dXNfZ2V0X2Rldl9zdGF0dXM7Cj4gPiArICAgICAgIHByb2ZpbGUtPmV4aXQgPSBleHlub3NfYnVz
X2V4aXQ7Cj4gPiArCj4gPiArICAgICAgIG9uZGVtYW5kX2RhdGEgPSBkZXZtX2t6YWxsb2MoZGV2
LCBzaXplb2YoKm9uZGVtYW5kX2RhdGEpLCBHRlBfS0VSTkVMKTsKPiA+ICsgICAgICAgaWYgKCFv
bmRlbWFuZF9kYXRhKSB7Cj4gPiArICAgICAgICAgICAgICAgcmV0ID0gLUVOT01FTTsKPiA+ICsg
ICAgICAgICAgICAgICBnb3RvIGVycjsKPiA+ICsgICAgICAgfQo+ID4gKyAgICAgICBvbmRlbWFu
ZF9kYXRhLT51cHRocmVzaG9sZCA9IDQwOwo+ID4gKyAgICAgICBvbmRlbWFuZF9kYXRhLT5kb3du
ZGlmZmVyZW50aWFsID0gNTsKPiA+ICsKPiA+ICsgICAgICAgLyogQWRkIGRldmZyZXEgZGV2aWNl
IHRvIG1vbml0b3IgYW5kIGhhbmRsZSB0aGUgZXh5bm9zIGJ1cyAqLwo+ID4gKyAgICAgICBidXMt
PmRldmZyZXEgPSBkZXZtX2RldmZyZXFfYWRkX2RldmljZShkZXYsIHByb2ZpbGUsCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBERVZGUkVRX0dPVl9T
SU1QTEVfT05ERU1BTkQsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBvbmRlbWFuZF9kYXRhKTsKPiA+ICsgICAgICAgaWYgKElTX0VSUihidXMtPmRl
dmZyZXEpKSB7Cj4gPiArICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gYWRk
IGRldmZyZXEgZGV2aWNlXG4iKTsKPiA+ICsgICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKGJ1
cy0+ZGV2ZnJlcSk7Cj4gPiArICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gPiArICAgICAgIH0K
PiA+ICsKPiA+ICsgICAgICAgLyogUmVnaXN0ZXIgb3BwX25vdGlmaWVyIHRvIGNhdGNoIHRoZSBj
aGFuZ2Ugb2YgT1BQICAqLwo+ID4gKyAgICAgICByZXQgPSBkZXZtX2RldmZyZXFfcmVnaXN0ZXJf
b3BwX25vdGlmaWVyKGRldiwgYnVzLT5kZXZmcmVxKTsKPiA+ICsgICAgICAgaWYgKHJldCA8IDAp
IHsKPiA+ICsgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byByZWdpc3RlciBv
cHAgbm90aWZpZXJcbiIpOwo+ID4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ID4gKyAgICAg
ICB9Cj4gPiArCj4gPiArICAgICAgIC8qCj4gPiArICAgICAgICAqIEVuYWJsZSBkZXZmcmVxLWV2
ZW50IHRvIGdldCByYXcgZGF0YSB3aGljaCBpcyB1c2VkIHRvIGRldGVybWluZQo+ID4gKyAgICAg
ICAgKiBjdXJyZW50IGJ1cyBsb2FkLgo+ID4gKyAgICAgICAgKi8KPiA+ICsgICAgICAgcmV0ID0g
ZXh5bm9zX2J1c19lbmFibGVfZWRldihidXMpOwo+ID4gKyAgICAgICBpZiAocmV0IDwgMCkgewo+
ID4gKyAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBkZXZmcmVx
LWV2ZW50IGRldmljZXNcbiIpOwo+ID4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ID4gKyAg
ICAgICB9Cj4gPiArCj4gPiArICAgICAgIHJldCA9IGV4eW5vc19idXNfc2V0X2V2ZW50KGJ1cyk7
Cj4gPiArICAgICAgIGlmIChyZXQgPCAwKSB7Cj4gPiArICAgICAgICAgICAgICAgZGV2X2Vycihk
ZXYsICJmYWlsZWQgdG8gc2V0IGV2ZW50IHRvIGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7Cj4g
PiArICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gPiArICAgICAgIH0KPiA+ICsKPiA+ICtlcnI6
Cj4gPiArICAgICAgIHJldHVybiByZXQ7Cj4gPiArfQo+ID4gKwo+ID4gIHN0YXRpYyBpbnQgZXh5
bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gIHsKPiA+ICAg
ICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiA+ICAgICAgICAgc3RydWN0
IGRldmljZV9ub2RlICpucCA9IGRldi0+b2Zfbm9kZSwgKm5vZGU7Cj4gPiAgICAgICAgIHN0cnVj
dCBkZXZmcmVxX2Rldl9wcm9maWxlICpwcm9maWxlOwo+ID4gLSAgICAgICBzdHJ1Y3QgZGV2ZnJl
cV9zaW1wbGVfb25kZW1hbmRfZGF0YSAqb25kZW1hbmRfZGF0YTsKPiA+ICAgICAgICAgc3RydWN0
IGRldmZyZXFfcGFzc2l2ZV9kYXRhICpwYXNzaXZlX2RhdGE7Cj4gPiAgICAgICAgIHN0cnVjdCBk
ZXZmcmVxICpwYXJlbnRfZGV2ZnJlcTsKPiA+ICAgICAgICAgc3RydWN0IGV4eW5vc19idXMgKmJ1
czsKPiA+IEBAIC00MTgsNTIgKzQ3NSw5IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAgICAgICBpZiAocmV0IDwgMCkKPiA+
ICAgICAgICAgICAgICAgICBnb3RvIGVycjsKPiA+Cj4gPiAtICAgICAgIC8qIEluaXRpYWxpemUg
dGhlIHN0cnVjdCBwcm9maWxlIGFuZCBnb3Zlcm5vciBkYXRhIGZvciBwYXJlbnQgZGV2aWNlICov
Cj4gPiAtICAgICAgIHByb2ZpbGUtPnBvbGxpbmdfbXMgPSA1MDsKPiA+IC0gICAgICAgcHJvZmls
ZS0+dGFyZ2V0ID0gZXh5bm9zX2J1c190YXJnZXQ7Cj4gPiAtICAgICAgIHByb2ZpbGUtPmdldF9k
ZXZfc3RhdHVzID0gZXh5bm9zX2J1c19nZXRfZGV2X3N0YXR1czsKPiA+IC0gICAgICAgcHJvZmls
ZS0+ZXhpdCA9IGV4eW5vc19idXNfZXhpdDsKPiA+IC0KPiA+IC0gICAgICAgb25kZW1hbmRfZGF0
YSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqb25kZW1hbmRfZGF0YSksIEdGUF9LRVJORUwp
Owo+ID4gLSAgICAgICBpZiAoIW9uZGVtYW5kX2RhdGEpIHsKPiA+IC0gICAgICAgICAgICAgICBy
ZXQgPSAtRU5PTUVNOwo+ID4gKyAgICAgICByZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChi
dXMsIHByb2ZpbGUpOwo+ID4gKyAgICAgICBpZiAocmV0IDwgMCkKPiA+ICAgICAgICAgICAgICAg
ICBnb3RvIGVycjsKPiA+IC0gICAgICAgfQo+ID4gLSAgICAgICBvbmRlbWFuZF9kYXRhLT51cHRo
cmVzaG9sZCA9IDQwOwo+ID4gLSAgICAgICBvbmRlbWFuZF9kYXRhLT5kb3duZGlmZmVyZW50aWFs
ID0gNTsKPiA+IC0KPiA+IC0gICAgICAgLyogQWRkIGRldmZyZXEgZGV2aWNlIHRvIG1vbml0b3Ig
YW5kIGhhbmRsZSB0aGUgZXh5bm9zIGJ1cyAqLwo+ID4gLSAgICAgICBidXMtPmRldmZyZXEgPSBk
ZXZtX2RldmZyZXFfYWRkX2RldmljZShkZXYsIHByb2ZpbGUsCj4gPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBERVZGUkVRX0dPVl9TSU1QTEVfT05ERU1B
TkQsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBv
bmRlbWFuZF9kYXRhKTsKPiA+IC0gICAgICAgaWYgKElTX0VSUihidXMtPmRldmZyZXEpKSB7Cj4g
PiAtICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2
aWNlXG4iKTsKPiA+IC0gICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7
Cj4gPiAtICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gPiAtICAgICAgIH0KPiA+IC0KPiA+IC0g
ICAgICAgLyogUmVnaXN0ZXIgb3BwX25vdGlmaWVyIHRvIGNhdGNoIHRoZSBjaGFuZ2Ugb2YgT1BQ
ICAqLwo+ID4gLSAgICAgICByZXQgPSBkZXZtX2RldmZyZXFfcmVnaXN0ZXJfb3BwX25vdGlmaWVy
KGRldiwgYnVzLT5kZXZmcmVxKTsKPiA+IC0gICAgICAgaWYgKHJldCA8IDApIHsKPiA+IC0gICAg
ICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byByZWdpc3RlciBvcHAgbm90aWZpZXJc
biIpOwo+ID4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ID4gLSAgICAgICB9Cj4gPiAtCj4g
PiAtICAgICAgIC8qCj4gPiAtICAgICAgICAqIEVuYWJsZSBkZXZmcmVxLWV2ZW50IHRvIGdldCBy
YXcgZGF0YSB3aGljaCBpcyB1c2VkIHRvIGRldGVybWluZQo+ID4gLSAgICAgICAgKiBjdXJyZW50
IGJ1cyBsb2FkLgo+ID4gLSAgICAgICAgKi8KPiA+IC0gICAgICAgcmV0ID0gZXh5bm9zX2J1c19l
bmFibGVfZWRldihidXMpOwo+ID4gLSAgICAgICBpZiAocmV0IDwgMCkgewo+ID4gLSAgICAgICAg
ICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBkZXZmcmVxLWV2ZW50IGRldmlj
ZXNcbiIpOwo+ID4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ID4gLSAgICAgICB9Cj4gPiAt
Cj4gPiAtICAgICAgIHJldCA9IGV4eW5vc19idXNfc2V0X2V2ZW50KGJ1cyk7Cj4gPiAtICAgICAg
IGlmIChyZXQgPCAwKSB7Cj4gPiAtICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQg
dG8gc2V0IGV2ZW50IHRvIGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7Cj4gPiAtICAgICAgICAg
ICAgICAgZ290byBlcnI7Cj4gPiAtICAgICAgIH0KPiA+Cj4gPiAgICAgICAgIGdvdG8gb3V0Owo+
ID4gIHBhc3NpdmU6Cj4gPiAtLQo+ID4gMi4xNy4xCj4gPgo+Cj4gTkFDSy4KPgo+IEl0IGhhcyBu
b3QgYW55IGJlbmVmaXQgYW5kIEkgZG9uJ3QgdW5kZXJzdGFuZCByZWFzb24gd2h5IGl0IGlzIG5l
Y2Vzc2FyeS4KPiBJIGRvbid0IGFncmVlLiBQbGVhc2UgZHJvcCBpdC4KClRoZSBwcm9iZSBoYXMg
MTIgbG9jYWwgdmFyaWFibGVzIGFuZCBhcm91bmQgMTQwIGxpbmVzIG9mIGNvZGUgKHNvIG11Y2gK
bW9yZSB0aGFuIGNvZGluZyBzdHlsZSByZWNvbW1lbmRhdGlvbnMpLiBUaGVyZWZvcmUgc3BsaXR0
aW5nIHNvbWUKbG9naWNhbCBwYXJ0IG91dCBvZiBwcm9iZSB0byBtYWtlIGNvZGUgYmV0dGVyIG9y
Z2FuaXplZCBhbmQgbW9yZQpyZWFkYWJsZSBpcyBwcmV0dHkgb2J2aW91cyBiZW5lZml0LgoKQmVz
dCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
