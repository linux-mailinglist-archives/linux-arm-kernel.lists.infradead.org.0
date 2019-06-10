Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCF93B604
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eTohud2qhZRBawdCnqZoKKTOH60+9co8r5K/fHEo6A=; b=b+F+iWcHk34AEp
	angpBT5K60zE2i1K/L9FfNBJXdswFNjYi6VoRmgrvedUlGZ1kgrijknuhp/eqWEZ+sMm9Cij0Bo2O
	dsLQOsZ5NmUWjZGX2RhtI6/1dRN/7gmZg4HrcAVH9SqvxRxu8RGxPhQy7JmgxLDcn5JqaM50yP0+u
	7wa6JPMncyhFISRsLUGjmWvKwP8snN1JNmGN4Sgi8a2KXltkGuN/BxsRLWx4CaSNRykdl7rQBTKrj
	0WO/+P7OBwWaYvaSE1D+IdYLeYecAFGO19WYXAgCiNAj/u/CriMxOU7o7bzF0nhhkJxZ+P+YXMFcZ
	PGZZvYgW2nVSrAEh1CnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKNj-00073B-QF; Mon, 10 Jun 2019 13:30:39 +0000
Received: from mail-it1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKNT-00071s-EP
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:30:24 +0000
Received: by mail-it1-f195.google.com with SMTP id q14so12035795itc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 06:30:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FSaiN1DGIOpo9wbwPTRGmWSmcDUKGj8HneroXcSzc/M=;
 b=milUFbi1zslgR3wgCPo1M5WYP70KGWIqFmjpPEVKDYTwYA8uSrTdJX1ID+YZ77e7hl
 4COkDpPMN8HTNycc2tXaYfEeu8ZPAtzPsDEerxv5fvQvIKDKbraro6/bi2kerK2fQ0Eo
 P8YHksdLnkL8uO1OnL0FSHJkv+VGaew19225rxOoTaGOBNpLVEYC3PPIT7AeeDhCyOfp
 FykrHgv5/v90NrlDS9cVMpkjdOv3GNSFUdpxpr7+xGJzPY21sESSpnyySubE7dNnHGlH
 20LZMp2Hz3E8oPtWwGpePOWqi9+kDbw/9KN92BS/fi6qUnYbqAvRUcKX4HlS3Nf7iEQb
 0JAg==
X-Gm-Message-State: APjAAAVQLIqXgYjs8y9ndAw0qVxCJ3WMBoeuSjcbPlFrr0Pe0bdAOG6o
 CPHInTzCkiwnjqaqruFqTe5c8rzARkatd2FUKNQ=
X-Google-Smtp-Source: APXvYqyq4NHqWPMvbk/l889DlLgBf0SpgBNg21nvVRXHFPp/Y/5gdMDmhh1wO+sZM71UpN8V7nXXar8bbgMezmYJflM=
X-Received: by 2002:a02:7b2d:: with SMTP id q45mr42271200jac.127.1560173415987; 
 Mon, 10 Jun 2019 06:30:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190521161102.29620-1-peron.clem@gmail.com>
 <CAAObsKD8bij1ANLqX6y11Y6mDEXiymNjrDkmHmvGWiFLKWu_FA@mail.gmail.com>
 <4ff02295-6c34-791b-49f4-6558a92ad7a3@arm.com>
