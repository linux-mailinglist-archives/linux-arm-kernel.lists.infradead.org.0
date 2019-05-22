Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B7B25EE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 10:00:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/pxJQixkXSnpCMUVn8NtsuklBdwXGE9guxFj05LQ8c=; b=HkFm4pKUfS+kLs
	9NHo6UDydCsmEwNRNMgT1DkuXFhNiUObrk1NIUQzeJNdmPoF1toqnP/cHzdEjGbMuqtZH7mHn+zXj
	MEojCqXy/fO4R7fzMpJi/fuPP7QCwIQNas+yHOZYMk9WPZ4JRQkrXkeYG4RFfr9a+y+KfLEzVDeap
	0KyUuzEHH+bsUgiiSkfKlAxAfv37HbdSFd/3hJcC6Fbj+H6T00MuZyIz7KpJBO91Y1D1i4NXJXIr7
	YNyB3q7Cz1Zp0MdTxyeOybFAC0J40+qXuineU0Iwe2GCygROZbYyJI3HSx7LpOXvYC+Q5UXU5zU34
	ZHDCNzWpnJER+EXXgHiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTMAN-0003cC-2V; Wed, 22 May 2019 08:00:03 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTMAD-0003bW-Tz
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 07:59:55 +0000
Received: by mail-wm1-x344.google.com with SMTP id j187so4064528wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 00:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=rnCmivct/X7z1PEcQXjQh9eG+GSPf+RXK0R9xnoR9QM=;
 b=VShWdf9Z0ncY7mljbs2OFnnJO99iafT2bd3R4Hfe6XqujdqayhqbSQ44D48eKbU2q7
 e/JmpEPbY3Tc3knfaYPofqdRYRqjaqjrn4Yl87lIu1Z8h8dL76radqC9US/buUt3jfG5
 D9RC0jK+HZ3wqpHBBsLbPUZdAAXzKvdEH5Qqrf6GWL0YYkor7QaZ7ibahKeu5vLBf95i
 IrsTxJ4YmduZBN3XniHslAfqNoydpOra5wIcL+tLV5MYxF6lcBrjsNuyJKBVECf9ww4v
 8kYxsqKLvFt9ntVQ5xXJ/Rhj3xP4de58QNuTgIk4rTlhmRrA4OBg5BlzDWz3nN/E/H/E
 ANMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=rnCmivct/X7z1PEcQXjQh9eG+GSPf+RXK0R9xnoR9QM=;
 b=DRZ4GdAfYqMvx2JZUi/+pMTclexbiTld0evFN+3+58zgS8LBesqgKVzBl+y/zyI5TV
 NATjybVw4h7ndPBGYjploaxwGxCqtaTGUbhlAvBYYi0EhN5xHqdxzMTlPrPa10p8q+wZ
 ooFhpgKBnJJlzHY4ZIoUoH5ob3g9FzNPbUIDt05LXlVjpHcp1lC8MhuUZPgik2MzRvIW
 oWqdAOPYYnek48UlwtlEssDyj9onNyLZ+KIOexBaCBQWGAbms7nBwVvyK1w4czcQsMP4
 fJINYgqKTjYbj3EZVUCQHXdr0F7di6XjVefdrq47QxGlo4Owf0GxQEYHVnvNkUF/bzOK
 vqiw==
X-Gm-Message-State: APjAAAU6k2+lLc3NOAwBzPpchaLJGLwZIlfEMfmGsHFEjOXHeCvD64qD
 BNSIx+7RuIbINbvJDAy9CA9Y0TGTAJx3qQ==
X-Google-Smtp-Source: APXvYqwk5SRYCyyOX5+xF7kfeQxYyY4oufGN3ZUYOTeICTlJeAwW6WzNFcpJzStlPU40+ttBcl55eg==
X-Received: by 2002:a1c:cf4f:: with SMTP id f76mr6648267wmg.18.1558511992322; 
 Wed, 22 May 2019 00:59:52 -0700 (PDT)
