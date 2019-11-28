Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2661710C329
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 05:15:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tePV/v16xl91uqcLjHxlwqcYd4n0r1B4jxn/t863ZM4=; b=MJhJ60HMP8SBA/UuoASa/aAN0T
	GG/ybZOPAxzfUqXduIy/mDqAw6KggctkdvRDf4u8n6CUp9mBA767V1deGadJtmo2UfGZfwZqgNeIk
	nK6l57JY7t8fNChvzcxrlgUUn9W7GOJxmcH6K6i25fr6OYcCrLTVK2gxlvBAsTvEvTk37oNayyfBt
	oJqRbjWYVfQrHEXEc59UkqovjRwXhJKwKyPcCpvWwmg0/uyJ5iqvaCfPh5Nr8YI3sMmRg2fhH8Q8L
	YB3MQJEyG78/BohfyYWZqRgmckbJU+dBq0t/i6rB3mpJx60U1oV+K/B0gSzVpJJF5pUpvH2IllqWw
	WP5XIREg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaBCq-0003Xo-GO; Thu, 28 Nov 2019 04:15:04 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaBCf-0003XA-Ui
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 04:14:55 +0000
Received: by mail-ed1-f66.google.com with SMTP id dc19so6604356edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 20:14:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=5sfODevhRJ0fpp4KUyFGDUEZZ6v0++XmlIguNOG57fk=;
 b=mTpS6VVCZPdKU1GRUlwF1GQVqMlfXgwEUgO+ePw6xpN4jNn5/jCPTSgp5cF/nGiPE6
 Ud0LTDOu+aTXR2I8QNzsfK9H7uZJmH6v41+fFkr3W2RIIWnKpYoHQMLniXqMQJHv8352
 9/GaEvbv0vs/fIQCTfaQvFI50iNqscYFfqFUBrZd59srwTmSZUn0IjyJ0yFN+EdoaCpG
 X8NdWJWRQAn8nOXI65ubUOReAhQLP3gbG4fJrFhCl8ZobgMDPAy5sHAti09P/RS88HTT
 y3ko4d8JCsE6GEVekFKWNA3oHvHsTvBg8PZXvTIcOO1Qf8boCFqrKA6ra/W6dnGTsaFV
 JAMQ==
X-Gm-Message-State: APjAAAUU88NEfdh+lx7iDcKEaqA1NRk2oDnMH+Wt71qaQ59nsH+/qZIm
 HnOyKsDSQxRCnadRfc3oYZl2uyvJAUk=
X-Google-Smtp-Source: APXvYqyhUEjg49r4NzBQItRWyJFw+O0SksIMoQipehKsZWEhwJRy5XybABsm9Gxb8j6/k58poEasyA==
X-Received: by 2002:a17:906:6552:: with SMTP id
 u18mr52327339ejn.36.1574914491882; 
 Wed, 27 Nov 2019 20:14:51 -0800 (PST)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id z5sm912938edi.12.2019.11.27.20.14.51
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Nov 2019 20:14:51 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id g7so8648625wrw.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 20:14:51 -0800 (PST)
X-Received: by 2002:adf:81e3:: with SMTP id 90mr2263793wra.23.1574914490971;
 Wed, 27 Nov 2019 20:14:50 -0800 (PST)
MIME-Version: 1.0
References: <20191128020259.1338188-1-megous@megous.com>
 <20191128102608.035cbb996c8681a6fb035336@magewell.com>
 <20191128030653.5fhcolvib6tzf4zc@core.my.home>
 <CAGb2v65+4LhHU5UCOhnowKqK+GUiAKzi+wcPxkmuwtJ=itv-iw@mail.gmail.com>
 <20191128035056.77554jav3eo6h7su@core.my.home>
