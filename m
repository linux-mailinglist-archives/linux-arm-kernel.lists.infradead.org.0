Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A1030DFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 14:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfxzpvH3iDlJDHLuT5M9k2qrS80AsagM8wAfp+8obMQ=; b=nxb6AxmUt+7LqK
	8wFnBtcOa8RLKt20Awg2JMq9nNnKeP8nPv852Fuf2E9aIoG9sBiF6vSDFC1Goo3PupCtoV5Q9NmoC
	tQfnC6KH5D4RC3pfZAzCFr0POoOSw5T26V5hVSa1EpRu2uRbEI2DbweqTS2y8U7Ftt1ttW1TPBytS
	riQ1hHJUF/KTV+W5z5gPelbmkyKLUHCP5vk5rR6kp9avgnkS8Pvi5OEkZEGUOXye/fVmFgNMcromq
	bHKLDmEVg22QqJIqaI2DIRHuwE+Vx0JWbQA9Rrt4pm6rqLtD7LjiXvW+6nbkrXAjXGHgLQfWxFnMI
	HQvqpHIwQ6yXfKOkiP7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWgXF-0002IZ-B7; Fri, 31 May 2019 12:21:25 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWgX8-0002Hs-0t
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 12:21:19 +0000
Received: by mail-it1-x144.google.com with SMTP id g24so2198986iti.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 05:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ie7nzOQWgvSP+rjuV9XzGj5tstN5Qnh4DhU7fJJh8c0=;
 b=rQIZSniUyBRaDoAa9OhgSc1XyFTI58cakDgH6W8i+kUSGDh+TNyA7wC8Xg0Rlk1KrC
 srejZxR0uYC0BQTwaggq9g4QicSZ1tIIWcmKeAXqr3hX6ZRh2ZEar5psFp/5FTNgnoKA
 yIZqmLlCQE1wuFvOxPBVwmoxquC84TeX8oOiab9OqXrH/djZ/TqBtkaAAyUjuRQDS8ZI
 JlIGDy8Ps+iKr9yjoD57sdcKFsAJnLwStanNzfggWCM90LGKRHXQruDDUY2fmjT3lS0Y
 pQihMvCbbGKihIG/wDTbRyV3rMr8IOvMc4aqrGTIA84d4GWjaJiqvFfH4Kp5j3of5ISG
 WYmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ie7nzOQWgvSP+rjuV9XzGj5tstN5Qnh4DhU7fJJh8c0=;
 b=j5F3QYDHDcRNDapc8vHTLoql0wjaOkHdZpTST/l3jy9P8nXaV5WM8ABNCwLe4E6mZ+
 /Aam8ZjQ+GBobD5j0nmE8zcb98C7LiIG3P3tcfJ55gyIE+xX1/9F0Vb3LSNG9daojoJk
 8JQyhwfQPgrKMPu3ZC6wWo7ckU8rztpZHavxs5dsVqDFXi4W8zeIJAa9+NLPBrlLPisg
 yKKhYnf06GysMKp2YYhvNPitsGpLu+a7uuGFuZrfCRk7dKQe5KWHraIi7DzryHgL/k+c
 Y+ixRETzszZ/z1Q/wASzbX9Ma7SVMoxJt5sKsL5yv6+V5muCT9endGmK8SrRJNWYK/DU
 /5Gw==
X-Gm-Message-State: APjAAAX4R6gIAeh+a5Z1G5DxEud/aQ/AVZLmgGhNdRjAHhuBdr8Ps6Qa
 kiwWXv/XvKXl/VTqwVMBQQpR2wq5/+51Ctx7JUmR1A==
X-Google-Smtp-Source: APXvYqydN8y5filaWrzf90A7dtZQbs0qp1udvwSLh7dvuWYQgis5GNJFEIU73UB7H6j0jyK7fSPmiqgY4Vy+3/pMAdw=
X-Received: by 2002:a24:edcd:: with SMTP id r196mr1838889ith.139.1559305275651; 
 Fri, 31 May 2019 05:21:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190523125813.29506-1-brgl@bgdev.pl>
 <20190523125813.29506-2-brgl@bgdev.pl>
 <dbe04cda-4f42-46b5-0808-e756a65180d2@linaro.org>
 <CAMRc=MfUFE_yBSqS-s4fVcU9W11Amgeer-eXWNBrkG0Z7KD4tA@mail.gmail.com>
 <5f513fdc-7768-43b8-9d0c-56f07a60768f@linaro.org>
 <CAMRc=MeFMQ9rz-=8GktGtaQm1j-X66RsCBTqR3-mofc4Bju8-w@mail.gmail.com>
 <a4585f30-5fa7-7fde-bbbd-c32464c0f060@linaro.org>
 <CAMRc=Mcx55yJ2HmTi7ui4sxa5L+Fwgudra-chaxgYccgg8Vtfw@mail.gmail.com>
