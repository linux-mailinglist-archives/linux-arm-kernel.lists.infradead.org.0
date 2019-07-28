Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01F778266
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frNPPya7zdujph67ZFvaMGLunma3gSR2GUz05nOj5w0=; b=rTrn8QFyqYWU5T
	e6WAcfIzkZC7YIDqXIJpoNQDIPRtar0MHrKIYvkp/YZMGRf8K1JB+vC+qQXn7SnBHnyNZULZhm3fu
	F1roV+NphUvwXxTpyrw8RvIP3ooAKyDt0S2glcAGB7ODk4uQqBqNOQ4yLJWz9SIlUMf2kPaRyqK9B
	zQoyGpSVdfWBKAlz+V8AyHNmL6B1xIzI9bOQzQ+aXMmtplqa5F3Dhp1wjTPFjHtHN7kacvoNdXZsY
	9M+PpS/WgFA0dpWVp2+VVzg5ztw8PPBDlsrUvrhpRDpNiLm5dgpTX3U/xG5XvTnXtwhTBERF+o4bP
	E14beMxGf1ScAct1ODyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsjW-0006yu-6X; Sun, 28 Jul 2019 23:37:42 +0000
Received: from mail-lf1-f68.google.com ([209.85.167.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsjL-0006yb-TL
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:37:33 +0000
Received: by mail-lf1-f68.google.com with SMTP id s19so40740202lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 16:37:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8rxfba6tlD0hwZ133j08GN9B4ltnDc1brl6g+eS6jPo=;
 b=rGFjfBw3pqpCQcnsMPrjESeKQjxFfuq4cVfLu0kJ+rfDrnIeFyMcgURd7yYHDTD1gR
 hMFkc3qTslx6kghwbl2ufpyHPxqi27mXxbWDCIj3XD+U6/iPIFAQzIMnVih1Ajdsq9Ik
 6aEvM0CU9gF4vbBJWcp57XutF+p4i0V7uWe8T4grC41kFzUv7PVugXconaO+4tZN3p9E
 a8EJEwbAk119JXHIgcNzE8NqCvThLGMSjVtgQ4RLnCgeoauMCVVByJMh/FjWIldlA27r
 nU2vVD2LSx7L+7FV+qjrD8pLV+gSARvWq0Ch8LWjqNMGoNexVHkhrn/8QJGSswWcW9+z
 onVQ==
X-Gm-Message-State: APjAAAWXAexvPSwVzhGBrkMk0oVLuBwavGpodkw68+g5hwtmkhphB+b7
 u/PDWTCdosua9AreC//qyT4DJj4o/o0WGFkeb+DRgw==
X-Google-Smtp-Source: APXvYqwB/Un4Offk206axKqX7V6yGtZYX78kh0XP6BqxKzNmjLSW52saNZfXtacg4JiTpxQuhZ5MqVXE/YYk0cqPjYM=
X-Received: by 2002:a19:48c5:: with SMTP id v188mr49040248lfa.69.1564357049901; 
 Sun, 28 Jul 2019 16:37:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190728232706.7396-1-mcroce@redhat.com>
 <763dd408-7ac0-436c-d952-1decff5c696e@embeddedor.com>
In-Reply-To: <763dd408-7ac0-436c-d952-1decff5c696e@embeddedor.com>
From: Matteo Croce <mcroce@redhat.com>
Date: Mon, 29 Jul 2019 01:36:53 +0200
Message-ID: <CAGnkfhx1r_wE9d9DLKYznhFw43bYWx5A23MnLy9X4T_bZAmjKA@mail.gmail.com>
Subject: Re: [PATCH] arm64: hw_breakpoint: mark expected switch fall-through
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_163731_947829_678A092A 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.68 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RmVlbCBmcmVlIGRpIGRpc2NhcmQgdGhlIHBhdGNoIHRoZW4uCldoYXQgY29tcGlsZXIgYXJlIHlv
dSB1c2luZz8gSScgdXNpbmcgZ2NjIHZlcnNpb24gOC4zLjAgKFVidW50dS9MaW5hcm8KOC4zLjAt
NnVidW50dTEpCgpPbiBNb24sIEp1bCAyOSwgMjAxOSBhdCAxOjM0IEFNIEd1c3Rhdm8gQS4gUi4g
U2lsdmEKPGd1c3Rhdm9AZW1iZWRkZWRvci5jb20+IHdyb3RlOgo+Cj4gSGkgTWF0dGVvLAo+Cj4g
SSBzZW50IGEgcGF0Y2ggZm9yIHRoaXMgc29tZSBtaW51dGVzIGFnbzoKPgo+IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC8xMTA2NTg1Lwo+Cj4gSXQgc2VlbXMgdGhlcmUg
YXJlIG1vcmUgd2FybmluZ3MgaW4gdGhhdCBmaWxlIHRoYW4gdGhlIG9uZXMgeW91IGFyZQo+IGFk
ZHJlc3NpbmcuCj4KPiBUaGFua3MKPiAtLQo+IEd1c3Rhdm8KPgo+IE9uIDcvMjgvMTkgNjoyNyBQ
TSwgTWF0dGVvIENyb2NlIHdyb3RlOgo+ID4gTWFyayBzd2l0Y2ggY2FzZXMgd2hlcmUgd2UgYXJl
IGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2gsCj4gPiBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5p
bmc6Cj4gPgo+ID4gICBDQyAgICAgIGFyY2gvYXJtNjQva2VybmVsL2h3X2JyZWFrcG9pbnQubwo+
ID4gYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jOiBJbiBmdW5jdGlvbiDigJhod19i
cmVha3BvaW50X2FyY2hfcGFyc2XigJk6Cj4gPiBhcmNoL2FybTY0L2tlcm5lbC9od19icmVha3Bv
aW50LmM6NTQwOjc6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1X
aW1wbGljaXQtZmFsbHRocm91Z2g9XQo+ID4gICAgIGlmIChody0+Y3RybC5sZW4gPT0gQVJNX0JS
RUFLUE9JTlRfTEVOXzEpCj4gPiAgICAgICAgXgo+ID4gYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJl
YWtwb2ludC5jOjU0MjozOiBub3RlOiBoZXJlCj4gPiAgICBjYXNlIDI6Cj4gPiAgICBefn5+Cj4g
PiBhcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmM6NTQ0Ojc6IHdhcm5pbmc6IHRoaXMg
c3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+ID4g
ICAgIGlmIChody0+Y3RybC5sZW4gPT0gQVJNX0JSRUFLUE9JTlRfTEVOXzIpCj4gPiAgICAgICAg
Xgo+ID4gYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jOjU0NjozOiBub3RlOiBoZXJl
Cj4gPiAgICBkZWZhdWx0Ogo+ID4gICAgXn5+fn5+fgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IE1h
dHRlbyBDcm9jZSA8bWNyb2NlQHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2tl
cm5lbC9od19icmVha3BvaW50LmMgfCAyICsrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3Bv
aW50LmMgYi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmMKPiA+IGluZGV4IGRjZWI4
NDUyMDk0OC4uN2Q4NDY5ODViMTMzIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwv
aHdfYnJlYWtwb2ludC5jCj4gPiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50
LmMKPiA+IEBAIC01MzksMTAgKzUzOSwxMiBAQCBpbnQgaHdfYnJlYWtwb2ludF9hcmNoX3BhcnNl
KHN0cnVjdCBwZXJmX2V2ZW50ICpicCwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAvKiBBbGxv
dyBzaW5nbGUgYnl0ZSB3YXRjaHBvaW50LiAqLwo+ID4gICAgICAgICAgICAgICAgICAgICAgIGlm
IChody0+Y3RybC5sZW4gPT0gQVJNX0JSRUFLUE9JTlRfTEVOXzEpCj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBicmVhazsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAvKiBmYWxs
dGhyb3VnaCAqLwo+ID4gICAgICAgICAgICAgICBjYXNlIDI6Cj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgLyogQWxsb3cgaGFsZndvcmQgd2F0Y2hwb2ludHMgYW5kIGJyZWFrcG9pbnRzLiAqLwo+
ID4gICAgICAgICAgICAgICAgICAgICAgIGlmIChody0+Y3RybC5sZW4gPT0gQVJNX0JSRUFLUE9J
TlRfTEVOXzIpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAvKiBmYWxsdGhyb3VnaCAqLwo+ID4gICAgICAgICAgICAgICBk
ZWZhdWx0Ogo+ID4gICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4gICAg
ICAgICAgICAgICB9Cj4gPgoKCgotLSAKTWF0dGVvIENyb2NlCnBlciBhc3BlcmEgYWQgdXBzdHJl
YW0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
