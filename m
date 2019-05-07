Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2635916978
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 19:44:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QfzFyDePjM6sGkN1giIv/6ccyF5OzkVvfXDDDe7ggKg=; b=G1xIYpaZMsnVSV
	JQ8kFHXzC+6WBYNNPxEjnbXPiCcDoLiVYe3ZpRSjrWwUP9X7LtiEQmzqJaLuLRlza6cu/QBPXsdlT
	rT40Kha9vMjXaMFj5/ZhstjyHDnDLYPV5790GV8IQdEzlV+/w8Z/JUyIWGmTk0e0qKF8yTI1SP2m/
	hwwlASBogWSWyBLJ1hSre2E6adu4fuy6XMARm1XzQUF03JLIb3SpbV9dfrKDrTN0apHUEL8RTc85X
	Rrn+Gf2pQrtE7QBt3f9D+eTyoDNnATuMhjZmo7BkAP3gxQisZYYD6fJG97rf5qKUnkZOBvxqGYQSU
	gQKwKd7qN/JXeWunz6CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO48Z-0003OR-Tg; Tue, 07 May 2019 17:44:19 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO48R-0003ND-GZ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 17:44:13 +0000
Received: by mail-wm1-x341.google.com with SMTP id n25so21105762wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 10:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lUKp27BYghRFZlVQjWKYNq5xXwlaTl/g5v0aaJBgwTE=;
 b=N/Rwk20/d0z+lJ/SYOB3r4fZyUGg4c9PYvUROLW6ERBQUcE8hy4+5nMxlPL2AqrD4L
 iHQpz7zUFU+6lItyQiqYzCnQ3gQXcV3KcEuXtk9RvNU//oVr/EZf/49miI1CICcwmzO6
 snNCogOkdeNcHKQMhTfd4yVkVADVrRHChnyxvwyF+M+WZ5REwR105tJFqOYwCY5eYy//
 VsEKwPjSpNWHoWi+Avb+lC4EzTIyzh588SRGM1gdTDSYhwZ2Hj9xGfqQXC3Zkrxu4YdF
 sMIFsAwia6RupApOVdCdEIVB1pDx1OWf08kwXiY6FcV0TFZbYP/pMGam35Kf6ksFXIXn
 pf0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=lUKp27BYghRFZlVQjWKYNq5xXwlaTl/g5v0aaJBgwTE=;
 b=sUG4ixTeJKH2K11WU1XKNqeQQWjK0FGo/dAka55nDb5bAZ4I7dwu782Pn4OuPKK0GD
 ZqlMfQj1eRQNNekngavcykrNGzlgMUnkeJrv8Gpcl65y1U/kWX2h9xS5NqM95xEqqN6u
 o5DHQkjReQFATPp5lt1wztSEM4tth3awpLYZcWIUxpVQVN1yBKb/ce5IHdfQV9moILpa
 dSb75EWGQXyZvr+Sr65RjlnSnkEOaT98Z+VY8o5cQMdrr4Fmpk9VBBi/EuCSTgWuJDPl
 3BtVab1r90dq1rbmkWyrSARrLZQnxH3anqyGbh0NKi6/bApNJPEMu7vP9AJhf4gNNSPs
 5fsg==
X-Gm-Message-State: APjAAAVudD5tiHnt5W9Y9jXD1cQGms2Icht26LdLJ6s4Mwkn2kywCUVu
 JwbzBqMcWuzKb7ZlMIA6EixnBo3r
X-Google-Smtp-Source: APXvYqxISjMORMPGMj/gciHjL6Sz+7BbJZ8TY9WXHEx/1MzUhmiU8JCIYId7wK/dOmuQl8g9rDpnBw==
X-Received: by 2002:a05:600c:114e:: with SMTP id
 z14mr7464310wmz.92.1557251049643; 
 Tue, 07 May 2019 10:44:09 -0700 (PDT)
Received: from [10.67.49.27] ([192.19.223.250])
 by smtp.googlemail.com with ESMTPSA id v12sm12446985wrw.23.2019.05.07.10.44.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 10:44:08 -0700 (PDT)
Subject: Re: [PATCH 2/2] hwmon: scmi: Scale values to target desired HWMON
 units
To: Guenter Roeck <linux@roeck-us.net>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
References: <20190506224109.9357-1-f.fainelli@gmail.com>
 <20190506224109.9357-3-f.fainelli@gmail.com>
 <a4dd5f4f-af12-8783-c612-cf3e88a9b94f@roeck-us.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <e67efa2b-813c-c9f3-8f3d-b32c1b61ebc8@gmail.com>
