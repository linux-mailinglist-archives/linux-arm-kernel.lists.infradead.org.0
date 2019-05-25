Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E322A4CE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 16:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvbwJAjIx34hRQ/1ZPYU0fSSd65yHP85E+GXRnqwMDI=; b=V6TPDzHvoroEB7
	pOACqaFiGJIwCBXvxQzHLP+RFNVlAYTvRWgU91dcbE1EAIyJZX5ETQDCR0CBZhR7dzpnxE8D4qK/i
	BKFHQMNX/z1dTKh7yOxuP5ZTi5bTF14F9t7/umMrn3Of4yVdYnHYLlLh+VlY7eaQladg4adAHcvyg
	2CWaEDNstM/Hkqx5OxYcwPaBf+d17RoH6ouvwk5IsP2AVsqkJNnSTagE2Yxrxnwow9l0M+j0kX1aM
	HCD4A2VAa/h8VZjg3Pf9BFO9Ri2enJpAJqsoA3aTdix9zHHvd/c/n5DEesuwK69dseerTkjO1UpNl
	vUGk+aeLoOt13U1EsU4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUXTD-0001b0-6q; Sat, 25 May 2019 14:16:23 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUXT5-0001aT-GW
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 14:16:17 +0000
Received: by mail-wm1-x341.google.com with SMTP id f10so4583941wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 07:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jARxfBsrYNvn7p8/Iwq3xmRStS+33h/bwiy/IOpncSw=;
 b=J2+3oUfC3vN7+6n1601HaKaX2N0bISJtdFuFv7AxD82JHNdlPlSsKja61ewa8f63Fj
 hKAbHrX0BwDFlnvvoFNaO/TVkkmDjAlw1pacC6Y9gi9hBjnCy7BJnvqizLRZAj+uR0Nm
 E03ujVVYpD/P2v45a2BedfgJplBratCM4QliZKsCFTO4yz4zPZzSiHjgoKRdk+oZS84P
 vijPl9LaOh9GTD1AM19CgjjbJ+VswPStIVPrcUimIKplWeQTuum4Ll9CUT3EIhjx6fBp
 AJaG9OUofavZqi/ZEq88Mw2lP1pR12IlEAh/n1qaZovRKgxDqfTtlElc644kZI+SDh3K
 faVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jARxfBsrYNvn7p8/Iwq3xmRStS+33h/bwiy/IOpncSw=;
 b=AxuqCHLXJbTwVqbLZynAZ4l+RbIwnLu4qzM7/1KskCQ/E76QExyiIKYTfncG9PJymF
 peSMaed+/2m/SRsflNI/kWHyNGJSZmnqBfKPAYqz6Umc3hMkrAEigWDSj1IAQdD3ZqJG
 hbFupMhhcsX+7Z3PN414Fh7Nd/N2SQITjLT3F7tcs07D706iRHlUk1PYFUjezt9cSfqH
 NohED6ZNXLtCYXi91r96WMZ5IOuaghyyAoC85kiZ/sdN2nznvWD1ilKXp553YsY5i3xg
 42XgQA6stusPa0m90UVwRJvegdB2Ew8S1kuYab/qvnA28GMeJ2SQNa5uI9Qs2Iag/AsZ
 aL7Q==
X-Gm-Message-State: APjAAAVeYJLw9/6cUHnvD54dabSpuRV4rQnXxXxVhG9mbKxLQHG5Px/8
 1iolDHD2R33OOULCqZJLTBWJcw==
X-Google-Smtp-Source: APXvYqwrPmYJuj/du/Dc8iJgUR2Ouxp1rFf0arkcYlJk38pzVkHpeaXVsyMTuTwWL9kjZEwVOZ3S3A==
X-Received: by 2002:a1c:7503:: with SMTP id o3mr20950643wmc.28.1558793772558; 
 Sat, 25 May 2019 07:16:12 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id z23sm1996078wml.42.2019.05.25.07.16.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 07:16:12 -0700 (PDT)
Subject: Re: [RFC v2 1/2] clocksource: davinci-timer: add support for
 clockevents
To: Bartosz Golaszewski <brgl@bgdev.pl>
References: <20190523125813.29506-1-brgl@bgdev.pl>
 <20190523125813.29506-2-brgl@bgdev.pl>
 <dbe04cda-4f42-46b5-0808-e756a65180d2@linaro.org>
 <CAMRc=MfUFE_yBSqS-s4fVcU9W11Amgeer-eXWNBrkG0Z7KD4tA@mail.gmail.com>
 <5f513fdc-7768-43b8-9d0c-56f07a60768f@linaro.org>
 <CAMRc=MeFMQ9rz-=8GktGtaQm1j-X66RsCBTqR3-mofc4Bju8-w@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <a4585f30-5fa7-7fde-bbbd-c32464c0f060@linaro.org>
