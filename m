Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3340173FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 10:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3Qov+folAIcidY2as1rzHKxi1kxEZ3gZWdi2sEHXgM=; b=sQg7JLfGALfQWf
	1cjjIeiM2FXhCulJDguFKjlvCkcLp/Gtl1Q9ODyIjeqNyLGjksuZ/jNzMZx1GpeeAQcZUOD7aLZ3F
	z2fgJ2wt7Tcy0ZDO7W4dUXS80QQFJreeSngwV5yf+QQqZRynZJwvCaLq0O6Fm/b2cym7VRwTCgPX0
	3r5li48qzqPrvccq1j+164Q65+6N/4+yaI7nmDp4URz0uIHn5xrVaWXGHdWizGZ2zxT7FyB5+fNty
	5s6m2ycBS/QLCanTQDwlUV/ZgJvkwZT6NeQg2G3G8Ndx8W1p3DK0gBx3503oX6zefD/aW9qh/u/AU
	gvexShjx7VdlK5hBA9nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOI44-0003EN-16; Wed, 08 May 2019 08:36:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOI3v-0003DW-U0
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 08:36:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id r4so10713663wro.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 01:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ejPFMkOH4nB71JZvtpUtWYEnESDbhR46KwiTRhKlpYY=;
 b=UjCs3Hs1A1TJz4DrCCO/HqxUmNOfQ6FSRZ6sFMN9YJDCePqd/HmwzWjhu7RpcoJwz+
 /JrIpB2YpWQew4DEl2ZtyDTQjS8b/+zlowtBmkd+OIAOQ3YcIle1pp7r2vJu3NmKNc0j
 hVlTGg1hIBxDH6ycl5Hk/z3g0ZOC2iW/6nMd7KkivdoOe+9V0ZxuREZtObMxQE46caxV
 k4SmJQGioYFNyG/icUmOgrVLKM6fCbZq62FFRVi7YLE9GyK7MF2HL0nYaTMrbVyL8epH
 3IUgVewddBCo5bPUl6gEqxyJDSBF1f1gO38Cqgao1xyAVsrS+ReMQk36AoEMtQFXKd3N
 daPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ejPFMkOH4nB71JZvtpUtWYEnESDbhR46KwiTRhKlpYY=;
 b=LV0GyzMguSJ4yLrY1zjtDc0PBZMfNv5yjF5NOxc5iICywzHsVl89m2zbE1e1qSNnou
 MHh/uwbgZUzpAFZ/YW61FruJfxYoQznfmKHfCtuUFLp6qzSgg+WrngNOgzAE6+IvJl8z
 rSs6nppYyhF06JcfKPvLBSjV27F2tMblUgpIC/M6kS12Cpod7gB1t/4tHr1SGsZVd8hu
 aL37iDg7twaEG9IhGYfkAbtG+todv32CSrYhkgihdRlo+Er5UD+Xc58IZb1hGJ7o6P89
 /6CM3hY8f/ydRhjt4qOUjE1iBz3rYTdmQdF0YJe/37UJ+w8La0ytP407ex5afYNPm3Lp
 HTwQ==
X-Gm-Message-State: APjAAAUh+S+fIjaaA/87zW5mpA+o3iBlvxPBMuytEbX6hqvsKj+QOQvE
 J9zdsIns2BPtUUvWrGpR0AosLg==
X-Google-Smtp-Source: APXvYqwlWje+MSQTBFRqBzBoroHEdoXKAKxsvLDPUcZCTX9f2N+4cHc99gR6xe83PLsRey3KS/pjTw==
X-Received: by 2002:adf:eb87:: with SMTP id t7mr19904084wrn.39.1557304585426; 
 Wed, 08 May 2019 01:36:25 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id r9sm7673925wrj.57.2019.05.08.01.36.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 01:36:24 -0700 (PDT)
Date: Wed, 8 May 2019 09:36:22 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH v5 2/9] mfd: Add ST Multi-Function eXpander (STMFX) core
 driver
