Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DC11F1AB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imHYlZWkBR1AqiL6MY2DU2TfysU3gf7YP7OsxjVJmtk=; b=BZ3IntlZruMkHf
	op4lm4HXFRhMiJMNziCfPoChf08xSB6YXcwXdXSovQTsElI26daTzuHhFgWHVKkf5ivVfb00L9V3j
	3WY9Xb7AhqVY5zKMs0G5GDSDs/RYC54pfQ4rs7/wkWDMmHTblCh7RuxYjZ9O/ZxDB43LphuLDFNzM
	DfmA1OMvyJ+qkj7JTyEAUTYXg9qDyIw9h84r7OW/lPoKIyx3mOB91F7m7CTC33rOYR4cKMubOcFdj
	MU4Fbkg73PZfDY4bymPE5to7gZfCH5Md3ktMgboz+GwKOspfCOv4ece3OGZ9rshdiTQmYA6feimJP
	yYSUaf0JAqfjoWa2kjJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIY8-00013v-V6; Mon, 08 Jun 2020 14:14:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIY0-000133-68
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 14:14:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so17560309wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 07:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FnX4DvgBVePhxNU26Nuu6U5gGoR9gval9HD54PaHQ20=;
 b=lVSM2bscmfDThmELC2YcJFayc9yauTH5QNeNsh4UUOPEVNwPwO8XbOhvfYHMeOhfwa
 dlMH1Oy3IjRwrEi/nAilpMbr7OyHyQWZzUPEjBP/OVulQALC2vegUnqPRWP1YNkBmjqC
 x/CQYGvWjiQvKuBPDIdEWHgKAokJtWfVmtr7GoK7TXdDCTetLTjyVpGncCL2wkONPVVZ
 quwYhkHPD1lOul8MvGB0XKMEYcLCmqNRdqbuuJOalzPp/uiqVEpoAc8UFj1M4MDBvvTF
 ZPE92e9VzlbdzRf0Y+Bn1xH+IHoDUzTWbvYteMWYOqrhPghKOQF2ZodZZ9YGiWF0mWlW
 h4og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=FnX4DvgBVePhxNU26Nuu6U5gGoR9gval9HD54PaHQ20=;
 b=LqnrIBaMiEmWhb4dPK0hVMD/FFZ3P+YO3d2oilx5FZRcnsgjqRdE/jwoR4b/JLswFK
 MmzTou90xKNzSHjtRSXGsWRMPIgWD1/3pYkeXE/LMiDiHnVW2Rw3K/mMwHfOZctd5Or6
 TkQpobCZf8gKUI1AcEvU4rb0RwfAAZ2JVyL7p4OPfXEbcE+1KSzFUvAJZfIU528D5BWI
 heiUXdDsoFWV5cUaYfkzx1QMa76qSWOh8Dkcg5OJ48RUtaW+tLmsxECYJTHNRO1fcDg8
 EngKuWHcC4XnFPjvSQlAk8lIhPGVTGjMj2GLZlXz7URuU5Hhx+A05nrVA7MxMh0R/NFz
 6h2w==
X-Gm-Message-State: AOAM532/5fwKaxRi43xqlW6dQCNFOwPh21NxNjGqGncciwYQeHhSB5wD
 qUcKv3kFSnozoET9o5I69Isz0g==
X-Google-Smtp-Source: ABdhPJzPJmsMPB9DOPPgUNHYId35HEBlky/IXisgShJJvI+P47qoXNBrJKlZMDH9Lwog7uZP27FRBg==
X-Received: by 2002:adf:ed87:: with SMTP id c7mr23769885wro.108.1591625681374; 
 Mon, 08 Jun 2020 07:14:41 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:22:5867:d2c6:75f4?
 ([2a01:e35:2ec0:82b0:22:5867:d2c6:75f4])
 by smtp.gmail.com with ESMTPSA id v6sm15666350wrf.61.2020.06.08.07.14.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 07:14:40 -0700 (PDT)
