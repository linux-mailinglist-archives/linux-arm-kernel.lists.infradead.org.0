Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9EB763CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+hSLbkPBTPpbABFsa4bKYXoF8K7nWH9wmubIRG1mkU=; b=AilIwABi304dpg
	9AUxDl4VSLmYRJDD//lOMTZFgVkp81yBW96bzIQkoFeZ7fBUPWIY/nA6jU6MbvSfbVJel92/6EgEy
	OYcAjwvS+f0w9f63vlfahisqTnRHJ5AxoAW8KyrKDEZn7c6n4hXRP3M/GLBDvZYBDKgiuDjp4IuJA
	zf5VEl1htR24G/d10u7XQqpuKQ/dYgcIQe9IOCp2vl+iGOcvOP+8KHgl10S7PUByK+LfGUzaoaPCC
	STyXczPZPXYNkukT9/9nSYpxDQ8jlB83UfMAbnPCzePX5MZL/Fph2hCypA3esnMEO9byhOkRaDmMR
	ks1whXPyLknWfBswY3+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxjm-0003FQ-Ju; Fri, 26 Jul 2019 10:46:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxja-0003F4-Fz
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:46:00 +0000
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C373122CBA
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 10:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564137958;
 bh=x9mpS5NvmpKmAahIcVZmBhUi4LVxeCyzdFwA6MTZsMU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=q5TngikPRTXMNg0jozDNBJPwFVF/esEnumTmy+r7ILHTK8YXiAtYXiv4n0Ftz/gYH
 VoWYJrImvalMWzFplysthaI8Pd2QGW14KO/MIM/bQ9BOcY6m+ViYxbnLc9ibtDq8W2
 YWBb3du4rBxkznulmmTs9BFTIKNfvEuXon0wj6fQ=
Received: by mail-lj1-f169.google.com with SMTP id v24so51130213ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 03:45:57 -0700 (PDT)
X-Gm-Message-State: APjAAAVvUfeV20jt4+6zl6bxadTPnkSjWAWUvCKCZDTNl9QNk9ltm37d
 PQVfVJdvlVbO0G5qPYIjiOoxVbs9BrhKz5Hu5rU=
X-Google-Smtp-Source: APXvYqzZkUIlkzQtInKbgDs9Nar+L2o6NkagjMqtMfPToLfoMzoo3NIJHIWVhDdfUt4SL85oQ13GjXQLdyM04b3g+uU=
X-Received: by 2002:a2e:8155:: with SMTP id t21mr48690964ljg.80.1564137955920; 
 Fri, 26 Jul 2019 03:45:55 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190723122024eucas1p25a480ccddaa69ee1d0f1a07960ca3f22@eucas1p2.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <20190723122016.30279-5-a.swigon@partner.samsung.com>
 <CAGTfZH3Z334D3OKpBOGSfS9RoHkOX-s_2M858z1Ye2NoMtVh4g@mail.gmail.com>
In-Reply-To: <CAGTfZH3Z334D3OKpBOGSfS9RoHkOX-s_2M858z1Ye2NoMtVh4g@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 26 Jul 2019 12:45:44 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfsD0XFs2hM64Kf0eG2G+xhWef3QZKjk9NU2ECzgQeqsA@mail.gmail.com>
Message-ID: <CAJKOXPfsD0XFs2hM64Kf0eG2G+xhWef3QZKjk9NU2ECzgQeqsA@mail.gmail.com>
Subject: Re: [RFC PATCH 04/11] devfreq: exynos-bus: Clean up code
To: cwchoi00@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_034558_568605_940C15EC 
X-CRM114-Status: GOOD (  24.47  )
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