Message-ID: <20190508083622.GE3995@dell>
References: <1554794651-6874-1-git-send-email-amelie.delaunay@st.com>
 <1554794651-6874-3-git-send-email-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1554794651-6874-3-git-send-email-amelie.delaunay@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_013627_977904_E71D6D23 
X-CRM114-Status: GOOD (  25.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwOSBBcHIgMjAxOSwgQW1lbGllIERlbGF1bmF5IHdyb3RlOgoKPiBTVE1pY3JvZWxl
Y3Ryb25pY3MgTXVsdGktRnVuY3Rpb24gZVhwYW5kZXIgKFNUTUZYKSBpcyBhIHNsYXZlIGNvbnRy
b2xsZXIKPiB1c2luZyBJMkMgZm9yIGNvbW11bmljYXRpb24gd2l0aCB0aGUgbWFpbiBNQ1UuIE1h
aW4gZmVhdHVyZXMgYXJlOgo+IC0gMTYgZmFzdCBHUElPcyBpbmRpdmlkdWFsbHkgY29uZmlndXJh
YmxlIGluIGlucHV0L291dHB1dAo+IC0gOCBhbHRlcm5hdGUgR1BJT3MgaW5kaXZpZHVhbGx5IGNv
bmZpZ3VyYWJsZSBpbiBpbnB1dC9vdXRwdXQgd2hlbiBvdGhlcgo+IFNUTUZYIGZ1bmN0aW9ucyBh
cmUgbm90IHVzZWQKPiAtIE1haW4gTUNVIElERCBtZWFzdXJlbWVudAo+IC0gUmVzaXN0aXZlIHRv
dWNoc2NyZWVuIGNvbnRyb2xsZXIKPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbWVsaWUgRGVsYXVuYXkg
PGFtZWxpZS5kZWxhdW5heUBzdC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAg
ICAgfCAgMTMgKysKPiAgZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICB8ICAgMiArLQo+ICBkcml2
ZXJzL21mZC9zdG1meC5jICAgICAgIHwgNTY2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9tZmQvc3RtZnguaCB8IDEyMyArKysr
KysrKysrCj4gIDQgZmlsZXMgY2hhbmdlZCwgNzAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL3N0bWZ4LmMKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL3N0bWZ4LmgKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tZmQvS2NvbmZpZyBiL2RyaXZlcnMvbWZkL0tjb25maWcKPiBpbmRleCAzNDQzZjFhLi45
NzgzZTE4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWZkL0tjb25maWcKPiArKysgYi9kcml2ZXJz
L21mZC9LY29uZmlnCj4gQEAgLTE5MDcsNiArMTkwNywxOSBAQCBjb25maWcgTUZEX1NUUE1JQzEK
PiAgCSAgVG8gY29tcGlsZSB0aGlzIGRyaXZlciBhcyBhIG1vZHVsZSwgY2hvb3NlIE0gaGVyZTog
dGhlCj4gIAkgIG1vZHVsZSB3aWxsIGJlIGNhbGxlZCBzdHBtaWMxLgo+ICAKPiArY29uZmlnIE1G
RF9TVE1GWAo+ICsJdHJpc3RhdGUgIlN1cHBvcnQgZm9yIFNUTWljcm9lbGVjdHJvbmljcyBNdWx0
aS1GdW5jdGlvbiBlWHBhbmRlciAoU1RNRlgpIgo+ICsJZGVwZW5kcyBvbiBJMkMKPiArCWRlcGVu
ZHMgb24gT0YgfHwgQ09NUElMRV9URVNUCj4gKwlzZWxlY3QgTUZEX0NPUkUKPiArCXNlbGVjdCBS
RUdNQVBfSTJDCj4gKwloZWxwCj4gKwkgIFN1cHBvcnQgZm9yIHRoZSBTVE1pY3JvZWxlY3Ryb25p
Y3MgTXVsdGktRnVuY3Rpb24gZVhwYW5kZXIuCj4gKwo+ICsJICBUaGlzIGRyaXZlciBwcm92aWRl
cyBjb21tb24gc3VwcG9ydCBmb3IgYWNjZXNzaW5nIHRoZSBkZXZpY2UsCj4gKwkgIGFkZGl0aW9u
YWwgZHJpdmVycyBtdXN0IGJlIGVuYWJsZWQgaW4gb3JkZXIgdG8gdXNlIHRoZSBmdW5jdGlvbmFs
aXR5Cj4gKwkgIG9mIHRoZSBkZXZpY2UuCj4gKwo+ICBtZW51ICJNdWx0aW1lZGlhIENhcGFiaWxp
dGllcyBQb3J0IGRyaXZlcnMiCj4gIAlkZXBlbmRzIG9uIEFSQ0hfU0ExMTAwCj4gIAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21mZC9NYWtlZmlsZSBiL2RyaXZlcnMvbWZkL01ha2VmaWxlCj4gaW5k
ZXggYjQ1NjllZDcuLjYxNGVlYTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZmQvTWFrZWZpbGUK
PiArKysgYi9kcml2ZXJzL21mZC9NYWtlZmlsZQo+IEBAIC0yNDYsNCArMjQ2LDQgQEAgb2JqLSQo
Q09ORklHX01GRF9NWFNfTFJBREMpICAgICArPSBteHMtbHJhZGMubwo+ICBvYmotJChDT05GSUdf
TUZEX1NDMjdYWF9QTUlDKQkrPSBzcHJkLXNjMjd4eC1zcGkubwo+ICBvYmotJChDT05GSUdfUkFW
RV9TUF9DT1JFKQkrPSByYXZlLXNwLm8KPiAgb2JqLSQoQ09ORklHX01GRF9ST0hNX0JENzE4WFgp
CSs9IHJvaG0tYmQ3MTh4Ny5vCj4gLQo+ICtvYmotJChDT05GSUdfTUZEX1NUTUZYKSAJKz0gc3Rt
Zngubwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9zdG1meC5jIGIvZHJpdmVycy9tZmQvc3Rt
ZnguYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMC4uNTlmMGEwMwo+IC0t
LSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL21mZC9zdG1meC5jCj4gQEAgLTAsMCArMSw1NjYg
QEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiArLyoKPiArICogRHJp
dmVyIGZvciBTVE1pY3JvZWxlY3Ryb25pY3MgTXVsdGktRnVuY3Rpb24gZVhwYW5kZXIgKFNUTUZY
KSBjb3JlCj4gKyAqCj4gKyAqIENvcHlyaWdodCAoQykgMjAxOSBTVE1pY3JvZWxlY3Ryb25pY3MK
PiArICogQXV0aG9yKHMpOiBBbWVsaWUgRGVsYXVuYXkgPGFtZWxpZS5kZWxhdW5heUBzdC5jb20+
Lgo+ICsgKi8KPiArI2luY2x1ZGUgPGxpbnV4L2JpdGZpZWxkLmg+Cj4gKyNpbmNsdWRlIDxsaW51
eC9pMmMuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgo+ICsjaW5jbHVkZSA8bGlu
dXgvaXJxLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tZmQvY29yZS5oPgo+ICsjaW5jbHVkZSA8bGlu
dXgvbWZkL3N0bWZ4Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiArI2luY2x1ZGUg
PGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPgoKWy4uLl0KCj4gK3N0YXRpYyBpbnQgc3RtZnhf
Y2hpcF9pbml0KHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4gK3sKPiArCXN0cnVjdCBzdG1m
eCAqc3RtZnggPSBpMmNfZ2V0X2NsaWVudGRhdGEoY2xpZW50KTsKPiArCXUzMiBpZDsKPiArCXU4
IHZlcnNpb25bMl07Cj4gKwlpbnQgcmV0Owo+ICsKPiArCXN0bWZ4LT52ZGQgPSBkZXZtX3JlZ3Vs
YXRvcl9nZXRfb3B0aW9uYWwoJmNsaWVudC0+ZGV2LCAidmRkIik7Cj4gKwlpZiAoSVNfRVJSKHN0
bWZ4LT52ZGQpKSB7Cj4gKwkJcmV0ID0gUFRSX0VSUihzdG1meC0+dmRkKTsKPiArCQlpZiAocmV0
ICE9IC1FTk9ERVYpIHsKPiArCQkJaWYgKHJldCAhPSAtRVBST0JFX0RFRkVSKQo+ICsJCQkJZGV2
X2VycigmY2xpZW50LT5kZXYsCj4gKwkJCQkJIkNhbid0IGdldCBWREQgcmVndWxhdG9yOiVkXG4i
LCByZXQpOwo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJCX0KCkFueSByZWFzb24geW91J3ZlIGRlY2lk
ZWQgdG8gc3RpY2sgd2l0aCB0aGlzIDMtbGF5ZXIgbmVzdGVkIGlmIGluc3RlYWQKb2YgZ29pbmcg
d2l0aCBteSBzdWdnZXN0aW9uPwoKPiArCX0gZWxzZSB7Cj4gKwkJcmV0ID0gcmVndWxhdG9yX2Vu
YWJsZShzdG1meC0+dmRkKTsKPiArCQlpZiAocmV0KSB7Cj4gKwkJCWRldl9lcnIoJmNsaWVudC0+
ZGV2LCAiVkREIGVuYWJsZSBmYWlsZWQ6ICVkXG4iLCByZXQpOwo+ICsJCQlyZXR1cm4gcmV0Owo+
ICsJCX0KPiArCX0KClsuLi5dCgo+ICsjaWZkZWYgQ09ORklHX1BNX1NMRUVQCj4gK3N0YXRpYyBp
bnQgc3RtZnhfYmFja3VwX3JlZ3Moc3RydWN0IHN0bWZ4ICpzdG1meCkKPiArewo+ICsJaW50IHJl
dDsKPiArCj4gKwlyZXQgPSByZWdtYXBfcmF3X3JlYWQoc3RtZngtPm1hcCwgU1RNRlhfUkVHX1NZ
U19DVFJMLAo+ICsJCQkgICAgICAmc3RtZngtPmJrcF9zeXNjdHJsLCBzaXplb2Yoc3RtZngtPmJr
cF9zeXNjdHJsKSk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7Cj4gKwo+ICsJcmV0ID0g
cmVnbWFwX3Jhd19yZWFkKHN0bWZ4LT5tYXAsIFNUTUZYX1JFR19JUlFfT1VUX1BJTiwKPiArCQkJ
ICAgICAgJnN0bWZ4LT5ia3BfaXJxb3V0cGluLAo+ICsJCQkgICAgICBzaXplb2Yoc3RtZngtPmJr
cF9pcnFvdXRwaW4pKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4gKwlyZXR1
cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBzdG1meF9yZXN0b3JlX3JlZ3Moc3RydWN0IHN0
bWZ4ICpzdG1meCkKPiArewo+ICsJaW50IHJldDsKPiArCj4gKwlyZXQgPSByZWdtYXBfcmF3X3dy
aXRlKHN0bWZ4LT5tYXAsIFNUTUZYX1JFR19TWVNfQ1RSTCwKPiArCQkJICAgICAgICZzdG1meC0+
YmtwX3N5c2N0cmwsIHNpemVvZihzdG1meC0+YmtwX3N5c2N0cmwpKTsKPiArCWlmIChyZXQpCj4g
KwkJcmV0dXJuIHJldDsKPiArCj4gKwlyZXQgPSByZWdtYXBfcmF3X3dyaXRlKHN0bWZ4LT5tYXAs
IFNUTUZYX1JFR19JUlFfT1VUX1BJTiwKPiArCQkJICAgICAgICZzdG1meC0+YmtwX2lycW91dHBp
biwKPiArCQkJICAgICAgIHNpemVvZihzdG1meC0+YmtwX2lycW91dHBpbikpOwo+ICsJaWYgKHJl
dCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiArCXJldCA9IHJlZ21hcF9yYXdfd3JpdGUoc3RtZngt
Pm1hcCwgU1RNRlhfUkVHX0lSUV9TUkNfRU4sCj4gKwkJCSAgICAgICAmc3RtZngtPmlycV9zcmMs
IHNpemVvZihzdG1meC0+aXJxX3NyYykpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+
ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IHN0bWZ4X3N1c3BlbmQoc3Ry
dWN0IGRldmljZSAqZGV2KQo+ICt7Cj4gKwlzdHJ1Y3Qgc3RtZnggKnN0bWZ4ID0gZGV2X2dldF9k
cnZkYXRhKGRldik7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCXJldCA9IHN0bWZ4X2JhY2t1cF9yZWdz
KHN0bWZ4KTsKPiArCWlmIChyZXQpIHsKPiArCQlkZXZfZXJyKHN0bWZ4LT5kZXYsICJSZWdpc3Rl
cnMgYmFja3VwIGZhaWx1cmVcbiIpOwo+ICsJCXJldHVybiByZXQ7Cj4gKwl9CgpUaGlzIGRvZXNu
J3QgbmVlZCB0byBiZSBhbiBleHRyYSBmdW5jdGlvbi4gIFlvdSdyZSBqdXN0IGFkZGluZyBtb3Jl
CmxpbmVzIG9mIGNvZGUgZm9yIG5vIHJlYWwgZ2FpbiBpbiByZXVzYWJpbGl0eS9yZWFkYWJpbGl0
eS4KCj4gKwlpZiAoIUlTX0VSUihzdG1meC0+dmRkKSkgewo+ICsJCXJldCA9IHJlZ3VsYXRvcl9k
aXNhYmxlKHN0bWZ4LT52ZGQpOwo+ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiByZXQ7Cj4gKwl9
Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgc3RtZnhfcmVzdW1lKHN0
cnVjdCBkZXZpY2UgKmRldikKPiArewo+ICsJc3RydWN0IHN0bWZ4ICpzdG1meCA9IGRldl9nZXRf
ZHJ2ZGF0YShkZXYpOwo+ICsJaW50IHJldDsKPiArCj4gKwlpZiAoIUlTX0VSUihzdG1meC0+dmRk
KSkgewo+ICsJCXJldCA9IHJlZ3VsYXRvcl9lbmFibGUoc3RtZngtPnZkZCk7Cj4gKwkJaWYgKHJl
dCkgewo+ICsJCQlkZXZfZXJyKHN0bWZ4LT5kZXYsCj4gKwkJCQkiVkREIGVuYWJsZSBmYWlsZWQ6
ICVkXG4iLCByZXQpOwo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJCX0KPiArCX0KPiArCj4gKwlyZXQg
PSBzdG1meF9yZXN0b3JlX3JlZ3Moc3RtZngpOwo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIo
c3RtZngtPmRldiwgIlJlZ2lzdGVycyByZXN0b3JhdGlvbiBmYWlsdXJlXG4iKTsKPiArCQlyZXR1
cm4gcmV0Owo+ICsJfQoKVGhpcyBkb2Vzbid0IG5lZWQgdG8gYmUgYW4gZXh0cmEgZnVuY3Rpb24u
ICBZb3UncmUganVzdCBhZGRpbmcgbW9yZQpsaW5lcyBvZiBjb2RlIGZvciBubyByZWFsIGdhaW4g
aW4gcmV1c2FiaWxpdHkvcmVhZGFiaWxpdHkuCgo+ICsJcmV0dXJuIDA7Cj4gK30KPiArI2VuZGlm
CgpbLi4uXQoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5p
Y2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0Nz
CkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
