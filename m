Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B715C109C67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 11:37:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mpnrVZpiiFALhp1VbtPZD6P36XzpmJuzmKRxKnh7aRs=; b=GVrrJNBaDJUru5TFi+lJaIwJId
	tiRgd1C6sH/ZHZGbJ6qDFKU21Sea6RaJjdB499gSkZmvzm+u294RcOxno/ECqCYQurl8W1vC7ltQE
	ajYO1DCLPQfsC21VLq0sJVamLSn0VCpjIgqqjveLSpHk5618q4PFX/I5kljkRvdbNeoAy0Wmwrle7
	uZYpjMRrOPaUTXRTAYywIJ3FE+Tx0k8tIHiQX2b2T6H5O90Dcmhu0mw9wh8adklWGcrAjjzai6/Ig
	j0bPee8Xd3A6/wDPp4rpvwwFtRsMLssiybo7OAGdmYm5m7BUP/ltm+OLD1Aa1uPqxwlJi306F7vXM
	NCF1QUgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZYDx-00023O-Ip; Tue, 26 Nov 2019 10:37:37 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZYDa-0001Dg-EH
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 10:37:16 +0000
Received: by mail-oi1-f193.google.com with SMTP id l136so562534oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 02:37:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=zopcK9DsIvrRMoKJaFBKq6wC/oxcFlyic0ael7BkN/8=;
 b=W0weeN7KKIwU/wkmttXKqABzk9dyPltMLSQJEgqhQuAWm6mrcDfbg5P75+VnWNtt1h
 9De17zYtUz6rOT2tO/QT4d5xNklsgUP0xRq4yNY7MZcjOjpUoy0ZnT6neSw1uThuXUJ7
 SzfVp/5NWOqvdUfxRVmRwkFvUQgSzU95nnhtScLaRMMwiOqo/yyEWoRC3KmUYAL5z2ri
 zvBMlr0rZaGIZ7uEde10FLFvNdoyUaXgBL2/5lfGzAHV+OKJWst+0Hb7mD9wcpW9ZEb9
 YdhQr2EC68TIxgsAaUtODlZ6upVombojK0frxauuJDQtyJ1aT8L+jmCnt1Fwry+gTlxH
 mLyA==
X-Gm-Message-State: APjAAAXt6pVwaiAr8r3PqNSG9iYxT/OCiAe+aqGQ5HXsoyTm53JwtQwn
 c6BHHk8tDI0VjPrmTPqL4aJpvNDtXqh0t2Hx8EA=
X-Google-Smtp-Source: APXvYqy4IeHlk78TvbZm1ZoZWnHSVBVTAMMciv5D+d1SOKzarsswVbnPuPy/zEICeY+bC7LzL429WWkDb12wjApJxSY=
X-Received: by 2002:a05:6808:5d9:: with SMTP id
 d25mr3047363oij.54.1574764629163; 
 Tue, 26 Nov 2019 02:37:09 -0800 (PST)
MIME-Version: 1.0
References: <20191108213853.16635-1-afaerber@suse.de>
 <20191108213853.16635-2-afaerber@suse.de>
 <20191111183158.GT3001@twin.jikos.cz>
In-Reply-To: <20191111183158.GT3001@twin.jikos.cz>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 26 Nov 2019 11:36:58 +0100
Message-ID: <CAMuHMdVbcfB0FFS=gLDathXFM3x0WYXJEq99S_g7mjAPS94rAQ@mail.gmail.com>
Subject: Re: [PATCH next 1/2] btrfs: tree-checker: Fix error format string
To: David Sterba <dsterba@suse.cz>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
 Qu Wenruo <wqu@suse.com>, David Sterba <dsterba@suse.com>,
 Johannes Thumshirn <jthumshirn@suse.de>, 
 Chris Mason <clm@fb.com>, Josef Bacik <josef@toxicpanda.com>, 
 linux-btrfs <linux-btrfs@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_023714_490612_DB1C3033 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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

