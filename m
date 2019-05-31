Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFE330DD4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 14:10:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8z3CD/Lpp7bp6tU9bKVlJqwNO3WpijSJrEehDdEFbw=; b=IFaUnFN4TTJlz3
	WSXcIICZJL4bLRPuTN7QemYzkK2VjGBXTQCH5C8YXR1sAZDfW8KZ2PYu0oMyHmzrHmXUnlH+qreUR
	ZmIMX0VQFXxXthoj07oYbCuNludQw6t6bfNdenRa1sBhDKId8lN1fnsApYX7JftqfNnQ4IdCu6GJ7
	J1lLypm2Vz492c9Re8wzMncGQly7SrbHOwAWciIXHYLt49JKUE1EGnVSBsRhazPZwNFxQ9QJDZxDT
	YxpirE6RAW3nnFh519MHwqIYdTvaZNAZ/MK+HKzu5ZxcM7uzIWM/XBFuvTTLmw/lgCkndMUI0KFt+
	fixftIbz9yNtUz7RWomA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWgMK-00055q-EQ; Fri, 31 May 2019 12:10:08 +0000
Received: from mail-it1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWgMB-00054B-Ev
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 12:10:01 +0000
Received: by mail-it1-f196.google.com with SMTP id h9so665581itk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 05:09:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6Tuh90SBNakyTuRSgXBkXaHbnlkZwtPNHW7V5YqX2cs=;
 b=TArL0xpaW1t7LJhCEQJLmzn+Lpgf2o+buxG3gJjFvP++H5yAEUwFAQ1hSBQDuHIy9T
 fw4WQKBuhAVTRffyt0E6bVvxRzza6XH//gV4nND27I48YJr2b9vPRu66yaUvFpnixd7H
 YWGKGzepisdV0hRwj+wo/7fp0UPWYpjt+xM5DG/0f3afoY2p5y4PMI96ehTjnD7uSGfG
 Md/Y0heLMWCxlJ5OepRGRR8zG3a+GoAPsGTaunoEmM+EU82iGUDNO6BPGXASFuJBqJgg
 ZN3JIL7VXuB11zSahoe/nGfBQo0goms3cUww9q46C1qsbPNDF+fwFB1sVEGtu0CFW/Kr
 zkdw==
X-Gm-Message-State: APjAAAXXx/3ITC2dgSPoQ0+WR0pH3R/TRg5W0wLS/uTVEC2IfeE5S8gD
 IRvWS11HYWWDE+L4gwqy1C0L6uLxfUqyYsiFqEw=
X-Google-Smtp-Source: APXvYqwPKL1uvHiup1kP4RLCIZqK3tMYoHqhzK9cxuP9y+i0q9vTzbYwU+VinhSk7QRSzeCq9YTFn2elGjJvurJWGVY=
X-Received: by 2002:a24:6583:: with SMTP id u125mr6987478itb.168.1559304597143; 
 Fri, 31 May 2019 05:09:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAJiuCcfSUAJ2w1qd-OC_CJPXoUVL03dCX1OeaUykNioHkR8Ciw@mail.gmail.com>
 <CAAObsKBuDDF225otw-2kBKufmpS6ng9feBshUPFKNDGv3pE8Ww@mail.gmail.com>
 <838fa193-3c67-d4c8-8991-78c3c8f89cb6@baylibre.com>