Date: Sat, 25 May 2019 16:16:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMRc=MeFMQ9rz-=8GktGtaQm1j-X66RsCBTqR3-mofc4Bju8-w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_071615_689224_5F400E70 
X-CRM114-Status: GOOD (  21.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMDUvMjAxOSAxMzo1MywgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiBwdC4sIDI0
IG1haiAyMDE5IG8gMTA6NTkgRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5v
cmc+IG5hcGlzYcWCKGEpOgo+Pgo+PiBPbiAyNC8wNS8yMDE5IDA5OjI4LCBCYXJ0b3N6IEdvbGFz
emV3c2tpIHdyb3RlOgo+Pj4gY3p3LiwgMjMgbWFqIDIwMTkgbyAxODozOCBEYW5pZWwgTGV6Y2Fu
byA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4gbmFwaXNhxYIoYSk6Cj4+Pj4KPj4+PiBPbiAy
My8wNS8yMDE5IDE0OjU4LCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+Pj4+PiBGcm9tOiBC
YXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgo+Pj4+Pgo+Pj4+
PiBDdXJyZW50bHkgdGhlIGNsb2Nrc291cmNlIGFuZCBjbG9ja2V2ZW50IHN1cHBvcnQgZm9yIGRh
dmluY2kgcGxhdGZvcm1zCj4+Pj4+IGxpdmVzIGluIG1hY2gtZGF2aW5jaS4gSXQgaGFyZC1jb2Rl
cyBtYW55IHRoaW5ncywgdXNlcyBnbG9iYWwgdmFyaWFibGVzLAo+Pj4+PiBpbXBsZW1lbnRzIGZ1
bmN0aW9uYWxpdGllcyB1bnVzZWQgYnkgYW55IHBsYXRmb3JtIGFuZCBoYXMgY29kZSBmcmFnbWVu
dHMKPj4+Pj4gc2NhdHRlcmVkIGFjcm9zcyBtYW55IChvZnRlbiB1bnJlbGF0ZWQpIGZpbGVzLgo+
Pj4+Pgo+Pj4+PiBJbXBsZW1lbnQgYSBuZXcsIG1vZGVybiBhbmQgc2ltcGxpZmllZCB0aW1lciBk
cml2ZXIgYW5kIHB1dCBpdCBpbnRvCj4+Pj4+IGRyaXZlcnMvY2xvY2tzb3VyY2UuIFdlIHN0aWxs
IG5lZWQgdG8gc3VwcG9ydCBsZWdhY3kgYm9hcmQgZmlsZXMgc28KPj4+Pj4gZXhwb3J0IGEgY29u
ZmlnIHN0cnVjdHVyZSBhbmQgYSBmdW5jdGlvbiB0aGF0IGFsbG93cyBtYWNoaW5lIGNvZGUgdG8K
Pj4+Pj4gcmVnaXN0ZXIgdGhlIHRpbWVyLgo+Pj4+Pgo+Pj4+PiBUaGUgdGltZXIgd2UncmUgdXNp
bmcgaXMgNjQtYml0IGJ1dCBjYW4gYmUgcHJvZ3JhbW1lZCBpbiBkdWFsIDMyLWJpdAo+Pj4+PiBt
b2RlIChib3RoIGNoYWluZWQgYW5kIHVuY2hhaW5lZCkuIFdlJ3JlIHVzaW5nIGR1YWwgMzItYml0
IG1vZGUgdG8KPj4+Pj4gaGF2ZSBzZXBhcmF0ZSBjb3VudGVycyBmb3IgY2xvY2tldmVudHMgYW5k
IGNsb2Nrc291cmNlLgo+Pj4+Pgo+Pj4+PiBUaGlzIHBhdGNoIGNvbnRhaW5zIHRoZSBjb3JlIGNv
ZGUgYW5kIHN1cHBvcnQgZm9yIGNsb2NrZXZlbnQuIFRoZQo+Pj4+PiBjbG9ja3NvdXJjZSBjb2Rl
IHdpbGwgYmUgaW5jbHVkZWQgaW4gYSBzdWJzZXF1ZW50IHBhdGNoLgo+Pj4+PgoKWyAuLi4gXQoK
Pj4+Pj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQKPj4+Pj4gK2RhdmluY2lfY2xvY2tldmVudF9yZWFk
KHN0cnVjdCBkYXZpbmNpX2Nsb2NrZXZlbnQgKmNsb2NrZXZlbnQsCj4+Pj4+ICsgICAgICAgICAg
ICAgICAgICAgICB1bnNpZ25lZCBpbnQgcmVnKQo+Pj4+PiArewo+Pj4+PiArICAgICByZXR1cm4g
cmVhZGxfcmVsYXhlZChjbG9ja2V2ZW50LT5iYXNlICsgcmVnKTsKPj4+Pj4gK30KPj4+Pj4gKwo+
Pj4+PiArc3RhdGljIHZvaWQgZGF2aW5jaV9jbG9ja2V2ZW50X3dyaXRlKHN0cnVjdCBkYXZpbmNp
X2Nsb2NrZXZlbnQgKmNsb2NrZXZlbnQsCj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgdW5zaWduZWQgaW50IHJlZywgdW5zaWduZWQgaW50IHZhbCkKPj4+Pj4gK3sKPj4+
Pj4gKyAgICAgd3JpdGVsX3JlbGF4ZWQodmFsLCBjbG9ja2V2ZW50LT5iYXNlICsgcmVnKTsKPj4+
Pj4gK30KPj4+Pj4gKwo+Pj4+PiArc3RhdGljIHZvaWQgZGF2aW5jaV90Y3JfdXBkYXRlKHZvaWQg
X19pb21lbSAqYmFzZSwKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25l
ZCBpbnQgbWFzaywgdW5zaWduZWQgaW50IHZhbCkKPj4+Pj4gK3sKPj4+Pj4gKyAgICAgZGF2aW5j
aV90Y3IgJj0gfm1hc2s7Cj4+Pj4+ICsgICAgIGRhdmluY2lfdGNyIHw9IHZhbCAmIG1hc2s7Cj4+
Pj4KPj4+Pgo+Pj4+IEkgZG9uJ3Qgc2VlIHdoZW4gdGhlIGRhdmluY2lfdGNyIGlzIGluaXRpYWxp
emVkLgo+Pj4+Cj4+Pgo+Pj4gSXQncyBzZXQgdG8gMHgwIGJ5IHRoZSBjb21waWxlciBhbmQgd2Un
cmUgc2V0dGluZyB0aGUgcmVnaXN0ZXIgdG8gMHgwCj4+PiBpbiBkYXZpbmNpX3RpbWVyX2luaXQo
KS4KPj4KPj4gV2h5IGRpZCB5b3UgbmVlZCB0byByZWFkbCBiZWZvcmUgaW4gdGhlIHByZXZpb3Vz
IHZlcnNpb24/IFRoZSBpZGVhIG9mCj4+IGNhY2hpbmcgdGhlIHZhbHVlIHdhcyB0byBzYXZlIGFu
IGV4dHJhIHJlYWRsLgo+Pgo+PiBJZiBpdCBpcyBhbHdheXMgemVybywgdGhlbiB3ZSBkb24ndCBu
ZWVkIHRoaXMgdmFyaWFibGUgbmVpdGhlciB0aGUgcmVhZCwKPj4ganVzdCBkb2luZzoKPj4KPj4g
d3JpdGVsX3JlbGF4ZWQodmFsICYgbWFzaywgYmFzZSArIERBVklOQ0lfVElNRVJfUkVHX1RDUik7
Cj4+Cj4+IHNob3VsZCB3b3JrIG5vID8KPiAKPiBJdCdzIG5vdCBhbHdheXMgemVyby4gSXRzIHJl
c2V0IHZhbHVlIGlzIHplcm8gYW5kIHdlIHdyaXRlIDAgdG8gaXQgYXQKPiBpbml0IHRpbWUganVz
dCB0byBtYWtlIHN1cmUsIGJ1dCB0aGVuIHdlIG1vZGlmeSBpdCBhY2NvcmRpbmcgdG8gdGhlCj4g
Y29uZmlndXJhdGlvbi4gVGhlIHNpbmdsZSBUQ1IgcmVnaXN0ZXIgY29udHJvbHMgYm90aCBoYWx2
ZXMgb2YgdGhlCj4gdGltZXIsIHNvIHdlIGRvIG5lZWQgYW4gYWN0dWFsIHVwZGF0ZSwgbm90IGEg
c2ltcGxlIHdyaXRlLgoKT2sgYnV0IHRoZSBkcml2ZXIgY2FuIGJlIG9uZXNob3Qgb3IgZGlzYWJs
ZWQgaW4gdGhlIGNvZGUgKG11dHVhbGx5CmV4Y2x1c2l2ZSksIG5vID8KClNvIGRvaW5nCgogLSB3
cml0ZWwob25lc2hvdCwgYmFzZSk7CiAtIHdyaXRlbChkaXNhYmxlZCwgYmFzZSk7Cgp3b3JrcyB3
aXRob3V0IGFueSBtYXNrIGNvbXB1dGF0aW9uLCBubz8KCldlbGwgdGhlIGFib3ZlIGFzc3VtZXMg
b3RoZXIgcGFydCBvZiB0aGUgcmVnaXN0ZXIgYXJlbid0IGNoYW5nZWQgYnkKb3RoZXIgc3Vic3lz
dGVtcyAob3IgYnkgdGhlIHRpbWVyIGl0c2VsZikuCgoKCgoKCgoKCgoKLS0gOgogPGh0dHA6Ly93
d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9M
aW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0
ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
