Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7881D7AB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPWtkAmr7XqnAYLLvB6rKBe1/y9IF4GeyO3Gi0qaY5o=; b=RtO33cIEiGbIqi
	1gc+2AhUlNTr3LH8FbEGAQVNJL6dYbr9ZvLmk4lUOCsViVckPiIdgPkV2oi/1+UByUro8BmwDuoki
	4RxE38f/DJGdN9qTIdIKeMtGSEbw9T5/Mg+wDzDrAUzu+z4+fRlAb1MSukL1j6AAnG/JqebaJqmyn
	aZq98O0C3zfo4iWhT0AAjqKb1ZoEEBKMZ4uyFbDu2UFOQvKG2H4IJ0oUJFXn/PmFdnfZWiOIC0N9b
	zZWkvrBXcCOuGr+6l2JIbIWkgg+2D/qj8ad7g/wRGkDSXfgg3hQa6TgmH1K2YhuYF1AZU53mPIvbv
	4ahBzK9AEP0M6yH40qMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jagQj-00084G-1z; Mon, 18 May 2020 14:07:45 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jagQa-000836-P0
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 14:07:38 +0000
Received: by mail-io1-xd44.google.com with SMTP id j8so10636928iog.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 07:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=88kserzSxBEIDjdSt5lOO0U4rUg4np+0t0E9MSvOSs4=;
 b=y9jCMQ+BCO5bCs8V3KsG5KK/VGobVsgkQjY5AVz6q9lOYoUJM+8UK0wcbWXbI8xF3J
 prvbfUFKweWoR6i7a/sKx8hd+VDVivXpCogr+13TXNGWTzBZpoaT3G04gbQTXtnAwNKm
 b2zIgm05cKPpwTzQZBzWTIfeMmi6lp+iJJXuFHrQJEVyf70Wd/i8BU+zd33WziDDBQrr
 1aDDD33/n5PpFBKnqs55DxtGDOKC++20oqW8SMvEt6g64DqxmPH3Ynmu/dkM2TvOboRT
 smliBL1UFi7+UPGOT4cDY3LUQc1+4WEkr22dkDohlTcdglusE9AOIuhVsW1qLQbe12qf
 X+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=88kserzSxBEIDjdSt5lOO0U4rUg4np+0t0E9MSvOSs4=;
 b=CUDM9Qg55C974q95IQ5tNCv0S8ju5Mx0+FsOUJtdss6YU5Wh+ZQMxIBYgBajjysWPo
 Chm45Dyoln/Ztpb/SehftUCj2T2kXPx99lV1DacHzTydnOY/p3Uv7IrVapMgnu+s7Vn3
 c3ov0gIZ3qgNHPKsr9OMRCMZRiadIfhoARahFo0JOuxg/x/O9LCwfKR6ATDPgs+75D+R
 9LaRF8EbVTYfbhGb7oC6cWvLYCVaNYk/XLHayKWA4rt9wBiDtJoJY/0h+aRwjDSJRgRF
 LZ2IxzSMZteePKgVUNeqUMJbOALI5LOAvaLv0GhEu6118iBEEHV30c6uILZfzJ1s7XVX
 U8ug==
X-Gm-Message-State: AOAM532jWer50ddiltUNWdz9I1yWmLLQNoHLdrqIccm0F7VVp4X8sTpb
 8N3GLLAdn1cSYdQ0f0EB1nISL+EFKhPgrUWYQcK87A==
X-Google-Smtp-Source: ABdhPJz7TVBqL0o8reZpmOjcpmNU0hBkhjlx8exFERPwwjlGWCDBsQrggYZf+B/u4J3tppWJHADctBPzuEotkI8yI7U=
X-Received: by 2002:a6b:7c45:: with SMTP id b5mr14815810ioq.31.1589810854135; 
 Mon, 18 May 2020 07:07:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200514075942.10136-1-brgl@bgdev.pl>
 <20200514075942.10136-11-brgl@bgdev.pl>
 <CAK8P3a0XgJtZNKePZUUpzADO25-JZKyDiVHFS_yuHRXTjvjDwg@mail.gmail.com>
