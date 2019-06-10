Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C97003B1E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 11:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wru2E2+kHHP+PO/UBquyGe7UPSzWadBXc74JMvQSlM=; b=jczwBsA6VSWEuz
	YZVKKicMQZzXYzlszr8WvYYMlJbiClxORraJABSeXNQ9mZA0Oy4oW9NjvcAR7kiS632IAY3lPQgFU
	YdpUI2sUhxACO8W4z/4ugY1olRzYPxu3p0iv2Jvy5nfffUKxBE7hZXYBVu/9PZEtp81y2nRo/iRaT
	8GLxzapfnGKPq6xMru3A1xkODvg6tmIIy7kSkDaF3cTnOj7oajXwK4WmMbNQksgmCp+HxOq7tZhnW
	MLnZuRCL99j9RgxjsF6TIf/b+ZcwVpZCkBpjYKm8FOJeCFCuLLjcsEfxz0i5S/Mc1ZzHhq6zZZPoz
	QgWGGrMnGJUixWWwLFBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haGW9-0004WY-3p; Mon, 10 Jun 2019 09:23:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haGVv-0004W2-1d
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 09:22:52 +0000
Received: by mail-wr1-x443.google.com with SMTP id b17so8364016wrq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 02:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=G1lpUotvma47Z1RO2D5VX/I7uflkBXZ22xkg1HQ/USI=;
 b=hJCkx2KR+NIkDwRFeraGfF4DHt2DUmwtr60qd9nLSH36qGSOynSiXeBtl5ybF8L0dn
 pnA/bDiJGCLtMFrKG64+F4PxE/BCjEnmUfgybp5rvC84ASqfVLs+C7uKecLuJCDAOxWo
 nL4ORmsbFf6ofo5z0z78tNg1LeWUIxyO901/KwIoH+c/xzpLZJLgrkprAWxAZqJ+OEP1
 nFZLqfILmv5pT7tNKbySmIy22ONGFTE8fGEDz8KzFkJJaGzD9V9yDSEzeGC+4BWr4Z9e
 FdxvQDp8O5Loq/iEqqXceHHaLCdkegi8ZozuBckAqV6LiQPJDHVQJTe4H0zcalEQXVFh
 INAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=G1lpUotvma47Z1RO2D5VX/I7uflkBXZ22xkg1HQ/USI=;
 b=KlNeyaXjMpWnAjuC64nVtKnPefmZRbF7QmT5SK3Nrr22FIiwOewsVtq/0FC7RfT5QC
 uwZB9kMYrEcqPDOnAoWL6eU/T9mmn3Prwa0Jmiai/NB+3qDw7NU7jpuXgJm2F0wkzdQz
 EDNTK/2hZNOXeztons7FlgVULYKLHg3bkGNpYbFb5L52weL/x3wpWHbvOJe/59mEXM9F
 wB/psrrZ7H6ytrikL9cNysxhEWXu4ojZZzsmLTAOLJqvoFgY4c/tT4ljUrNvoJDfPvFv
 Gj7UUL4SOQoC+Wn7e4cWpJ8ybu1jWM6XjvXHZYks4mJD5xHwc+jJqgUZmvocI/GManMW
 QkAw==
X-Gm-Message-State: APjAAAUcVioAg2NUfRql4NKRnJQGYOkIudiSb2I8HV7o8/MrKcNvYpYj
 dG1Ft0GlnNuc+KTN5gkWCElFUA==
X-Google-Smtp-Source: APXvYqwF7A2E5R4fmM/F0NbqYzotL3Yb9yzsKrwKjxbsYMU0XzfAxqQRhUHKAoBn6OW6wfm5SWZNSQ==
X-Received: by 2002:adf:b64b:: with SMTP id i11mr44160150wre.205.1560158567552; 
 Mon, 10 Jun 2019 02:22:47 -0700 (PDT)
Received: from dell ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id l18sm7825015wrv.38.2019.06.10.02.22.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 02:22:46 -0700 (PDT)
Date: Mon, 10 Jun 2019 10:22:45 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v3 4/8] pinctrl: qcom: sdm845: Provide ACPI support
Message-ID: <20190610092245.GN4797@dell>
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190610084213.1052-4-lee.jones@linaro.org>
 <CAKv+Gu_s7i8JC4cv-dJMvm1_0cGzzhzf+Dxu0rxcF7iugF=vHg@mail.gmail.com>
 <20190610085542.GL4797@dell>
 <CAKv+Gu8rhxciy1cOG3B3pda9+p4R_COGrrqa7S_Rj9y2HeBxYw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8rhxciy1cOG3B3pda9+p4R_COGrrqa7S_Rj9y2HeBxYw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_022251_096819_E47DBFFA 