In-Reply-To: <4ff02295-6c34-791b-49f4-6558a92ad7a3@arm.com>
From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Date: Mon, 10 Jun 2019 15:30:03 +0200
Message-ID: <CAAObsKB=vNr6bBomQ_hMfic8CuwZcqF_x7UJR6rSm2cG=EJAcg@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] Allwinner H6 Mali GPU support
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_063023_486921_9F1AD5F8 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomeu.vizoso[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyOSBNYXkgMjAxOSBhdCAxOTozOCwgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlA
YXJtLmNvbT4gd3JvdGU6Cj4KPiBPbiAyOS8wNS8yMDE5IDE2OjA5LCBUb21ldSBWaXpvc28gd3Jv
dGU6Cj4gPiBPbiBUdWUsIDIxIE1heSAyMDE5IGF0IDE4OjExLCBDbMOpbWVudCBQw6lyb24gPHBl
cm9uLmNsZW1AZ21haWwuY29tPiB3cm90ZToKPiA+Pgo+ID4gW3NuaXBdCj4gPj4gWyAgMzQ1LjIw
NDgxM10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IG1tdSBpcnEgc3RhdHVzPTEKPiA+PiBbICAzNDUu
MjA5NjE3XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogVW5oYW5kbGVkIFBhZ2UgZmF1bHQgaW4gQVMw
IGF0IFZBCj4gPj4gMHgwMDAwMDAwMDAyNDAwNDAwCj4gPgo+ID4gIEZyb20gd2hhdCBJIGNhbiBz
ZWUgaGVyZSwgMHgwMDAwMDAwMDAyNDAwNDAwIHBvaW50cyB0byB0aGUgZmlyc3QgYnl0ZQo+ID4g
b2YgdGhlIGZpcnN0IHN1Ym1pdHRlZCBqb2IgZGVzY3JpcHRvci4KPiA+Cj4gPiBTbyBtYXBwaW5n
IGJ1ZmZlcnMgZm9yIHRoZSBHUFUgZG9lc24ndCBzZWVtIHRvIGJlIHdvcmtpbmcgYXQgYWxsIG9u
Cj4gPiA2NC1iaXQgVC03NjAuCj4gPgo+ID4gU3RldmVuLCBSb2JpbiwgZG8geW91IGhhdmUgYW55
IGlkZWEgb2Ygd2h5IHRoaXMgY291bGQgYmU/Cj4KPiBJIHRyaWVkIHJvbGxpbmcgYmFjayB0byB0
aGUgb2xkIHBhbmZyb3N0L25vbmRybSBzaGltLCBhbmQgaXQgd29ya3MgZmluZQo+IHdpdGgga2Jh
c2UsIGFuZCBJIGFsc28gZm91bmQgdGhhdCBULTgyMCBmYWxscyBvdmVyIGluIHRoZSBleGFjdCBz
YW1lCj4gbWFubmVyLCBzbyB0aGUgZmFjdCB0aGF0IGl0IHNlZW1lZCB0byBiZSBjb21tb24gdG8g
dGhlIHNtYWxsZXIgMzMtYml0Cj4gZGVzaWducyByYXRoZXIgdGhhbiBhbnl0aGluZyB0byBkbyB3
aXRoIHRoZSBvdGhlcgo+IGpvYl9kZXNjcmlwdG9yX3NpemUvdjQvdjUgY29tcGxpY2F0aW9uIHR1
cm5lZCBvdXQgdG8gYmUgdGVsbGluZy4KPgo+IFsgYXMgYW4gYXNpZGUsIGFyZSA2NC1iaXQgam9i
cyBhY3R1YWxseSBrbm93biBub3QgdG8gd29yayBvbiB2NCBHUFVzLCBvcgo+IGlzIGl0IGp1c3Qg
dGhhdCBub2JvZHkncyB5ZXQgb2JzZXJ2ZWQgYSA2NC1iaXQgYmxvYiBkcml2aW5nIG9uZT8gXQoK
RG8geW91IGtub3cgaWYgNjQtYml0IGRlc2NyaXB0b3JzIHdvcmsgb24gdjQgR1BVcyB3aXRoIG91
ciBrZXJuZWwKZHJpdmVyIGJ1dCB3aXRoIHRoZSBEREs/CgpXb25kZXIgaWYgdGhlcmUgc29tZXRo
aW5nIGVsc2UgdG8gYmUgZml4ZWQgaW4gdGhlIGtlcm5lbCBmb3IgdGhhdCBzY2VuYXJpby4KClRo
YW5rcywKClRvbWV1Cgo+IExvbmcgc3Rvcnkgc2hvcnQsIGl0IGFwcGVhcnMgdGhhdCAnTWFsaSBM
UEFFJyBpcyBhbHNvIGxhY2tpbmcgdGhlIHN0YXJ0Cj4gbGV2ZWwgbm90aW9uIG9mIFZNU0EsIGFu
ZCBleHBlY3RzIGEgZnVsbCA0LWxldmVsIHRhYmxlIGV2ZW4gZm9yIDw0MCBiaXRzCj4gd2hlbiBs
ZXZlbCAwIGVmZmVjdGl2ZWx5IHJlZHVuZGFudC4gVGh1cyB3YWxraW5nIHRoZSAzLWxldmVsIHRh
YmxlIHRoYXQKPiBpby1wZ3RhYmxlIGNvbWVzIGJhY2sgd2l0aCBlbmRzIHVwIGdvaW5nIHdpbGRs
eSB3cm9uZy4gVGhlIGhhY2sgYmVsb3cKPiBzZWVtcyB0byBkbyB0aGUgam9iIGZvciBtZTsgaWYg
Q2zDqW1lbnQgY2FuIGNvbmZpcm0gKG9uIFQtNzIwIHlvdSdsbAo+IHN0aWxsIG5lZWQgdGhlIHVz
ZXJzcGFjZSBoYWNrIHRvIGZvcmNlIDMyLWJpdCBqb2JzIGFzIHdlbGwpIHRoZW4gSSB0aGluawo+
IEknbGwgY29vayB1cCBhIHByb3BlciByZWZhY3RvcmluZyBvZiB0aGUgYWxsb2NhdG9yIHRvIHB1
dCB0aGluZ3MgcmlnaHQuCj4KPiBSb2Jpbi4KPgo+Cj4gLS0tLS0+OC0tLS0tCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvaW9tbXUvaW8tcGd0YWJsZS1hcm0uYyBiL2RyaXZlcnMvaW9tbXUvaW8tcGd0
YWJsZS1hcm0uYwo+IGluZGV4IDU0Njk2OGQ4YTM0OS4uZjI5ZGE2ZThkYzA4IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvaW9tbXUvaW8tcGd0YWJsZS1hcm0uYwo+ICsrKyBiL2RyaXZlcnMvaW9tbXUv
aW8tcGd0YWJsZS1hcm0uYwo+IEBAIC0xMDIzLDEyICsxMDIzLDE0IEBAIGFybV9tYWxpX2xwYWVf
YWxsb2NfcGd0YWJsZShzdHJ1Y3QKPiBpb19wZ3RhYmxlX2NmZyAqY2ZnLCB2b2lkICpjb29raWUp
Cj4gICAgICAgICBpb3AgPSBhcm1fNjRfbHBhZV9hbGxvY19wZ3RhYmxlX3MxKGNmZywgY29va2ll
KTsKPiAgICAgICAgIGlmIChpb3ApIHsKPiAgICAgICAgICAgICAgICAgdTY0IG1haXIsIHR0YnI7
Cj4gKyAgICAgICAgICAgICAgIHN0cnVjdCBhcm1fbHBhZV9pb19wZ3RhYmxlICpkYXRhID0gaW9f
cGd0YWJsZV9vcHNfdG9fZGF0YSgmaW9wLT5vcHMpOwo+Cj4gKyAgICAgICAgICAgICAgIGRhdGEt
PmxldmVscyA9IDQ7Cj4gICAgICAgICAgICAgICAgIC8qIENvcHkgdmFsdWVzIGFzIHVuaW9uIGZp
ZWxkcyBvdmVybGFwICovCj4gICAgICAgICAgICAgICAgIG1haXIgPSBjZmctPmFybV9scGFlX3Mx
X2NmZy5tYWlyWzBdOwo+ICAgICAgICAgICAgICAgICB0dGJyID0gY2ZnLT5hcm1fbHBhZV9zMV9j
ZmcudHRiclswXTsKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaS1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
