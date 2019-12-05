Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B94114320
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:56:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OzUb4bFTSF0iPMSib6fUHvKlxGnWxxROtVcjCVS5+7w=; b=k0bCQw1uk525Cj
	ZXkcE1BveGZ6YCVTLEebNyum2leI/D4mzrZTUk0Hpdb2XU19U8rj+NYh0fivqk4ivTVVSf7AMJGrd
	07w6zcI4fWfymCZb/lcnGsYtltXGQ11rISRRNfEIl5xCZdZL4l2tMpU5QstqaKWO96iVVXGTk356c
	wnzlOzTH3dYd7MnYmQSu1QsoKDbv0QAItHbF1IvMlW8lS/joiRCefrx9frZATMkH4n3YdqRWnlTZQ
	jZISYXzO7Wd82dvN9lVIrPrDHEV/F+UpxQaBkgOrdVqwMB5j1eeOBq5w94KI7YfmzvfArCB66Alp3
	g0OkPDaTWp71j9GE3a4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icsYa-0008AS-SD; Thu, 05 Dec 2019 14:56:40 +0000
Received: from mail-yb1-f193.google.com ([209.85.219.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icsYN-0008A7-BQ
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 14:56:28 +0000
Received: by mail-yb1-f193.google.com with SMTP id v2so1566038ybo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 06:56:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cTlMueSMchAhnB5c9dF6u/KNgq8yI63KJZxYO4ZHEn8=;
 b=IJrhqrKX2N7rWaJBw9McqHtpJqUdCB30WBjjFgp/E6kt9Qqv1TWNJvAPkdgRFgVjOA
 sqX0ufQNjSYbUJ2zUo/pM2iUgAsBejK40Lifzzp5Q5KYXaeLBdHIyH/p6oZ1EJXVa2Nc
 AMAsR2txqrD8f6sN//ydCtEia2asjjxdZwvdHY85ZvweGV/X+q6GTV+H6IH1XkEaMTxp
 XIaaBn75Ujp5nrG9+UfvOaZN+jUlsmeqAgndUrHOjfEEPwcF+lAJ3mYIpAlFh/A6DrE9
 7UZq43ndQuvZ26dV6lSDwam2VK+rK7WjfTUI3U/VcrF/ZakMaLpw7hAYtvrsPPvDTaGw
 weCw==
X-Gm-Message-State: APjAAAVo6ub4dcvh7PW/+trfAeVVLhjhIQr90KJBUrVR5ORZ4y1qWa+w
 kbWSD58utoc9QE49IDKWmuEBIu+FaEu9J9vvtJUYdA==
X-Google-Smtp-Source: APXvYqxJjhm3o1BQB3vkrGqzzaet9PSqTm3ZsGDjonVncS72IrzgX4OvU09qJdtZVweIfksp+ZDsbdXcT9x1M/F7SNQ=
X-Received: by 2002:a25:5555:: with SMTP id j82mr6920179ybb.376.1575557786280; 
 Thu, 05 Dec 2019 06:56:26 -0800 (PST)
MIME-Version: 1.0
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-17-vincenzo.frascino@arm.com>
 <20191204135159.GA7210@roeck-us.net>
 <6cdf4734-4065-09c1-8623-1bf523b38c1b@arm.com>
 <20191204161641.GA28130@roeck-us.net>
 <e35a7f71-2477-fa52-01e4-301199e99c2e@arm.com>
 <CAAdtpL71ED3zbkHMqtd1XFQwToOctWJpy2WPqahxHR81fKdTkg@mail.gmail.com>
 <a391048e-f57c-159e-7174-d9d38d8f3825@arm.com>
 <CAK8P3a1krE=nOi6Dy=QaWiE9VTgNpUVbrHUVm_3Cq+JGJyuwKQ@mail.gmail.com>
In-Reply-To: <CAK8P3a1krE=nOi6Dy=QaWiE9VTgNpUVbrHUVm_3Cq+JGJyuwKQ@mail.gmail.com>
From: =?UTF-8?Q?Philippe_Mathieu=2DDaud=C3=A9?= <f4bug@amsat.org>
Date: Thu, 5 Dec 2019 15:56:15 +0100
Message-ID: <CAAdtpL5cMZQPa-SdMdi3SZnO=3-FkTkDCZjgjyy5Gmcqo+-MXw@mail.gmail.com>
Subject: Re: [PATCH v7 16/25] arm: Add support for generic vDSO (causing crash)
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_065627_395138_7C5A3BF7 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (philippe.mathieu.daude[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Will Deacon <will.deacon@arm.com>,
 Guenter Roeck <linux@roeck-us.net>, Andre Przywara <andre.przywara@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Huw Davies <huw@codeweavers.com>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBEZWMgNSwgMjAxOSBhdCAxMjowMiBQTSBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRi
LmRlPiB3cm90ZToKPiBPbiBUaHUsIERlYyA1LCAyMDE5IGF0IDExOjAwIEFNIFZpbmNlbnpvIEZy
YXNjaW5vCj4gPHZpbmNlbnpvLmZyYXNjaW5vQGFybS5jb20+IHdyb3RlOgo+ID4KPiA+IEhpIFBo
aWxpcHBlLAo+ID4KPiA+IE9uIDA1LzEyLzIwMTkgMDk6NDIsIFBoaWxpcHBlIE1hdGhpZXUtRGF1
ZMOpIHdyb3RlOgo+ID4gPiBUaGVyZSBhcmUgb25seSAyICJJbnZlc3RpZ2F0ZWQtYnkiIHZzIDdr
KyAiU3VnZ2VzdGVkLWJ5Ii4uLiBJcyB0aGVyZSBhCj4gPiA+IHJlYWwgZGlmZmVyZW5jZT8KPiA+
Cj4gPiBOb3Qgc3VyZSBhYm91dCB0aGF0LiBNeSB0YWtlIGlzIHRoYXQgU3VnZ2VzdGVkLWJ5IGlz
IHVzZWQgd2hlbiBzb21lb25lIHN1Z2dlc3RzCj4gPiB5b3UgaG93IHRvIHBvc3NpYmx5IGltcGxl
bWVudCBhIGZlYXR1cmUgYW5kIHlvdSBnbyBhbmQgZG8gdGhhdC4gSW52ZXN0aWdhdGVkLWJ5Cj4g
PiBpcyB3aGVuIHRoZXJlIGlzIGEgZml4IHRvIG1ha2UgYW5kIHNvbWVvbmUgY29tZXMgdG8geW91
IHdpdGggdGhlIGV4YWN0IHNvbHV0aW9uCj4gPiBsaWtlIGluIHRoaXMgY2FzZSBBcm5kIGRpZC4K
Pgo+IEl0J3Mgbm90IGEgc3RhbmRhcmQgdGFnLCBidXQgSSBzdWdnZXN0ZWQgaXQgYmVjYXVzZSBp
dCBkb2VzIGV4cGxhaW4KPiBiZXR0ZXIgd2hhdCBJIGRpZC4KPgo+IFlvdSBjb3VsZCBhbHNvIGp1
c3QgZXhwbGFpbiBpbiBjbGVhciB0ZXh0IHRoYXQgSSBkaWQgdGhlIGFuYWx5c2lzIGFuZCB0aGVu
IGFkZAo+IHRoZSBtb3JlIG5vcm1hbCBTdWdnZXN0ZWQtYnkgdGFnLCBJIGRvbid0IGNhcmUgZWl0
aGVyIHdheS4KCk5vIHByb2JsZW0sIEkgd2FzIGp1c3Qgd29uZGVyaW5nIHRoZSBzdWJ0bGUgZGlm
ZmVyZW5jZSBiZXR3ZWVuIGJvdGggdGFncy4KSSBkb24ndCBtaW5kIHdoaWNoIG9uZSB5b3UgdXNl
LCBhcyBsb25nIGFzIHRoaXMgaXNzdWUgZ2V0IGZpeGVkIDopClRoYW5rcyBmb3IgdGhlIHBhdGNo
IEJUVyEKClJlZ2FyZHMsCgpQaGlsLgoKPiAgICAgICBBcm5kCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