Date: Tue, 7 May 2019 10:44:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a4dd5f4f-af12-8783-c612-cf3e88a9b94f@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_104411_573414_4CEA1A41 
X-CRM114-Status: GOOD (  27.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS83LzE5IDY6NTUgQU0sIEd1ZW50ZXIgUm9lY2sgd3JvdGU6Cj4gSGkgRmxvcmlhbiwKPiAK
PiBPbiA1LzYvMTkgMzo0MSBQTSwgRmxvcmlhbiBGYWluZWxsaSB3cm90ZToKPj4gSWYgdGhlIFND
TUkgZmlybXdhcmUgaW1wbGVtZW50YXRpb24gaXMgcmVwb3J0aW5nIHZhbHVlcyBpbiBhIHNjYWxl
IHRoYXQKPj4gaXMgZGlmZmVyZW50IGZyb20gdGhlIEhXTU9OIHVuaXRzLCB3ZSBuZWVkIHRvIHNj
YWxlIHVwIG9yIGRvd24gdGhlIHZhbHVlCj4+IGFjY29yZGluZyB0byBob3cgZmFyIGFwcGFydCB0
aGV5IGFyZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxs
aUBnbWFpbC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2h3bW9uL3NjbWktaHdtb24uYyB8IDU1
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tCj4+IMKgIDEgZmlsZSBjaGFu
Z2VkLCA0NiBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9od21vbi9zY21pLWh3bW9uLmMgYi9kcml2ZXJzL2h3bW9uL3NjbWktaHdtb24uYwo+
PiBpbmRleCBhODAxODNhNDg4YzUuLmU5OTEzNTA5Y2I4OCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9od21vbi9zY21pLWh3bW9uLmMKPj4gKysrIGIvZHJpdmVycy9od21vbi9zY21pLWh3bW9uLmMK
Pj4gQEAgLTE4LDYgKzE4LDUxIEBAIHN0cnVjdCBzY21pX3NlbnNvcnMgewo+PiDCoMKgwqDCoMKg
IGNvbnN0IHN0cnVjdCBzY21pX3NlbnNvcl9pbmZvICoqaW5mb1tod21vbl9tYXhdOwo+PiDCoCB9
Owo+PiDCoCArc3RhdGljIGVudW0gaHdtb25fc2Vuc29yX3R5cGVzIHNjbWlfdHlwZXNbXSA9IHsK
Pj4gK8KgwqDCoCBbVEVNUEVSQVRVUkVfQ10gPSBod21vbl90ZW1wLAo+PiArwqDCoMKgIFtWT0xU
QUdFXSA9IGh3bW9uX2luLAo+PiArwqDCoMKgIFtDVVJSRU5UXSA9IGh3bW9uX2N1cnIsCj4+ICvC
oMKgwqAgW1BPV0VSXSA9IGh3bW9uX3Bvd2VyLAo+PiArwqDCoMKgIFtFTkVSR1ldID0gaHdtb25f
ZW5lcmd5LAo+PiArfTsKPj4gKwo+PiArc3RhdGljIHU2NCBzY21pX2h3bW9uX3NjYWxlKGNvbnN0
IHN0cnVjdCBzY21pX3NlbnNvcl9pbmZvICpzZW5zb3IsCj4+IHU2NCB2YWx1ZSkKPj4gK3sKPj4g
K8KgwqDCoCB1NjQgc2NhbGVkX3ZhbHVlID0gdmFsdWU7Cj4gCj4gSSBkb24ndCB0aGluayB0aGF0
IHZhcmlhYmxlIGlzIG5lY2Vzc2FyeS4KPiAKPj4gK8KgwqDCoCBzOCBkZXNpcmVkX3NjYWxlOwo+
IAo+IEp1c3Qgc2NhbGUgPyBBbHNvLCB5b3UgY291bGQgYXNzaWduIHNjYWxlIGhlcmUgZGlyZWN0
bHksIGFuZCBzdWJ0cmFjdAo+IHRoZSBvZmZzZXQgYmVsb3cuIFRoZW4gIm4iIHdvdWxkIG5vdCBi
ZSBuZWNlc3NhcnkuCj4gU3VjaCBhcwo+IMKgwqDCoMKgczggc2NhbGUgPSBzZW5zb3ItPnNjYWxl
O8KgwqDCoCAvLyBhc3N1bWluZyBzY2FsZSBpcyBzOAo+IMKgwqDCoMKgLi4uCj4gwqDCoMKgwqBj
YXNlIENVUlJFTlQ6Cj4gwqDCoMKgwqDCoMKgwqAgc2NhbGUgKz0gMzsKPiDCoMKgwqDCoC4uLgo+
IAo+IFRoYXQgd291bGQgYWxzbyBiZSBsZXNzIGNvbmZ1c2luZywgc2luY2UgaXQgd291bGQgYXZv
aWQgdGhlIGRvdWJsZQo+IG5lZ2F0aW9uLgo+IAo+PiArwqDCoMKgIGludCBuLCBwOwo+IAo+PiAr
Cj4+ICvCoMKgwqAgc3dpdGNoIChzZW5zb3ItPnR5cGUpIHsKPj4gK8KgwqDCoCBjYXNlIFRFTVBF
UkFUVVJFX0M6Cj4+ICvCoMKgwqAgY2FzZSBWT0xUQUdFOgo+PiArwqDCoMKgIGNhc2UgQ1VSUkVO
VDoKPj4gK8KgwqDCoMKgwqDCoMKgIC8qIGZhbGwgdGhyb3VnaCAqLwo+IFVubmVjZXNzYXJ5IGNv
bW1lbnQKCklzIG5vdCByZW1vdmluZyB0aGUgY29tbWVudCBnb2luZyB0byB1cHNldCBnY2Mgd2hl
biB1c2luZwotV2ltcGxpY2l0LWZhbGx0aHJvdWdoPwoKPiAKPj4gK8KgwqDCoMKgwqDCoMKgIGRl
c2lyZWRfc2NhbGUgPSAtMzsKPj4gK8KgwqDCoMKgwqDCoMKgIGJyZWFrOwo+PiArwqDCoMKgIGNh
c2UgUE9XRVI6Cj4+ICvCoMKgwqAgY2FzZSBFTkVSR1k6Cj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBm
YWxsIHRocm91Z2ggKi8KPiBVbm5lY2Vzc2FyeSBjb21tZW50Lgo+IAo+PiArwqDCoMKgwqDCoMKg
wqAgZGVzaXJlZF9zY2FsZSA9IC02Owo+PiArwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+ICvCoMKg
wqAgZGVmYXVsdDoKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBzY2FsZWRfdmFsdWU7Cj4gCj4g
SGVyZSB3ZSBwcmVzdW1hYmx5IHdhbnQgYSBzY2FsZSBvZiAwLiBIb3dldmVyLCBpZiB0aGUgc2Nh
bGUgcGFzc2VkCj4gZnJvbSBTQ01JIGlzLCBzYXksIC01IG9yICs1LCB3ZSByZXR1cm4gdGhlIG9y
aWdpbmFsICh1bmFkanVzdGVkKQo+IHZhbHVlLiBTZWVtcyB0byBtZSB3ZSB3b3VsZCBzdGlsbCB3
YW50IHRvIGFkanVzdCB0aGUgdmFsdWUgdG8gbWF0Y2gKPiBod21vbiBleHBlY3RhdGlvbnMuIEFt
IEkgbWlzc2luZyBzb21ldGhpbmcgPwoKWW91IHJhaXNlIGEgdmFsaWQgcG9pbnQsIG5vdCB0aGF0
IGNvdWxkIGhhcHBlbiB0b2RheSBiZWNhdXNlIGlmIHRoZQpzZW5zb3IgdHlwZSBoYXMgYSB2YWx1
ZSB3ZSBkb24ndCByZWNvZ25pemUsIHdlIGhhdmUgbm90IHJlZ2lzdGVyZWQgaXQsCnNvIHdlIHdv
dWxkIG5vdCBldmVuIHRyeSB0byByZWFkIHJvbSBpdCwgYnV0IGxldCdzIGJlIGZ1dHVyZSBwcm9v
Zi4KCj4gCj4+ICvCoMKgwqAgfQo+PiArCj4+ICvCoMKgwqAgbiA9IChzOClzZW5zb3ItPnNjYWxl
IC0gZGVzaXJlZF9zY2FsZTsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChuID09IDApCj4gCj4gSW5k
ZW50YXRpb24gc2VlbXMgb2ZmIGhlcmUuCj4gCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIHNjYWxlZF92YWx1ZTsKPj4gKwo+PiArwqDCoMKgIGZvciAocCA9IDA7IHAg
PCBhYnMobik7IHArKykgewo+PiArwqDCoMKgwqDCoMKgwqAgLyogTmVlZCB0byBzY2FsZSB1cCBm
cm9tIHNlbnNvciB0byBIV01PTiAqLwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKG4gPiAwKQo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzY2FsZWRfdmFsdWUgKj0gMTA7Cj4+ICvCoMKgwqDCoMKg
wqDCoCBlbHNlCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRvX2RpdihzY2FsZWRfdmFsdWUs
IDEwKTsKPj4gK8KgwqDCoCB9Cj4gCj4gU29tZXRoaW5nIGxpa2UKPiAKPiDCoMKgwqDCoGZhY3Rv
ciA9IHBvdzEwKGFicyhzY2FsZSkpOwo+IMKgwqDCoMKgaWYgKHNjYWxlID4gMCkKPiDCoMKgwqDC
oMKgwqDCoCB2YWx1ZSAqPSBmYWN0b3I7Cj4gwqDCoMKgwqBlbHNlCj4gwqDCoMKgwqDCoMKgwqAg
ZG9fZGl2KHZhbHVlLCBmYWN0b3IpOwo+IAo+IHdvdWxkIGF2b2lkIHRoZSByZXBlYXRlZCBhYnMo
KSBhbmQgZG9fZGl2KCkuIFVuZm9ydHVuYXRlbHkgdGhlcmUgaXMKPiBubyBwb3cxMCgpIGhlbHBl
ciwgc28geW91IHdvdWxkIGhhdmUgdG8gd3JpdGUgdGhhdC4gU3RpbGwsIEkgdGhpbmsKPiB0aGF0
IHdvdWxkIGJlIG11Y2ggbW9yZSBlZmZpY2llbnQuCgpTb3VuZHMgcmVhc29uYWJsZS4gVGhhbmtz
IGZvciB5b3VyIGZlZWRiYWNrIQotLSAKRmxvcmlhbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
