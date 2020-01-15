Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF0D13CCF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 20:18:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bk3z2CA1Pa61Yz/Au6TRbtSfoiHJn30EyvqoPjMUlKk=; b=kSJWqVhfAe/meh
	Ql8cCl1ebLgAIvuaxoPhb0uGiadEaBaRNNdCt0OWwwlAfh6kXuYM1wn+A0QZ39kGT5AH/wopoD6FB
	UVzsKU4qcPm3mtJEg/MiYuG3PmGOGbK2XiFjO0WpbwM5eYo5gBURhMNWSKYxAR/skFmp4aMb4UQQH
	ZKBFJ22VAqb3xfPdzQdJKY4aGP1Z7felFFJtEt2/T0q1GvFm4dovvVgLmo8XSFWB6zLzeaExQiflW
	SJ3ZPsZPpvTQXxky4xMBxp6BIljtWVkOEATBFnEBa+IuAHC7ll1/thR6tRpbLyK083iOLAx9c771i
	sGIW7Bk9MSAXKsxABq4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iroB0-0004KM-04; Wed, 15 Jan 2020 19:18:02 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iroAo-0004Jc-RB
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 19:17:55 +0000
Received: by mail-qt1-x842.google.com with SMTP id e5so16763086qtm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 11:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3oehQjENUEt6IwzurE8ivHHaN3UVdBa+Oowf63E60NU=;
 b=CzTRXY50zvP3lB1RvMkiImvNyLNaEPKNI321FbjF9Ug29rjj8gvhUoANJtQAoA6U6d
 9TZAm3G5knfU6VsjsuXeLO/YQH9MQtxKNFDFMtbUzsbcOmt9MGSem8GFkhzvK7WnadI9
 mJhbxLs2m904c8ERBdZ8BNndOhED5HUaVBa+fk/POBoTQNni0GidGoPrkbthcNlis2z7
 +QPzimTmpMig9c5pwKV3GRJnZzts+n4nK0pLjD7jCrW1YULeGfSbEKpvuKHp6lgr4683
 Gpdl3Zpge3xqKTUQ1KM2UAd47hTcCTZ9qZBGXI4yfFGmNPw+PwTK4nysSvuB/FGtGOt8
 VGPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3oehQjENUEt6IwzurE8ivHHaN3UVdBa+Oowf63E60NU=;
 b=ppZjg/byE5r4jwsghvp+RKfnzYpJuyBt62uOT4Jg06kNH5+WM6DNJtBmSvvueu1PVO
 z3IZFNVv5OqhtkhkaIRZ5MFoFJCBNoonyCLdYnurLrP3su0OXcHwQoRTIxMIEIOO4gnW
 JNsl7UvJpoFSqZe3wvJ8fcuc+l7l0B7BNTiLgceeCMNJ8F0HWU4zi8LXL4aLIkhL5Kv6
 YpSYkY7gRtqNdMHzRSX0DLruDxRLtf6SWU86VINP31JoeBRMmE/7HAzmImhc7Z/xm1yO
 CPvFuBcxnmiY/zLEe5bD+QXpgpYnPlChg+r1cnWYPJ924yZ2lNhHoCVl/2CEWEc7UAsf
 +13A==
X-Gm-Message-State: APjAAAVs/oBM1dI2ynU4gALOnvE7zENQAjdemQ6z76yXBqWC5xrarXeI
 BNaK0QzscjjoEJUKs1fPH8pXP0hflrSIw6degh2iWg==
X-Google-Smtp-Source: APXvYqyJZqV8RaX3xgtSRb3g1wC2DLSVbZOTeDQGcnisJ8sUJbdpLx1+W5v8eR7hhzyOBQW9ezqQdL9+I+uWlUi5DaE=
X-Received: by 2002:ac8:33ab:: with SMTP id c40mr142755qtb.250.1579115869684; 
 Wed, 15 Jan 2020 11:17:49 -0800 (PST)
