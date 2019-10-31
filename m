Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F7FEB38C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 16:11:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBHpFQnHa2DG5/WyfLj0zLm9yhxt8tgvATACP8WQvLk=; b=pTr1v8wRfSXkmI
	p3V0M4K2fuNyQClmolW4OuL29HOyEhj1eqAp5G+Gg1VngD4JsYlraqiuhsIzQE4IczZca7rpAPvAs
	JGOK2xRYbJHZ4G4zS3GemcmJ2RRCmcqaZJP6ge0qAObHFwYJViuznFEOLG/SCDi2hkI6YVOGP/ntD
	z9i3lyEXhxzUl8J6m06TS/5KfWDPgmEq1RAmIgAKoBKcpW3Utvd/BpZI6gxAUaBs7GmuXNEi5b+Xa
	UMhf/nDo8h0CsducCW0YCF/ito3vdfm32ELOtoGTXyr9ErJ3d6J+HyVzvIKaYhwuPDzdc6M+tKue7
	FuVjM4mFQjH5GC5XdrVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQC71-00011e-R4; Thu, 31 Oct 2019 15:11:47 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQC6t-00010L-NC
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 15:11:41 +0000
Received: by mail-lj1-x242.google.com with SMTP id y3so7033132ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 08:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=r0+SnsUBrU036ki/u9zXA8lU9FLF8N+QpK3TWylHn0Q=;
 b=fyHdS+HJpockD668OHkgA5XWU4kJhvi09lJzp4Lmn0gj9ww3frs6YizoKFUG7/q5s5
 yCrf77w2f2Ec/Lo7RSZMahCH6aELWJtf4xNXgGs5rRalLGmPCqVcD0mCbNvXySSIYMxN
 dMvNxsvKV7KADWYduV6qnMSa/odUQs+3F0X55hIhYsCjmBkgGDjEGaAfngTyF6vbcDWT
 C+AIMTh06LTnoNKZiH35xAx19YZVscI+ujNzkM7GmRwg/Txss7fn5kMaTgyxzeSwUEvi
 1Xu/0Ot2YJI5sYZcAClB8Rz0WngryEDvOitG+TQfccG/GDx/5eAod7YMO+ew0PW7U06l
 Nvjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=r0+SnsUBrU036ki/u9zXA8lU9FLF8N+QpK3TWylHn0Q=;
 b=GXffFGRk6/TjDikPtPA7ue+LMOFMvKIGfZWOP0O6JX/N6NW+vytSOTUqY78gFLED21
 MoaIycKRlwpE2Jsg5Hv7AEZlp1jtFBPhggSLq7wcmDizMtirzaQoW4FTyYoO8vq8GpRC
 wp8TYws/jYVePPaHPlkApUW2Pl/oiwLFR2j9/sKeAbpBJ15NAevwgkx9caD4CqDJl389
 AFVr104OaWHvc6y9FqFy8eYiZQtAeO987NIIb9bA1vt8d8Z9CvKX97TOYwADUf13rLps
 I33rMzJz2fOu8z5MQu8zIsDegJ5T6bR6kexKwtD+u2HarbqcIOuBY6QInqP8zDkeEaua
 BNhg==
X-Gm-Message-State: APjAAAWXOKO0PLuVP9ua7BGPh/rg+v/exaRwwKip2E9pWHoTKYTQBtCs
 pz6Dptd/OzYlyj6txg3UZ0k=
X-Google-Smtp-Source: APXvYqxfCFOTJwk0Wgd+b3I7BxOouq4x08OssycSq7/WciF8tOieiyeyL8dP8lEXb05tn7e5zQXg/g==
X-Received: by 2002:a2e:3016:: with SMTP id w22mr4636537ljw.117.1572534695491; 
 Thu, 31 Oct 2019 08:11:35 -0700 (PDT)
Received: from [192.168.2.145] (94-29-10-250.dynamic.spd-mgts.ru.
 [94.29.10.250])
 by smtp.googlemail.com with ESMTPSA id 12sm1323631lju.55.2019.10.31.08.11.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Oct 2019 08:11:34 -0700 (PDT)
Subject: Re: [RFC 1/3] memory: Introduce memory controller mini-framework
To: Thierry Reding <thierry.reding@gmail.com>, Arnd Bergmann <arnd@arndb.de>
References: <20191015162945.1203736-1-thierry.reding@gmail.com>
 <20191015162945.1203736-2-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <0888ea6f-2092-001e-5663-3a1d3f305ba4@gmail.com>
