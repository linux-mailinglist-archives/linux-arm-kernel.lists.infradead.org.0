Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A82C1A954D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 09:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aN/rOjmXDa6fMt4YDxRq93NAphbXafsEUkONw7INGvw=; b=m3CvULXNLId6uC
	IyFTV1OVt0wJTf3MczR54dbduSdEZIaB+w5VOahSEKQlO6unIKcRBTAr8X7LU2dxmVVdw2gRI8Ttz
	s9JqtCxqmBj6fRFbZ5dzbMZI5Fnb8rwS6d4T9s4wOBKFynajZnw4e3S+kb6DDSl7c8qdlG00Q+Wbd
	/orA32NsvYzLzTt/J/F50m++UYjPLXLUaA2P6+D14YCB68zlUDqgNFHaUwbDMwpEOCqhdhzbsM6BZ
	xF27D3pRbHIOOlM/IZDir32y+3P8liEuqJLeOz5pqoIwMPn+XO7mt3vNFk3yuEU6Np8RXzR0IDD9A
	dK5OKYLeweCIcdokTMEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOcuk-0002AU-85; Wed, 15 Apr 2020 07:56:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOcuZ-00028r-Vn
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 07:56:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id r26so17770330wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 00:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pSd8qbiYbAtfmst7OijulRMd3WJ5z01ypkQKLIZqZok=;
 b=yK6dX17+cvwnbEKilDfvRJgPysqPQaOhqOcDFnUWTwNTUcNlmft+jOZNDi292ntJ2l
 kj8MhwLARdLFZQKHh3vGVp8pk4X5eSRG7mpvhl9Gb1ncGcdh5wPScau0bBXWJRcizTkW
 YioEbcc+FfUtG7ehev32FVJAwfe17MnWO6TJgD4LRwjj0ThJPgtxI9iHU5CcXmobSssd
 j71TTX//G1saATx+Znj6E1Q5og5FR/Y6P6VELlqA1x8O4FO9kJlnZefTggiQsrpsNs6J
 ZMoViK/0WPcIZDWIQLZRE+70NvkJdbfBxXS+4zXAvJu+2FUMgCrIeRK28CnH0BoFyirJ
 kEjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=pSd8qbiYbAtfmst7OijulRMd3WJ5z01ypkQKLIZqZok=;
 b=Va4PMgJS9tkKJZlUt/63Fm2yA4Ta5XeHWbnSGYFT5lXe6nnpZ0dqiLkzVpREkt4YDd
 QG57NnzI0/OeU6VpkjuzZXCIuXH3nHhDdjDjzhFER+Q/3cpRHrlclNemdfTb3xerOJx9
 gi4T/0Y0KCXjpBwgSLKWInZAugrHM2ckna/XsPfHQJb3dsHkVEH1Xzsbsqk7a1BwXz0c
 NDo9PgglYwf97njDaXW5QrzrG2IX1u5tTURBjxNBTiM7wN0thuDYEW4Z/EC1Zsb3Hboq
 AzApb/R6DmHIskHoJCaw0ew459ccpcJPRno1ZOtOG0X+tEPzx7Bls1hXFI6Lq+K+OZQC
 RFxQ==
X-Gm-Message-State: AGi0PuZWvNHfX393obVZd0pY33sP7xyin4l+nJkev1exlqGUXYc3LNny
 1F9LnECsyWhe1vHwkrRLC85PWQ==
X-Google-Smtp-Source: APiQypJKOCIwnWh8GtFBc++8oLUPehct2YypJMuYQcUh6XPplOHdyOE52LPU3ioZ9kxnxcghDzsaVg==
X-Received: by 2002:a7b:cb17:: with SMTP id u23mr1910534wmj.130.1586937401352; 
 Wed, 15 Apr 2020 00:56:41 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56?
 ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id k14sm22764484wrp.53.2020.04.15.00.56.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 00:56:40 -0700 (PDT)
