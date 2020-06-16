Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D95C1FBD88
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 20:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwBwiTZzJ6gzr8T06rZNArPYREDV+x7lI4vJ/gnkFHo=; b=HbRoCmOMCDUoxI
	MboiqUpFQ8ehGQtjTF1XDUh4tMSGVDHynu1snXGIAGLf/lFW9xaMVNkPPSEr/npLrTPEgpCCSrqQp
	gM4OaGC+MsxxP/9VIyNNu6wftMoO2OtdtObJXqVUOz8C3I8NLgeneuFvB+djT3gHmef7SDGi0tIs0
	VYyEy/EdQ0iBGRlCfvqbqYnyuDJb5yDX1vdUEOyHGzsO2Y78ZbwdscOIP1kba5J8bRICM7sVleMU4
	XZtyXtSF5fEKywWpYP4UFPgBjftrMY0Azw9j3Picm12SscmM8UMDUCG99TMgSvVE+7mhDOYPwh9Ut
	L91FAT5DQYXqt0oXei3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFyt-00068A-MC; Tue, 16 Jun 2020 18:06:43 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFym-00067m-8z
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 18:06:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id r15so4042703wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 11:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=DD5dv8f3kbS4Lt6FjLNiFQNU5uypKmgKX/iJRJKhHaM=;
 b=eT5JoBPmlEEug8g/fyjqCQbvQKEJ4ldNTIZpxKXGyAebvYJGP+81qbkB4D1UlEmjgr
 8hsH37MxYG7dKz1ObKDQqwiYk/Pfb1CpjH4jwvZ8fvbw3FsodkpnvFW9UcqjKvonV0tB
 58r0xFFBYSGUt7qwHBJ+TLFFD/bY4kagEQjAjaHmqp5exN14llZiXeXQC9Nq2NriSphm
 7ZH/4Sk2mnfmYWsQ+/9xrB5z4Rd/7PWTmKOXl/DLMOigO0XQEUjRQr5bWRdP4NvnghQw
 7iD6DXgy2S6Z6d/qdMss+ESAlnhmxoAiDEY4qZFonRK29JGWf2KYS1izxkfkuwOEj3kJ
 0jOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=DD5dv8f3kbS4Lt6FjLNiFQNU5uypKmgKX/iJRJKhHaM=;
 b=HmW+MMyzB554bZ26rakSVrSCXJE871g/retMgpFzviso9QGBZj20oYbzDi5u2eY2Fo
 OD1C4KbKLZfAWpcacLTKx/c+aIpjnZGfMuSJcEptnvVGG9LlT3aNgTN/FEnvsGVYz7xL
 xNHQI7831lU/fa/qs4IGhE9d9FyF2SjjA4GS+nacrfK7wOsroNCN9UFXBvPjg9DRJIJy
 9hBvETbl+9xymAan5teC5DwCSAtnUW3abtotxKoCog9irJt+KAqTj7JvhRoBKHS7ScQ1
 0t7YMfyKGXmC5HXaoFAUhivUKp+OEPK+GoPygpZVTV8rvkfEB/Kn9mxXR93M/ps088ao
 J2vg==
X-Gm-Message-State: AOAM533vtpTztfFG7et+pPhN0Jc8n8I6InBDsIhhHhWT4htUwfrX+oqq
 Hz7DmgeobVcFVW32Cv8K4q4DiQ==
X-Google-Smtp-Source: ABdhPJw93jYh2fDrrn5QAqAe0usYGtqFaCWsXtyifWngNyIbvPjUJK1dkZLsoWLC0nptVjlSQ7PPSQ==
X-Received: by 2002:a7b:c0cc:: with SMTP id s12mr4605287wmh.111.1592330794362; 
 Tue, 16 Jun 2020 11:06:34 -0700 (PDT)
Received: from dell ([2.27.167.65])
 by smtp.gmail.com with ESMTPSA id v66sm5288274wme.13.2020.06.16.11.06.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 11:06:33 -0700 (PDT)
Date: Tue, 16 Jun 2020 19:06:32 +0100
From: Lee Jones <lee.jones@linaro.org>
To: michael@walle.cc, robh+dt@kernel.org, broonie@kernel.org,
 gregkh@linuxfoundation.org, andriy.shevchenko@linux.intel.com,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, arnd@arndb.de
Subject: Re: [PATCH 1/1] mfd: Add I2C based System Configuaration (SYSCON)
 access