In-Reply-To: <CAMRc=Mcx55yJ2HmTi7ui4sxa5L+Fwgudra-chaxgYccgg8Vtfw@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 31 May 2019 14:21:04 +0200
Message-ID: <CAMRc=Mfsy4hScgXAAnKT7yi7k6RObC7of6BH6Fg8TKBajaUqvw@mail.gmail.com>
Subject: Re: [RFC v2 1/2] clocksource: davinci-timer: add support for
 clockevents
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_052118_126808_C9A08EC5 
X-CRM114-Status: GOOD (  28.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
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

bmllZHouLCAyNiBtYWogMjAxOSBvIDEwOjE2IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdk
ZXYucGw+IG5hcGlzYcWCKGEpOgo+Cj4gc29iLiwgMjUgbWFqIDIwMTkgbyAxNjoxNiBEYW5pZWwg
TGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4gbmFwaXNhxYIoYSk6Cj4gPgo+ID4g
T24gMjQvMDUvMjAxOSAxMzo1MywgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiA+ID4gcHQu
LCAyNCBtYWogMjAxOSBvIDEwOjU5IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5h
cm8ub3JnPiBuYXBpc2HFgihhKToKPiA+ID4+Cj4gPiA+PiBPbiAyNC8wNS8yMDE5IDA5OjI4LCBC
YXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gPj4+IGN6dy4sIDIzIG1haiAyMDE5IG8gMTg6
MzggRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+IG5hcGlzYcWCKGEp
Ogo+ID4gPj4+Pgo+ID4gPj4+PiBPbiAyMy8wNS8yMDE5IDE0OjU4LCBCYXJ0b3N6IEdvbGFzemV3
c2tpIHdyb3RlOgo+ID4gPj4+Pj4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3
c2tpQGJheWxpYnJlLmNvbT4KPiA+ID4+Pj4+Cj4gPiA+Pj4+PiBDdXJyZW50bHkgdGhlIGNsb2Nr
c291cmNlIGFuZCBjbG9ja2V2ZW50IHN1cHBvcnQgZm9yIGRhdmluY2kgcGxhdGZvcm1zCj4gPiA+
Pj4+PiBsaXZlcyBpbiBtYWNoLWRhdmluY2kuIEl0IGhhcmQtY29kZXMgbWFueSB0aGluZ3MsIHVz
ZXMgZ2xvYmFsIHZhcmlhYmxlcywKPiA+ID4+Pj4+IGltcGxlbWVudHMgZnVuY3Rpb25hbGl0aWVz
IHVudXNlZCBieSBhbnkgcGxhdGZvcm0gYW5kIGhhcyBjb2RlIGZyYWdtZW50cwo+ID4gPj4+Pj4g
c2NhdHRlcmVkIGFjcm9zcyBtYW55IChvZnRlbiB1bnJlbGF0ZWQpIGZpbGVzLgo+ID4gPj4+Pj4K
PiA+ID4+Pj4+IEltcGxlbWVudCBhIG5ldywgbW9kZXJuIGFuZCBzaW1wbGlmaWVkIHRpbWVyIGRy
aXZlciBhbmQgcHV0IGl0IGludG8KPiA+ID4+Pj4+IGRyaXZlcnMvY2xvY2tzb3VyY2UuIFdlIHN0
aWxsIG5lZWQgdG8gc3VwcG9ydCBsZWdhY3kgYm9hcmQgZmlsZXMgc28KPiA+ID4+Pj4+IGV4cG9y
dCBhIGNvbmZpZyBzdHJ1Y3R1cmUgYW5kIGEgZnVuY3Rpb24gdGhhdCBhbGxvd3MgbWFjaGluZSBj
b2RlIHRvCj4gPiA+Pj4+PiByZWdpc3RlciB0aGUgdGltZXIuCj4gPiA+Pj4+Pgo+ID4gPj4+Pj4g
VGhlIHRpbWVyIHdlJ3JlIHVzaW5nIGlzIDY0LWJpdCBidXQgY2FuIGJlIHByb2dyYW1tZWQgaW4g
ZHVhbCAzMi1iaXQKPiA+ID4+Pj4+IG1vZGUgKGJvdGggY2hhaW5lZCBhbmQgdW5jaGFpbmVkKS4g
V2UncmUgdXNpbmcgZHVhbCAzMi1iaXQgbW9kZSB0bwo+ID4gPj4+Pj4gaGF2ZSBzZXBhcmF0ZSBj
b3VudGVycyBmb3IgY2xvY2tldmVudHMgYW5kIGNsb2Nrc291cmNlLgo+ID4gPj4+Pj4KPiA+ID4+
Pj4+IFRoaXMgcGF0Y2ggY29udGFpbnMgdGhlIGNvcmUgY29kZSBhbmQgc3VwcG9ydCBmb3IgY2xv
Y2tldmVudC4gVGhlCj4gPiA+Pj4+PiBjbG9ja3NvdXJjZSBjb2RlIHdpbGwgYmUgaW5jbHVkZWQg
aW4gYSBzdWJzZXF1ZW50IHBhdGNoLgo+ID4gPj4+Pj4KPiA+Cj4gPiBbIC4uLiBdCj4gPgo+ID4g
Pj4+Pj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQKPiA+ID4+Pj4+ICtkYXZpbmNpX2Nsb2NrZXZlbnRf
cmVhZChzdHJ1Y3QgZGF2aW5jaV9jbG9ja2V2ZW50ICpjbG9ja2V2ZW50LAo+ID4gPj4+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCByZWcpCj4gPiA+Pj4+PiArewo+ID4gPj4+
Pj4gKyAgICAgcmV0dXJuIHJlYWRsX3JlbGF4ZWQoY2xvY2tldmVudC0+YmFzZSArIHJlZyk7Cj4g
PiA+Pj4+PiArfQo+ID4gPj4+Pj4gKwo+ID4gPj4+Pj4gK3N0YXRpYyB2b2lkIGRhdmluY2lfY2xv
Y2tldmVudF93cml0ZShzdHJ1Y3QgZGF2aW5jaV9jbG9ja2V2ZW50ICpjbG9ja2V2ZW50LAo+ID4g
Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgcmVn
LCB1bnNpZ25lZCBpbnQgdmFsKQo+ID4gPj4+Pj4gK3sKPiA+ID4+Pj4+ICsgICAgIHdyaXRlbF9y
ZWxheGVkKHZhbCwgY2xvY2tldmVudC0+YmFzZSArIHJlZyk7Cj4gPiA+Pj4+PiArfQo+ID4gPj4+
Pj4gKwo+ID4gPj4+Pj4gK3N0YXRpYyB2b2lkIGRhdmluY2lfdGNyX3VwZGF0ZSh2b2lkIF9faW9t
ZW0gKmJhc2UsCj4gPiA+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVk
IGludCBtYXNrLCB1bnNpZ25lZCBpbnQgdmFsKQo+ID4gPj4+Pj4gK3sKPiA+ID4+Pj4+ICsgICAg
IGRhdmluY2lfdGNyICY9IH5tYXNrOwo+ID4gPj4+Pj4gKyAgICAgZGF2aW5jaV90Y3IgfD0gdmFs
ICYgbWFzazsKPiA+ID4+Pj4KPiA+ID4+Pj4KPiA+ID4+Pj4gSSBkb24ndCBzZWUgd2hlbiB0aGUg
ZGF2aW5jaV90Y3IgaXMgaW5pdGlhbGl6ZWQuCj4gPiA+Pj4+Cj4gPiA+Pj4KPiA+ID4+PiBJdCdz
IHNldCB0byAweDAgYnkgdGhlIGNvbXBpbGVyIGFuZCB3ZSdyZSBzZXR0aW5nIHRoZSByZWdpc3Rl
ciB0byAweDAKPiA+ID4+PiBpbiBkYXZpbmNpX3RpbWVyX2luaXQoKS4KPiA+ID4+Cj4gPiA+PiBX
aHkgZGlkIHlvdSBuZWVkIHRvIHJlYWRsIGJlZm9yZSBpbiB0aGUgcHJldmlvdXMgdmVyc2lvbj8g
VGhlIGlkZWEgb2YKPiA+ID4+IGNhY2hpbmcgdGhlIHZhbHVlIHdhcyB0byBzYXZlIGFuIGV4dHJh
IHJlYWRsLgo+ID4gPj4KPiA+ID4+IElmIGl0IGlzIGFsd2F5cyB6ZXJvLCB0aGVuIHdlIGRvbid0
IG5lZWQgdGhpcyB2YXJpYWJsZSBuZWl0aGVyIHRoZSByZWFkLAo+ID4gPj4ganVzdCBkb2luZzoK
PiA+ID4+Cj4gPiA+PiB3cml0ZWxfcmVsYXhlZCh2YWwgJiBtYXNrLCBiYXNlICsgREFWSU5DSV9U
SU1FUl9SRUdfVENSKTsKPiA+ID4+Cj4gPiA+PiBzaG91bGQgd29yayBubyA/Cj4gPiA+Cj4gPiA+
IEl0J3Mgbm90IGFsd2F5cyB6ZXJvLiBJdHMgcmVzZXQgdmFsdWUgaXMgemVybyBhbmQgd2Ugd3Jp
dGUgMCB0byBpdCBhdAo+ID4gPiBpbml0IHRpbWUganVzdCB0byBtYWtlIHN1cmUsIGJ1dCB0aGVu
IHdlIG1vZGlmeSBpdCBhY2NvcmRpbmcgdG8gdGhlCj4gPiA+IGNvbmZpZ3VyYXRpb24uIFRoZSBz
aW5nbGUgVENSIHJlZ2lzdGVyIGNvbnRyb2xzIGJvdGggaGFsdmVzIG9mIHRoZQo+ID4gPiB0aW1l
ciwgc28gd2UgZG8gbmVlZCBhbiBhY3R1YWwgdXBkYXRlLCBub3QgYSBzaW1wbGUgd3JpdGUuCj4g
Pgo+ID4gT2sgYnV0IHRoZSBkcml2ZXIgY2FuIGJlIG9uZXNob3Qgb3IgZGlzYWJsZWQgaW4gdGhl
IGNvZGUgKG11dHVhbGx5Cj4gPiBleGNsdXNpdmUpLCBubyA/Cj4gPgo+ID4gU28gZG9pbmcKPiA+
Cj4gPiAgLSB3cml0ZWwob25lc2hvdCwgYmFzZSk7Cj4gPiAgLSB3cml0ZWwoZGlzYWJsZWQsIGJh
c2UpOwo+ID4KPiA+IHdvcmtzIHdpdGhvdXQgYW55IG1hc2sgY29tcHV0YXRpb24sIG5vPwo+ID4K
PiA+IFdlbGwgdGhlIGFib3ZlIGFzc3VtZXMgb3RoZXIgcGFydCBvZiB0aGUgcmVnaXN0ZXIgYXJl
bid0IGNoYW5nZWQgYnkKPiA+IG90aGVyIHN1YnN5c3RlbXMgKG9yIGJ5IHRoZSB0aW1lciBpdHNl
bGYpLgo+ID4KPiA+Cj4KPiBJJ20gbm90IHN1cmUgSSB1bmRlcnN0YW5kLiBZb3UgY2FuIGJlIHVz
aW5nIHR3byB0aW1lcnMuIEJvdGgKPiBjb250cm9sbGVkIGJ5IGEgc2luZ2xlIFRDUiByZWdpc3Rl
ci4gSW4geW91ciBleGFtcGxlIG9uZXNob3QgY2FuIGVxdWFsCj4gKDB4MDAsIG9yIDB4MDEpIGFu
ZCBlaXRoZXIgYmUgc2hpZnRlZCBsZWZ0IGJ5IDYgb3IgMjIgZm9yIFRJTTEyIGFuZAo+IFRJTTM0
IHJlc3BlY3RpdmVseS4gSWYgeW91IGRvIHdyaXRlbChvbmVzaG90LWZvci10aW1lMTIsIGJhc2Up
IHlvdSdsbAo+IHNldCB0aW0zNCB0byBkaXNhYmxlZC4KPgo+IEJhcnQKCkdlbnRsZSBwaW5nLgoK
QmFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
