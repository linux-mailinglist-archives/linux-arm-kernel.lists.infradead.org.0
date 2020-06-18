Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BD41FED78
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 10:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjrJpCc5vgOsztoKGbuP1QxO4T6q6D/ilTE0q3l5Aug=; b=FLWutuPZjpG2Me
	OA1EBkKhYw9BO/FSBGLm8VJ6NrI9mWNA02pA+1JQK8YzFhNkg1hgZVlpzSkMus7ZVKvkP8jZLdfIu
	1CbI0GLYwQmRiFtaq3HnMl2rcRF+GNwR5xSdxylS+q4QM3Pf5aznMiyfyarKIp+DKr5BRgHvEYnvO
	q4dIyxrOc0lIGzVB/PHRaROKAcEfRQ9NC5x8QKG5hWqaYKsXWv0gWspQthoRGpBkVqFO+pJF0JpHw
	gwxp3oxsEdPfV99TV7GfUF6y9Lsz3akUMggnU8gXLoOa7svPYTjVOkKg6l9JX9Lh8hsdz8F/a4z+d
	yzEX2IO1ydhbYCoszoCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpmc-0006vB-0x; Thu, 18 Jun 2020 08:20:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpmD-0006Fd-BI
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 08:20:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id b6so5032110wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 01:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=4KcujSsS1jyjnsxMXRZfCGa39cS76YnVtoeGFVxCFgc=;
 b=JP6cdM6fRlsxkBS/oB90AVgYIES7VE8ArtqzXGZ8RnERg8aj8ytd++B2GEjbx3XJdh
 5fEtk7p/TKEXMSNfLVJ5haAGojW2NatyNxLjq36RasROlWCd+J0EsfKG/rZhX4F0cI+D
 o1sXVokcbprB6k95jboAGE/WYgr86lK24y7US+dgADQbL9YjPqJZzXgSy+Uf9eNOivmX
 GW8LmoFy1DiTHCgWKG1s3KlKKGKKLHRyHSJrvRMz4tLjVycxiexpvkzkFzfIwlod3Vm+
 8hV2AuaYNUhl1dsJMCHSPChuCldzgGma/AiWvTUgKnmcEP3YIaaC1df5xJt5QtCAFZAU
 rOxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=4KcujSsS1jyjnsxMXRZfCGa39cS76YnVtoeGFVxCFgc=;
 b=GB9fu0XgQgYXeXFmnj9iaIK/DSOXlnwawu6zsKq9lCehGfFQQ7DKJ7JLFvUSpxCgEL
 CLOMoZZ+5l+l+T8BxG5qaitDiE+TCfDXtFbnOhk+aZ3EhSDey7fVA18pNXB4kkCJ/1qh
 P4qW8k5mTm87fQqyhaZNUCWqHUXQB2uZKBxw3Dtp6YCFK6L+neNMZwW9pWenDkHWCn6/
 q7C44Jb943gq4NwFFBcMzbi/k4cxat4EFMWJ/eGFAHYkFcPUzeHDFQc1WVVSo8rwzkAp
 oSk0nGENbr/NHfk31XLry3WtMCeJbZApEi07Zh84KLnBE20jGTFYt3MpBOkdXNsF7byE
 RD1Q==
X-Gm-Message-State: AOAM531BGKjdzODp3+YE8B9BmAi5WJJB4+zBtw/u+tSl2R6mWLj5Ahwi
 35bHlYLg3kKkFNpz+5VS0eCatQ==
X-Google-Smtp-Source: ABdhPJzHjbMVQLF+FVct8ot/7YOMYRsMDLX1hN75mvGjfOq63MOC8UTFzu2niGdYKHrjduUo6iHLhw==
X-Received: by 2002:adf:82d0:: with SMTP id 74mr3124134wrc.138.1592468399531; 
 Thu, 18 Jun 2020 01:19:59 -0700 (PDT)
Received: from dell ([95.149.164.118])
 by smtp.gmail.com with ESMTPSA id l17sm749882wmh.14.2020.06.18.01.19.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 01:19:58 -0700 (PDT)
