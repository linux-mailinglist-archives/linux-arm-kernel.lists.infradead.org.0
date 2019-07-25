Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA54674E89
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 14:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7GgDfUEE0weskJ5jgosXfYxMWGGpmIwfF9GcjYgJzE=; b=Xhbkghi/WaGaWz
	CDvZ0AteD1U0QgDNF9YY0OPfhZvcwVIMD2Kmov0eUn3ZiLZ1kL7yQzA7Cxp0DW1ejqwpKLisMwmDp
	Ln8fI31XjjbTiDIHhqgI+DZGy4CBc+JvC7gUxtOyX5oJkl3cVeDZze8QE7bSuYhrxNUxMEJZi2C6+
	t23hyr4nOvootsDD0kGHQNfuT4SbSP5npS6S0IeQ27osxys4eB+1VROtpzRXzRGxONMb3tzOJV2ic
	OLY7m6wZ9lVKNxgfBojjAgOI/F2K18+I3E5wunDsZnVui8/LFHoPb/4lLZamuOI048G7P51J6Y3Io
	wZKYeHEXtM/TphJASREg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdDn-0002Dx-VU; Thu, 25 Jul 2019 12:51:48 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdDY-0002DW-GH
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 12:51:34 +0000
Received: by mail-lf1-x143.google.com with SMTP id z15so30173642lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 05:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc:content-transfer-encoding;
 bh=/Xsj00ljhBsEGtdT+wj7N34Rn+B2eibrc+3bGLHtXVM=;
 b=KrxMTzFAhzWFqULF0MbgezdmTCddBLW97aZPw3roEOocGi9PDJFCSZH+TnwulnpeHu
 3dXe6bI5xxyAEbMIqJ7cE0SM5Oidx/BetTLPcq2iPyBBaZJUK4Fu316uFx+7yYEtQspd
 7Wd9dy9MMx4pEro5eP9OpYcYTFB+yFEDUswcHd8NvJXkH/qh9HqcXpCcPo98DeGgu+Fz
 yDYtoOYw+cgpWw0MTtZg/sSmqRJkcceW1Rw7N/o+FwuIIM4y7hjxM6d7sVHRcrlWfviM
 tdoCkMRczvDnAkzxE4hW0IdrhEwqrpzzmBZ/wdXyF8q8+hkBo2kecS8AtzQnc4HOXUYY
 4dAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc:content-transfer-encoding;
 bh=/Xsj00ljhBsEGtdT+wj7N34Rn+B2eibrc+3bGLHtXVM=;
 b=os6k6zAbjNlToPhc+g7K0sUAcC9NSypkVzrnWrQuGRaW5ylegl9+X3ydibE3iqY+yR
 TIcwZ783mdkxSgo7Aczjrf6/kDAsXlg+MlcKdvz8CGBT4Js1+ml0Q0nCIGMhg4urbBMr
 IPsQGhMOZI/XFYeNhpo2W6RiQO9eZcCm+3cv9wrhj03j3oW6GHBgWogdf7m/M90hduG1
 bkgFDSNMx8kMlnudao3cjcMuv3UuJM6NpCda0/bLqAVEpsvbdKz0DLhgzIMnpsj7Xqt+
 A+WI0W29OSdTsnBMGXTezBfqUaCgo1ApWwSr9/a3wlDCMHKR9V2FOIxjC0iB2HXz03ET
 9XLw==
X-Gm-Message-State: APjAAAVipa6T73YhvboZdWI+cUdLQZRI5YBcExmjA9Bxr36HHVKK4oWq
 uAz/Or98tGfeR3MFxPEP1VqAbtjAn/qFnneQa7Y=
X-Google-Smtp-Source: APXvYqxevdANPfOlkVtzMQ882vgwBXm0Jbm6vzvza8p7XXpVnciz9Vl5i1ZzZxjAhKyc6EfZHmf4aPb+4/23UDQiUlw=
X-Received: by 2002:a19:914c:: with SMTP id y12mr41019898lfj.108.1564059090602; 
 Thu, 25 Jul 2019 05:51:30 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190723122024eucas1p25a480ccddaa69ee1d0f1a07960ca3f22@eucas1p2.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <20190723122016.30279-5-a.swigon@partner.samsung.com>
