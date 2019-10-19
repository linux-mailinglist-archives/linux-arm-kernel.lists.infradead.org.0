Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED463DD721
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 09:32:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmPBUvx9FxL2AGC3IOME7QTwyVITr6CFFo+xr1FbO/E=; b=YXgXKXagzzPBq4
	6EqtpBMrz6kFLa3z8Ci88JlRcgYbq4waDBeuIb6Y2kBwrF+BKUEOAb4qiCdgPISKuvrhN4Ds/MU/0
	VShtHsY/sh069ZyD0bemd4vnMA3IzPAw0mzClYx9zr1MmxODvy3AM57iQvlaYB2m4uZeuwljDzSOR
	Bw5ZGlw0TLH9DrG+z0cSRWqJcGCGqPWdHcAFJ+l4aLuQQ6rjJ/e73DY+3FgIjC9OU2BcyK61qqmza
	ilApPqhHrBa0boHp+nUEFPmhMbZk4qvupAPyP9/D9fZqa0bt9+uIozChJ06jV7kCCAPQFeDWtM7+P
	U4wXJ7jnKmApXaAQpZBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLjDT-0004Sq-It; Sat, 19 Oct 2019 07:31:59 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLjDK-0004SU-Nv
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 07:31:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id r19so8275955wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 19 Oct 2019 00:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=OzPJDxGi1MrI8ZR9UuASyVPLDi4zzBY6pZdlj+5WowY=;
 b=BpdHQ9e/XotjqdUYekfRD7DitgfTp/dQ2Cmzh3Z2QleXn0izgIgKpzA7lA4X5qK3oE
 m6j1Q8ctp32GU6U3TCpenqgGXbOcUH65pg48i2p/o+RKEzsmOUDdquGdmH6hJJjVvrIz
 3ZidY7ge55WqtGuL2aNK2u1Cn5k/y9OWYDi1qKv+iMaQ4LRidOockcKWFKWXAQ50LGyg
 67xnpr17wg2APC2k7kcuTPDCZ2IzoLyy5gB9S0Y+JzT7Z3EDVkSDl+/WZyJLUL1u4Ovi
 jGeKJMIV3c5B0TpVp8o67jm3d84PMeIGOle0NBNrKrYw7fh0MnyYVCaZRAjQf8NUz29I
 Q6Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=OzPJDxGi1MrI8ZR9UuASyVPLDi4zzBY6pZdlj+5WowY=;
 b=ebabNNTt5ihNQHUEGc8wuGoxoaCVjnxmbfQAMl6ELyYML1TC61+anv6QU5v83MLJTn
 iYNKJWfELv8cIQy684CBGpecFzs2Q/+wBC2p/JfU9WZkrUEziYti/2bmaAe+ry3+PfRE
 hG/7XOMMlOPGdVy+GjsgeALYwbsrxw0vpVu3cbppA68B/cY0Wm2QBbh5bI96K3jzJqDO
 IouoXDuWFpp/4KNdsj1yalOvAwMIDH0ThlZnB4zGt+s5A87Llv530d3dgfLi6ExdMvTA
 D5kPFE4KR6Nxj5evm2ELxIdotprKJDfZsCSG6G77bn8Lq57oiZZy/UNISg4x27nD87ye
 Kl3Q==
X-Gm-Message-State: APjAAAX/IZHUpj5Cu8mTa9Nw2kZQsc00sW8bVeM1iI9BprGj3QjvFHIc
 uy7SEC+4GIXSrWLgB0K8uAKI7Q==
X-Google-Smtp-Source: APXvYqxK/zt38rwIEroHa0npO4eL6VInoZD2zOOunp2BHmbhx4voiu0yBoCmi0QYU+qcMd3WMiO4Mg==
X-Received: by 2002:a7b:c94f:: with SMTP id i15mr11324006wml.31.1571470309026; 
 Sat, 19 Oct 2019 00:31:49 -0700 (PDT)
Received: from dell ([95.149.164.96])
 by smtp.gmail.com with ESMTPSA id t10sm10005418wrw.23.2019.10.19.00.31.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 19 Oct 2019 00:31:48 -0700 (PDT)
Date: Sat, 19 Oct 2019 08:31:45 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [PATCH 1/2] mfd: mfd-core: Allocate reference counting memory
 directly to the platform device
Message-ID: <20191019073145.GY4365@dell>
References: <20191018122647.3849-1-lee.jones@linaro.org>
 <20191018122647.3849-2-lee.jones@linaro.org>
 <20191018160419.rm2ogvh3k3jdx3tn@holly.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018160419.rm2ogvh3k3jdx3tn@holly.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_003151_085684_CCC85067 