X-CRM114-Status: GOOD (  24.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxMCBKdW4gMjAxOSwgQXJkIEJpZXNoZXV2ZWwgd3JvdGU6Cgo+IE9uIE1vbiwgMTAg
SnVuIDIwMTkgYXQgMTA6NTUsIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+IHdyb3Rl
Ogo+ID4KPiA+IE9uIE1vbiwgMTAgSnVuIDIwMTksIEFyZCBCaWVzaGV1dmVsIHdyb3RlOgo+ID4K
PiA+ID4gT24gTW9uLCAxMCBKdW4gMjAxOSBhdCAxMDo0MiwgTGVlIEpvbmVzIDxsZWUuam9uZXNA
bGluYXJvLm9yZz4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBUaGlzIHBhdGNoIHByb3ZpZGVzIGJh
c2ljIHN1cHBvcnQgZm9yIGJvb3Rpbmcgd2l0aCBBQ1BJIGluc3RlYWQKPiA+ID4gPiBvZiB0aGUg
Y3VycmVudGx5IHN1cHBvcnRlZCBEZXZpY2UgVHJlZS4gIFdoZW4gZG9pbmcgc28gdGhlcmUgYXJl
IGEKPiA+ID4gPiBjb3VwbGUgb2YgZGlmZmVyZW5jZXMgd2hpY2ggd2UgbmVlZCB0byB0YWtlbiBp
bnRvIGNvbnNpZGVyYXRpb24uCj4gPiA+ID4KPiA+ID4gPiBGaXJzdGx5LCB0aGUgU0RNODUwIEFD
UEkgdGFibGVzIG9taXQgaW5mb3JtYXRpb24gcGVydGFpbmluZyB0byB0aGUKPiA+ID4gPiA0IHJl
c2VydmVkIEdQSU9zIG9uIHRoZSBwbGF0Zm9ybS4gIElmIExpbnV4IGF0dGVtcHRzIHRvIHRvdWNo
Lwo+ID4gPiA+IGluaXRpYWxpc2UgYW55IG9mIHRoZXNlIGxpbmVzLCB0aGUgZmlybXdhcmUgd2ls
bCByZXN0YXJ0IHRoZQo+ID4gPiA+IHBsYXRmb3JtLgo+ID4gPiA+Cj4gPiA+ID4gU2Vjb25kbHks
IHdoZW4gYm9vdGluZyB3aXRoIEFDUEksIGl0IGlzIGV4cGVjdGVkIHRoYXQgdGhlIGZpcm13YXJl
Cj4gPiA+ID4gd2lsbCBzZXQtdXAgdGhpbmdzIGxpa2U7IFJlZ3VsYXRvcnMsIENsb2NrcywgUGlu
IEZ1bmN0aW9ucywgZXRjIGluCj4gPiA+ID4gdGhlaXIgaWRlYWwgY29uZmlndXJhdGlvbi4gIFRo
dXMsIHRoZSBwb3NzaWJsZSBQaW4gRnVuY3Rpb25zCj4gPiA+ID4gYXZhaWxhYmxlIHRvIHRoaXMg
cGxhdGZvcm0gYXJlIG5vdCBhZHZlcnRpc2VkIHdoZW4gcHJvdmlkaW5nIHRoZQo+ID4gPiA+IGhp
Z2hlciBHUElPRC9QaW5jdHJsIEFQSXMgd2l0aCBwaW4gaW5mb3JtYXRpb24uCj4gPiA+ID4KPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+ID4g
Pgo+ID4gPiBGb3IgdGhlIEFDUEkgcHJvYmluZyBib2lsZXJwbGF0ZToKPiA+ID4gQWNrZWQtYnk6
IEFyZCBCaWVzaGV1dmVsIDxhcmQuYmllc2hldXZlbEBsaW5hcm8ub3JnPgo+ID4gPgo+ID4gPiAq
SG93ZXZlciosIEkgcmVhbGx5IGRvbid0IGxpa2UgaGFyZGNvZGluZyByZXNlcnZlZCBHUElPcyBs
aWtlIHRoaXMuCj4gPiA+IFdoYXQgZ3VhcmFudGVlIGRvIHdlIGhhdmUgdGhhdCBlYWNoIGFuZCBl
dmVyeSBBQ1BJIHN5c3RlbQo+ID4gPiBpbmNvcnBvcmF0aW5nIHRoZSBRQ09NMDIxNyBkZXZpY2Ug
aGFzIHRoZSBleGFjdCBzYW1lIGxpc3Qgb2YgcmVzZXJ2ZWQKPiA+ID4gR1BJT3M/Cj4gPgo+ID4g
VGhpcyBpcyBTRE04NDUgc3BlY2lmaWMsIHNvIHRoZSBjaGFuY2VzIGFyZSByZWR1Y2VkLgo+IAo+
IFlvdSBkb24ndCBrbm93IHRoYXQuCgpBbGwgdGhlIGV2aWRlbmNlIEkgaGF2ZSB0byBoYW5kIHRl
bGxzIG1lIHRoYXQgdGhpcyBpcyB0aGUgY2FzZS4gIEV2ZW4Kb24gdmVyeSBjbG9zZWx5IHJlbGF0
ZWQgdmFyaWFudHMgUXVhbGNvbW0gdXNlcyBkaWZmZXJlbnQgSC9XIGJsb2Nrcwpmb3IgR1BJTy4K
Cj4gPiBIb3dldmVyLCBpZiBhbm90aGVyIFNETTg0NSB2YXJpYW50IGRvZXMgY3JvcCB1cCwgYWxz
byBsYWNraW5nIHRoZQo+ID4gImdwaW9zIiBwcm9wZXJ0eSwgd2Ugd2lsbCBoYXZlIHRvIGZpbmQg
YW5vdGhlciBkaWZmZXJlbnRpYXRpbmcgZmFjdG9yCj4gPiBiZXR3ZWVuIHRoZW0gYW5kIGNvbmR1
Y3Qgc29tZSBtYXRjaGluZy4gIFdoYXQgZWxzZSBjYW4geW91IGRvIHdpdGgKPiA+IHBsYXRmb3Jt
cyBzdXBwb3J0aW5nIG5vbi1jb21wbGV0ZS9ub24tZm9ydGhjb21pbmcgQUNQSSB0YWJsZXM/Cj4g
Pgo+IAo+IEVpdGhlciB3ZSBkb24ndCB0b3VjaCBhbnkgcGlucyBhdCBhbGwgaWYgdGhleSBhcmUg
bm90IHJlZmVyZW5jZWQKPiBleHBsaWNpdGx5IGFueXdoZXJlCgpJIGd1ZXNzIHRoaXMgd291bGQg
cmVxdWlyZSBhbiBBUEkgY2hhbmdlLCB3aGljaCBpcyBvdXQgb2Ygc2NvcGUgb2YKdGhpcyBwYXRj
aC1zZXQuICBIYXBweSB0byBjaGFuZ2UgdGhpcyBpbXBsZW1lbnRhdGlvbiBsYXRlciBpZiB0aGUK
c3Vic3lzdGVtIGFsbG93cyBmb3IgaXQgdGhvdWdoLgoKPiBvciB3ZSBwYXJzZSB0aGUgUEVQIHRh
Ymxlcywgd2hpY2ggc2VlbSB0byBjb3Zlcgo+IHNvbWUgb2YgdGhpcyBpbmZvcm1hdGlvbiAoaWYg
Qmpvcm4ncyBhbmFseXNpcyBpcyBjb3JyZWN0KQoKTWF5YmUgc29tZW9uZSBjYW4gY29uZHVjdCBz
b21lIGZ1cnRoZXIgd29yayBvbiB0aGlzIHdoZW4gd2Ugc3RhcnQgdG8KZW5hYmxlIG9yIHdyaXRl
IGEgZHJpdmVyIGZvciB0aGUgUEVQIChXaW5kb3dzLWNvbXBhdGlibGUgU3lzdGVtIFBvd2VyCk1h
bmFnZW1lbnQgQ29udHJvbGxlcikuICBUaGUgdGFibGVzIGZvciB0aGUgUEVQIGxvb2sgcHJldHR5
IGNvbXBsZXgsCnNvIHRoaXMgdGFzayB3b3VsZCBiZSBleHRyZW1lbHkgZGlmZmljdWx0IGlmIG5v
dCBpbXBvc3NpYmxlIHdpdGhvdXQKUXVhbGNvbW0ncyBoZWxwLiAgSSB3b3VsZG4ndCBldmVuIGtu
b3cgaG93IHRvIGV4dHJhcG9sYXRlIHRoaXMKaW5mb3JtYXRpb24gZnJvbSB0aGUgdGFibGVzLgoK
PiAoaWYgQmpvcm4ncyBhbmFseXNpcyBpcyBjb3JyZWN0KQoKQmpvcm4gaXMgYWJvdXQgdG8gcHJv
dmlkZSBoaXMgUmV2aWV3ZWQtYnkgZm9yIHRoaXMgaW1wbGVtZW50YXRpb24uCgotLSAKTGVlIEpv
bmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFj
ZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