In-Reply-To: <20191128035056.77554jav3eo6h7su@core.my.home>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 28 Nov 2019 12:14:35 +0800
X-Gmail-Original-Message-ID: <CAGb2v67Bfrn+_tSjF6Jeu0G3v9_BhrB__Sgag-yd5WwiSmztkA@mail.gmail.com>
Message-ID: <CAGb2v67Bfrn+_tSjF6Jeu0G3v9_BhrB__Sgag-yd5WwiSmztkA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH] media: sun6i-csi: Fix incorrect
 HSYNC/VSYNC/PCLK polarity configuration
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>, 
 Chen-Yu Tsai <wens@csie.org>, Yong <yong.deng@magewell.com>, 
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>, 
 "open list:CSI DRIVERS FOR ALLWINNER V3s" <linux-media@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_201453_987343_12D6534A 
X-CRM114-Status: GOOD (  41.99  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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

T24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgMTE6NTEgQU0gT25kxZllaiBKaXJtYW4gPG1lZ291c0Bt
ZWdvdXMuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgTm92IDI4LCAyMDE5IGF0IDExOjI2OjI0QU0g
KzA4MDAsIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+IE9uIFRodSwgTm92IDI4LCAyMDE5IGF0IDEx
OjA2IEFNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4gPiA+Cj4g
PiA+IEhpLAo+ID4gPgo+ID4gPiBPbiBUaHUsIE5vdiAyOCwgMjAxOSBhdCAxMDoyNjowOEFNICsw
ODAwLCBZb25nIHdyb3RlOgo+ID4gPiA+IEhpIE9uZHJlaiwKPiA+ID4gPgo+ID4gPiA+IFRoaXMg
aGFzIGJlZW4gZGlzY3Vzc2VkLgo+ID4gPiA+IEFuZCBNYXhpbWUgc2VudCBhIHBhdGNoIGZvciB0
aGlzOgo+ID4gPiA+IGh0dHBzOi8vd3d3Lm1haWwtYXJjaGl2ZS5jb20vbGludXgtbWVkaWFAdmdl
ci5rZXJuZWwub3JnL21zZzEyNzE0OS5odG1sCj4gPiA+Cj4gPiA+IFRoYW5rcyBmb3IgcG9pbnRp
bmcgdG8gdGhlIHByZXZpb3VzIHBhdGNoLiBCdXQgdGhhdCBwYXRjaCBkb2Vzbid0IG1ha2UgYW55
Cj4gPiA+IHNlbnNlLCBhbmQgYnJlYWtzIHRoaW5ncyBmb3IgbWUsIGFuZCBkb2Vzbid0IGV2ZW4g
bWF0Y2ggQlNQIGNvZGUsIHdoaWNoCj4gPiA+IGhhcyBubyBzdWNoIHJldmVyc2FsLCBhbmQgd29y
a3MgZmluZSB3aXRoIGFib3V0IDMwIGNhbSBkcml2ZXJzLgo+ID4gPgo+ID4gPiBBbHNvIGhvdyBk
byB5b3UgZXhwbGFpbiBteSBmaW5kaW5ncz8KPiA+ID4KPiA+ID4gTXkgY2FtZXJhIGlzIHNlbmRp
bmcgY29ycmVjdCBzaWduYWxzLCB2ZXJpZmllZCBieSBsb29raW5nIGF0IHRoZW0gYWN0dWFsbHkg
KHNlZQo+ID4gPiBiZWxvdyksIGFuZCBDU0kgaXMgbm90IHJlY2VpdmluZyB0aGUgaW1hZ2UuIEkg
aGF2ZSB0byBmbGlwIEhTWU5DL1ZTWU5DIHRvIGJlCj4gPiA+IG9wb3NpdGUgb2YgdGhhdCB3aGF0
IENTSSBkcml2ZXIgZXhwZWN0cyBhbmQgSSBnZXQgYSBub2lzeSBpbWFnZSBhbmQgaWYgSSBmaXgK
PiA+ID4gUENMSyBwb2xhcml0eSB0b28sIHRoZSBub2lzZSBnb2VzIGF3YXksIHdoaWNoIG1lYW5z
IG5vdyBJJ20gYWxzbyBzYW1wbGluZyB3aGVuCj4gPiA+IHRoZSBkYXRhIGFyZSBzdGFibGUgYW5k
IG5vdCB3aGVuIHRoZXkncmUgY2hhbmdpbmcuCj4gPiA+Cj4gPiA+IEhlcmU6IChvdXRwdXQgZnJv
bSBteSBjYW0sIHRoYXQgSSBjb25maWd1cmVkIHRvIGhhdmUgVlNZTkMgQUNUSVZFIExPVywgSFNZ
TkMKPiA+ID4gQUNUSVZFIExPVykgQW5kIHRoZSBzaWduYWwgaXMgY2xlYXJseSB0aGF0LCBhcyB5
b3UgY2FuIHNlZSB5b3Vyc2VsZjoKPiA+ID4KPiA+ID4gICBodHRwczovL21lZ291cy5jb20vZGwv
dG1wLzk4ZGY4MWI3ZWQwMTI2ZWMucG5nCj4gPgo+ID4gRnJvbSB0aGUgbG9va3Mgb2YgdGhpbmdz
IHlvdSBoYXZlIGFjdGl2ZS1oaWdoIFZTWU5DIHdpdGggYWN0aXZlLWxvdyBIUkVGLgo+ID4gSFJF
RiBpcyBub3QgdGhlIHNhbWUgYXMgSFNZTkMsIGluIGZhY3QgcXVpdGUgdGhlIG9wcG9zaXRlLiBW
L0ggU1lOQyBhcmUKPiA+IHB1bHNlcywgYWN0aXZlIG9ubHkgd2hlbiB0aGVyZSBzaG91bGQgYmUg
bm8gZGF0YSBhbmQgdGhlIGxpbmUvZnJhbWUgc3dpdGNoCj4gPiBoYXBwZW5zLCB3aGlsZSBWL0gg
UkVGIGFyZSBoZWxkIGFjdGl2ZSB3aGVuIHRoZXJlIGlzIGRhdGEuIEkgcGVyc29uYWxseQo+ID4g
ZmluZCB0aGVzZSB0ZXJtcyB2ZXJ5IGNvbmZ1c2luZy4gOigKPiA+Cj4gPiBOb3cgdGhlIHRpbWlu
ZyBkaWFncmFtcyBpbiB0aGUgQWxsd2lubmVyIG1hbnVhbHMgd291bGQgc3VnZ2VzdCB0aGF0IHdo
ZW4KPiA+IHRoZXkgYXJlIHRhbGtpbmcgYWJvdXQgSC9WIFNZTkMsIHRoZXkgYXJlIGFjdHVhbGx5
IHJlZmVycmluZyB0byBIL1YgUkVGLgo+ID4gVGhlIEhTWU5DIGxpbmUgaXMgaGlnaC9hY3RpdmUg
d2hlbiB0aGVyZSBpcyB2YWxpZCBkYXRhLCBhbmQgdGhlIFZTWU5DIGxpbmUKPiA+IGlzIGhpZ2gv
YWN0aXZlIGZvciB0aGUgZHVyYXRpb24gb2YgdGhlIGZyYW1lLgo+ID4KPiA+IEkgdGhpbmsgYm90
aCBzaWRlcyBuZWVkIHRvIGJlIGNoZWNrZWQgdGhhdCB0aGV5IGFyZSB1c2luZyB0aGUgY29ycmVj
dAo+ID4gcG9sYXJpdHksIGFuZCBtYXliZSBhbHNvIGhhdmUgdGhlIG1lZGlhIG1haW50YWluZXJz
IGNsYXJpZnkgaG93IHRoZQo+ID4gcG9sYXJpdHkgc2hvdWxkIGJlIGludGVycHJldGVkIHdoZW4g
dGhlIGhhcmR3YXJlIHVzZXMgSC9WIHJlZiBpbnN0ZWFkCj4gPiBvZiBIL1Ygc3luYy4KPgo+IE9o
IG15LCBzbyBpdCdzIGp1c3QgYSB0ZXJtaW5vbG9neSBpc3N1ZT8gOikKPgo+IFRoaXMgcHJvYmFi
bHkgc2hvdWxkIGJlIGRvY3VtbWVudGVkIHNvbWV3aGVyZS4gSSBqdXN0IHRob3VnaHQgeFNZTkNf
QUNUSVZFX0hJR0gKPiBtZWFudCB0aGUgcmVzcGVjdGl2ZSBzaWduYWxzIGFyZSBzdXBwb3NlZCB0
byBiZSBISUdIIGR1cmluZyBhY3RpdmUgcGhhc2Ugb2YgZGF0YQo+IHRyYW5zbWlzc2lvbjogdGhh
dCBpcyBWU1lOQyBISUdIIGR1cmluZyBlbnRpcmUgZnJhbWUsIGFuZCBIU1lOQyBoaWdoIGR1cmlu
ZyByb3cuCgpVbmZvcnR1bmF0ZWx5IEknbSBoYXZpbmcgYSBoYXJkIHRpbWUgZmluZGluZyBhIGRl
ZmluaXRpdmUgc291cmNlIGZvciB0aGlzLiBNeQpyYXRpb25hbGUgaXMgdGhhdCBzaW5jZSB0aGUg
c3luYyBzaWduYWwgaXMgYSBwdWxzZSwgdGhlIGFjdGl2ZSBwYXJ0IHdvdWxkIHJlZmVyCnRvIHRo
ZSBwdWxzaW5nIHBhcnQsIG5vdCB0aGUgYXQgcmVzdCBwYXJ0LgoKPiBEVCBiaW5kaW5ncyBkb2N1
bWVudGF0aW9uIGRvZXNuJ3QgaGVscCBtdWNoIGVpdGhlci4KClllYWguIEkgdGhpbmsgdGhpcyBz
aG91bGQgYmUgc29ydGVkIG91dCBmb3IgdGhlIHdob2xlIHN1YnN5c3RlbSwgYXMgdGhpcyBub3QK
b25seSBhZmZlY3RzIHBsYXRmb3JtIGRyaXZlcnMsIGJ1dCB0aGUgc2Vuc29yIGRyaXZlcnMgYXMg
d2VsbC4KCj4gQW5kIG9idmlvdXNseSBtYW51ZmFjdHVyZXJzIGFyZSBjb25mdXNlZCB0b28uCj4K
PiAgIGh0dHBzOi8vbWVnb3VzLmNvbS9kbC90bXAvZmFlMDdkZmI0ODk3YmJiMy5wbmcKCkl0IHNl
ZW1zIGF0IGxlYXN0IE9tbmlWaXNpb24gdXNlcyBWU1lOQyArIEhSRUYuIEdhbGF4eUNvcmUgc2Vl
bXMgdG8gdXNlIFZTWU5DICsKSFJFRiBhcyB3ZWxsLCBidXQgdGhleSBjYWxsIGl0IEhTWU5DLCBh
bmQgVlNZTkMgcG9sYXJpdHkgaXMgaW52ZXJ0ZWQuIDooCgpUaGUgT1Y3NjcwIHNlbnNvciBJIHdh
cyB0ZXN0aW5nIGhhZCBhbiBvcHRpb24gdG8gc3dpdGNoIGZyb20gSFJFRiB0byBIU1lOQywKYW5k
IGFub3RoZXIgb25lIHRvIGludmVydCBIUkVGLiBUYWxrIGFib3V0IGNvbmZ1c2luZy4gQW5kIEhT
WU5DICE9IGludmVydGVkCkhSRUYuIFRoZXkgd2lsbCBiZSBzb21lIFBDTEsgY3ljbGVzIGFwYXJ0
LgoKPiBIU1lOQy9WU1lOQyAibG93IHZhbGlkIiBwcm9kdWNlcyB3aGF0IHlvdSBzZWUgb24gdGhl
IHByZXZpb3VzIHNpZ25hbCBjYXB0dXJlCj4gSSBwb3N0ZWQuIDspCgpUaGFua3MuIEkgZG9uJ3Qg
aGF2ZSBhIHNjb3BlIG9yIGxvZ2ljIGFuYWx5emVyLiBJJ2xsIHdhaXQgZm9yIHRoZSBwZW9wbGUg
d2hvCmRvIHRvIGZpZ3VyZSB0aGlzIG91dC4KCgpSZWdhcmRzCkNoZW5ZdQoKPiByZWdhcmRzLAo+
ICAgICAgICAgby4KPgo+ID4KPiA+IENoZW5ZdQo+ID4KPiA+ID4gVGhlIGFib3ZlIHNpZ25hbHMg
YXJlIHJlY2VpdmVkIHdpdGggQ1NJIGRyaXZlciBjb25maWd1cmVkIHdpdGgKPiA+ID4gVjRMMl9N
QlVTX1ZTWU5DX0FDVElWRV9ISUdIIFY0TDJfTUJVU19IU1lOQ19BQ1RJVkVfSElHSC4gU28gQ1NJ
IGRyaXZlciBpcwo+ID4gPiBjbGVhcmx5IHdyb25nLgo+ID4gPgo+ID4gPiBJIHRoaW5rIHRoaXMg
aXMgcHJldHR5IGNsZWFyIHRoZSBkcml2ZXIgaXMgYnVnZ3kuIEF0IGxlYXN0IGZvciBBODNUIFNv
Qy4KPiA+ID4KPiA+ID4gSSdtIG5vdCBzdXJlIHdoYXQgTWF4aW1lIGZvdW5kIG91dCwgYnV0IGhl
IHNob3VsZCBwcm9iYWJseSByZS1jaGVjayBoaXMKPiA+ID4gZmluZGluZ3MuIE1heGltZSwgY2Fu
IHlvdSBjb21tZW50IG9uIHRoaXM/Cj4gPiA+Cj4gPiA+IHJlZ2FyZHMsCj4gPiA+ICAgICAgICAg
by4KPiA+ID4KPiA+ID4gPiBPbiBUaHUsIDI4IE5vdiAyMDE5IDAzOjAyOjU5ICswMTAwCj4gPiA+
ID4gT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+
ID4gPiBUaGlzIHdhcyBkaXNjb3ZlcmVkIGJ5IHdyaXRpbmcgYSBuZXcgY2FtZXJhIGRyaXZlciBh
bmQgd29uZGVyaW5nLCB3aHkKPiA+ID4gPiA+IGhzeW5jL3ZzeW5jIHBvbGFyaXR5IHNldHRpbmcg
YmVoYXZlcyBpbiByZXZlcnNlIHRvIHdoYXQgd291bGQgYmUKPiA+ID4gPiA+IGV4cGVjdGVkLiBW
ZXJpZmllZCBieSBsb29raW5nIGF0IHRoZSBhY3R1YWwgc2lnbmFscyBhbmQgdGhlIFNvQwo+ID4g
PiA+ID4gdXNlciBtYW51YWwuCj4gPiA+ID4gPgo+ID4gPiA+ID4gRml4ZXM6IDVjYzc1MjJkODk2
NSAoIm1lZGlhOiBzdW42aTogQWRkIHN1cHBvcnQgZm9yIEFsbHdpbm5lciBDU0kgVjNzIikKPiA+
ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+
ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42
aS1jc2kvc3VuNmlfY3NpLmMgfCA2ICsrKy0tLQo+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPiA+ID4gPgo+ID4gPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5j
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kvc3VuNmlfY3NpLmMKPiA+
ID4gPiA+IGluZGV4IGYxN2U1NTUwNjAyZC4uOThiYmNjYTU5YTkwIDEwMDY0NAo+ID4gPiA+ID4g
LS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kvc3VuNmlfY3NpLmMK
PiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1
bjZpX2NzaS5jCj4gPiA+ID4gPiBAQCAtNDE3LDEyICs0MTcsMTIgQEAgc3RhdGljIHZvaWQgc3Vu
NmlfY3NpX3NldHVwX2J1cyhzdHJ1Y3Qgc3VuNmlfY3NpX2RldiAqc2RldikKPiA+ID4gPiA+ICAg
ICAgICAgICAgIGlmIChmbGFncyAmIFY0TDJfTUJVU19GSUVMRF9FVkVOX0xPVykKPiA+ID4gPiA+
ICAgICAgICAgICAgICAgICAgICAgY2ZnIHw9IENTSV9JRl9DRkdfRklFTERfUE9TSVRJVkU7Cj4g
PiA+ID4gPgo+ID4gPiA+ID4gLSAgICAgICAgICAgaWYgKGZsYWdzICYgVjRMMl9NQlVTX1ZTWU5D
X0FDVElWRV9MT1cpCj4gPiA+ID4gPiArICAgICAgICAgICBpZiAoZmxhZ3MgJiBWNEwyX01CVVNf
VlNZTkNfQUNUSVZFX0hJR0gpCj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgIGNmZyB8PSBD
U0lfSUZfQ0ZHX1ZSRUZfUE9MX1BPU0lUSVZFOwo+ID4gPiA+ID4gLSAgICAgICAgICAgaWYgKGZs
YWdzICYgVjRMMl9NQlVTX0hTWU5DX0FDVElWRV9MT1cpCj4gPiA+ID4gPiArICAgICAgICAgICBp
ZiAoZmxhZ3MgJiBWNEwyX01CVVNfSFNZTkNfQUNUSVZFX0hJR0gpCj4gPiA+ID4gPiAgICAgICAg
ICAgICAgICAgICAgIGNmZyB8PSBDU0lfSUZfQ0ZHX0hSRUZfUE9MX1BPU0lUSVZFOwo+ID4gPiA+
ID4KPiA+ID4gPiA+IC0gICAgICAgICAgIGlmIChmbGFncyAmIFY0TDJfTUJVU19QQ0xLX1NBTVBM
RV9SSVNJTkcpCj4gPiA+ID4gPiArICAgICAgICAgICBpZiAoZmxhZ3MgJiBWNEwyX01CVVNfUENM
S19TQU1QTEVfRkFMTElORykKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgY2ZnIHw9IENT
SV9JRl9DRkdfQ0xLX1BPTF9GQUxMSU5HX0VER0U7Cj4gPiA+ID4gPiAgICAgICAgICAgICBicmVh
azsKPiA+ID4gPiA+ICAgICBjYXNlIFY0TDJfTUJVU19CVDY1NjoKPiA+ID4gPiA+IC0tCj4gPiA+
ID4gPiAyLjI0LjAKPiA+ID4gPiA+Cj4gPiA+ID4gPiAtLQo+ID4gPiA+ID4gWW91IHJlY2VpdmVk
IHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdy
b3VwcyAibGludXgtc3VueGkiIGdyb3VwLgo+ID4gPiA+ID4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0
aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFp
bCB0byBsaW51eC1zdW54aSt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgo+ID4gPiA+ID4g
VG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdlYiwgdmlzaXQgaHR0cHM6Ly9ncm91cHMu
Z29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LXN1bnhpLzIwMTkxMTI4MDIwMjU5LjEzMzgxODgtMS1t
ZWdvdXMlNDBtZWdvdXMuY29tLgo+ID4gPiA+Cj4gPiA+ID4KPiA+ID4gPiBUaGFua3MsCj4gPiA+
ID4gWW9uZwo+ID4gPgo+ID4gPiAtLQo+ID4gPiBZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJl
Y2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29nbGUgR3JvdXBzICJsaW51eC1zdW54
aSIgZ3JvdXAuCj4gPiA+IFRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCBy
ZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gbGludXgtc3VueGkrdW5z
dWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KPiA+ID4gVG8gdmlldyB0aGlzIGRpc2N1c3Npb24g
b24gdGhlIHdlYiwgdmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4
LXN1bnhpLzIwMTkxMTI4MDMwNjUzLjVmaGNvbHZpYjZ0emY0emMlNDBjb3JlLm15LmhvbWUuCj4K
PiAtLQo+IFlvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmli
ZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgImxpbnV4LXN1bnhpIiBncm91cC4KPiBUbyB1bnN1YnNj
cmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBz
ZW5kIGFuIGVtYWlsIHRvIGxpbnV4LXN1bnhpK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb20u
Cj4gVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdlYiwgdmlzaXQgaHR0cHM6Ly9ncm91
cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LXN1bnhpLzIwMTkxMTI4MDM1MDU2Ljc3NTU0amF2
M2VvNmg3c3UlNDBjb3JlLm15LmhvbWUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