Subject: Re: [PATCH 1/5] media: videodev2: add Compressed Framebuffer pixel
 formats
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Nicolas Dufresne <nicolas@ndufresne.ca>
References: <20200604135317.9235-1-narmstrong@baylibre.com>
 <20200604135317.9235-2-narmstrong@baylibre.com>
 <02aa06fd8397b77c9a75d3a8399cb55d3b4d39c1.camel@ndufresne.ca>
 <4d22ff40-11ac-c77a-564d-af9a678f23af@baylibre.com>
 <a15dea55-3ca4-2a65-5c56-6c1edd2de405@xs4all.nl>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <a4c5ae79-1d4d-4c1e-1535-c6c8b02d4b6f@baylibre.com>
Date: Mon, 8 Jun 2020 16:14:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <a15dea55-3ca4-2a65-5c56-6c1edd2de405@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_071444_287977_041FFED8 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDgvMDYvMjAyMCAxMToyNiwgSGFucyBWZXJrdWlsIHdyb3RlOgo+IE9uIDA4LzA2LzIwMjAg
MTA6MTYsIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+PiBIaSBOaWNvbGFzLAo+Pgo+PiBPbiAwNS8w
Ni8yMDIwIDE3OjM1LCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+Pj4gTGUgamV1ZGkgMDQganVp
biAyMDIwIMOgIDE1OjUzICswMjAwLCBOZWlsIEFybXN0cm9uZyBhIMOpY3JpdCA6Cj4+Pj4gRnJv
bTogTWF4aW1lIEpvdXJkYW4gPG1qb3VyZGFuQGJheWxpYnJlLmNvbT4KPj4+Pgo+Pj4+IEFkZCB0
d28gZ2VuZXJpYyBDb21wcmVzc2VkIEZyYW1lYnVmZmVyIHBpeGVsIGZvcm1hdHMgdG8gYmUgdXNl
ZAo+Pj4+IHdpdGggYSBtb2RpZmllciB3aGVuIGltcG9ydGVkIGJhY2sgaW4gYW5vdGhlciBzdWJz
eXN0ZW0gbGlrZSBEUk0vS01TLgo+Pj4+Cj4+Pj4gVGhlc2UgcGl4ZWwgZm9ybWF0cyByZXByZXNl
bnRzIGdlbmVyaWMgOGJpdHMgYW5kIDEwYml0cyBjb21wcmVzc2VkIGJ1ZmZlcnMKPj4+PiB3aXRo
IGEgdmVuZG9yIHNwZWNpZmljIGxheW91dC4KPj4+Pgo+Pj4+IFRoZXNlIGFyZSBhbGlnbmVkIHdp
dGggdGhlIERSTV9GT1JNQVRfWVVWNDIwXzhCSVQgYW5kIERSTV9GT1JNQVRfWVVWNDIwXzEwQklU
Cj4+Pj4gdXNlZCB0byBkZXNjcmliZSB0aGUgdW5kZXJseWluZyBjb21wcmVzc2VkIGJ1ZmZlcnMg
dXNlZCBmb3IgQVJNIEZyYW1lYnVmZmVyCj4+Pj4gQ29tcHJlc3Npb24uIEluIHRoZSBBbWxvZ2lj
IGNhc2UsIHRoZSBjb21wcmVzc2lvbiBpcyBkaWZmZXJlbnQgYnV0IHRoZQo+Pj4+IHVuZGVybHlp
bmcgYnVmZmVyIGNvbXBvbmVudHMgaXMgdGhlIHNhbWUuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5
OiBNYXhpbWUgSm91cmRhbiA8bWpvdXJkYW5AYmF5bGlicmUuY29tPgo+Pj4+IFNpZ25lZC1vZmYt
Ynk6IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPj4+PiAtLS0KPj4+
PiAgZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1pb2N0bC5jIHwgMiArKwo+Pj4+ICBpbmNs
dWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmggICAgICAgfCA5ICsrKysrKysrKwo+Pj4+ICAyIGZp
bGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3RsLmMgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29y
ZS92NGwyLWlvY3RsLmMKPj4+PiBpbmRleCAyMzIyZjA4YTk4YmUuLjhmMTRhZGZkNWJjNSAxMDA2
NDQKPj4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3RsLmMKPj4+PiAr
KysgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3RsLmMKPj4+PiBAQCAtMTQ0Nyw2
ICsxNDQ3LDggQEAgc3RhdGljIHZvaWQgdjRsX2ZpbGxfZm10ZGVzYyhzdHJ1Y3QgdjRsMl9mbXRk
ZXNjICpmbXQpCj4+Pj4gIAkJY2FzZSBWNEwyX1BJWF9GTVRfUzVDX1VZVllfSlBHOglkZXNjciA9
ICJTNUM3M01YIGludGVybGVhdmVkIFVZVlkvSlBFRyI7IGJyZWFrOwo+Pj4+ICAJCWNhc2UgVjRM
Ml9QSVhfRk1UX01UMjFDOglkZXNjciA9ICJNZWRpYXRlayBDb21wcmVzc2VkIEZvcm1hdCI7IGJy
ZWFrOwo+Pj4+ICAJCWNhc2UgVjRMMl9QSVhfRk1UX1NVTlhJX1RJTEVEX05WMTI6IGRlc2NyID0g
IlN1bnhpIFRpbGVkIE5WMTIgRm9ybWF0IjsgYnJlYWs7Cj4+Pj4gKwkJY2FzZSBWNEwyX1BJWF9G
TVRfWVVWNDIwXzhCSVQ6CWRlc2NyID0gIkNvbXByZXNzZWQgWVVWIDQ6MjowIDgtYml0IEZvcm1h
dCI7IGJyZWFrOwo+Pj4+ICsJCWNhc2UgVjRMMl9QSVhfRk1UX1lVVjQyMF8xMEJJVDoJZGVzY3Ig
PSAiQ29tcHJlc3NlZCBZVVYgNDoyOjAgMTAtYml0IEZvcm1hdCI7IGJyZWFrOwoKWy4uXQoKPj4+
Cj4+PiBJJ2xsIHJlbWluZCB0aGF0IHRoZSBtb2RpZmllciBpbXBsZW1lbnRhdGlvbiBoYXMgZ3Jl
YXQgdmFsdWUgYW5kIGlzCj4+PiBtdWNoIG1vcmUgc2NhbGFibGUgdGhlbiB0aGUgY3VycmVudCBW
NEwyIGFwcHJvYWNoLiBUaGVyZSBoYXMgYmVlbiBzb21lCj4+PiBlYXJseSBwcm9wb3NhbCBmb3Ig
dGhpcywgbWF5YmUgaXQncyB0aW1lIHRvIHByaW9yaXRpemUgYmVjYXVzZSB0aGlzCj4+PiBsaXN0
IHdpbGwgc3RhcnRzIGdyb3dpbmcgd2l0aCBodW5kcmVkIG9yIGV2ZW4gdGhvdXNhbmRzIG9yIGZv
cm1hdCwKPj4+IHdoaWNoIGlzIGNsZWFybHkgaW5kaWNhdGVkIGJ5IHRoZSBpbmNyZWFzZSBvZiBt
b2RpZmllciBnZW5lcmF0b3IgbWFjcm8KPj4+IG9uIHRoZSBEUk0gc2lkZS4KPj4KPj4gWWVzLCBi
dXQgdW50aWwgdGhlIG1pZ3JhdGlvbiBvZiBkcm1fZm91cmNjIGFuZCB2NGwyIGZvdXJjYyBpbnRv
IGEgY29tbW9uIG9uZQo+PiBpcyBkZWNpZGVkLCBJJ20gc3R1Y2sgYW5kIHRoaXMgaXMgdGhlIG9u
bHkgaW50ZXJtZWRpYXRlIHNvbHV0aW9uIEkgZm91bmQuCj4gCj4gV2UgY2FuIHNhZmVseSBhc3N1
bWUgdGhhdCBkcm0gZm91cmNjIGFuZCB2NGwyIGZvdXJjYyB3b24ndCBiZSBtZXJnZWQuCj4gCj4g
VGhlcmUgaXMgdG9vIG11Y2ggZGl2ZXJnZW5jZSBhbmQgbm90IGVub3VnaCBpbnRlcmVzdCBpbiBj
cmVhdGluZyBjb21tb24KPiBmb3VyY2NzLgo+IAo+IEJ1dCB3ZSAqZG8qIHdhbnQgdG8gc2hhcmUg
dGhlIG1vZGlmaWVycy4KPiAKPj4KPj4gV2UgaGF2ZSBhIHdvcmtpbmcgc29sdXRpb24gd2l0aCBC
b3JpcydzIHBhdGNoc2V0IHdpdGggZXh0X2ZtdCBwYXNzaW5nIHRoZQo+PiBtb2RpZmllciB0byB1
c2VyLXNwYWNlLgo+Pgo+PiBidXQgYW55d2F5LCBzaW5jZSB0aGUgZ29hbCBpcyB0byBtZXJnZSB0
aGUgZm91cmNjIGJldHdlZW4gRFJNICYgVjRMMiwgdGhlc2UgWVVWNDIwXypCSVQKPj4gd2lsbCBz
dGlsbCBiZSBuZWVkZWQgaWYgd2UgcGFzcyB0aGUgbW9kaWZpZXIgd2l0aCBhbiBleHRlbmRlZCBm
b3JtYXQgc3RydWN0Lgo+IAo+IFdlIHRyaWVkIG1lcmdpbmcgZm91cmNjcyBidXQgdGhhdCByYW4g
aW50byByZXNpc3RhbmNlLiBGcmFua2x5LCBJIHdvdWxkbid0Cj4gYm90aGVyIHdpdGggdGhpcywg
aXQgaXMgbXVjaCBlYXNpZXIgdG8ganVzdCBjcmVhdGUgYSBjb252ZXJzaW9uIHRhYmxlIGluIHRo
ZQo+IGtlcm5lbCBkb2NzLgo+IAo+IFNvIGRvbid0IGJsb2NrIG9uIHRoaXMsIEkgd291bGQgcmVh
bGx5IHByZWZlciBpZiB0aGUgZXh0X2ZtdCBzZXJpZXMgaXMgcGlja2VkCj4gdXAgYWdhaW4gYW5k
IHJlYmFzZWQgYW5kIHJlcG9zdGVkIGFuZCB0aGVuIHdvcmtlZCBvbi4gVGhlIHN0YXRlbGVzcyBj
b2RlYyBzdXBwb3J0Cj4gaXMgdGFraW5nIGxlc3MgdGltZSAoaXQncyBzaGFwaW5nIHVwIHdlbGwp
IHNvIHRoZXJlIGlzIG1vcmUgdGltZSB0byB3b3JrIG9uIHRoaXMuCgpPaywgSSBhbHJlYWR5IHN0
YXJ0aW5nIGRpc2N1c3Npbmcgd2l0aCBIZWxlbiBLb2lrZSBhYm91dCB0aGUgZXh0X2ZudCByZS1z
cGluLgoKU2hvdWxkIEkgcmUtaW50cm9kdWNlIGRpZmZlcmVudCB2NGwyIHBpeGZtdCBmb3IgdGhl
c2UgRFJNIFlVVjQyMF8qQklUIG9yIEkgY2FuIGtlZXAgdGhpcwpwYXRjaCBhbG9uZyB0aGUgbmV3
IGV4dF9mbXQgYW5kIHNoYXJlZCBtb2RpZmllcnMgPwoKTmVpbAoKPiAKPiBJIGJlbGlldmUgd2Ug
cmVhbGx5IG5lZWQgdGhpcyBzaW5jZSB2NGwyX2J1ZmZlciBhbmQgdjRsMl9mb3JtYXQgYXJlIGEg
cmVhbCBtZXNzLgo+IAo+IFJlZ2FyZHMsCj4gCj4gCUhhbnMKPiAKPj4KPj4+Cj4+Pj4gIAkJZGVm
YXVsdDoKPj4+PiAgCQkJaWYgKGZtdC0+ZGVzY3JpcHRpb25bMF0pCj4+Pj4gIAkJCQlyZXR1cm47
Cj4+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaCBiL2luY2x1
ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaAo+Pj4+IGluZGV4IGMzYTFjZjFjNTA3Zi4uOTBiOTk0
OWFjYjhhIDEwMDY0NAo+Pj4+IC0tLSBhL2luY2x1ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaAo+
Pj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaAo+Pj4+IEBAIC03MDUsNiAr
NzA1LDE1IEBAIHN0cnVjdCB2NGwyX3BpeF9mb3JtYXQgewo+Pj4+ICAjZGVmaW5lIFY0TDJfUElY
X0ZNVF9GV0hUICAgICB2NGwyX2ZvdXJjYygnRicsICdXJywgJ0gnLCAnVCcpIC8qIEZhc3QgV2Fs
c2ggSGFkYW1hcmQgVHJhbnNmb3JtICh2aWNvZGVjKSAqLwo+Pj4+ICAjZGVmaW5lIFY0TDJfUElY
X0ZNVF9GV0hUX1NUQVRFTEVTUyAgICAgdjRsMl9mb3VyY2MoJ1MnLCAnRicsICdXJywgJ0gnKSAv
KiBTdGF0ZWxlc3MgRldIVCAodmljb2RlYykgKi8KPj4+PiAgCj4+Pj4gKy8qCj4+Pj4gKyAqIENv
bXByZXNzZWQgTHVtaW5hbmNlK0Nocm9taW5hbmNlIG1ldGEtZm9ybWF0cwo+Pj4+ICsgKiBJbiB0
aGVzZSBmb3JtYXRzLCB0aGUgY29tcG9uZW50IG9yZGVyaW5nIGlzIHNwZWNpZmllZCAoWSwgZm9s
bG93ZWQgYnkgVQo+Pj4+ICsgKiB0aGVuIFYpLCBidXQgdGhlIGV4YWN0IExpbmVhciBsYXlvdXQg
aXMgdW5kZWZpbmVkLgo+Pj4+ICsgKiBUaGVzZSBmb3JtYXRzIGNhbiBvbmx5IGJlIHVzZWQgd2l0
aCBhIG5vbi1MaW5lYXIgbW9kaWZpZXIuCj4+Pj4gKyAqLwo+Pj4+ICsjZGVmaW5lIFY0TDJfUElY
X0ZNVF9ZVVY0MjBfOEJJVAl2NGwyX2ZvdXJjYygnWScsICdVJywgJzAnLCAnOCcpIC8qIDEtcGxh
bmUgWVVWIDQ6MjowIDgtYml0ICovCj4+Pj4gKyNkZWZpbmUgVjRMMl9QSVhfRk1UX1lVVjQyMF8x
MEJJVAl2NGwyX2ZvdXJjYygnWScsICdVJywgJzEnLCAnMCcpIC8qIDEtcGxhbmUgWVVWIDQ6Mjow
IDEwLWJpdCAqLwo+Pj4+ICsKPj4+PiAgLyogIFZlbmRvci1zcGVjaWZpYyBmb3JtYXRzICAgKi8K
Pj4+PiAgI2RlZmluZSBWNEwyX1BJWF9GTVRfQ1BJQTEgICAgdjRsMl9mb3VyY2MoJ0MnLCAnUCcs
ICdJJywgJ0EnKSAvKiBjcGlhMSBZVVYgKi8KPj4+PiAgI2RlZmluZSBWNEwyX1BJWF9GTVRfV05W
QSAgICAgdjRsMl9mb3VyY2MoJ1cnLCAnTicsICdWJywgJ0EnKSAvKiBXaW5ub3YgaHcgY29tcHJl
c3MgKi8KPj4+Cj4+Cj4+IFsxXSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzczNzIyLyNyZXY3Cj4+Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