Date: Thu, 31 Oct 2019 18:11:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191015162945.1203736-2-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_081139_783128_AC1CA52B 
X-CRM114-Status: GOOD (  29.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Will Deacon <will@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 iommu@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTUuMTAuMjAxOSAxOToyOSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBGcm9tOiBUaGll
cnJ5IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPgo+IAo+IFRoaXMgbmV3IGZyYW1ld29yayBp
cyBjdXJyZW50bHkgbm90aGluZyBtb3JlIHRoYW4gYSByZWdpc3RyeSBvZiBtZW1vcnkKPiBjb250
cm9sbGVycywgd2l0aCB0aGUgZ29hbCBiZWluZyB0byBvcmRlciBkZXZpY2UgcHJvYmluZy4gT25l
IHVzZS1jYXNlCj4gd2hlcmUgdGhpcyBpcyB1c2VmdWwsIGZvciBleGFtcGxlLCBpcyBhIG1lbW9y
eSBjb250cm9sbGVyIGRldmljZSB3aGljaAo+IG5lZWRzIHRvIHByb2dyYW0gc29tZSByZWdpc3Rl
cnMgYmVmb3JlIHRoZSBzeXN0ZW0gTU1VIGNhbiBiZSBlbmFibGVkLgo+IEFzc29jaWF0aW5nIHRo
ZSBtZW1vcnkgY29udHJvbGxlciB3aXRoIHRoZSBTTU1VIGFsbG93cyB0aGUgU01NVSBkcml2ZXIK
PiB0byBkZWZlciB0aGUgcHJvYmUgdW50aWwgdGhlIG1lbW9yeSBjb250cm9sbGVyIGhhcyBiZWVu
IHJlZ2lzdGVyZWQuCj4gCj4gT25lIHN1Y2ggZXhhbXBsZSBpcyBUZWdyYTE4NiB3aGVyZSB0aGUg
bWVtb3J5IGNvbnRyb2xsZXIgY29udGFpbnMgc29tZQo+IHJlZ2lzdGVycyB0aGF0IGFyZSB1c2Vk
IHRvIHByb2dyYW0gc3RyZWFtIElEcyBmb3IgdGhlIHZhcmlvdXMgbWVtb3J5Cj4gY2xpZW50cyAo
ZGlzcGxheSwgVVNCLCBQQ0ksIC4uLikgaW4gdGhlIHN5c3RlbS4gUHJvZ3JhbW1pbmcgdGhlc2Ug
U0lEcwo+IGlzIHJlcXVpcmVkIGZvciB0aGUgbWVtb3J5IGNsaWVudHMgdG8gZW1pdCB0aGUgcHJv
cGVyIFNJRHMgYXMgcGFydCBvZgo+IHRoZWlyIG1lbW9yeSByZXF1ZXN0cy4gVGhlIG1lbW9yeSBj
b250cm9sbGVyIGRyaXZlciB0aGVyZWZvcmUgbmVlZHMgdG8KPiBiZSBwcm9ncmFtbWVkIHByaW9y
IHRvIHRoZSBTTU1VIGRyaXZlci4gVG8gYWNoaWV2ZSB0aGF0LCB0aGUgbWVtb3J5Cj4gY29udHJv
bGxlciB3aWxsIGJlIHJlZmVyZW5jZWQgdmlhIHBoYW5kbGUgZnJvbSB0aGUgU01NVSBkZXZpY2Ug
dHJlZQo+IG5vZGUsIHRoZSBTTU1VIGRyaXZlciBjYW4gdGhlbiB1c2UgdGhlIG1lbW9yeSBjb250
cm9sbGVyIGZyYW1ld29yayB0bwo+IGZpbmQgaXQgYW5kIGRlZmVyIHByb2JlIHVudGlsIGl0IGhh
cyBiZWVuIHJlZ2lzdGVyZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogVGhpZXJyeSBSZWRpbmcgPHRy
ZWRpbmdAbnZpZGlhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZW1vcnkvTWFrZWZpbGUgICAgICAg
ICAgIHwgIDEgKwo+ICBkcml2ZXJzL21lbW9yeS9jb3JlLmMgICAgICAgICAgICAgfCA5OSArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIGluY2x1ZGUvbGludXgvbWVtb3J5LWNvbnRy
b2xsZXIuaCB8IDI1ICsrKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTI1IGluc2VydGlvbnMo
KykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVtb3J5L2NvcmUuYwo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZW1vcnktY29udHJvbGxlci5oCgpIZWxsbyBUaGll
cnJ5LAoKVGhpcyBsb29rcyBsaWtlIGEgdmVyeSBnb29kIGVuZGVhdm91ciEgSSBoYXZlIGNvdXBs
ZSBjb21tZW50cywgcGxlYXNlCnNlZSB0aGVtIGJlbG93LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZW1vcnkvTWFrZWZpbGUgYi9kcml2ZXJzL21lbW9yeS9NYWtlZmlsZQo+IGluZGV4IDI3YjQ5
MzQzNWU2MS4uZDE2ZTdkY2E4ZWY5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVtb3J5L01ha2Vm
aWxlCj4gKysrIGIvZHJpdmVycy9tZW1vcnkvTWFrZWZpbGUKPiBAQCAtMyw2ICszLDcgQEAKPiAg
IyBNYWtlZmlsZSBmb3IgbWVtb3J5IGRldmljZXMKPiAgIwo+ICAKPiArb2JqLXkJCQkJKz0gY29y
ZS5vCj4gIG9iai0kKENPTkZJR19ERFIpCQkrPSBqZWRlY19kZHJfZGF0YS5vCj4gIGlmZXEgKCQo
Q09ORklHX0REUikseSkKPiAgb2JqLSQoQ09ORklHX09GKQkJKz0gb2ZfbWVtb3J5Lm8KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tZW1vcnkvY29yZS5jIGIvZHJpdmVycy9tZW1vcnkvY29yZS5jCj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjE3NzJlODM5MzA1YQo+
IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL21lbW9yeS9jb3JlLmMKPiBAQCAtMCwwICsx
LDk5IEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gKy8qCj4gKyAq
IENvcHlyaWdodCAoQykgMjAxOSBOVklESUEgQ29ycG9yYXRpb24uCj4gKyAqLwo+ICsKPiArI2lu
Y2x1ZGUgPGxpbnV4L21lbW9yeS1jb250cm9sbGVyLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9vZi5o
Pgo+ICsKPiArc3RhdGljIERFRklORV9NVVRFWChjb250cm9sbGVyc19sb2NrKTsKPiArc3RhdGlj
IExJU1RfSEVBRChjb250cm9sbGVycyk7Cj4gKwo+ICtzdGF0aWMgdm9pZCBtZW1vcnlfY29udHJv
bGxlcl9yZWxlYXNlKHN0cnVjdCBrcmVmICpyZWYpCj4gK3sKPiArCXN0cnVjdCBtZW1vcnlfY29u
dHJvbGxlciAqbWMgPSBjb250YWluZXJfb2YocmVmLCBzdHJ1Y3QgbWVtb3J5X2NvbnRyb2xsZXIs
IHJlZik7Cj4gKwo+ICsJV0FSTl9PTighbGlzdF9lbXB0eSgmbWMtPmxpc3QpKTsKPiArfQo+ICsK
PiAraW50IG1lbW9yeV9jb250cm9sbGVyX3JlZ2lzdGVyKHN0cnVjdCBtZW1vcnlfY29udHJvbGxl
ciAqbWMpCj4gK3sKPiArCWtyZWZfaW5pdCgmbWMtPnJlZik7Cj4gKwo+ICsJbXV0ZXhfbG9jaygm
Y29udHJvbGxlcnNfbG9jayk7Cj4gKwlsaXN0X2FkZF90YWlsKCZtYy0+bGlzdCwgJmNvbnRyb2xs
ZXJzKTsKPiArCW11dGV4X3VubG9jaygmY29udHJvbGxlcnNfbG9jayk7Cj4gKwo+ICsJcmV0dXJu
IDA7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwobWVtb3J5X2NvbnRyb2xsZXJfcmVnaXN0ZXIp
Owo+ICsKPiArdm9pZCBtZW1vcnlfY29udHJvbGxlcl91bnJlZ2lzdGVyKHN0cnVjdCBtZW1vcnlf
Y29udHJvbGxlciAqbWMpCj4gK3sKPiArCW11dGV4X2xvY2soJmNvbnRyb2xsZXJzX2xvY2spOwo+
ICsJbGlzdF9kZWxfaW5pdCgmbWMtPmxpc3QpOwo+ICsJbXV0ZXhfdW5sb2NrKCZjb250cm9sbGVy
c19sb2NrKTsKPiArCj4gKwlrcmVmX3B1dCgmbWMtPnJlZiwgbWVtb3J5X2NvbnRyb2xsZXJfcmVs
ZWFzZSk7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwobWVtb3J5X2NvbnRyb2xsZXJfdW5yZWdp
c3Rlcik7Cj4gKwo+ICtzdGF0aWMgc3RydWN0IG1lbW9yeV9jb250cm9sbGVyICoKPiArb2ZfbWVt
b3J5X2NvbnRyb2xsZXJfZ2V0KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9ub2Rl
ICpucCwKPiArCQkJIGNvbnN0IGNoYXIgKmNvbl9pZCkKPiArewo+ICsJY29uc3QgY2hhciAqY2Vs
bHMgPSAiI21lbW9yeS1jb250cm9sbGVyLWNlbGxzIjsKPiArCWNvbnN0IGNoYXIgKm5hbWVzID0g
Im1lbW9yeS1jb250cm9sbGVyLW5hbWVzIjsKPiArCWNvbnN0IGNoYXIgKnByb3AgPSAibWVtb3J5
LWNvbnRyb2xsZXJzIjsKPiArCXN0cnVjdCBtZW1vcnlfY29udHJvbGxlciAqbWM7Cj4gKwlzdHJ1
Y3Qgb2ZfcGhhbmRsZV9hcmdzIGFyZ3M7Cj4gKwlpbnQgaW5kZXggPSAwLCBlcnI7Cj4gKwo+ICsJ
aWYgKGNvbl9pZCkgewo+ICsJCWluZGV4ID0gb2ZfcHJvcGVydHlfbWF0Y2hfc3RyaW5nKG5wLCBu
YW1lcywgY29uX2lkKTsKPiArCQlpZiAoaW5kZXggPCAwKQo+ICsJCQlyZXR1cm4gRVJSX1BUUihp
bmRleCk7Cj4gKwl9Cj4gKwo+ICsJZXJyID0gb2ZfcGFyc2VfcGhhbmRsZV93aXRoX2FyZ3MobnAs
IHByb3AsIGNlbGxzLCBpbmRleCwgJmFyZ3MpOwo+ICsJaWYgKGVycikgewo+ICsJCWlmIChlcnIg
PT0gLUVOT0VOVCkKPiArCQkJZXJyID0gLUVOT0RFVjsKPiArCj4gKwkJcmV0dXJuIEVSUl9QVFIo
ZXJyKTsKPiArCX0KPiArCj4gKwltdXRleF9sb2NrKCZjb250cm9sbGVyc19sb2NrKTsKPiArCj4g
KwlsaXN0X2Zvcl9lYWNoX2VudHJ5KG1jLCAmY29udHJvbGxlcnMsIGxpc3QpIHsKPiArCQlpZiAo
bWMtPmRldiAmJiBtYy0+ZGV2LT5vZl9ub2RlID09IGFyZ3MubnApIHsKPiArCQkJa3JlZl9nZXQo
Jm1jLT5yZWYpOwoKVGhpcyBpcyBub3QgZW5vdWdoIGJlY2F1c2UgbWVtb3J5IGNvbnRyb2xsZXIg
ZHJpdmVyIGNvdWxkIGJlIGEgbG9hZGFibGUKbW9kdWxlLCB0aHVzIHNvbWV0aGluZyBsaWtlIHRo
aXMgaXMgbmVlZGVkIGhlcmU6CgoJX19tb2R1bGVfZ2V0KG1jLT5kZXYtPmRyaXZlci0+b3duZXIp
OwoKVGhpcyB3b24ndCBhbGxvdyBNQyBkcml2ZXIgdG8gYmUgdW5sb2FkZWQgd2hpbGUgaXQgaGFz
IGFjdGl2ZSB1c2Vycy4KCj4gKwkJCW11dGV4X3VubG9jaygmY29udHJvbGxlcnNfbG9jayk7Cj4g
KwkJCWdvdG8gdW5sb2NrOwo+ICsJCX0KPiArCX0KPiArCj4gKwltYyA9IEVSUl9QVFIoLUVQUk9C
RV9ERUZFUik7Cj4gKwo+ICt1bmxvY2s6Cj4gKwltdXRleF91bmxvY2soJmNvbnRyb2xsZXJzX2xv
Y2spOwo+ICsJb2Zfbm9kZV9wdXQoYXJncy5ucCk7Cj4gKwlyZXR1cm4gbWM7Cj4gK30KPiArCj4g
K3N0cnVjdCBtZW1vcnlfY29udHJvbGxlciAqCj4gK21lbW9yeV9jb250cm9sbGVyX2dldChzdHJ1
Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIgKmNvbl9pZCkKPiArewo+ICsJaWYgKElTX0VOQUJM
RUQoQ09ORklHX09GKSAmJiBkZXYgJiYgZGV2LT5vZl9ub2RlKQo+ICsJCXJldHVybiBvZl9tZW1v
cnlfY29udHJvbGxlcl9nZXQoZGV2LCBkZXYtPm9mX25vZGUsIGNvbl9pZCk7Cj4gKwo+ICsJcmV0
dXJuIEVSUl9QVFIoLUVOT0RFVik7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwobWVtb3J5X2Nv
bnRyb2xsZXJfZ2V0KTsKCkluIG1vc3QgY2FzZXMgbWVtb3J5IGNvbnRyb2xsZXJzIGFyZSB1bmlx
dWUgaW4gYSBzeXN0ZW0sIHNvIGl0IGxvb2tzIHRvCm1lIHRoYXQgaXQgd2lsbCBiZSBtb3JlIHVu
aXZlcnNhbCB0byBoYXZlIGFiaWxpdHkgdG8gZ2V0IE1DIGJ5IGl0cwpkZXZpY2UtdHJlZSBjb21w
YXRpYmxlIG5hbWUuIExpa2UgdGhpczoKCglvZl9tZW1vcnlfY29udHJvbGxlcl9nZXRfYnlfY29t
cGF0aWJsZShjb25zdCBjaGFyICpjb21wYXRpYmxlKTsKClRoaXMgd2lsbCBhbGxvdyBjdXJyZW50
IGRyaXZlcnMgKGxpa2UgVGVncmEyMCBkZXZmcmVxIGRyaXZlciBmb3IKZXhhbXBsZSkgdG8gdXRp
bGl6ZSB0aGlzIG5ldyBBUEkgd2l0aG91dCBoYXZpbmcgdHJvdWJsZSBvZiBtYWludGFpbmluZwpi
YWNrd2FyZHMgY29tcGF0aWJpbGl0eSB3aXRoIG9sZGVyIGRldmljZS10cmVlcyB0aGF0IGRvIG5v
dCBoYXZlIGEKcGhhbmRsZSB0byBNQy4KCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4
L3Y1LjQtcmM1L3NvdXJjZS9kcml2ZXJzL2RldmZyZXEvdGVncmEyMC1kZXZmcmVxLmMjTDEwMAoK
T2YgY291cnNlIHRoZXJlIGNvdWxkIGJlIGNhc2VzIHdoZXJlIHRoZXJlIGFyZSBtdWx0aXBsZSBj
b250cm9sbGVycyB3aXRoCnRoZSBzYW1lIGNvbXBhdGlibGUsIGJ1dCB0aGF0IGNhc2UgY291bGQg
YmUgc3VwcG9ydGVkIGxhdGVyIG9uIGJ5IHRob3NlCndobyByZWFsbHkgbmVlZCBpdC4gSSBkb24n
dCB0aGluayB0aGF0IGFueSBvZiBOVklESUEgVGVncmEgU29DcyBmYWxsCmludG8gdGhhdCBjYXRl
Z29yeS4KCj4gK3ZvaWQgbWVtb3J5X2NvbnRyb2xsZXJfcHV0KHN0cnVjdCBtZW1vcnlfY29udHJv
bGxlciAqbWMpCj4gK3sKPiArCWlmIChtYykKPiArCQlrcmVmX3B1dCgmbWMtPnJlZiwgbWVtb3J5
X2NvbnRyb2xsZXJfcmVsZWFzZSk7CgkJbW9kdWxlX3B1dChtYy0+ZGV2LT5kcml2ZXItPm93bmVy
KTsKCj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwobWVtb3J5X2NvbnRyb2xsZXJfcHV0KTsKCgpb
c25pcF0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