Subject: Re: [PATCH] drm/meson: Delete an error message in meson_dw_hdmi_bind()
To: Markus Elfring <Markus.Elfring@web.de>, dri-devel@lists.freedesktop.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Kevin Hilman <khilman@baylibre.com>
References: <76f24122-4d3f-7670-9f06-edb4731a0661@web.de>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <54e0b6e4-4a39-c567-7355-2b2330a95294@baylibre.com>
Date: Wed, 15 Apr 2020 09:56:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <76f24122-4d3f-7670-9f06-edb4731a0661@web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_005644_020734_9D2FBB66 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAwNS8wNC8yMDIwIDEzOjIzLCBNYXJrdXMgRWxmcmluZyB3cm90ZToKPiBGcm9tOiBN
YXJrdXMgRWxmcmluZyA8ZWxmcmluZ0B1c2Vycy5zb3VyY2Vmb3JnZS5uZXQ+Cj4gRGF0ZTogU3Vu
LCA1IEFwciAyMDIwIDEzOjEzOjAzICswMjAwCj4gCj4gVGhlIGZ1bmN0aW9uIOKAnHBsYXRmb3Jt
X2dldF9pcnHigJ0gY2FuIGxvZyBhbiBlcnJvciBhbHJlYWR5Lgo+IFRodXMgb21pdCBhIHJlZHVu
ZGFudCBtZXNzYWdlIGZvciB0aGUgZXhjZXB0aW9uIGhhbmRsaW5nIGluIHRoZQo+IGNhbGxpbmcg
ZnVuY3Rpb24uCj4gCj4gVGhpcyBpc3N1ZSB3YXMgZGV0ZWN0ZWQgYnkgdXNpbmcgdGhlIENvY2Np
bmVsbGUgc29mdHdhcmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFya3VzIEVsZnJpbmcgPGVsZnJp
bmdAdXNlcnMuc291cmNlZm9yZ2UubmV0Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vbWVzb24v
bWVzb25fZHdfaGRtaS5jIHwgNCArLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lc29u
L21lc29uX2R3X2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZXNvbi9tZXNvbl9kd19oZG1pLmMK
PiBpbmRleCBlOGM5NDkxNWE0ZmMuLjY0Y2I2YmE0YmM0MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vbWVzb24vbWVzb25fZHdfaGRtaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21l
c29uL21lc29uX2R3X2hkbWkuYwo+IEBAIC0xMDM0LDEwICsxMDM0LDggQEAgc3RhdGljIGludCBt
ZXNvbl9kd19oZG1pX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0
ZXIsCj4gIAkJcmV0dXJuIFBUUl9FUlIoZHdfcGxhdF9kYXRhLT5yZWdtKTsKPiAKPiAgCWlycSA9
IHBsYXRmb3JtX2dldF9pcnEocGRldiwgMCk7Cj4gLQlpZiAoaXJxIDwgMCkgewo+IC0JCWRldl9l
cnIoZGV2LCAiRmFpbGVkIHRvIGdldCBoZG1pIHRvcCBpcnFcbiIpOwo+ICsJaWYgKGlycSA8IDAp
Cj4gIAkJcmV0dXJuIGlycTsKPiAtCX0KPiAKPiAgCXJldCA9IGRldm1fcmVxdWVzdF90aHJlYWRl
ZF9pcnEoZGV2LCBpcnEsIGR3X2hkbWlfdG9wX2lycSwKPiAgCQkJCQlkd19oZG1pX3RvcF90aHJl
YWRfaXJxLCBJUlFGX1NIQVJFRCwKPiAtLQo+IDIuMjYuMAo+IAoKTWlzc2luZyBGaXhlcyB0YWcs
IGJ1dCBJJ2xsIGFwcGx5IG5ldmVydGhlbGVzczoKRml4ZXM6IDNmNjhiZTdkOGU5NiAoImRybS9t
ZXNvbjogQWRkIHN1cHBvcnQgZm9yIEhETUkgZW5jb2RlciBhbmQgRFctSERNSSBicmlkZ2UgKyBQ
SFkiKQoKTmVpbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