X-CRM114-Status: GOOD (  24.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxOCBPY3QgMjAxOSwgRGFuaWVsIFRob21wc29uIHdyb3RlOgoKPiBPbiBGcmksIE9j
dCAxOCwgMjAxOSBhdCAwMToyNjo0NlBNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBNRkQg
cHJvdmlkZXMgcmVmZXJlbmNlIGNvdW50aW5nIChmb3IgdGhlIDIgY29uc3VtZXJzIHdobyBhY3R1
YWxseSB1c2UgaXQhKQo+ID4gdmlhIG1mZF9jZWxsJ3MgJ3VzYWdlX2NvdW50JyBtZW1iZXIuICBI
b3dldmVyLCBzaW5jZSBNRkQgY2VsbHMgYmVjb21lCj4gPiByZWFkLW9ubHkgKGNvbnN0KSwgTUZE
IG5lZWRzIHRvIGFsbG9jYXRlIHdyaXRhYmxlIG1lbW9yeSBhbmQgYXNzaWduIGl0IHRvCj4gPiAn
dXNhZ2VfY291bnQnIGJlZm9yZSBmaXJzdCByZWdpc3RyYXRpb24uICBJdCBjdXJyZW50bHkgZG9l
cyB0aGlzIGJ5Cj4gPiBhbGxvY2F0aW5nIGVub3VnaCBtZW1vcnkgZm9yIGFsbCByZXF1ZXN0ZWQg
Y2hpbGQgZGV2aWNlcyAoeWVzLCBldmVuIGRpc2FibGVkCj4gPiBvbmVzIC0gYnV0IHdlJ2xsIGdl
dCB0byB0aGF0KSBhbmQgYXNzaWduaW5nIHRoZSBiYXNlIHBvaW50ZXIgcGx1cyBzdWItZGV2aWNl
Cj4gPiBpbmRleCB0byBlYWNoIGRldmljZSBpbiB0aGUgY2VsbC4KPiA+IAo+ID4gVGhlIGRpZmZp
Y3VsdHkgY29tZXMgd2hlbiB0cnlpbmcgdG8gZnJlZSB0aGF0IG1lbW9yeS4gIER1cmluZyB0aGUg
cmVtb3ZhbCBvZgo+ID4gdGhlIHBhcmVudCBkZXZpY2UsIE1GRCB1bnJlZ2lzdGVycyBlYWNoIGNo
aWxkIGRldmljZSwga2VlcGluZyBhIHRhbGx5IG9uIHRoZQo+ID4gbG93ZXN0IG1lbW9yeSBsb2Nh
dGlvbiBwb2ludGVkIHRvIGJ5IGEgY2hpbGQgZGV2aWNlJ3MgJ3VzYWdlX2NvdW50Jy4gIE9uY2UK
PiA+IGFsbCBvZiB0aGUgY2hpbGRyZW4gYXJlIHVucmVnaXN0ZXJlZCwgdGhlIGxvd2VzdCBtZW1v
cnkgbG9jYXRpb24gbXVzdCBiZSB0aGUKPiA+IGJhc2UgYWRkcmVzcyBvZiB0aGUgcHJldmlvdXNs
eSBhbGxvY2F0ZWQgYXJyYXksIHJpZ2h0Pwo+ID4gCj4gPiBXZWxsIHllcywgdW50aWwgd2UgdHJ5
IHRvIGhvbm91ciB0aGUgZGlzYWJsaW5nIG9mIGRldmljZXMgdmlhIERldmljZSBUcmVlCj4gPiBm
b3IgaW5zdGFuY2UuICBJZiB0aGUgZmlyc3QgY2hpbGQgZGV2aWNlIGluIHRoZSBwcm92aWRlZCBi
YXRjaCBpcyBkaXNhYmxlZCwKPiA+IHNpbXBseSBza2lwcGluZyByZWdpc3RyYXRpb24gKGFuZCBj
b25zZXF1ZW50aWFsbHkgZGVyZWdpc3RyYXRpb24pIHdpbGwgbWVhbgo+ID4gdGhhdCB0aGUgZmly
c3QgZGV2aWNlJ3MgJ3VzYWdlX2NvdW50JyBwb2ludGVyIHdpbGwgbm90IGJlIGFjY291bnRlZCBm
b3Igd2hlbgo+ID4gYXR0ZW1wdGluZyB0byBmaW5kIHRoZSBiYXNlLiAgSW4gd2hpY2ggY2FzZSwg
TUZEIHdpbGwgYXNzdW1lIHRoZSBmaXJzdCBub24tCj4gPiBkaXNhYmxlZCAndXNhZ2VfY291bnQn
IHBvaW50ZXIgaXMgdGhlIGJhc2UgYW5kIHN1YnNlcXVlbnRseSBhdHRlbXB0IHRvCj4gPiBlcnJv
bmVvdXNseSBmcmVlIGl0Lgo+ID4gCj4gPiBXZSBjYW4gYXZvaWQgYWxsIG9mIHRoaXMgaG9vcCBq
dW1waW5nIGJ5IHNpbXBseSBhbGxvY2F0aW5nIG1lbW9yeSB0byBlYWNoCj4gPiBzaW5nbGUgY2hp
bGQgZGV2aWNlIGJlZm9yZSBpdCBpcyBjb25zaWRlcmVkIHJlYWQtb25seS4gIFdlIGNhbiB0aGVu
IGZyZWUKPiA+IGl0IG9uIGEgcGVyLWRldmljZSBiYXNpcyBkdXJpbmcgZGVyZWdpc3RyYXRpb24u
Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+
Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL21mZC9tZmQtY29yZS5jIHwgNDIgKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2Vy
dGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZmQvbWZkLWNvcmUuYyBiL2RyaXZlcnMvbWZkL21mZC1jb3JlLmMKPiA+IGluZGV4IDIzMjc2YTgw
ZTNiNC4uZWFmZGFkZDU4ZThiIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZmQvbWZkLWNvcmUu
Ywo+ID4gKysrIGIvZHJpdmVycy9tZmQvbWZkLWNvcmUuYwo+ID4gQEAgLTQwNCw3ICszOTgsNyBA
QCBpbnQgbWZkX2Nsb25lX2NlbGwoY29uc3QgY2hhciAqY2VsbCwgY29uc3QgY2hhciAqKmNsb25l
cywgc2l6ZV90IG5fY2xvbmVzKQo+ID4gIAkJY2VsbF9lbnRyeS5uYW1lID0gY2xvbmVzW2ldOwo+
ID4gIAkJLyogZG9uJ3QgZ2l2ZSB1cCBpZiBhIHNpbmdsZSBjYWxsIGZhaWxzOyBqdXN0IHJlcG9y
dCBlcnJvciAqLwo+ID4gIAkJaWYgKG1mZF9hZGRfZGV2aWNlKHBkZXYtPmRldi5wYXJlbnQsIC0x
LCAmY2VsbF9lbnRyeSwKPiA+IC0JCQkJICAgY2VsbF9lbnRyeS51c2FnZV9jb3VudCwgTlVMTCwg
MCwgTlVMTCkpCj4gPiArCQkJCSAgIE5VTEwsIDAsIE5VTEwpKQo+IAo+IEkgdGhpbmsgdGhpcyBj
aGFuZ2UgaXMgYnJva2VuLgo+IAo+IENsb25lZCBjZWxscyBhcmUgc3VwcG9zZWQgdG8gc2hhcmUg
dGhlIHNhbWUgcmVmZXJlbmNlIGNvdW50ZXIgYXMgdGhlaXIKPiB0ZW1wbGF0ZSBhbmQgdGhpcyBj
aGFuZ2UgcmVzdWx0cyBpbiBlYWNoIGNsb25lIGhhdmluZyBpdHMgb3duIGNvdW50ZXIuCj4gVGhh
dCBtZWFucyB0aGUgInRoZSAyIGNvbnN1bWVycyB3aG8gYWN0dWFsbHkgdXNlIGl0IiB3aWxsIGJv
dGggZW5kIHVwCj4gY2FsbGluZyBjczU1MzVfbWZkX3Jlc19lbmFibGUoKSAoYW5kIHdoaWNoZXZl
ciBsb3NlcyB0aGUgcmFjZSB3aWxsIGZhaWwKPiB0byBwcm9iZSkuCj4gCj4gVG8gYmUgaG9uZXN0
IGl0IG1pZ2h0IGJlIGVhc2llciB0byBtb3ZlIHRoZSByZXF1ZXN0X3JlZ2lvbigpIGludG8KPiBj
czU1MzVfbWZkX3Byb2JlKCkgYW5kIHJpcCBvdXQgdGhlIGVudGlyZSByZWZlcmVuY2UgY291bnRp
bmcgbWVjaGFuaXNtCj4gc2luY2UgYXQgdGhhdCBwb2ludCBpdCB3b3VsZCBiZSB1bnVzZWQgKHRo
ZSBvdGhlciBjYWxsZXJzIG9mCj4gbWZkX2NlbGxfZW5hYmxlKCkgbG9vayBzYWZlIHcvbyBhIGNv
dW50ZXIpLgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LiAgR3JlYXQgcG9pbnQocykuCgpJIHdpbGwg
Zml4IHRoaXMgYW5kIHN1Ym1pdCBhIHYyIHNob3J0bHkuCgo+ID4gIAkJCWRldl9lcnIoZGV2LCAi
ZmFpbGVkIHRvIGNyZWF0ZSBwbGF0Zm9ybSBkZXZpY2UgJyVzJ1xuIiwKPiA+ICAJCQkJCWNsb25l
c1tpXSk7Cj4gPiAgCX0KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2Vz
IFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
