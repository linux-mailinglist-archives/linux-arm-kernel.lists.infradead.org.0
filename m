Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE50267DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 18:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ep542v8vzpVvOXAy7KvUzkpmYX9uXFjvSnelXxhvXc0=; b=Fne0cUsjn8Ve9T
	VBtiD8S7iLAvxzlECcMh2YMhHEvKDF4b8rtqFAOhD/5PiAHn0dQ2LUkPd34eBB4hFgk80P4c32cIE
	7h51MeOnYiPnsnAKKdooXr3vSLkm9UumNSC+jbMoKIQJjWHWjuMxLx61vwCbjdynV6ThxZaji8Z7t
	2lgS7j5tNteBayD8YibYPKQ9HbQ8ig51S0JXmC6NJ+YQfFSag7TWKY+Lc492pWv48fmAAyp/Yd9Yo
	vow/nwU8EsR5AHTbRJpqQ+z6Qm81AH4vU8RpvRuSJi+HIChkHlQZU6RBssL69iLSrCn5TyBldCLJq
	EoWQh5aAQoROEsyxlEUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTu9-0007mn-NH; Wed, 22 May 2019 16:15:49 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTu2-0007lk-Na
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 16:15:44 +0000
Received: by mail-yb1-xb44.google.com with SMTP id k128so1089910ybf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 09:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=H2QOYmtrbMv2RwSsZzKZlIgE2lZOebGHxtRTWGwCUK8=;
 b=TsIh23HRLdI8hEqPtQ30fFSZzK3/A1tyuR7wi8bJAddsbCkyN0GMgWgPVR3rgKILCq
 FrjrSON1dGlThNxb6/6otMCvetSODgQPtK+wCIUhqMULhi+c8WlRIZmlkJ0P+HcMxQ8u
 7yPysCT0YucMkd14fGXTR2A7RsGbxmWl/6v+RXwx++xvoi7fJRqw6R9i/QHjVz9JM1Jo
 Q1Qlo/bOw4egn1BpoPLWvnMrKgLZ9NEiLUWJNYq/Hj2xcoWn3Q2P8krIEgqDVbCR0vtm
 ArAa3hmhxNyAeVNo3DWT2VcBqjFu3i1zmzbnIZkNrRlh0EMNdQuROjTN9nfPKbOQ4oNO
 DeeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=H2QOYmtrbMv2RwSsZzKZlIgE2lZOebGHxtRTWGwCUK8=;
 b=DwzBy98cfNVjWp9mebE1mjV+nZHu+CKM87kq/28Y4bT7Ha6ZgDozmdBBqC959Nra13
 g9zfb4zWT2uUKxnkW8KtALlhPVqnK/eUW7uLcSfvUsJIxOs1RYqGJfr0rUd1uBsU0Wk0
 IP+XblQsf7PbJ+08qrYvgbD2pFtUaNvcfWs8YEPhW6vECw9WnkYAjuaxhH8yp6mhaBGm
 MeK/QGkNUZvQck96h88Ue38S9L+nHnU9fpQB9No6L7u17PlGVzXGodP6Ydbp9s0+alJQ
 WKAYmWhuo9jTFqsf5YDRppZOzNgHbyO0VkkF4lt5j6LYLyT8+OZ7pjX9iE35YmzsHYC8
 S/Kw==
X-Gm-Message-State: APjAAAWvJEYut451KPCUG/Vedf4HaboT53lniV+qUx7d2He9sEn5IvAY
 MBS0RHPz78OuH4u75lzQb5OD4THULkjWm54gSig=
X-Google-Smtp-Source: APXvYqyPQIgHEnxdgVx+UouRSudO6JPKLPIolrSmSVfkcCwrLtqxxyhpQn1v2Hu8mH5g9waksx4+zTXkVOk8H8NtNxI=
X-Received: by 2002:a25:ae22:: with SMTP id a34mr6825427ybj.438.1558541737775; 
 Wed, 22 May 2019 09:15:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190521160330.28402-1-peron.clem@gmail.com>
 <20190521160330.28402-4-peron.clem@gmail.com>
 <20190522103243.mmrfato5p2mhtf4j@flea>
In-Reply-To: <20190522103243.mmrfato5p2mhtf4j@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 22 May 2019 18:15:26 +0200
Message-ID: <CAJiuCcdaZVLQyupEf8HPaUySakufXXAhzundo6VeyQaAyZ8Trw@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] dt-bindings: watchdog: add Allwinner H6 r_watchdog
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_091542_771064_0A8F319F 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-watchdog@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gV2VkLCAyMiBNYXkgMjAxOSBhdCAxMjozMiwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIE1heSAyMSwgMjAx
OSBhdCAwNjowMzoyOFBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBBbGx3aW5u
ZXIgSDYgaGFzIGEgc2Vjb25kIHdhdGNoZG9nIG9uIHRoZSByLWJsb2NrcyB3aGljaCBpcwo+ID4g
Y29tcGF0aWJsZSB3aXRoIHRoZSBBMzEuCj4gPgo+ID4gVGhpcyBjb21taXQgYWRkIHRoZSBINiBj
b21wYXRpYmxlIGZvciB0aGUgcl93YXRjaGRvZy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOp
bWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+Cj4gVW5sZXNzIHlvdSBoYXZlIHNv
bWUgZXZpZGVuY2UgdGhhdCB0aGUgdHdvIGJsb2NrcyBhcmUgZGlmZmVyZW50LCB0aGVuCj4geW91
IHNob3VsZCBqdXN0IHJldXNlIHRoZSBzYW1lIG9uZS4KCkkgaGF2ZSBubyBldmlkZW5jZSBpdCdz
IGRpZmZlcmVudCBub3IgaWRlbnRpY2FsLCBpdCdzIG5vdCBkb2N1bWVudGVkCmluIHRoZSB1c2Vy
IG1hbnVhbC4KSSB0aG91Z2h0IGl0IHdvdWxkIGJldHRlciB0byBoYXZlIHNlcGFyYXRlIGJpbmRp
bmdzIGluIGNhc2UgdGhlcmUgaXMgYQpkaWZmZXJlbmNlLgpUaGFuIGRvbid0IGhhdmUgYW5kIGZp
bmQgbGF0ZXIgdGhhdCB3ZSBoYXZlIHRvIGludHJvZHVjZSBvbmUuCgpCdXQgYXMgeW91IHByZWZl
ci4KClJlZ2FyZHMsCkNsw6ltZW50CgoKCj4KPiBNYXhpbWUKPgo+IC0tCj4gTWF4aW1lIFJpcGFy
ZCwgQm9vdGxpbgo+IEVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKPiBodHRw
czovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