SGkgRGF2aWQsCgpPbiBNb24sIE5vdiAxMSwgMjAxOSBhdCA3OjMyIFBNIERhdmlkIFN0ZXJiYSA8
ZHN0ZXJiYUBzdXNlLmN6PiB3cm90ZToKPiBPbiBGcmksIE5vdiAwOCwgMjAxOSBhdCAxMDozODo1
MlBNICswMTAwLCBBbmRyZWFzIEbDpHJiZXIgd3JvdGU6Cj4gPiBGcm9tOiBBbmRyZWFzIEbDpHJi
ZXIgPGFmYWVyYmVyQHN1c2UuY29tPgo+ID4KPiA+IEFyZ3VtZW50IEJUUkZTX0ZJTEVfRVhURU5U
X0lOTElORV9EQVRBX1NUQVJUIGlzIGRlZmluZWQgYXMgb2Zmc2V0b2YoKSwKPiA+IHdoaWNoIHJl
dHVybnMgdHlwZSBzaXplX3QsIHNvIHdlIG5lZWQgJXp1IGluc3RlYWQgb2YgJWx1Lgo+ID4KPiA+
IFRoaXMgZml4ZXMgYSBidWlsZCB3YXJuaW5nIG9uIDMyLWJpdCBhcm06Cj4gPgo+ID4gICAuLi9m
cy9idHJmcy90cmVlLWNoZWNrZXIuYzogSW4gZnVuY3Rpb24gJ2NoZWNrX2V4dGVudF9kYXRhX2l0
ZW0nOgo+ID4gICAuLi9mcy9idHJmcy90cmVlLWNoZWNrZXIuYzoyMzA6NDM6IHdhcm5pbmc6IGZv
cm1hdCAnJWx1JyBleHBlY3RzIGFyZ3VtZW50IG9mIHR5cGUgJ2xvbmcgdW5zaWduZWQgaW50Jywg
YnV0IGFyZ3VtZW50IDUgaGFzIHR5cGUgJ3Vuc2lnbmVkIGludCcgWy1XZm9ybWF0PV0KPiA+ICAg
ICAyMzAgfCAgICAgImludmFsaWQgaXRlbSBzaXplLCBoYXZlICV1IGV4cGVjdCBbJWx1LCAldSki
LAo+ID4gICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB+
fl4KPiA+ICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8Cj4gPiAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgbG9uZyB1bnNpZ25lZCBpbnQKPiA+ICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgJXUKPgo+IElzIHRoZXJlIGEgZ2NjIHdhcm5pbmcgb3B0aW9uIHRo
YXQgY2FuIGNhdGNoIHRoYXQgb24gNjRiaXQgdG9vPwo+IC1XZm9ybWF0PTIgZG9lcyBub3QgYW5k
IEkgZG9uJ3Qgc2VlIGFueSBvdGhlciBvZiB0aGUgb3B0aW9uIGZhbWlseSB0byBkbwo+IHRoYXQu
IFdlJ3ZlIGhhZCBmaXh1cHMgb2YgdGhlIHNpemVfdCBwcmludGsgZm9ybWF0cyBhbmQgSSdkIGxp
a2UgdG8KPiBjYXRjaCB0aGF0IHdoZW4gdGhlIHBhdGNoZXMgYXJlIGFkZGVkIHRvIHRoZSBkZXZl
bCBicmFuY2hlcy4gSSBjYW4ndCBydW4KPiAzMmJpdCBidWlsZCBjaGVjayBlYWNoIHRpbWUgYnV0
IHRoaXMgc2VlbXMgdG8gYmUgdGhlIG9ubHkgd2F5IHNvIGZhci4KClllcC4gT24gNjQtYml0LCBz
aXplX3QgX2lzXyB1bnNpZ25lZCBsb25nLgpTbyB5b3UgaGF2ZSB0byBjb21waWxlIGZvciBib3Ro
IDMyLWJpdCBhbmQgNjQtYml0LgoKQWNrZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRA
bGludXgtbTY4ay5vcmc+Cgo+ID4gRml4ZXM6IGEzMWNjYjRiN2JhMiAoImJ0cmZzOiB0cmVlLWNo
ZWNrZXI6IENoZWNrIGl0ZW0gc2l6ZSBiZWZvcmUgcmVhZGluZyBmaWxlIGV4dGVudCB0eXBlIikK
Pgo+IEFzIHRoZSBwYXRjaCBpcyBzdGlsbCBpbiB0aGUgZGV2ZWwgYnJhbmNoLCB0aGUgY29tbWl0
IGlkIGlzIG5vdCBzdGFibGUKCkl0IGluZGVlZCBpcyBub3Q6CkZpeGVzOiAxNTNhNmQyOTk5NTY5
ODNkICgiYnRyZnM6IHRyZWUtY2hlY2tlcjogQ2hlY2sgaXRlbSBzaXplIGJlZm9yZQpyZWFkaW5n
IGZpbGUgZXh0ZW50IHR5cGUiKQoKPiBhbmQgSSdsbCBmb2xkIHRoZSBjaGFuZ2UgdG8gdG8gdGhl
IHBhdGNoLiBUaGFua3MuCgpBcHBhcmVudGx5IHRoYXQgd2FzIGZvcmdvdHRlbiwgYW5kIG5vdyB0
aGUgaXNzdWUgaXMgcGFydCBvZiBMaW51cycgdHJlZS4KCkdye29ldGplLGVldGluZ31zLAoKICAg
ICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCgotLQpHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhl
cmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJ
biBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15
c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0
IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