Received: from [192.168.1.62] (176-150-251-154.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id
 h17sm7619311wrq.79.2019.05.22.00.59.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 00:59:51 -0700 (PDT)
Subject: Re: [PATCH v3 3/3] arm64: dts: meson: Add minimal support for
 Odroid-N2
To: Robin Murphy <robin.murphy@arm.com>, khilman@baylibre.com
References: <20190521151952.2779-1-narmstrong@baylibre.com>
 <20190521151952.2779-4-narmstrong@baylibre.com>
 <4eb6aa5c-14e2-944e-9f15-692063ef072b@arm.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <5c95de8f-b611-8286-db5f-bbb3ae97c24f@baylibre.com>
Date: Wed, 22 May 2019 09:59:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <4eb6aa5c-14e2-944e-9f15-692063ef072b@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_005953_970201_A7FADF7B 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjEvMDUvMjAxOSAxODoxMSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIxLzA1LzIwMTkg
MTY6MTksIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+IFsuLi5dCj4+ICvCoMKgwqDCoMKgwqDCoCBj
cHUxMDA6IGNwdUAxMDAgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZpY2VfdHlwZSA9
ICJjcHUiOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImFybSxjb3J0
ZXgtYTczIiwgImFybSxhcm12OCI7Cj4gCj4gTml0OiB3ZSd2ZSByZWNlbnRseSB0cmllZCB0byBl
cmFkaWNhdGUgImFybSxhcm12OCIgYXMgYSBmYWxsYmFjayBjb21wYXRpYmxlIGZvciByZWFsIENQ
VXMgKGFsdGhvdWdoIEkgc2VlIHRoZXJlIGFyZSBzdGlsbCBhIGNvdXBsZSBvZiBpbnN0YW5jZXMg
dGhhdCBoYXZlIHNsaXBwZWQgdGhyb3VnaCkuCgpUaGFua3MgZm9yIHBvaW50aW5nIHRoaXMsIEkn
bGwgcmVtb3ZlIGl0LgoKTmVpbAoKPiAKPiBSb2Jpbi4KPiAKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmVnID0gPDB4MCAweDEwMD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVuYWJs
ZS1tZXRob2QgPSAicHNjaSI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5leHQtbGV2ZWwt
Y2FjaGUgPSA8JmwyPjsKPj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+ICsKPj4gK8KgwqDCoMKgwqDC
oMKgIGNwdTEwMTogY3B1QDEwMSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldmljZV90
eXBlID0gImNwdSI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiYXJt
LGNvcnRleC1hNzMiLCAiYXJtLGFybXY4IjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVn
ID0gPDB4MCAweDEwMT47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVuYWJsZS1tZXRob2Qg
PSAicHNjaSI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5leHQtbGV2ZWwtY2FjaGUgPSA8
JmwyPjsKPj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIGNwdTEw
MjogY3B1QDEwMiB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldmljZV90eXBlID0gImNw
dSI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiYXJtLGNvcnRleC1h
NzMiLCAiYXJtLGFybXY4IjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MCAw
eDEwMj47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVuYWJsZS1tZXRob2QgPSAicHNjaSI7
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5leHQtbGV2ZWwtY2FjaGUgPSA8JmwyPjsKPj4g
K8KgwqDCoMKgwqDCoMKgIH07Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIGNwdTEwMzogY3B1QDEw
MyB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldmljZV90eXBlID0gImNwdSI7Cj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiYXJtLGNvcnRleC1hNzMiLCAiYXJt
LGFybXY4IjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MCAweDEwMz47Cj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVuYWJsZS1tZXRob2QgPSAicHNjaSI7Cj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG5leHQtbGV2ZWwtY2FjaGUgPSA8JmwyPjsKPj4gK8KgwqDCoMKg
wqDCoMKgIH07Cj4+ICvCoMKgwqAgfTsKPj4gK307Cj4+ICsKPj4gKyZjbGtjIHsKPj4gK8KgwqDC
oCBjb21wYXRpYmxlID0gImFtbG9naWMsZzEyYi1jbGtjIjsKPj4gK307Cj4+CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