In-Reply-To: <CAK8P3a0XgJtZNKePZUUpzADO25-JZKyDiVHFS_yuHRXTjvjDwg@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 18 May 2020 16:07:23 +0200
Message-ID: <CAMRc=MeVyNzTWw_hk=J9kX1NE9reCE_O4P3wrNpMMc9z4xA_DA@mail.gmail.com>
Subject: Re: [PATCH v3 10/15] net: ethernet: mtk-eth-mac: new driver
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_070736_837690_103A9EA3 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Edwin Peer <edwin.peer@broadcom.com>, DTML <devicetree@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Jonathan Corbet <corbet@lwn.net>, Networking <netdev@vger.kernel.org>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHQuLCAxNSBtYWogMjAyMCBvIDE1OjMyIEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IG5h
cGlzYcWCKGEpOgo+Cj4gT24gVGh1LCBNYXkgMTQsIDIwMjAgYXQgMTA6MDAgQU0gQmFydG9zeiBH
b2xhc3pld3NraSA8YnJnbEBiZ2Rldi5wbD4gd3JvdGU6Cj4gPiArc3RhdGljIGludCBtdGtfbWFj
X3JpbmdfcG9wX3RhaWwoc3RydWN0IG10a19tYWNfcmluZyAqcmluZywKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBtdGtfbWFjX3JpbmdfZGVzY19kYXRhICpkZXNj
X2RhdGEpCj4KPiBJIHRvb2sgYW5vdGhlciBsb29rIGF0IHRoaXMgZnVuY3Rpb24gYmVjYXVzZSBv
ZiB5b3VyIGNvbW1lbnQgb24gdGhlIGxvY2tpbmcKPiB0aGUgZGVzY3JpcHRvciB1cGRhdGVzLCB3
aGljaCBzZWVtZWQgc3VzcGljaW91cyBhcyB0aGUgZGV2aWNlIHNpZGUgZG9lcyBub3QKPiBhY3R1
YWxseSB1c2UgdGhlIGxvY2tzIHRvIGFjY2VzcyB0aGVtCj4KPiA+ICt7Cj4gPiArICAgICAgIHN0
cnVjdCBtdGtfbWFjX3JpbmdfZGVzYyAqZGVzYyA9ICZyaW5nLT5kZXNjc1tyaW5nLT50YWlsXTsK
PiA+ICsgICAgICAgdW5zaWduZWQgaW50IHN0YXR1czsKPiA+ICsKPiA+ICsgICAgICAgLyogTGV0
IHRoZSBkZXZpY2UgcmVsZWFzZSB0aGUgZGVzY3JpcHRvci4gKi8KPiA+ICsgICAgICAgZG1hX3Jt
YigpOwo+ID4gKyAgICAgICBzdGF0dXMgPSBkZXNjLT5zdGF0dXM7Cj4gPiArICAgICAgIGlmICgh
KHN0YXR1cyAmIE1US19NQUNfREVTQ19CSVRfQ09XTikpCj4gPiArICAgICAgICAgICAgICAgcmV0
dXJuIC0xOwo+Cj4gVGhlIGRtYV9ybWIoKSBzZWVtcyBvZGQgaGVyZSwgYXMgSSBkb24ndCBzZWUg
d2hpY2ggcHJpb3IgcmVhZAo+IGlzIGJlaW5nIHByb3RlY3RlZCBieSB0aGlzLgo+Cj4gPiArICAg
ICAgIGRlc2NfZGF0YS0+bGVuID0gc3RhdHVzICYgTVRLX01BQ19ERVNDX01TS19MRU47Cj4gPiAr
ICAgICAgIGRlc2NfZGF0YS0+ZmxhZ3MgPSBzdGF0dXMgJiB+TVRLX01BQ19ERVNDX01TS19MRU47
Cj4gPiArICAgICAgIGRlc2NfZGF0YS0+ZG1hX2FkZHIgPSByaW5nLT5kbWFfYWRkcnNbcmluZy0+
dGFpbF07Cj4gPiArICAgICAgIGRlc2NfZGF0YS0+c2tiID0gcmluZy0+c2tic1tyaW5nLT50YWls
XTsKPiA+ICsKPiA+ICsgICAgICAgZGVzYy0+ZGF0YV9wdHIgPSAwOwo+ID4gKyAgICAgICBkZXNj
LT5zdGF0dXMgPSBNVEtfTUFDX0RFU0NfQklUX0NPV047Cj4gPiArICAgICAgIGlmIChzdGF0dXMg
JiBNVEtfTUFDX0RFU0NfQklUX0VPUikKPiA+ICsgICAgICAgICAgICAgICBkZXNjLT5zdGF0dXMg
fD0gTVRLX01BQ19ERVNDX0JJVF9FT1I7Cj4gPiArCj4gPiArICAgICAgIC8qIEZsdXNoIHdyaXRl
cyB0byBkZXNjcmlwdG9yIG1lbW9yeS4gKi8KPiA+ICsgICAgICAgZG1hX3dtYigpOwo+Cj4gVGhl
IGNvbW1lbnQgYW5kIHRoZSBiYXJyaWVyIGhlcmUgc2VlbSBvZGQgYXMgd2VsbC4gSSB3b3VsZCBo
YXZlIGV4cGVjdGVkCj4gYSBiYXJyaWVyIGFmdGVyIHRoZSB1cGRhdGUgdG8gdGhlIGRhdGEgcG9p
bnRlciwgYW5kIG9ubHkgYSBzaW5nbGUgc3RvcmUKPiBidXQgbm8gcmVhZCBvZiB0aGUgc3RhdHVz
IGZsYWcgaW5zdGVhZCBvZiB0aGUgcmVhZC1tb2RpZnktd3JpdGUsCj4gc29tZXRoaW5nIGxpa2UK
Pgo+ICAgICAgIGRlc2MtPmRhdGFfcHRyID0gMDsKPiAgICAgICBkbWFfd21iKCk7IC8qIG1ha2Ug
cG9pbnRlciB1cGRhdGUgdmlzaWJsZSBiZWZvcmUgc3RhdHVzIHVwZGF0ZSAqLwo+ICAgICAgIGRl
c2MtPnN0YXR1cyA9IE1US19NQUNfREVTQ19CSVRfQ09XTiB8IChzdGF0dXMgJiBNVEtfTUFDX0RF
U0NfQklUX0VPUik7Cj4KPiA+ICsgICAgICAgcmluZy0+dGFpbCA9IChyaW5nLT50YWlsICsgMSkg
JSBNVEtfTUFDX1JJTkdfTlVNX0RFU0NTOwo+ID4gKyAgICAgICByaW5nLT5jb3VudC0tOwo+Cj4g
SSB3b3VsZCBnZXQgcmlkIG9mIHRoZSAnY291bnQnIGhlcmUsIGFzIGl0IGR1cGxpY2F0ZXMgdGhl
IGluZm9ybWF0aW9uCj4gdGhhdCBpcyBhbHJlYWR5IGtub3duIGZyb20gdGhlIGRpZmZlcmVuY2Ug
YmV0d2VlbiBoZWFkIGFuZCB0YWlsLCBhbmQgeW91Cj4gY2FuJ3QgdXBkYXRlIGl0IGF0b21pY2Fs
bHkgd2l0aG91dCBob2xkaW5nIGEgbG9jayBhcm91bmQgdGhlIGFjY2VzcyB0bwo+IHRoZSByaW5n
LiBUaGUgd2F5IEknZCBkbyB0aGlzIGlzIHRvIGhhdmUgdGhlIGhlYWQgYW5kIHRhaWwgcG9pbnRl
cnMKPiBpbiBzZXBhcmF0ZSBjYWNoZSBsaW5lcywgYW5kIHRoZW4gdXNlIFJFQURfT05DRS9XUklU
RV9PTkNFCj4gYW5kIHNtcCBiYXJyaWVycyB0byBhY2Nlc3MgdGhlbSwgd2l0aCBlYWNoIG9uZSB1
cGRhdGVkIG9uIG9uZQo+IHRocmVhZCBidXQgcmVhZCBieSB0aGUgb3RoZXIuCj4KCllvdXIgcHJl
dmlvdXMgc29sdXRpb24gc2VlbXMgbXVjaCBtb3JlIHJlbGlhYmxlIHRob3VnaC4gRm9yIGluc3Rh
bmNlCmluIHRoZSBhYm92ZTogd2hlbiB3ZSdyZSBkb2luZyB0aGUgVFggY2xlYW51cCAod2UgZ290
IHRoZSBUWCByZWFkeQppcnEsIHdlJ3JlIGl0ZXJhdGluZyBvdmVyIGRlc2NyaXB0b3JzIHVudGls
IHdlIGtub3cgdGhlcmUgYXJlIG5vIG1vcmUKcGFja2V0cyBzY2hlZHVsZWQgKGNvdW50ID09IDAp
IG9yIHdlIGVuY291bnRlciBvbmUgdGhhdCdzIHN0aWxsIG93bmVkCmJ5IERNQSksIGEgcGFyYWxs
ZWwgVFggcGF0aCBjYW4gc2NoZWR1bGUgbmV3IHBhY2tldHMgdG8gYmUgc2VudCBhbmQgSQpkb24n
dCBzZWUgaG93IHdlIGNhbiBhdG9taWNhbGx5IGNoZWNrIHRoZSBjb3VudCAodW5kZXJzdG9vZCBh
cyBhCmRpZmZlcmVuY2UgYmV0d2VlbiB0YWlsIGFuZCBoZWFkKSBhbmQgcnVuIGEgbmV3IGl0ZXJh
dGlvbiAod2hlcmUgd2UnZAptb2RpZnkgdGhlIGhlYWQgb3IgdGFpbCkgd2l0aG91dCByaXNraW5n
IHRoZSBvdGhlciBwYXRoIGdldHRpbmcgaW4gdGhlCndheS4gV2UnZCBoYXZlIHRvIGFsd2F5cyBj
aGVjayB0aGUgZGVzY3JpcHRvci4KCkkgZXhwZXJpbWVudGVkIGEgYml0IHdpdGggdGhpcyBhbmQg
Y291bGRuJ3QgY29tZSB1cCB3aXRoIGFueXRoaW5nIHRoYXQKd291bGQgcGFzcyBhbnkgc3RyZXNz
IHRlc3QuCgpPbiB0aGUgb3RoZXIgaGFuZDogc3Bpbl9sb2NrX2JoKCkgd29ya3MgZmluZSBhbmQg
SSBsaWtlIHlvdXIgYXBwcm9hY2gKZnJvbSB0aGUgcHJldmlvdXMgZS1tYWlsIC0gZXhjZXB0IGZv
ciB0aGUgd29yayBmb3IgdXBkYXRpbmcgc3RhdHMgYXMKd2UgY291bGQgcG90ZW50aWFsbHkgbG9z
ZSBzb21lIHN0YXRzIHdoZW4gd2UncmUgdXBkYXRpbmcgaW4gcHJvY2Vzcwpjb250ZXh0IHdpdGgg
UlgvVFggcGF0aHMgcnVubmluZyBpbiBwYXJhbGxlbCBpbiBuYXBpIGNvbnRleHQgYnV0IHRoYXQK
d291bGQgYmUgcmFyZSBlbm91Z2ggdG8gb3Zlcmxvb2sgaXQuCgpJIGhvcGUgdjQgd2lsbCBiZSBn
b29kIGVub3VnaCBldmVuIHdpdGggc3BpbmxvY2tzLiA6KQoKQmFydAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