In-Reply-To: <838fa193-3c67-d4c8-8991-78c3c8f89cb6@baylibre.com>
From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Date: Fri, 31 May 2019 14:09:45 +0200
Message-ID: <CAAObsKBjboa50k0awDtwk5LUNV6_6+NQbpwS=_4QuD0vf70TNA@mail.gmail.com>
Subject: Re: Panfrost impossible to probe without opp table
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_050959_502993_08A35913 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomeu.vizoso[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: ezequiel Garcia <ezequiel@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAzMSBNYXkgMjAxOSBhdCAxNDowMywgTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdA
YmF5bGlicmUuY29tPiB3cm90ZToKPgo+IEhpIFRvbWV1LAo+Cj4gT24gMzEvMDUvMjAxOSAxMzo1
OSwgVG9tZXUgVml6b3NvIHdyb3RlOgo+ID4gT24gV2VkLCAyOSBNYXkgMjAxOSBhdCAyMzoyOSwg
Q2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiBI
aSwKPiA+Pgo+ID4+IEkgaGF2ZSByZWJhc2UgbXkga2VybmVsIG9uIGxhdGVzdCA1LjItcmMyLCBh
bmQgbXkgcGFuZnJvc3QgZHJpdmVyIGlzCj4gPj4gbm8gbW9yZSBwcm9iaW5nLgo+ID4+Cj4gPj4g
VGhlIGlzc3VlIGlzIGNvbWluZyBmcm9tIGYzNjE3YjQ0OWQwYmNmM2I1ZDgwYTk3ZjUxNDk4ZGNm
NzQ2M2NmN2UKPiA+PiAgICAgZHJtL3BhbmZyb3N0OiBTZWxlY3QgZGV2ZnJlcQo+ID4+Cj4gPj4g
ICAgIEN1cnJlbnRseSwgdGhlcmUgaXMgc29tZSBsb2dpYyBmb3IgdGhlIGRyaXZlciB0byB3b3Jr
IHdpdGhvdXQgZGV2ZnJlcS4KPiA+PiAgICAgSG93ZXZlciwgdGhlIGRyaXZlciBhY3R1YWxseSBm
YWlscyB0byBwcm9iZSBpZiAhQ09ORklHX1BNX0RFVkZSRVEuCj4gPj4KPiA+PiAgICAgRml4IHRo
aXMgYnkgc2VsZWN0aW5nIGRldmZyZXEsIGFuZCBkcm9wIHRoZSBhZGRpdGlvbmFsIGNoZWNrcwo+
ID4+ICAgICBmb3IgZGV2ZnJlcS4KPiA+Pgo+ID4+IEl0IHNlZW1zIHRoYXQgd2l0aCB0aGlzIGNv
bW1pdCB0aGUgT1BQIHRhYmxlIGlzIG5vdyBtYW5kYXRvcnkuCj4gPj4gaXMgaXQgaW50ZW50aW9u
YWw/Cj4gPgo+ID4gSGkgQ2zDqW1lbnQsCj4gPgo+ID4gZGV2ZnJlcSBzdXBwb3J0IGlzIGludGVu
dGlvbmFsbHkgcmVxdWlyZWQuIEkgZ290IGEgSDY0IGJvYXJkIHdoaWNoIEknbQo+ID4gdXNpbmcg
dG8gYWRkIFQ3MjAgc3VwcG9ydCB0byBQYW5mcm9zdC4KPgo+IG9wZXJhdGluZy1wb2ludHMtdjIg
YW5kIGNsb2NrcyBhcmUgb3B0aW9uYWwsIGRldmZyZXEgc2hvdWxkIGJlIG9wdGlvbmFsLAo+IHRo
aXMgd2FzIHRoZSBkZWZhdWx0IGJlaGF2aW91ciBvZiB0aGUgZmlyc3QgYXBwbGllZCB2ZXJzaW9u
LgoKSSdtIGNvbmNlcm5lZCBieSB0aGUgc2FmZXR5IG9mIHJ1bm5pbmcgdGhlc2UgR1BVcyBhbGwg
dGhlIHRpbWUgYXQKdGhlaXIgbWF4aW11bSBmcmVxdWVuY2llcy4gTWF5YmUgbm90IG9uIENocm9t
ZWJvb2tzIGFuZCBvdGhlciBjb25zdW1lcgpkZXZpY2VzLCBidXQgdGhlIFNCQ3MgSSBoYXZlIGhl
cmUgaGF2ZSBhbGwgdmVyeSBjcmFwcHkgaGVhdApkaXNzaXBhdGlvbi4KCj4gQW1sb2dpYyBkdCBk
b2VzIG5vdCBoYXZlIG9wZXJhdGluZy1wb2ludHMtdjIsIGFuZCBkZXZmcmVxIHdvbid0IGJlIHN1
cHBvcnRlZAo+IHNvb24uCgpXaGF0J3MgdGhlIHByb2JsZW0gd2l0aCBjb21pbmcgdXAgd2l0aCB0
aGUgb3BlcmF0aW5nIHBvaW50cz8KClRoYW5rcywKClRvbWV1Cgo+IE5laWwKPgo+ID4KPiA+IE9u
Y2UgSSdtIGFibGUgdG8gdGVzdCB0aGUgR1BVIHByb3Blcmx5IGFsb25nIHdpdGggZnJlcXVlbmN5
IHNjYWxpbmcsIEkKPiA+IHdpbGwgcGluZyB5b3Ugc28geW91IGNhbiByZXRlc3QgYW5kIHJlc3Vi
bWl0Lgo+ID4KPiA+IFRoYW5rcywKPiA+Cj4gPiBUb21ldQo+ID4KPiA+PiBBY3R1YWxseQo+ID4+
IFsgICAgMy4wNDYyMzddIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBjbG9jayByYXRlID0gNDMyMDAw
MDAwCj4gPj4gWyAgICAzLjA1MTU5M10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGJ1c19jbG9jayBy
YXRlID0gMTAwMDAwMDAwCj4gPj4gWyAgICAzLjA5NjAxMl0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6
IG1hbGktdDcyMCBpZCAweDcyMCBtYWpvciAweDEKPiA+PiBtaW5vciAweDEgc3RhdHVzIDB4MAo+
ID4+IFsgICAgMy4xMDM2ODJdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBmZWF0dXJlczogMDAwMDAw
MDAsMTAzMDllNDAsCj4gPj4gaXNzdWVzOiAwMDAwMDAwMCwyMTA1NDQwMAo+ID4+IFsgICAgMy4x
MTE3ODldIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBGZWF0dXJlczogTDI6MHgwNzExMDIwNgo+ID4+
IFNoYWRlcjoweDAwMDAwMDAwIFRpbGVyOjB4MDAwMDA4MDkgTWVtOjB4MSBNTVU6MHgwMDAwMjgy
MSBBUzoweGYKPiA+PiBKUzoweDcKPiA+PiBbICAgIDMuMTIzNDM1XSBwYW5mcm9zdCAxODAwMDAw
LmdwdTogc2hhZGVyX3ByZXNlbnQ9MHgzIGwyX3ByZXNlbnQ9MHgxCj4gPj4gWyAgICAzLjEzMDQw
NV0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IEZhdGFsIGVycm9yIGR1cmluZyBkZXZmcmVxIGluaXQK
PiA+Pgo+ID4+IFdpdGggY29tbWl0IHJldmVydGVkCj4gPj4gWyAgICAzLjAzODIzNl0gcGFuZnJv
c3QgMTgwMDAwMC5ncHU6IGNsb2NrIHJhdGUgPSA0MzIwMDAwMDAKPiA+PiBbICAgIDMuMDQzNTkz
XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogYnVzX2Nsb2NrIHJhdGUgPSAxMDAwMDAwMDAKPiA+PiBb
ICAgIDMuMDg3OTk0XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogbWFsaS10NzIwIGlkIDB4NzIwIG1h
am9yIDB4MQo+ID4+IG1pbm9yIDB4MSBzdGF0dXMgMHgwCj4gPj4gWyAgICAzLjA5NTY1OF0gcGFu
ZnJvc3QgMTgwMDAwMC5ncHU6IGZlYXR1cmVzOiAwMDAwMDAwMCwxMDMwOWU0MCwKPiA+PiBpc3N1
ZXM6IDAwMDAwMDAwLDIxMDU0NDAwCj4gPj4gWyAgICAzLjEwMzc2M10gcGFuZnJvc3QgMTgwMDAw
MC5ncHU6IEZlYXR1cmVzOiBMMjoweDA3MTEwMjA2Cj4gPj4gU2hhZGVyOjB4MDAwMDAwMDAgVGls
ZXI6MHgwMDAwMDgwOSBNZW06MHgxIE1NVToweDAwMDAyODIxIEFTOjB4Zgo+ID4+IEpTOjB4Nwo+
ID4+IFsgICAgMy4xMTU0MTBdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBzaGFkZXJfcHJlc2VudD0w
eDMgbDJfcHJlc2VudD0weDEKPiA+PiBbICAgIDMuMTIyNzk4XSBbZHJtXSBJbml0aWFsaXplZCBw
YW5mcm9zdCAxLjAuMCAyMDE4MDkwOCBmb3IKPiA+PiAxODAwMDAwLmdwdSBvbiBtaW5vciAwCj4g
Pj4KPiA+Pgo+ID4+IFRoYW5rcywKPiA+PiBDbMOpbWVudAo+ID4+Cj4gPj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdAo+ID4+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+
ID4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiA+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpLWRldmVsCj4gPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpLWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