Message-ID: <20200616180632.GT2608702@dell>
References: <20200616172904.373045-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616172904.373045-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_110636_348215_4AF9BAAD 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxNiBKdW4gMjAyMCwgTGVlIEpvbmVzIHdyb3RlOgoKPiBUaGUgZXhpc3RpbmcgU1lT
Q09OIGltcGxlbWVudGF0aW9uIG9ubHkgc3VwcG9ydHMgTU1JTyAobWVtb3J5IG1hcHBlZCkKPiBh
Y2Nlc3NlcywgZmFjaWxpdGF0ZWQgYnkgUmVnbWFwLiAgVGhpcyBleHRlbmRzIHN1cHBvcnQgZm9y
IHJlZ2lzdGVycwo+IGhlbGQgYmVoaW5kIEkyQyBidXNzZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTog
TGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9tZmQvS2Nv
bmZpZyAgICAgICAgICAgIHwgIDcgKysrCj4gIGRyaXZlcnMvbWZkL01ha2VmaWxlICAgICAgICAg
ICB8ICAxICsKPiAgZHJpdmVycy9tZmQvc3lzY29uLWkyYy5jICAgICAgIHwgODkgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9zeXNjb24taTJj
LmggfCAyNiArKysrKysrKysrCj4gIDQgZmlsZXMgY2hhbmdlZCwgMTIzIGluc2VydGlvbnMoKykK
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL3N5c2Nvbi1pMmMuYwo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQvc3lzY29uLWkyYy5oCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbWZkL0tjb25maWcgYi9kcml2ZXJzL21mZC9LY29uZmlnCj4gaW5kZXggMGE1
OTI0OTE5OGQzNC4uNjNhZTc4YjkyYjA4NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21mZC9LY29u
ZmlnCj4gKysrIGIvZHJpdmVycy9tZmQvS2NvbmZpZwo+IEBAIC0xMzAwLDYgKzEzMDAsMTMgQEAg
Y29uZmlnIE1GRF9TWVNDT04KPiAgCSAgU2VsZWN0IHRoaXMgb3B0aW9uIHRvIGVuYWJsZSBhY2Nl
c3Npbmcgc3lzdGVtIGNvbnRyb2wgcmVnaXN0ZXJzCj4gIAkgIHZpYSByZWdtYXAuCj4gIAo+ICtj
b25maWcgTUZEX1NZU0NPTl9JMkMKPiArCWJvb2wgIlN5c3RlbSBDb250cm9sbGVyIFJlZ2lzdGVy
IFIvVyBCYXNlZCBvbiBJMkMgUmVnbWFwIgo+ICsJc2VsZWN0IFJFR01BUF9JMkMKPiArCWhlbHAK
PiArCSAgU2VsZWN0IHRoaXMgb3B0aW9uIHRvIGVuYWJsZSBhY2Nlc3Npbmcgc3lzdGVtIGNvbnRy
b2wgcmVnaXN0ZXJzCj4gKwkgIHZpYSBJMkMgdXNpbmcgcmVnbWFwLgo+ICsKPiAgY29uZmlnIE1G
RF9EQVZJTkNJX1ZPSUNFQ09ERUMKPiAgCXRyaXN0YXRlCj4gIAlzZWxlY3QgTUZEX0NPUkUKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvTWFrZWZpbGUgYi9kcml2ZXJzL21mZC9NYWtlZmlsZQo+
IGluZGV4IGY5MzVkMTBjYmYwZmMuLjBhZWMxZjQyYWM5NzkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tZmQvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJzL21mZC9NYWtlZmlsZQo+IEBAIC0yMTksNiAr
MjE5LDcgQEAgb2JqLSQoQ09ORklHX01GRF9SSzgwOCkJCSs9IHJrODA4Lm8KPiAgb2JqLSQoQ09O
RklHX01GRF9STjVUNjE4KQkrPSBybjV0NjE4Lm8KPiAgb2JqLSQoQ09ORklHX01GRF9TRUNfQ09S
RSkJKz0gc2VjLWNvcmUubyBzZWMtaXJxLm8KPiAgb2JqLSQoQ09ORklHX01GRF9TWVNDT04pCSs9
IHN5c2Nvbi5vCj4gK29iai0kKENPTkZJR19NRkRfU1lTQ09OX0kyQykJKz0gc3lzY29uLWkyYy5v
Cj4gIG9iai0kKENPTkZJR19NRkRfTE0zNTMzKQkrPSBsbTM1MzMtY29yZS5vIGxtMzUzMy1jdHJs
YmFuay5vCj4gIG9iai0kKENPTkZJR19NRkRfVkVYUFJFU1NfU1lTUkVHKQkrPSB2ZXhwcmVzcy1z
eXNyZWcubwo+ICBvYmotJChDT05GSUdfTUZEX1JFVFUpCQkrPSByZXR1LW1mZC5vCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWZkL3N5c2Nvbi1pMmMuYyBiL2RyaXZlcnMvbWZkL3N5c2Nvbi1pMmMu
Ywo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uNDA0ZTU5NWQ3
NjQ2Ywo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL21mZC9zeXNjb24taTJjLmMKPiBA
QCAtMCwwICsxLDg5IEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9y
LWxhdGVyCj4gKy8qCj4gKyAqIFN5c3RlbSBDb250cm9sIERyaXZlciBhY2Nlc3NlZCBvdmVyIEky
Qwo+ICsgKgo+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjAgTGluYXJvIEx0ZC4KPiArICoKPiArICog
QXV0aG9yOiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+ICsgKi8KPiArCj4gKyNp
bmNsdWRlIDxsaW51eC9lcnIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2kyYy5oPgo+ICsjaW5jbHVk
ZSA8bGludXgvbGlzdC5oPgo+ICsjaW5jbHVkZSA8bGludXgvbWZkL3N5c2Nvbi1pMmMuaD4KPiAr
I2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+ICsKPiArc3RhdGljIERFRklORV9TUElOTE9DSyhz
eXNjb25faTJjX2xpc3Rfc2xvY2spOwo+ICtzdGF0aWMgTElTVF9IRUFEKHN5c2Nvbl9pMmNfbGlz
dCk7Cj4gKwo+ICtzdHJ1Y3Qgc3lzY29uIHsKPiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnA7CgpO
b3RlIHRvIHNlbGY6IHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQ7Cgo+ICsJc3RydWN0IHJlZ21h
cCAqcmVnbWFwOwo+ICsJc3RydWN0IGxpc3RfaGVhZCBsaXN0Owo+ICt9Owo+ICsKPiArc3RhdGlj
IGNvbnN0IHN0cnVjdCByZWdtYXBfY29uZmlnIHN5c2Nvbl9pMmNfcmVnbWFwX2NvbmZpZyA9IHsK
PiArCS5yZWdfYml0cyA9IDgsCj4gKwkudmFsX2JpdHMgPSA4LAo+ICt9Owo+ICsKPiArc3RhdGlj
IHN0cnVjdCBzeXNjb24gKm9mX3N5c2Nvbl9pMmNfcmVnaXN0ZXIoc3RydWN0IGkyY19jbGllbnQg
KmNsaWVudCkKPiArewo+ICsJc3RydWN0IHJlZ21hcF9jb25maWcgc3lzY29uX2NvbmZpZyA9IHN5
c2Nvbl9pMmNfcmVnbWFwX2NvbmZpZzsKPiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBjbGll
bnQtPmRldi5vZl9ub2RlOwo+ICsJc3RydWN0IHN5c2NvbiAqc3lzY29uOwo+ICsJc3RydWN0IHJl
Z21hcCAqcmVnbWFwOwo+ICsJaW50IHJldDsKPiArCj4gKwlzeXNjb24gPSBkZXZtX2t6YWxsb2Mo
JmNsaWVudC0+ZGV2LCBzaXplb2YoKnN5c2NvbiksIEdGUF9LRVJORUwpOwo+ICsJaWYgKCFzeXNj
b24pCj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4gKwo+ICsJc3lzY29uX2NvbmZpZy5u
YW1lID0gb2Zfbm9kZV9mdWxsX25hbWUobnApOwoKTm90ZSB0byBzZWxmOiBVc2UgZGV2X25hbWUo
KTsKCj4gKwlyZWdtYXAgPSBkZXZtX3JlZ21hcF9pbml0X2kyYyhjbGllbnQsICZzeXNjb25fY29u
ZmlnKTsKPiArCWlmIChJU19FUlIocmVnbWFwKSkgewo+ICsJCWRldl9lcnIoJmNsaWVudC0+ZGV2
LCAiRmFpbGVkIHRvIGluaXRpYWxpc2UgUmVnbWFwIEkyQ1xuIik7Cj4gKwkJcmV0ID0gUFRSX0VS
UihyZWdtYXApOwo+ICsJCXJldHVybiBFUlJfUFRSKHJldCk7Cj4gKwl9Cj4gKwo+ICsJc3lzY29u
LT5yZWdtYXAgPSByZWdtYXA7Cj4gKwlzeXNjb24tPm5wID0gbnA7Cj4gKwo+ICsJc3Bpbl9sb2Nr
KCZzeXNjb25faTJjX2xpc3Rfc2xvY2spOwo+ICsJbGlzdF9hZGRfdGFpbCgmc3lzY29uLT5saXN0
LCAmc3lzY29uX2kyY19saXN0KTsKPiArCXNwaW5fdW5sb2NrKCZzeXNjb25faTJjX2xpc3Rfc2xv
Y2spOwo+ICsKPiArCXJldHVybiBzeXNjb247Cj4gK30KPiArCj4gK3N0YXRpYyBzdHJ1Y3QgcmVn
bWFwICppMmNfZGV2aWNlX25vZGVfZ2V0X3JlZ21hcChzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50
KQoKTm90ZSB0byBzZWxmOiBpMmNfY2xpZW50X2dldF9yZWdtYXAoKQoKPiArewo+ICsJc3RydWN0
IGRldmljZV9ub2RlICpucCA9IGNsaWVudC0+ZGV2Lm9mX25vZGU7Cj4gKwlzdHJ1Y3Qgc3lzY29u
ICplbnRyeSwgKnN5c2NvbiA9IE5VTEw7Cj4gKwo+ICsJc3Bpbl9sb2NrKCZzeXNjb25faTJjX2xp
c3Rfc2xvY2spOwo+ICsKPiArCWxpc3RfZm9yX2VhY2hfZW50cnkoZW50cnksICZzeXNjb25faTJj
X2xpc3QsIGxpc3QpCj4gKwkJaWYgKGVudHJ5LT5ucCA9PSBucCkgewo+ICsJCQlzeXNjb24gPSBl
bnRyeTsKPiArCQkJYnJlYWs7Cj4gKwkJfQo+ICsKPiArCXNwaW5fdW5sb2NrKCZzeXNjb25faTJj
X2xpc3Rfc2xvY2spOwo+ICsKPiArCWlmICghc3lzY29uKQo+ICsJCXN5c2NvbiA9IG9mX3N5c2Nv
bl9pMmNfcmVnaXN0ZXIoY2xpZW50KTsKPiArCj4gKwlpZiAoSVNfRVJSKHN5c2NvbikpCj4gKwkJ
cmV0dXJuIEVSUl9DQVNUKHN5c2Nvbik7Cj4gKwo+ICsJcmV0dXJuIHN5c2Nvbi0+cmVnbWFwOwo+
ICt9Cj4gKwo+ICtzdHJ1Y3QgcmVnbWFwICppMmNfZGV2aWNlX25vZGVfdG9fcmVnbWFwKHN0cnVj
dCBpMmNfY2xpZW50ICpjbGllbnQpCgpOb3RlIHRvIHNlbGY6IGkyY19jbGllbnRfdG9fcmVnbWFw
KCkKCj4gK3sKPiArCXJldHVybiBpMmNfZGV2aWNlX25vZGVfZ2V0X3JlZ21hcChjbGllbnQpOwo+
ICt9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKGkyY19kZXZpY2Vfbm9kZV90b19yZWdtYXApOwo+IGRp
ZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21mZC9zeXNjb24taTJjLmggYi9pbmNsdWRlL2xpbnV4
L21mZC9zeXNjb24taTJjLmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAw
MDAwMDAuLjg1NGUzMTZmZWM5M2UKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvaW5jbHVkZS9saW51
eC9tZmQvc3lzY29uLWkyYy5oCj4gQEAgLTAsMCArMSwyNiBAQAo+ICsvKiBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlciAqLwo+ICsvKgo+ICsgKiBTeXN0ZW0gQ29udHJv
bCBEcml2ZXIgYWNjZXNzZWQgdmlhIEkyQwo+ICsgKgo+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjAg
TGluYXJvIEx0ZC4KPiArICoKPiArICogQXV0aG9yOiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPgo+ICsgKi8KPiArCj4gKyNpZm5kZWYgX19MSU5VWF9NRkRfU1lTQ09OX0kyQ19IX18K
PiArI2RlZmluZSBfX0xJTlVYX01GRF9TWVNDT05fSTJDX0hfXwo+ICsKPiArI2luY2x1ZGUgPGxp
bnV4L2Vyci5oPgo+ICsjaW5jbHVkZSA8bGludXgvZXJybm8uaD4KPiArI2luY2x1ZGUgPGxpbnV4
L2kyYy5oPgo+ICsKPiArI2lmZGVmIENPTkZJR19NRkRfU1lTQ09OX0kyQwo+ICtleHRlcm4gc3Ry
dWN0IHJlZ21hcCAqaTJjX2RldmljZV9ub2RlX3RvX3JlZ21hcChzdHJ1Y3QgaTJjX2NsaWVudCAq
Y2xpZW50KTsKPiArI2Vsc2UKPiArc3RhdGljIGlubGluZSBzdHJ1Y3QgcmVnbWFwICppMmNfZGV2
aWNlX25vZGVfdG9fcmVnbWFwKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4gK3sKPiArCXJl
dHVybiBFUlJfUFRSKC1FTk9UU1VQUCk7Cj4gK30KPiArI2VuZGlmCj4gKwo+ICsjZW5kaWYgLyog
X19MSU5VWF9NRkRfU1lTQ09OX0kyQ19IX18gKi8KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10K
U2VuaW9yIFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSC
IE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9v
ayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