T24gVGh1LCAyNSBKdWwgMjAxOSBhdCAxNDo1MSwgQ2hhbndvbyBDaG9pIDxjd2Nob2kwMEBnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gMjAxOeuFhCA37JuUIDI07J28ICjsiJgpIOyYpOyghCA4OjA3LCBB
cnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT7ri5jsnbQg7J6R7ISx
Ogo+ID4KPiA+IFRoaXMgcGF0Y2ggYWRkcyBtaW5vciBpbXByb3ZlbWVudHMgdG8gdGhlIGV4eW5v
cy1idXMgZHJpdmVyLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3
aWdvbkBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9kZXZmcmVxL2V4
eW5vcy1idXMuYyB8IDQ5ICsrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAyNyBkZWxldGlvbnMoLSkKPiA+Cj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyBiL2RyaXZlcnMvZGV2
ZnJlcS9leHlub3MtYnVzLmMKPiA+IGluZGV4IDRiYjgzYjk0NWJmNy4uNDEyNTExY2E3NzAzIDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+ID4gKysrIGIvZHJp
dmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+ID4gQEAgLTE1LDExICsxNSwxMCBAQAo+ID4gICNp
bmNsdWRlIDxsaW51eC9kZXZpY2UuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvZXhwb3J0Lmg+Cj4g
PiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ID4gLSNpbmNsdWRlIDxsaW51eC9vZl9kZXZp
Y2UuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvcG1f
b3BwLmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ID4gICNpbmNs
dWRlIDxsaW51eC9yZWd1bGF0b3IvY29uc3VtZXIuaD4KPiA+IC0jaW5jbHVkZSA8bGludXgvc2xh
Yi5oPgo+ID4KPiA+ICAjZGVmaW5lIERFRkFVTFRfU0FUVVJBVElPTl9SQVRJTyAgICAgICA0MAo+
ID4gICNkZWZpbmUgREVGQVVMVF9WT0xUQUdFX1RPTEVSQU5DRSAgICAgIDIKPiA+IEBAIC0yNTYs
NyArMjU1LDcgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3BhcmVudF9wYXJzZV9vZihzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKm5wLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHN0cnVjdCBleHlub3NfYnVzICpidXMpCj4gPiAgewo+ID4gICAgICAgICBzdHJ1Y3QgZGV2
aWNlICpkZXYgPSBidXMtPmRldjsKPiA+IC0gICAgICAgaW50IGksIHJldCwgY291bnQsIHNpemU7
Cj4gPiArICAgICAgIGludCBpLCByZXQsIGNvdW50Owo+ID4KPiA+ICAgICAgICAgLyogR2V0IHRo
ZSByZWd1bGF0b3IgdG8gcHJvdmlkZSBlYWNoIGJ1cyB3aXRoIHRoZSBwb3dlciAqLwo+ID4gICAg
ICAgICBidXMtPnJlZ3VsYXRvciA9IGRldm1fcmVndWxhdG9yX2dldChkZXYsICJ2ZGQiKTsKPiA+
IEBAIC0yODMsOCArMjgyLDcgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3BhcmVudF9wYXJzZV9v
ZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+ID4gICAgICAgICB9Cj4gPiAgICAgICAgIGJ1cy0+
ZWRldl9jb3VudCA9IGNvdW50Owo+ID4KPiA+IC0gICAgICAgc2l6ZSA9IHNpemVvZigqYnVzLT5l
ZGV2KSAqIGNvdW50Owo+ID4gLSAgICAgICBidXMtPmVkZXYgPSBkZXZtX2t6YWxsb2MoZGV2LCBz
aXplLCBHRlBfS0VSTkVMKTsKPiA+ICsgICAgICAgYnVzLT5lZGV2ID0gZGV2bV9rY2FsbG9jKGRl
diwgY291bnQsIHNpemVvZigqYnVzLT5lZGV2KSwgR0ZQX0tFUk5FTCk7Cj4gPiAgICAgICAgIGlm
ICghYnVzLT5lZGV2KSB7Cj4gPiAgICAgICAgICAgICAgICAgcmV0ID0gLUVOT01FTTsKPiA+ICAg
ICAgICAgICAgICAgICBnb3RvIGVycl9yZWd1bGF0b3I7Cj4gPiBAQCAtMzg4LDcgKzM4Niw3IEBA
IHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1
cywKPiA+ICAgICAgICAgb25kZW1hbmRfZGF0YSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigq
b25kZW1hbmRfZGF0YSksIEdGUF9LRVJORUwpOwo+ID4gICAgICAgICBpZiAoIW9uZGVtYW5kX2Rh
dGEpIHsKPiA+ICAgICAgICAgICAgICAgICByZXQgPSAtRU5PTUVNOwo+ID4gLSAgICAgICAgICAg
ICAgIGdvdG8gZXJyOwo+ID4gKyAgICAgICAgICAgICAgIGdvdG8gb3V0Owo+ID4gICAgICAgICB9
Cj4gPiAgICAgICAgIG9uZGVtYW5kX2RhdGEtPnVwdGhyZXNob2xkID0gNDA7Cj4gPiAgICAgICAg
IG9uZGVtYW5kX2RhdGEtPmRvd25kaWZmZXJlbnRpYWwgPSA1Owo+ID4gQEAgLTQwMCwxNCArMzk4
LDE0IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19i
dXMgKmJ1cywKPiA+ICAgICAgICAgaWYgKElTX0VSUihidXMtPmRldmZyZXEpKSB7Cj4gPiAgICAg
ICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2aWNlXG4i
KTsKPiA+ICAgICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Cj4gPiAt
ICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gPiArICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4g
PiAgICAgICAgIH0KPiA+Cj4gPiAgICAgICAgIC8qIFJlZ2lzdGVyIG9wcF9ub3RpZmllciB0byBj
YXRjaCB0aGUgY2hhbmdlIG9mIE9QUCAgKi8KPiA+ICAgICAgICAgcmV0ID0gZGV2bV9kZXZmcmVx
X3JlZ2lzdGVyX29wcF9ub3RpZmllcihkZXYsIGJ1cy0+ZGV2ZnJlcSk7Cj4gPiAgICAgICAgIGlm
IChyZXQgPCAwKSB7Cj4gPiAgICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8g
cmVnaXN0ZXIgb3BwIG5vdGlmaWVyXG4iKTsKPiA+IC0gICAgICAgICAgICAgICBnb3RvIGVycjsK
PiA+ICsgICAgICAgICAgICAgICBnb3RvIG91dDsKPiA+ICAgICAgICAgfQo+ID4KPiA+ICAgICAg
ICAgLyoKPiA+IEBAIC00MTcsMTYgKzQxNSwxNiBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJv
ZmlsZV9pbml0KHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4gPiAgICAgICAgIHJldCA9IGV4eW5v
c19idXNfZW5hYmxlX2VkZXYoYnVzKTsKPiA+ICAgICAgICAgaWYgKHJldCA8IDApIHsKPiA+ICAg
ICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgZGV2ZnJlcS1ldmVu
dCBkZXZpY2VzXG4iKTsKPiA+IC0gICAgICAgICAgICAgICBnb3RvIGVycjsKPiA+ICsgICAgICAg
ICAgICAgICBnb3RvIG91dDsKPiA+ICAgICAgICAgfQo+ID4KPiA+ICAgICAgICAgcmV0ID0gZXh5
bm9zX2J1c19zZXRfZXZlbnQoYnVzKTsKPiA+ICAgICAgICAgaWYgKHJldCA8IDApIHsKPiA+ICAg
ICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBzZXQgZXZlbnQgdG8gZGV2ZnJl
cS1ldmVudCBkZXZpY2VzXG4iKTsKPiA+IC0gICAgICAgICAgICAgICBnb3RvIGVycjsKPiA+ICsg
ICAgICAgICAgICAgICBnb3RvIG91dDsKPiA+ICAgICAgICAgfQo+ID4KPiA+IC1lcnI6Cj4gPiAr
b3V0Ogo+ID4gICAgICAgICByZXR1cm4gcmV0Owo+ID4gIH0KPiA+Cj4gPiBAQCAtNDQ2LDI3ICs0
NDQsMjggQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKHN0cnVj
dCBleHlub3NfYnVzICpidXMsCj4gPiAgICAgICAgIHBhcmVudF9kZXZmcmVxID0gZGV2ZnJlcV9n
ZXRfZGV2ZnJlcV9ieV9waGFuZGxlKGRldiwgMCk7Cj4gPiAgICAgICAgIGlmIChJU19FUlIocGFy
ZW50X2RldmZyZXEpKSB7Cj4gPiAgICAgICAgICAgICAgICAgcmV0ID0gLUVQUk9CRV9ERUZFUjsK
PiA+IC0gICAgICAgICAgICAgICBnb3RvIGVycjsKPiA+ICsgICAgICAgICAgICAgICBnb3RvIG91
dDsKPiA+ICAgICAgICAgfQo+ID4KPiA+ICAgICAgICAgcGFzc2l2ZV9kYXRhID0gZGV2bV9remFs
bG9jKGRldiwgc2l6ZW9mKCpwYXNzaXZlX2RhdGEpLCBHRlBfS0VSTkVMKTsKPiA+ICAgICAgICAg
aWYgKCFwYXNzaXZlX2RhdGEpIHsKPiA+ICAgICAgICAgICAgICAgICByZXQgPSAtRU5PTUVNOwo+
ID4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ID4gKyAgICAgICAgICAgICAgIGdvdG8gb3V0
Owo+ID4gICAgICAgICB9Cj4gPiAgICAgICAgIHBhc3NpdmVfZGF0YS0+cGFyZW50ID0gcGFyZW50
X2RldmZyZXE7Cj4gPgo+ID4gICAgICAgICAvKiBBZGQgZGV2ZnJlcSBkZXZpY2UgZm9yIGV4eW5v
cyBidXMgd2l0aCBwYXNzaXZlIGdvdmVybm9yICovCj4gPiAtICAgICAgIGJ1cy0+ZGV2ZnJlcSA9
IGRldm1fZGV2ZnJlcV9hZGRfZGV2aWNlKGRldiwgcHJvZmlsZSwgREVWRlJFUV9HT1ZfUEFTU0lW
RSwKPiA+ICsgICAgICAgYnVzLT5kZXZmcmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2
LCBwcm9maWxlLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgREVWRlJFUV9HT1ZfUEFTU0lWRSwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHBhc3NpdmVfZGF0YSk7Cj4gPiAgICAgICAgIGlmIChJU19F
UlIoYnVzLT5kZXZmcmVxKSkgewo+ID4gICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LAo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXYgd2l0aCBw
YXNzaXZlIGdvdmVybm9yXG4iKTsKPiA+ICAgICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKGJ1
cy0+ZGV2ZnJlcSk7Cj4gPiAtICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gPiArICAgICAgICAg
ICAgICAgZ290byBvdXQ7Cj4gPiAgICAgICAgIH0KPiA+Cj4gPiAtZXJyOgo+ID4gK291dDoKPiA+
ICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICB9Cj4gPgo+ID4gQEAgLTQ4NCwxMSArNDgzLDExIEBA
IHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4gICAgICAgICB9Cj4gPgo+
ID4gLSAgICAgICBidXMgPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpidXMpLCBH
RlBfS0VSTkVMKTsKPiA+ICsgICAgICAgYnVzID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpi
dXMpLCBHRlBfS0VSTkVMKTsKPiA+ICAgICAgICAgaWYgKCFidXMpCj4gPiAgICAgICAgICAgICAg
ICAgcmV0dXJuIC1FTk9NRU07Cj4gPiAgICAgICAgIG11dGV4X2luaXQoJmJ1cy0+bG9jayk7Cj4g
PiAtICAgICAgIGJ1cy0+ZGV2ID0gJnBkZXYtPmRldjsKPiA+ICsgICAgICAgYnVzLT5kZXYgPSBk
ZXY7Cj4gPiAgICAgICAgIHBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIGJ1cyk7Cj4gPgo+ID4g
ICAgICAgICAvKiBQYXJzZSB0aGUgZGV2aWNlLXRyZWUgdG8gZ2V0IHRoZSByZXNvdXJjZSBpbmZv
cm1hdGlvbiAqLwo+ID4gQEAgLTUwMiw3ICs1MDEsNyBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAgICAgICAgICAgICAgICBn
b3RvIGVycjsKPiA+ICAgICAgICAgfQo+ID4KPiA+IC0gICAgICAgbm9kZSA9IG9mX3BhcnNlX3Bo
YW5kbGUoZGV2LT5vZl9ub2RlLCAiZGV2ZnJlcSIsIDApOwo+ID4gKyAgICAgICBub2RlID0gb2Zf
cGFyc2VfcGhhbmRsZShucCwgImRldmZyZXEiLCAwKTsKPiA+ICAgICAgICAgaWYgKG5vZGUpIHsK
PiA+ICAgICAgICAgICAgICAgICBvZl9ub2RlX3B1dChub2RlKTsKPiA+ICAgICAgICAgICAgICAg
ICByZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKGJ1cywgcHJvZmlsZSk7Cj4g
PiBAQCAtNTQ3LDEyICs1NDYsMTAgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Jlc3VtZShzdHJ1
Y3QgZGV2aWNlICpkZXYpCj4gPiAgICAgICAgIGludCByZXQ7Cj4gPgo+ID4gICAgICAgICByZXQg
PSBleHlub3NfYnVzX2VuYWJsZV9lZGV2KGJ1cyk7Cj4gPiAtICAgICAgIGlmIChyZXQgPCAwKSB7
Cj4gPiArICAgICAgIGlmIChyZXQgPCAwKQo+ID4gICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2
LCAiZmFpbGVkIHRvIGVuYWJsZSB0aGUgZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKPiA+IC0g
ICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gLSAgICAgICB9Cj4gPgo+ID4gLSAgICAgICBy
ZXR1cm4gMDsKPiA+ICsgICAgICAgcmV0dXJuIHJldDsKPiA+ICB9Cj4gPgo+ID4gIHN0YXRpYyBp
bnQgZXh5bm9zX2J1c19zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+IEBAIC01NjEsMTIg
KzU1OCwxMCBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpk
ZXYpCj4gPiAgICAgICAgIGludCByZXQ7Cj4gPgo+Cj4gTkFDSy4KCkluc3RlYWQgb2Ygc2ltcGxl
IG5hY2sgeW91IHNob3VsZCBleHBsYWluIHdoYXQgaXMgd3Jvbmcgd2l0aCBwcm9wb3NlZAphcHBy
b2FjaC4gVGhlIGV4aXN0aW5nIGNvZGUgY291bGQgYmUgaW1wcm92ZWQgYW5kIHRoaXMgcGF0Y2gg
Y2xlYXJseQppbXByb3ZlcyB0aGUgcmVhZGFiaWxpdHkuICJlcnIiIGxhYmVsIGlzIGNvbmZ1c2lu
ZyBpZiBpdCBpcyB1c2VkIGZvcgpjb3JyZWN0IGV4aXQgcGF0aC4gVGhlIGxhc3QgImlmKCkgcmV0
dXJuIiBibG9jayBpcyBzdWJqZWN0aXZlIC0gYnV0CnRoZW4gZXhwbGFpbiBleGFjdGx5IHdoeSB5
b3UgcHJlZmVyIG9uZSBvdmVyIGFub3RoZXIuIE5vIGp1c3QgIm5hY2siCmZvciBwZW9wbGVzIGNv
bnRyaWJ1dGlvbnMuCgo+ID4gICAgICAgICByZXQgPSBleHlub3NfYnVzX2Rpc2FibGVfZWRldihi
dXMpOwo+ID4gLSAgICAgICBpZiAocmV0IDwgMCkgewo+ID4gKyAgICAgICBpZiAocmV0IDwgMCkK
PiA+ICAgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBkaXNhYmxlIHRoZSBk
ZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOwo+ID4gLSAgICAgICAgICAgICAgIHJldHVybiByZXQ7
Cj4gPiAtICAgICAgIH0KPiA+Cj4gPiAtICAgICAgIHJldHVybiAwOwo+ID4gKyAgICAgICByZXR1
cm4gcmV0Owo+ID4gIH0KPiA+ICAjZW5kaWYKPiA+Cj4gPiAtLQo+ID4gMi4xNy4xCj4gPgo+Cj4g
TkFDSy4KPgo+IEFzIEkgYWxyZWFkeSBjb21tZW50ZWQsIEl0IGhhcyBuZXZlciBhbnkgYmVuZWZp
dC4KPiBJIHRoaW5rIHRoYXQgaXQgaXMgbm90IHVzZnVsLiBQbGVhc2UgZHJvcCBpdC4KClRoZSBi
ZW5lZml0IGZvciBtZSBpcyBjbGVhciAtIG1ha2VzIHRoZSBjb2RlIGVhc2llciB0byB1bmRlcnN0
YW5kLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