Date: Thu, 18 Jun 2020 09:19:57 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v3 0/5] mfd: Add support for Khadas Microcontroller
Message-ID: <20200618081957.GD2608702@dell>
References: <20200608091739.2368-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608091739.2368-1-narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_012001_392886_8BC4C20E 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: amit.kucheria@verdurent.com, linux-pm@vger.kernel.org, khilman@baylibre.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwOCBKdW4gMjAyMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cgo+IFRoZSBuZXcgS2hh
ZGFzIFZJTTIsIFZJTTMgYW5kIEVkZ2UgYm9hcmRzIGVtYmVkcyBhbiBvbi1ib2FyZCBtaWNyb2Nv
bnRyb2xsZXIKPiBjb25uZWN0ZWQgdmlhIEkyQy4KPiAKPiBUaGlzIE1pY3JvY29udHJvbGxlciBp
cyBwcmVzZW50IG9uIHRoZSBLaGFkYXMgVklNMSwgVklNMiwgVklNMyBhbmQgRWRnZQo+IGJvYXJk
cy4KPiAKPiBJdCBoYXMgbXVsdGlwbGUgYm9vdCBjb250cm9sIGZlYXR1cmVzIGxpa2UgcGFzc3dv
cmQgY2hlY2ssIHBvd2VyLW9uCj4gb3B0aW9ucywgcG93ZXItb2ZmIGNvbnRyb2wgYW5kIHN5c3Rl
bSBGQU4gY29udHJvbCBvbiByZWNlbnQgYm9hcmRzLgo+IAo+IFRoaWUgc2VyaWUgYWRkcyA6Cj4g
LSB0aGUgYmluZGluZ3MKPiAtIHRoZSBNRkQgZHJpdmVyCj4gLSB0aGUgVGhlcm1hbCBDb29saW5n
IGNlbGwgZHJpdmVyCj4gLSB1cGRhdGVzIE1BSU5UQUlORVJTCj4gLSBhZGQgc3VwcG9ydCBpbnRv
IHRoZSBLaGFkYXMgVklNMy9WSU0zTCBEVAo+IAo+IENoYW5nZXMgc2luY2UgdjIgYXQgWzNdOgo+
IC0gUmVtb3ZlZCBOVk1FTSBkcml2ZXIgZm9yIHNlcGFyYXRlIHN1Ym1pc3Npb24KPiAtIGZpeGVk
IE1GRCBkcml2ZXIsIGhlYWRlciBhbmQgS2NvbmZpZwo+IC0gZml4ZWQgVGhlcm1hbCBLY29uZmln
Cj4gLSBmaXhlZCBNQUlOVEFJTkVSUyBmaWxlcyBhbmQgcGF0aAo+IAo+IENoYW5nZXMgc2luY2Ug
UkZDIHYxIGF0IFsyXToKPiAtIG1vdmVkIGh3bW9uIGRyaXZlciB0byB0aGVybWFsLW9ubHkKPiAt
IG1vdmVkIHRoZSBTTTEgdGhlcm1hbCBub2RlcyBpbiBhIHNlcGFyYXRlIHNlcmllCj4gLSBhZGRl
ZCB0aGUgYmluZGluZ3MgcmV2aWV3IHRhZyBmcm9tIHJvYgo+IAo+IFsxXSBodHRwOi8vbG9yZS5r
ZXJuZWwub3JnL3IvMjAyMDA1MTIwOTM5MTYuMTk2NzYtMS1uYXJtc3Ryb25nQGJheWxpYnJlLmNv
bQo+IFsyXSBodHRwOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMDA0MjEwODAxMDIuMjI3OTYtMS1u
YXJtc3Ryb25nQGJheWxpYnJlLmNvbQo+IFszXSBodHRwOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAy
MDA1MTIxMzI2MTMuMzE1MDctMS1uYXJtc3Ryb25nQGJheWxpYnJlLmNvbQo+IAo+IE5laWwgQXJt
c3Ryb25nICg1KToKPiAgIGR0LWJpbmRpbmdzOiBtZmQ6IGFkZCBLaGFkYXMgTWljcm9jb250cm9s
bGVyIGJpbmRpbmdzCj4gICBtZmQ6IGFkZCBzdXBwb3J0IGZvciB0aGUgS2hhZGFzIFN5c3RlbSBj
b250cm9sIE1pY3JvY29udHJvbGxlcgo+ICAgdGhlcm1hbDogYWRkIHN1cHBvcnQgZm9yIHRoZSBN
Q1UgY29udHJvbGxlZCBGQU4gb24gS2hhZGFzIGJvYXJkcwo+ICAgTUFJTlRBSU5FUlM6IGFkZCBt
eXNlbGYgYXMgbWFpbnRhaW5lciBmb3IgS2hhZGFzIE1DVSBkcml2ZXJzCj4gICBhcm02NDogZHRz
OiBtZXNvbi1raGFkYXMtdmltMzogYWRkIEtoYWRhcyBNQ1Ugbm9kZXMKCkknbSBhIGJpdCBjb25j
ZXJuZWQgYnkgdGhlIG1pc3NpbmcgcGF0Y2hlcyBmcm9tIG15IGluYm94LgoKTG9va3MgbGlrZSB5
b3Ugb21pdHRlZCB0byBzZW5kIG1lIHBhdGNoIDMgYW5kIDUuCgpIb3BlZnVsbHkgdGhlIFRoZXJt
YWwgcGF0Y2ggZG9lc24ndCBkZXBlbmQgb24gdGhlIE1GRCBvbmUhCgo+ICAuLi4vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZmQva2hhZGFzLG1jdS55YW1sICAgfCAgNDQgKysrKysKPiAgTUFJTlRBSU5F
UlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA5ICsKPiAgLi4uL2Jvb3Qv
ZHRzL2FtbG9naWMvbWVzb24ta2hhZGFzLXZpbTMuZHRzaSAgIHwgIDIzICsrKwo+ICBkcml2ZXJz
L21mZC9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMjEgKysrCj4gIGRyaXZl
cnMvbWZkL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCj4gIGRyaXZl
cnMvbWZkL2toYWRhcy1tY3UuYyAgICAgICAgICAgICAgICAgICAgICB8IDE0MiArKysrKysrKysr
KysrKwo+ICBkcml2ZXJzL3RoZXJtYWwvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgfCAg
MTEgKysKPiAgZHJpdmVycy90aGVybWFsL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgIHwg
ICAxICsKPiAgZHJpdmVycy90aGVybWFsL2toYWRhc19tY3VfZmFuLmMgICAgICAgICAgICAgIHwg
MTc0ICsrKysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9raGFkYXMtbWN1Lmgg
ICAgICAgICAgICAgICAgfCAgOTEgKysrKysrKysrCj4gIDEwIGZpbGVzIGNoYW5nZWQsIDUxNyBp
bnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWZkL2toYWRhcyxtY3UueWFtbAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9tZmQva2hhZGFzLW1jdS5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3RoZXJt
YWwva2hhZGFzX21jdV9mYW4uYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9t
ZmQva2hhZGFzLW1jdS5oCj4gCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNo
bmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVy
IHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
