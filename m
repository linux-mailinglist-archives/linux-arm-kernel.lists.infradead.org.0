Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB89610C2D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 04:26:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zXntKznFzUTs30dqEyvO8VMkJtPE8ivirzrL6sWXFEk=; b=Y97AmizJ4YwNKczRMqEZZgYuRU
	j0QEF+choe8AJqXX43uWCH53EUrGvdYGmr06ydkCQYf4whc26/JRnpfZ1VlTLTSmukONbd2GBJ+Mq
	Mc/ZoA+H68UzrRTP/konIh1I17Zj6o81sWQTk9zM8ye86mIB1xNhDfJvknv9XvmMajLnyCWgScoEF
	LG4ohdlEB+fIP+uVITuFOwC5Ku3dWhz0kBJmCxV0hQt30PeWKMhEomDaV0N6n8vYwWgMMh/9NtDCD
	Tlq+UtX9dLoNAWG7Al5I5itAm3TrpXtkhEJRPrij29LHDoeeKA8lnbI+VE7SCLevf+Yv8GtHQYQzo
	EtffZGDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaASA-0000xC-Ah; Thu, 28 Nov 2019 03:26:50 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaAS0-0000wb-Qj
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 03:26:42 +0000
Received: by mail-ed1-f68.google.com with SMTP id s10so21497702edi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 19:26:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=GaoENi4GGygQ3nQqcy3CJUnQOgf4koxEIDao896R3FY=;
 b=Ui43ePDgc9yiaABcI8ZFauRkISarEQ2HWwKrmUNXL6xKWaHO60zscIWk/WeaM5FGvo
 fLzYfuJk/hFM4zAFDtlJgXBhWOcsOqpurxh1C2zHB8TwQbP1aYXGPHTIZLUtee9eessx
 JUzVdMcYiHmAfDgNtKpOKd6CzRyBRHQ0En02LVC6y5a0paqnoh/PXtoTlAD71BFwvbA/
 2ES1vt/yY0QO3QlaZIjgRaPsmUI7OJQuhxIwWlhBu9/+1Rm6AwxleWXcyf3QHBSsxbRo
 Kw23gUOyProZhdBAKQnlymui1/kxmNO1lQKPdGoZieNJiUbC1P0v5A+MsjE4bKp5tMBb
 qteA==
X-Gm-Message-State: APjAAAWvhibaciZu8hRdESsBZ2Q1D4JEotKtEoEG43aCTmUZm+UP9i1L
 p4Zw5wNEWqxDM3gsWnay4lzXo9/If44=
X-Google-Smtp-Source: APXvYqxNixxikhdfvsMXvW+eewZ7JyjwvXRQkwJtD6MvVwvm7hSlpazqKrUykH47VAvCFPJVxR6JDQ==
X-Received: by 2002:a17:906:d924:: with SMTP id
 rn4mr10516212ejb.213.1574911598427; 
 Wed, 27 Nov 2019 19:26:38 -0800 (PST)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52])
 by smtp.gmail.com with ESMTPSA id h33sm874333edd.76.2019.11.27.19.26.37
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Nov 2019 19:26:38 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id a15so29259467wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 19:26:37 -0800 (PST)
X-Received: by 2002:a5d:4a45:: with SMTP id v5mr47663995wrs.288.1574911597488; 
 Wed, 27 Nov 2019 19:26:37 -0800 (PST)
MIME-Version: 1.0
References: <20191128020259.1338188-1-megous@megous.com>
 <20191128102608.035cbb996c8681a6fb035336@magewell.com>
 <20191128030653.5fhcolvib6tzf4zc@core.my.home>
In-Reply-To: <20191128030653.5fhcolvib6tzf4zc@core.my.home>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 28 Nov 2019 11:26:24 +0800
X-Gmail-Original-Message-ID: <CAGb2v65+4LhHU5UCOhnowKqK+GUiAKzi+wcPxkmuwtJ=itv-iw@mail.gmail.com>
Message-ID: <CAGb2v65+4LhHU5UCOhnowKqK+GUiAKzi+wcPxkmuwtJ=itv-iw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH] media: sun6i-csi: Fix incorrect
 HSYNC/VSYNC/PCLK polarity configuration
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>, 
 Yong <yong.deng@magewell.com>, linux-sunxi <linux-sunxi@googlegroups.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, 
 "open list:CSI DRIVERS FOR ALLWINNER V3s" <linux-media@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_192640_861129_077056A1 