In-Reply-To: <20190723122016.30279-5-a.swigon@partner.samsung.com>
From: Chanwoo Choi <cwchoi00@gmail.com>
Date: Thu, 25 Jul 2019 21:50:53 +0900
Message-ID: <CAGTfZH3Z334D3OKpBOGSfS9RoHkOX-s_2M858z1Ye2NoMtVh4g@mail.gmail.com>
Subject: Re: [RFC PATCH 04/11] devfreq: exynos-bus: Clean up code
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_055132_568920_0D2C341F 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (cwchoi00[at]gmail.com)
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (cwchoi00[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cwchoi00[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: cwchoi00@gmail.com
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, georgi.djakov@linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAxOeuFhCA37JuUIDI07J28ICjsiJgpIOyYpOyghCA4OjA3LCBBcnR1ciDFmndpZ2/FhCA8YS5z
d2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT7ri5jsnbQg7J6R7ISxOgo+Cj4gVGhpcyBwYXRjaCBh
ZGRzIG1pbm9yIGltcHJvdmVtZW50cyB0byB0aGUgZXh5bm9zLWJ1cyBkcml2ZXIuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8IDQ5ICsrKysrKysrKysrKysr
KystLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygr
KSwgMjcgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5v
cy1idXMuYyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPiBpbmRleCA0YmI4M2I5NDVi
ZjcuLjQxMjUxMWNhNzcwMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1
cy5jCj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+IEBAIC0xNSwxMSArMTUs
MTAgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvZXhw
b3J0Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiAtI2luY2x1ZGUgPGxpbnV4L29m
X2RldmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3Bt
X29wcC5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gICNpbmNsdWRl
IDxsaW51eC9yZWd1bGF0b3IvY29uc3VtZXIuaD4KPiAtI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4K
Pgo+ICAjZGVmaW5lIERFRkFVTFRfU0FUVVJBVElPTl9SQVRJTyAgICAgICA0MAo+ICAjZGVmaW5l
IERFRkFVTFRfVk9MVEFHRV9UT0xFUkFOQ0UgICAgICAyCj4gQEAgLTI1Niw3ICsyNTUsNyBAQCBz
dGF0aWMgaW50IGV4eW5vc19idXNfcGFyZW50X3BhcnNlX29mKHN0cnVjdCBkZXZpY2Vfbm9kZSAq
bnAsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBleHlu
b3NfYnVzICpidXMpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9IGJ1cy0+ZGV2
Owo+IC0gICAgICAgaW50IGksIHJldCwgY291bnQsIHNpemU7Cj4gKyAgICAgICBpbnQgaSwgcmV0
LCBjb3VudDsKPgo+ICAgICAgICAgLyogR2V0IHRoZSByZWd1bGF0b3IgdG8gcHJvdmlkZSBlYWNo
IGJ1cyB3aXRoIHRoZSBwb3dlciAqLwo+ICAgICAgICAgYnVzLT5yZWd1bGF0b3IgPSBkZXZtX3Jl
Z3VsYXRvcl9nZXQoZGV2LCAidmRkIik7Cj4gQEAgLTI4Myw4ICsyODIsNyBAQCBzdGF0aWMgaW50
IGV4eW5vc19idXNfcGFyZW50X3BhcnNlX29mKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4gICAg
ICAgICB9Cj4gICAgICAgICBidXMtPmVkZXZfY291bnQgPSBjb3VudDsKPgo+IC0gICAgICAgc2l6
ZSA9IHNpemVvZigqYnVzLT5lZGV2KSAqIGNvdW50Owo+IC0gICAgICAgYnVzLT5lZGV2ID0gZGV2
bV9remFsbG9jKGRldiwgc2l6ZSwgR0ZQX0tFUk5FTCk7Cj4gKyAgICAgICBidXMtPmVkZXYgPSBk
ZXZtX2tjYWxsb2MoZGV2LCBjb3VudCwgc2l6ZW9mKCpidXMtPmVkZXYpLCBHRlBfS0VSTkVMKTsK
PiAgICAgICAgIGlmICghYnVzLT5lZGV2KSB7Cj4gICAgICAgICAgICAgICAgIHJldCA9IC1FTk9N
RU07Cj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX3JlZ3VsYXRvcjsKPiBAQCAtMzg4LDcgKzM4
Niw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19i
dXMgKmJ1cywKPiAgICAgICAgIG9uZGVtYW5kX2RhdGEgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXpl
b2YoKm9uZGVtYW5kX2RhdGEpLCBHRlBfS0VSTkVMKTsKPiAgICAgICAgIGlmICghb25kZW1hbmRf
ZGF0YSkgewo+ICAgICAgICAgICAgICAgICByZXQgPSAtRU5PTUVNOwo+IC0gICAgICAgICAgICAg
ICBnb3RvIGVycjsKPiArICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4gICAgICAgICB9Cj4gICAg
ICAgICBvbmRlbWFuZF9kYXRhLT51cHRocmVzaG9sZCA9IDQwOwo+ICAgICAgICAgb25kZW1hbmRf
ZGF0YS0+ZG93bmRpZmZlcmVudGlhbCA9IDU7Cj4gQEAgLTQwMCwxNCArMzk4LDE0IEBAIHN0YXRp
YyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKPiAg
ICAgICAgIGlmIChJU19FUlIoYnVzLT5kZXZmcmVxKSkgewo+ICAgICAgICAgICAgICAgICBkZXZf
ZXJyKGRldiwgImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXZpY2VcbiIpOwo+ICAgICAgICAgICAg
ICAgICByZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Cj4gLSAgICAgICAgICAgICAgIGdvdG8g
ZXJyOwo+ICsgICAgICAgICAgICAgICBnb3RvIG91dDsKPiAgICAgICAgIH0KPgo+ICAgICAgICAg
LyogUmVnaXN0ZXIgb3BwX25vdGlmaWVyIHRvIGNhdGNoIHRoZSBjaGFuZ2Ugb2YgT1BQICAqLwo+
ICAgICAgICAgcmV0ID0gZGV2bV9kZXZmcmVxX3JlZ2lzdGVyX29wcF9ub3RpZmllcihkZXYsIGJ1
cy0+ZGV2ZnJlcSk7Cj4gICAgICAgICBpZiAocmV0IDwgMCkgewo+ICAgICAgICAgICAgICAgICBk
ZXZfZXJyKGRldiwgImZhaWxlZCB0byByZWdpc3RlciBvcHAgbm90aWZpZXJcbiIpOwo+IC0gICAg
ICAgICAgICAgICBnb3RvIGVycjsKPiArICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4gICAgICAg
ICB9Cj4KPiAgICAgICAgIC8qCj4gQEAgLTQxNywxNiArNDE1LDE2IEBAIHN0YXRpYyBpbnQgZXh5
bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKPiAgICAgICAgIHJl
dCA9IGV4eW5vc19idXNfZW5hYmxlX2VkZXYoYnVzKTsKPiAgICAgICAgIGlmIChyZXQgPCAwKSB7
Cj4gICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBkZXZmcmVx
LWV2ZW50IGRldmljZXNcbiIpOwo+IC0gICAgICAgICAgICAgICBnb3RvIGVycjsKPiArICAgICAg
ICAgICAgICAgZ290byBvdXQ7Cj4gICAgICAgICB9Cj4KPiAgICAgICAgIHJldCA9IGV4eW5vc19i
dXNfc2V0X2V2ZW50KGJ1cyk7Cj4gICAgICAgICBpZiAocmV0IDwgMCkgewo+ICAgICAgICAgICAg
ICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBzZXQgZXZlbnQgdG8gZGV2ZnJlcS1ldmVudCBk
ZXZpY2VzXG4iKTsKPiAtICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gKyAgICAgICAgICAgICAg
IGdvdG8gb3V0Owo+ICAgICAgICAgfQo+Cj4gLWVycjoKPiArb3V0Ogo+ICAgICAgICAgcmV0dXJu
IHJldDsKPiAgfQo+Cj4gQEAgLTQ0NiwyNyArNDQ0LDI4IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1
c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ICAgICAgICAg
cGFyZW50X2RldmZyZXEgPSBkZXZmcmVxX2dldF9kZXZmcmVxX2J5X3BoYW5kbGUoZGV2LCAwKTsK
PiAgICAgICAgIGlmIChJU19FUlIocGFyZW50X2RldmZyZXEpKSB7Cj4gICAgICAgICAgICAgICAg
IHJldCA9IC1FUFJPQkVfREVGRVI7Cj4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ICsgICAg
ICAgICAgICAgICBnb3RvIG91dDsKPiAgICAgICAgIH0KPgo+ICAgICAgICAgcGFzc2l2ZV9kYXRh
ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpwYXNzaXZlX2RhdGEpLCBHRlBfS0VSTkVMKTsK
PiAgICAgICAgIGlmICghcGFzc2l2ZV9kYXRhKSB7Cj4gICAgICAgICAgICAgICAgIHJldCA9IC1F
Tk9NRU07Cj4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ICsgICAgICAgICAgICAgICBnb3Rv
IG91dDsKPiAgICAgICAgIH0KPiAgICAgICAgIHBhc3NpdmVfZGF0YS0+cGFyZW50ID0gcGFyZW50
X2RldmZyZXE7Cj4KPiAgICAgICAgIC8qIEFkZCBkZXZmcmVxIGRldmljZSBmb3IgZXh5bm9zIGJ1
cyB3aXRoIHBhc3NpdmUgZ292ZXJub3IgKi8KPiAtICAgICAgIGJ1cy0+ZGV2ZnJlcSA9IGRldm1f
ZGV2ZnJlcV9hZGRfZGV2aWNlKGRldiwgcHJvZmlsZSwgREVWRlJFUV9HT1ZfUEFTU0lWRSwKPiAr
ICAgICAgIGJ1cy0+ZGV2ZnJlcSA9IGRldm1fZGV2ZnJlcV9hZGRfZGV2aWNlKGRldiwgcHJvZmls
ZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBERVZG
UkVRX0dPVl9QQVNTSVZFLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHBhc3NpdmVfZGF0YSk7Cj4gICAgICAgICBpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJl
cSkpIHsKPiAgICAgICAgICAgICAgICAgZGV2X2VycihkZXYsCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXYgd2l0aCBwYXNzaXZlIGdvdmVybm9yXG4i
KTsKPiAgICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEpOwo+IC0gICAg
ICAgICAgICAgICBnb3RvIGVycjsKPiArICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4gICAgICAg
ICB9Cj4KPiAtZXJyOgo+ICtvdXQ6Cj4gICAgICAgICByZXR1cm4gcmV0Owo+ICB9Cj4KPiBAQCAt
NDg0LDExICs0ODMsMTEgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ICAg
ICAgICAgfQo+Cj4gLSAgICAgICBidXMgPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9m
KCpidXMpLCBHRlBfS0VSTkVMKTsKPiArICAgICAgIGJ1cyA9IGRldm1fa3phbGxvYyhkZXYsIHNp
emVvZigqYnVzKSwgR0ZQX0tFUk5FTCk7Cj4gICAgICAgICBpZiAoIWJ1cykKPiAgICAgICAgICAg
ICAgICAgcmV0dXJuIC1FTk9NRU07Cj4gICAgICAgICBtdXRleF9pbml0KCZidXMtPmxvY2spOwo+
IC0gICAgICAgYnVzLT5kZXYgPSAmcGRldi0+ZGV2Owo+ICsgICAgICAgYnVzLT5kZXYgPSBkZXY7
Cj4gICAgICAgICBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBidXMpOwo+Cj4gICAgICAgICAv
KiBQYXJzZSB0aGUgZGV2aWNlLXRyZWUgdG8gZ2V0IHRoZSByZXNvdXJjZSBpbmZvcm1hdGlvbiAq
Lwo+IEBAIC01MDIsNyArNTAxLDcgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ICAg
ICAgICAgfQo+Cj4gLSAgICAgICBub2RlID0gb2ZfcGFyc2VfcGhhbmRsZShkZXYtPm9mX25vZGUs
ICJkZXZmcmVxIiwgMCk7Cj4gKyAgICAgICBub2RlID0gb2ZfcGFyc2VfcGhhbmRsZShucCwgImRl
dmZyZXEiLCAwKTsKPiAgICAgICAgIGlmIChub2RlKSB7Cj4gICAgICAgICAgICAgICAgIG9mX25v
ZGVfcHV0KG5vZGUpOwo+ICAgICAgICAgICAgICAgICByZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVf
aW5pdF9wYXNzaXZlKGJ1cywgcHJvZmlsZSk7Cj4gQEAgLTU0NywxMiArNTQ2LDEwIEBAIHN0YXRp
YyBpbnQgZXh5bm9zX2J1c19yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICAgICAgICAgaW50
IHJldDsKPgo+ICAgICAgICAgcmV0ID0gZXh5bm9zX2J1c19lbmFibGVfZWRldihidXMpOwo+IC0g
ICAgICAgaWYgKHJldCA8IDApIHsKPiArICAgICAgIGlmIChyZXQgPCAwKQo+ICAgICAgICAgICAg
ICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgdGhlIGRldmZyZXEtZXZlbnQgZGV2
aWNlc1xuIik7Cj4gLSAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gLSAgICAgICB9Cj4KPiAt
ICAgICAgIHJldHVybiAwOwo+ICsgICAgICAgcmV0dXJuIHJldDsKPiAgfQo+Cj4gIHN0YXRpYyBp
bnQgZXh5bm9zX2J1c19zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiBAQCAtNTYxLDEyICs1
NTgsMTAgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2
KQo+ICAgICAgICAgaW50IHJldDsKPgoKTkFDSy4KPiAgICAgICAgIHJldCA9IGV4eW5vc19idXNf
ZGlzYWJsZV9lZGV2KGJ1cyk7Cj4gLSAgICAgICBpZiAocmV0IDwgMCkgewo+ICsgICAgICAgaWYg
KHJldCA8IDApCj4gICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGRpc2Fi
bGUgdGhlIGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7Cj4gLSAgICAgICAgICAgICAgIHJldHVy
biByZXQ7Cj4gLSAgICAgICB9Cj4KPiAtICAgICAgIHJldHVybiAwOwo+ICsgICAgICAgcmV0dXJu
IHJldDsKPiAgfQo+ICAjZW5kaWYKPgo+IC0tCj4gMi4xNy4xCj4KCk5BQ0suCgpBcyBJIGFscmVh
ZHkgY29tbWVudGVkLCBJdCBoYXMgbmV2ZXIgYW55IGJlbmVmaXQuCkkgdGhpbmsgdGhhdCBpdCBp
cyBub3QgdXNmdWwuIFBsZWFzZSBkcm9wIGl0LgoKCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29v
IENob2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