MIME-Version: 1.0
References: <20200109145333.12260-1-benjamin.gaignard@st.com>
 <20200109145333.12260-2-benjamin.gaignard@st.com>
 <20200115143521.GA15099@bogus>
 <CA+M3ks7FGZ9TMO0=yXrhZph1Cn1GQ+2-tM7SnDrRDXVoCjrTjA@mail.gmail.com>
 <CAL_JsqLki6D4soncDo0ZEh4xeC9+U_Kf2dnOVjrMTY1QrXTjfg@mail.gmail.com>
In-Reply-To: <CAL_JsqLki6D4soncDo0ZEh4xeC9+U_Kf2dnOVjrMTY1QrXTjfg@mail.gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Wed, 15 Jan 2020 20:17:37 +0100
Message-ID: <CA+M3ks5AQVhacAW_gSXYwj6_O8xnvv0StDmhXn2MeQFS6JMZfg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: timer: Add STM32 Low Power Timer bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_111751_107913_3E668625 
X-CRM114-Status: GOOD (  26.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 pascal paillet <p.paillet@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbWVyLiAxNSBqYW52LiAyMDIwIMOgIDIwOjAwLCBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwu
b3JnPiBhIMOpY3JpdCA6Cj4KPiBPbiBXZWQsIEphbiAxNSwgMjAyMCBhdCA4OjQ2IEFNIEJlbmph
bWluIEdhaWduYXJkCj4gPGJlbmphbWluLmdhaWduYXJkQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4K
PiA+IExlIG1lci4gMTUgamFudi4gMjAyMCDDoCAxNTozNSwgUm9iIEhlcnJpbmcgPHJvYmhAa2Vy
bmVsLm9yZz4gYSDDqWNyaXQgOgo+ID4gPgo+ID4gPiBPbiBUaHUsIEphbiAwOSwgMjAyMCBhdCAw
Mzo1MzozMVBNICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+ID4gPiBEb2N1bWVu
dCBTVE0zMiBMb3cgUG93ZXIgYmluZGluZ3MuCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAc3QuY29tPgo+ID4gPiA+IC0t
LQo+ID4gPiA+ICAuLi4vYmluZGluZ3MvdGltZXIvc3Qsc3RtMzItbHAtdGltZXIueWFtbCAgICAg
ICAgICB8IDQ0ICsrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQs
IDQ0IGluc2VydGlvbnMoKykKPiA+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy90aW1lci9zdCxzdG0zMi1scC10aW1lci55YW1sCj4gPiA+
ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3RpbWVyL3N0LHN0bTMyLWxwLXRpbWVyLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdGltZXIvc3Qsc3RtMzItbHAtdGltZXIueWFtbAo+ID4gPiA+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4gPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5jYTA0MGI5NmRjNDcKPiA+ID4g
PiAtLS0gL2Rldi9udWxsCj4gPiA+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3RpbWVyL3N0LHN0bTMyLWxwLXRpbWVyLnlhbWwKPiA+ID4KPiA+ID4gVXNlIHRoZSBj
b21wYXRpYmxlIGZvciB0aGUgZmlsZW5hbWUuCj4gPgo+ID4gaXQgd2lsbCBiZSBpbiB2Mgo+ID4K
PiA+ID4KPiA+ID4gPiBAQCAtMCwwICsxLDQ0IEBACj4gPiA+ID4gKyMgU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ID4gPiA+ICslWUFNTCAx
LjIKPiA+ID4gPiArLS0tCj4gPiA+ID4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVt
YXMvdGltZXIvc3Qsc3RtMzItbHAtdGltZXIueWFtbCMKPiA+ID4gPiArJHNjaGVtYTogaHR0cDov
L2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gPiA+ID4gKwo+ID4gPiA+
ICt0aXRsZTogU1RNaWNyb2VsZWN0cm9uaWNzIFNUTTMyIExvdyBQb3dlciAxNiBiaXRzIHRpbWVy
cyBiaW5kaW5ncwo+ID4gPiA+ICsKPiA+ID4gPiArbWFpbnRhaW5lcnM6Cj4gPiA+ID4gKyAgLSBC
ZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAc3QuY29tPgo+ID4gPiA+ICsKPiA+
ID4gPiArcHJvcGVydGllczoKPiA+ID4gPiArICBjb21wYXRpYmxlOgo+ID4gPiA+ICsgICAgY29u
c3Q6IHN0LHN0bTMyLWxwdGltZXItY2xrZXZlbnQKPiA+ID4KPiA+ID4gJ2Nsa2V2ZW50JyBpcyBh
IGgvdyBuYW1lPyBTZWVtcyByZWR1bmRhbnQgYW5kIGFidXNpbmcgY29tcGF0aWJsZSB0bwo+ID4g
PiBiaW5kIHRvIGEgc3BlY2lmaWMgTGludXggZHJpdmVyLgo+ID4KPiA+IE5vIGJ1dCBzdCxzdG0z
Mi1scHRpbWVyIGNvbXBhdGlibGUgaXMgYWxyZWFkeSB1c2VkIGZvciBhbm90aGVyIGRyaXZlcgo+
ID4gVGhlIGhhcmR3YXJlIGJsb2NrIGNhbiBpbXBsZW1lbnQgbXVsdGlwbGUgZmVhdHVyZXMgYnV0
IG5vdCBhbGwgYXQgdGhlIHNhbWUgdGltZQo+ID4gc28gSSB0cnkgdG8gZGlzdGluZ3Vpc2ggdGhl
bSB3aXRoIHRoZSBjb21wYXRpYmxlLgo+ID4gSW4gdGhpcyBwYXJ0aWN1bGFyIGNhc2UgSSB3b3Vs
ZCBsaWtlIHRhZyBpdCBhcyBhIGNsb2NrIGV2ZW50IGRyaXZlci4KPgo+IFRoYXQncyBhIExpbnV4
IHNwZWNpZmljIHRoaW5nIHdoaWNoIHdlJ3ZlIHNhaWQgbm8gdG8gZm9yIDEwIHllYXJzLgo+Cj4g
SXMgIk5vdCBhdCB0aGUgc2FtZSB0aW1lIiBhIGNoaXAgZGVzaWduIHRpbWUgY29uZmlndXJhdGlv
biBvciBydW4tdGltZQo+IGNvbmZpZy4gSWYgdGhlIGxhdHRlciwgd2h5IGRvIHlvdSB3YW50IHRv
IHVzZSBhIHBhcnRpY3VsYXIgaW5zdGFuY2UKPiBvdmVyIGFub3RoZXIgb25lIGZvciBjbG9jayBl
dmVudD8gVGhlcmUgaGFzIHRvIGJlIHNvbWUgaC93IGRpZmZlcmVuY2UuCj4gRGVzY3JpYmUgdGhl
IGRpZmZlcmVuY2UgYW5kIHRoZW4gdXNlIHRoYXQgdG8gZ3JhYiB0aGUgZGV2aWNlIHRvIHVzZQo+
IGZvciBhIGNsb2NrZXZlbnQuIEknbSBmaW5lIGlmIHlvdSBvbWl0IHRoZSBwd20gbm9kZSBhbmQg
dGhlbiB1c2UgdGhhdAo+IHRvIGRlY2lkZSB3aGljaCBpbnN0YW5jZSB0byB1c2UuCj4KClRoZXJl
IGlzIG5vIGhhcmR3YXJlIGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgZGV2aWNlcyBidXQgd2UgY2Fu
J3QgZG8KcHdtIGFuZCBjbG9ja2V2ZW50CmF0IHRoZSBzYW1lIHRpbWUuIFdlIHVzZSB0aGUgc2Ft
ZSBoYXJkd2FyZSBmb3IgdHdvIGV4Y2x1c2l2ZXMKZmVhdHVyZXMuIEluIGFkZGl0aW9uCndlIHdh
bnQgdG8gYmUgYWJsZSB0byB1c2UgY2xvY2tldmVudCBvbiBvbmUgZGV2aWNlIGFuZCBwd20gb24g
b25lIGFub3RoZXIuCkNvdWxkICJzdCxzdG0zMi1sb3ctcG93ZXItdGltZXIiIGNvbXBhdGlibGUg
YmUgYSBzb2x1dGlvbiA/CgpCZW5qYW1pbgoKPiBSb2IKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