X-CRM114-Status: GOOD (  34.23  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgMTE6MDYgQU0gT25kxZllaiBKaXJtYW4gPG1lZ291c0Bt
ZWdvdXMuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgMTA6
MjY6MDhBTSArMDgwMCwgWW9uZyB3cm90ZToKPiA+IEhpIE9uZHJlaiwKPiA+Cj4gPiBUaGlzIGhh
cyBiZWVuIGRpc2N1c3NlZC4KPiA+IEFuZCBNYXhpbWUgc2VudCBhIHBhdGNoIGZvciB0aGlzOgo+
ID4gaHR0cHM6Ly93d3cubWFpbC1hcmNoaXZlLmNvbS9saW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5v
cmcvbXNnMTI3MTQ5Lmh0bWwKPgo+IFRoYW5rcyBmb3IgcG9pbnRpbmcgdG8gdGhlIHByZXZpb3Vz
IHBhdGNoLiBCdXQgdGhhdCBwYXRjaCBkb2Vzbid0IG1ha2UgYW55Cj4gc2Vuc2UsIGFuZCBicmVh
a3MgdGhpbmdzIGZvciBtZSwgYW5kIGRvZXNuJ3QgZXZlbiBtYXRjaCBCU1AgY29kZSwgd2hpY2gK
PiBoYXMgbm8gc3VjaCByZXZlcnNhbCwgYW5kIHdvcmtzIGZpbmUgd2l0aCBhYm91dCAzMCBjYW0g
ZHJpdmVycy4KPgo+IEFsc28gaG93IGRvIHlvdSBleHBsYWluIG15IGZpbmRpbmdzPwo+Cj4gTXkg
Y2FtZXJhIGlzIHNlbmRpbmcgY29ycmVjdCBzaWduYWxzLCB2ZXJpZmllZCBieSBsb29raW5nIGF0
IHRoZW0gYWN0dWFsbHkgKHNlZQo+IGJlbG93KSwgYW5kIENTSSBpcyBub3QgcmVjZWl2aW5nIHRo
ZSBpbWFnZS4gSSBoYXZlIHRvIGZsaXAgSFNZTkMvVlNZTkMgdG8gYmUKPiBvcG9zaXRlIG9mIHRo
YXQgd2hhdCBDU0kgZHJpdmVyIGV4cGVjdHMgYW5kIEkgZ2V0IGEgbm9pc3kgaW1hZ2UgYW5kIGlm
IEkgZml4Cj4gUENMSyBwb2xhcml0eSB0b28sIHRoZSBub2lzZSBnb2VzIGF3YXksIHdoaWNoIG1l
YW5zIG5vdyBJJ20gYWxzbyBzYW1wbGluZyB3aGVuCj4gdGhlIGRhdGEgYXJlIHN0YWJsZSBhbmQg
bm90IHdoZW4gdGhleSdyZSBjaGFuZ2luZy4KPgo+IEhlcmU6IChvdXRwdXQgZnJvbSBteSBjYW0s
IHRoYXQgSSBjb25maWd1cmVkIHRvIGhhdmUgVlNZTkMgQUNUSVZFIExPVywgSFNZTkMKPiBBQ1RJ
VkUgTE9XKSBBbmQgdGhlIHNpZ25hbCBpcyBjbGVhcmx5IHRoYXQsIGFzIHlvdSBjYW4gc2VlIHlv
dXJzZWxmOgo+Cj4gICBodHRwczovL21lZ291cy5jb20vZGwvdG1wLzk4ZGY4MWI3ZWQwMTI2ZWMu
cG5nCgpGcm9tIHRoZSBsb29rcyBvZiB0aGluZ3MgeW91IGhhdmUgYWN0aXZlLWhpZ2ggVlNZTkMg
d2l0aCBhY3RpdmUtbG93IEhSRUYuCkhSRUYgaXMgbm90IHRoZSBzYW1lIGFzIEhTWU5DLCBpbiBm
YWN0IHF1aXRlIHRoZSBvcHBvc2l0ZS4gVi9IIFNZTkMgYXJlCnB1bHNlcywgYWN0aXZlIG9ubHkg
d2hlbiB0aGVyZSBzaG91bGQgYmUgbm8gZGF0YSBhbmQgdGhlIGxpbmUvZnJhbWUgc3dpdGNoCmhh
cHBlbnMsIHdoaWxlIFYvSCBSRUYgYXJlIGhlbGQgYWN0aXZlIHdoZW4gdGhlcmUgaXMgZGF0YS4g
SSBwZXJzb25hbGx5CmZpbmQgdGhlc2UgdGVybXMgdmVyeSBjb25mdXNpbmcuIDooCgpOb3cgdGhl
IHRpbWluZyBkaWFncmFtcyBpbiB0aGUgQWxsd2lubmVyIG1hbnVhbHMgd291bGQgc3VnZ2VzdCB0
aGF0IHdoZW4KdGhleSBhcmUgdGFsa2luZyBhYm91dCBIL1YgU1lOQywgdGhleSBhcmUgYWN0dWFs
bHkgcmVmZXJyaW5nIHRvIEgvViBSRUYuClRoZSBIU1lOQyBsaW5lIGlzIGhpZ2gvYWN0aXZlIHdo
ZW4gdGhlcmUgaXMgdmFsaWQgZGF0YSwgYW5kIHRoZSBWU1lOQyBsaW5lCmlzIGhpZ2gvYWN0aXZl
IGZvciB0aGUgZHVyYXRpb24gb2YgdGhlIGZyYW1lLgoKSSB0aGluayBib3RoIHNpZGVzIG5lZWQg
dG8gYmUgY2hlY2tlZCB0aGF0IHRoZXkgYXJlIHVzaW5nIHRoZSBjb3JyZWN0CnBvbGFyaXR5LCBh
bmQgbWF5YmUgYWxzbyBoYXZlIHRoZSBtZWRpYSBtYWludGFpbmVycyBjbGFyaWZ5IGhvdyB0aGUK
cG9sYXJpdHkgc2hvdWxkIGJlIGludGVycHJldGVkIHdoZW4gdGhlIGhhcmR3YXJlIHVzZXMgSC9W
IHJlZiBpbnN0ZWFkCm9mIEgvViBzeW5jLgoKCkNoZW5ZdQoKPiBUaGUgYWJvdmUgc2lnbmFscyBh
cmUgcmVjZWl2ZWQgd2l0aCBDU0kgZHJpdmVyIGNvbmZpZ3VyZWQgd2l0aAo+IFY0TDJfTUJVU19W
U1lOQ19BQ1RJVkVfSElHSCBWNEwyX01CVVNfSFNZTkNfQUNUSVZFX0hJR0guIFNvIENTSSBkcml2
ZXIgaXMKPiBjbGVhcmx5IHdyb25nLgo+Cj4gSSB0aGluayB0aGlzIGlzIHByZXR0eSBjbGVhciB0
aGUgZHJpdmVyIGlzIGJ1Z2d5LiBBdCBsZWFzdCBmb3IgQTgzVCBTb0MuCj4KPiBJJ20gbm90IHN1
cmUgd2hhdCBNYXhpbWUgZm91bmQgb3V0LCBidXQgaGUgc2hvdWxkIHByb2JhYmx5IHJlLWNoZWNr
IGhpcwo+IGZpbmRpbmdzLiBNYXhpbWUsIGNhbiB5b3UgY29tbWVudCBvbiB0aGlzPwo+Cj4gcmVn
YXJkcywKPiAgICAgICAgIG8uCj4KPiA+IE9uIFRodSwgMjggTm92IDIwMTkgMDM6MDI6NTkgKzAx
MDAKPiA+IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPiB3cm90ZToKPiA+Cj4gPiA+
IFRoaXMgd2FzIGRpc2NvdmVyZWQgYnkgd3JpdGluZyBhIG5ldyBjYW1lcmEgZHJpdmVyIGFuZCB3
b25kZXJpbmcsIHdoeQo+ID4gPiBoc3luYy92c3luYyBwb2xhcml0eSBzZXR0aW5nIGJlaGF2ZXMg
aW4gcmV2ZXJzZSB0byB3aGF0IHdvdWxkIGJlCj4gPiA+IGV4cGVjdGVkLiBWZXJpZmllZCBieSBs
b29raW5nIGF0IHRoZSBhY3R1YWwgc2lnbmFscyBhbmQgdGhlIFNvQwo+ID4gPiB1c2VyIG1hbnVh
bC4KPiA+ID4KPiA+ID4gRml4ZXM6IDVjYzc1MjJkODk2NSAoIm1lZGlhOiBzdW42aTogQWRkIHN1
cHBvcnQgZm9yIEFsbHdpbm5lciBDU0kgVjNzIikKPiA+ID4gU2lnbmVkLW9mZi1ieTogT25kcmVq
IEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kvc3VuNmlfY3NpLmMgfCA2ICsrKy0tLQo+ID4gPiAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+ID4KPiA+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1
bjZpX2NzaS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kvc3VuNmlf
Y3NpLmMKPiA+ID4gaW5kZXggZjE3ZTU1NTA2MDJkLi45OGJiY2NhNTlhOTAgMTAwNjQ0Cj4gPiA+
IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5j
Cj4gPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZp
X2NzaS5jCj4gPiA+IEBAIC00MTcsMTIgKzQxNywxMiBAQCBzdGF0aWMgdm9pZCBzdW42aV9jc2lf
c2V0dXBfYnVzKHN0cnVjdCBzdW42aV9jc2lfZGV2ICpzZGV2KQo+ID4gPiAgICAgICAgICAgICBp
ZiAoZmxhZ3MgJiBWNEwyX01CVVNfRklFTERfRVZFTl9MT1cpCj4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgY2ZnIHw9IENTSV9JRl9DRkdfRklFTERfUE9TSVRJVkU7Cj4gPiA+Cj4gPiA+IC0gICAg
ICAgICAgIGlmIChmbGFncyAmIFY0TDJfTUJVU19WU1lOQ19BQ1RJVkVfTE9XKQo+ID4gPiArICAg
ICAgICAgICBpZiAoZmxhZ3MgJiBWNEwyX01CVVNfVlNZTkNfQUNUSVZFX0hJR0gpCj4gPiA+ICAg
ICAgICAgICAgICAgICAgICAgY2ZnIHw9IENTSV9JRl9DRkdfVlJFRl9QT0xfUE9TSVRJVkU7Cj4g
PiA+IC0gICAgICAgICAgIGlmIChmbGFncyAmIFY0TDJfTUJVU19IU1lOQ19BQ1RJVkVfTE9XKQo+
ID4gPiArICAgICAgICAgICBpZiAoZmxhZ3MgJiBWNEwyX01CVVNfSFNZTkNfQUNUSVZFX0hJR0gp
Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgY2ZnIHw9IENTSV9JRl9DRkdfSFJFRl9QT0xfUE9T
SVRJVkU7Cj4gPiA+Cj4gPiA+IC0gICAgICAgICAgIGlmIChmbGFncyAmIFY0TDJfTUJVU19QQ0xL
X1NBTVBMRV9SSVNJTkcpCj4gPiA+ICsgICAgICAgICAgIGlmIChmbGFncyAmIFY0TDJfTUJVU19Q
Q0xLX1NBTVBMRV9GQUxMSU5HKQo+ID4gPiAgICAgICAgICAgICAgICAgICAgIGNmZyB8PSBDU0lf
SUZfQ0ZHX0NMS19QT0xfRkFMTElOR19FREdFOwo+ID4gPiAgICAgICAgICAgICBicmVhazsKPiA+
ID4gICAgIGNhc2UgVjRMMl9NQlVTX0JUNjU2Ogo+ID4gPiAtLQo+ID4gPiAyLjI0LjAKPiA+ID4K
PiA+ID4gLS0KPiA+ID4gWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUg
c3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAibGludXgtc3VueGkiIGdyb3VwLgo+ID4g
PiBUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWls
cyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIGxpbnV4LXN1bnhpK3Vuc3Vic2NyaWJlQGdvb2ds
ZWdyb3Vwcy5jb20uCj4gPiA+IFRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIsIHZp
c2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9saW51eC1zdW54aS8yMDE5MTEy
ODAyMDI1OS4xMzM4MTg4LTEtbWVnb3VzJTQwbWVnb3VzLmNvbS4KPiA+Cj4gPgo+ID4gVGhhbmtz
LAo+ID4gWW9uZwo+Cj4gLS0KPiBZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91
IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29nbGUgR3JvdXBzICJsaW51eC1zdW54aSIgZ3JvdXAu
Cj4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBlbWFp
bHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1zdW54aSt1bnN1YnNjcmliZUBnb29n
bGVncm91cHMuY29tLgo+IFRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIsIHZpc2l0
IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9saW51eC1zdW54aS8yMDE5MTEyODAz
MDY1My41Zmhjb2x2aWI2dHpmNHpjJTQwY29yZS5teS5ob21lLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
