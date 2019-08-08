Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA42859A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 07:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yzh5bcvqxcmydjfBSCDSC0YdNTUb3mqtQuPGKgijK9A=; b=duJpITYd9DUsAX
	C5mNUNeVy37C/Wi/7TQQJuFvLJywR367SAUckmOMNCng3bwqU6U1tAlqX4H2iZgWiSsMdpRzDbbGw
	X3ouSpLhQyPOwiNtPSushFwettPHr+LNqn92TQq+WNsiEHa7iUKviEVnPY0OynHjpyiWGaFIl+eYU
	RuXPuSp7Z1t6305F7jZSI/gsmzJ0L/0LEWsbCbxMB1MAn1M/FMiTa3luESXruTm29amqIynDh1Zqp
	H8lwGAIjeeyvVDKFBFSJz3b1eVYiQhDi+aqqemM5G8b3nIOkBWc7H3wHGomG6K7gcCGAqXIpNxtU6
	AGgPiZQhhw8G8Yd8O6mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvajm-00069X-DK; Thu, 08 Aug 2019 05:13:18 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvajP-0005z1-2a
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 05:12:57 +0000
Received: by mail-ed1-f67.google.com with SMTP id h8so864364edv.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 22:12:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=T0yPW01VtlArHnAqr+KylW9898l+IdxPStELrHFK/sA=;
 b=ReDu4n/udYRLRu2O2SXloA+eCRPTZcg8DUM7jIxsD0zRbPnthT43Nns1jaAKZ0+5oE
 szx+La4idZibkodIYyugnEdbGtpmwgYMcMKmWa3VOgBFM+IrKCCj7gjs7A8NlH8SdfiN
 JGgthdTZFjPOM6SdoXvovEaizZiCHs72fOsV0fMl2fPH9zZUlwVOK6aYdCRgbZEf3x1E
 T1SMUtTnqHvN1Wqek/Z86IMfSAGE8h8h6zcw7Fes80ONtT0eduBVwmhPob1NNhUoYd6m
 xB3dhDnQrCDdiKzlv5rdIPgN5YA3OTcHFooxT9yYrm7VeoYNnwdKXhUfsklBPiBFvHt4
 Q/VA==
X-Gm-Message-State: APjAAAWKVTaN6mXOU031Iz8e9guqi1/4DauA3/kv+t5pHIWO4NKpRJnb
 QIfr63gzCFtXexQX7LQgWnsu0ghiZlo=
X-Google-Smtp-Source: APXvYqxuY/MoarCA9ImH79qxRp0ZEhidTOszgJAFitG3R1x4NEZwtXFP3nYerc5RBv5UxK4hqtatkQ==
X-Received: by 2002:a50:8b9d:: with SMTP id m29mr13779834edm.248.1565241172452; 
 Wed, 07 Aug 2019 22:12:52 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com.
 [209.85.221.47])
 by smtp.gmail.com with ESMTPSA id v8sm20889701edy.14.2019.08.07.22.12.51
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 22:12:52 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id k2so7678047wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 22:12:51 -0700 (PDT)
X-Received: by 2002:adf:e941:: with SMTP id m1mr14581578wrn.279.1565241171597; 
 Wed, 07 Aug 2019 22:12:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
 <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
 <1955D9AD572C4F57A2D66B15EB8CF79C@GirolesWin7>
 <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
 <20190807120104.ssj5cvx4hwicufrv@flea>
 <CAGb2v66vcQxjoi-0hhCOesT59Loo7Bw5M9fX8eCBWv-wM1CnoA@mail.gmail.com>
 <20190807144533.bbgtmkva34su7c5v@flea>
In-Reply-To: <20190807144533.bbgtmkva34su7c5v@flea>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 8 Aug 2019 13:12:37 +0800
X-Gmail-Original-Message-ID: <CAGb2v66EjQ-_QNsJ+xR0LcR983whU-hF9SZ2dSX_i5v7qcEyww@mail.gmail.com>
Message-ID: <CAGb2v66EjQ-_QNsJ+xR0LcR983whU-hF9SZ2dSX_i5v7qcEyww@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_221255_130133_EAF5DAAD 
X-CRM114-Status: GOOD (  30.68  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sunil Mohan Adapa <sunil@medhas.org>,
 Martin Ayotte <martinayotte@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgNywgMjAxOSBhdCAxMDo0NSBQTSBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlw
YXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gV2VkLCBBdWcgMDcsIDIwMTkg
YXQgMDg6MDk6MTlQTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4gT24gV2VkLCBBdWcg
NywgMjAxOSBhdCA4OjAxIFBNIE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5j
b20+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBUdWUsIEF1ZyAwNiwgMjAxOSBhdCAwMjoyNToxN1BN
ICswODAwLCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4gPiA+ID4gT24gTW9uLCBBdWcgNSwgMjAxOSBh
dCA4OjU4IFBNIE1hcnRpbiBBeW90dGUgPG1hcnRpbmF5b3R0ZUBnbWFpbC5jb20+IHdyb3RlOgo+
ID4gPiA+ID4KPiA+ID4gPiA+IEZpbmUgZm9yIG1lIHRvby4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBU
aGFua3MgLgo+ID4gPiA+ID4KPiA+ID4gPiA+IC0tLS0tTWVzc2FnZSBkJ29yaWdpbmUtLS0tLQo+
ID4gPiA+ID4gRGUgOiBTdW5pbCBNb2hhbiBBZGFwYSBbbWFpbHRvOnN1bmlsQG1lZGhhcy5vcmdd
Cj4gPiA+ID4gPiBFbnZvecOpIDogTW9uZGF5LCBBdWd1c3QgMDUsIDIwMTkgMToyNSBBTQo+ID4g
PiA+ID4gxIQgOiBDaGVuLVl1IFRzYWkKPiA+ID4gPiA+IENjIDogTWF4aW1lIFJpcGFyZDsgTWFy
dGluIEF5b3R0ZTsgbGludXgtYXJtLWtlcm5lbAo+ID4gPiA+ID4gT2JqZXQgOiBSZTogW1BBVENI
IHYyXSBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGE2NDogRW5hYmxlIGVNTUMgb24KPiA+ID4gPiA+
IEE2NC1PTGludVhpbm8KPiA+ID4gPiA+Cj4gPiA+ID4gPiBPbiAwNC8wOC8xOSA4OjMzIHBtLCBD
aGVuLVl1IFRzYWkgd3JvdGU6Cj4gPiA+ID4gPiA+IE9uIEZyaSwgQXVnIDIsIDIwMTkgYXQgMjo0
NyBBTSBTdW5pbCBNb2hhbiBBZGFwYSA8c3VuaWxAbWVkaGFzLm9yZz4gd3JvdGU6Cj4gPiA+ID4g
PiA+Pgo+ID4gPiA+ID4gPj4gT24gMDEvMDgvMTkgNjo0OSBhbSwgTWFydGluIEF5b3R0ZSB3cm90
ZToKPiA+ID4gPiA+ID4+PiBJZiBteSBTT0IgY291bGQgaGVscCBoZXJlLCBJIGRvbid0IG1pbmQg
c2luY2UgSSd2ZSBkb25lIHRoZSBjb21taXQKPiA+ID4gPiA+ID4+PiBtb3JlIHRoYW4gYSB5ZWFy
IGFnbyBmb3IgQXJtYmlhbiAuLi4KPiA+ID4gPiA+ID4+Pgo+ID4gPiA+ID4gPj4+IFNpZ25lZC1v
ZmYtYnk6IE1hcnRpbiBBeW90dGUgPG1hcnRpbmF5b3R0ZUBnbWFpLmNvbT4KPiA+ID4gPiA+ID4+
PiBUZXN0ZWQtYnk6IE1hcnRpbiBBeW90dGUgPG1hcnRpbmF5b3R0ZUBnbWFpLmNvbT4KPiA+ID4g
PiA+ID4+IGdtYWkuY29tIGlzIGxpa2VseSBhIHR5cG8uCj4gPiA+ID4gPiA+Pgo+ID4gPiA+ID4g
Pj4+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDEwOjQyIFBNIENoZW4tWXUgVHNhaSA8d2Vuc0Bj
c2llLm9yZwo+ID4gPiA+ID4gPj4+Cj4gPiA+ID4gPiA+Pj4+IFRoYW5rcy4gVGhlIHBhdGNoIGxv
b2tzIGdvb2Qgb3ZlcmFsbC4gVGhlIGF1dGhvcnNoaXAgaXMgYSBsaXR0bGUKPiA+ID4gPiA+ID4+
Pj4gY29uZnVzaW5nIHRob3VnaC4gSWYgaXQgd2FzIGluaXRpYWxseSBkb25lIGJ5IE1hcnRpbiAo
Q0MtZWQpLCB0aGVuCj4gPiA+ID4gPiA+Pj4+IGhlIHNob3VsZCBiZSB0aGUgYXV0aG9yLCBhbmQg
d2Ugc2hvdWxkIGdldCBoaXMgU2lnbmVkLW9mZi1ieSBpZgo+ID4gPiA+ID4gPj4+PiBwb3NzaWJs
ZS4KPiA+ID4gPiA+ID4+Cj4gPiA+ID4gPiA+PiBNYXJ0aW4gaXMgaW5kZWVkIHRoZSBvcmlnaW5h
bCBhdXRob3Igb2YgdGhlIHBhdGNoLiBUaGFuayB5b3UgZm9yCj4gPiA+ID4gPiByZXZpZXdpbmcu
Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEknZCBsaWtlIHRvIGFwcGx5IHRoaXMgcGF0Y2ggd2l0
aCBNYXJ0aW4gYXMgdGhlIGF1dGhvciwgaWYgdGhhdCdzIE9LIHdpdGgKPiA+ID4gPiA+IHlvdQo+
ID4gPiA+ID4gPiBib3RoPwo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoYXQgaXMgY29tcGxldGVseSBv
a2F5IHdpdGggbWUuCj4gPiA+ID4KPiA+ID4gPiBBcHBsaWVkIGZvciA1LjQuCj4gPiA+ID4KPiA+
ID4gPiBJIHJlb3JkZXJlZCB0aGUgdGFncyBzbyB0aGV5IG1ha2UgbW9yZSBzZW5zZToKPiA+ID4g
Pgo+ID4gPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L3N1bnhpL2xpbnV4LmdpdC9jb21taXQvP2g9c3VueGkvZHQtZm9yLTUuNCZpZD0wODM0ODg3NzMy
ZGY1YWY0MWI1OWIyZTRkNTMwZmMxZjU0Nzg5NjVmCj4gPiA+Cj4gPiA+IFNvcnJ5IGZvciBiZWlu
ZyBsYXRlIG9uIHRoaXMsIGJ1dCBpdCBsb29rcyBsaWtlIHRoZSBlTU1DLCBOQU5EIGFuZCBTUEkK
PiA+ID4gcGlucyBhcmUgY29uZmxpY3Rpbmcgb24gdGhlIEE2NC1PbGludXhpbm8gZGVzaWduLgo+
ID4gPgo+ID4gPiBUaGVyZSdzIG5vIGNvbmZpZ3VyYXRpb24gd2l0aCBhIE5BTkQsIHNvIHdlIGRv
bid0IHJlYWxseSBuZWVkIHRvIHdvcnJ5Cj4gPiA+IGFib3V0IHRoYXQsIGJ1dCBpZiB3ZSBtZXJn
ZSB0aGlzIGluIHRoZSBtYWluIERULCB3ZSdsbCBwcmV2ZW50IGFueW9uZQo+ID4gPiBmcm9tIHVz
aW5nIHRoYXQgRFQgb24gYW4gb2xpbnV4aW5vIHdpdGggYSBTUEkgZmxhc2guCj4gPiA+Cj4gPiA+
IEkgdGhpbmsgd2Ugc2hvdWxkIGp1c3QgY3JlYXRlIGVtbWMgYW5kIFNQSS1mbGFzaCB2YXJpYW50
cyBvZiB0aGF0IERULgo+ID4KPiA+IEFjdHVhbGx5IHRoZXkgYXJlbid0LiBPbGltZXggc3BlY2lm
aWNhbGx5IHVzZXMgZU1NQyBtb2R1bGVzIHRoYXQgZG9uJ3QKPiA+IHVzZSB0aGUgZGF0YSBzdHJv
YmUgbGluZSwgc28gU1BJIGNhbiBiZSB1c2VkIHRvZ2V0aGVyLgo+Cj4gQWgsIHJpZ2h0Lgo+Cj4g
U3RpbGwsIHRoaXMgY3JlYXRlcyBhIHByZWNlZGVudCB0aGF0IEknbSBub3QgcmVhbGx5IGNvbWZv
cnRhYmxlCj4gd2l0aC4gVGhyZWUgYWN0dWFsbHkuCj4KPiBNZXJnaW5nIHRoaXMgaW4gdGhlIG1h
aW4gRFQgbWVhbnMgdGhyZWUgdGhpbmdzOgo+ICAgLSBXZSdyZSBub3QgY29uc2lzdGVudCBhbnlt
b3JlLCBpbmNsdWRpbmcgd2l0aGluIHRoZSBvbGludXhpbm8KPiAgICAgYm9hcmRzIG9ubHkuIEEy
MCBPbGludXhpbm8gaXMgcHJldHR5IG11Y2ggaW4gdGhlIHNhbWUgc2l0dWF0aW9uLAo+ICAgICB5
ZXQgd2UgZGVhbHQgd2l0aCBpdCBkaWZmZXJlbnRseS4KPiAgIC0gVGhpcyBtZWFucyB0aGF0IHRo
aXMgd2lsbCBjcmVhdGUgYSBzcHVyaW91cyBkZXZpY2UgYW5kIHJlcG9ydAo+ICAgICBlcnJvcnMg
aW4gdGhlIGtlcm5lbCBtZXNzYWdlIGFuZCB3aGVuZXZlciBzb21lb25lIHdpbGwgdHJ5IHRvCj4g
ICAgIGFjY2VzcyB0aGUgZGV2aWNlIG9uIGJvYXJkcyB0aGF0IGRvbid0IGhhdmUgaXQgd2lyZWQu
IFRoaXMKPiAgICAgc2hvdWxkbid0IGhhcHBlbiBhbmQgd2UgcmVhbGx5IHNob3VsZG4ndCBleHBv
c2UgZGV2aWNlcyB0aGF0IGp1c3QKPiAgICAgYXJlbid0IHRoZXJlLCBqdXN0IGxpa2UgeW91IGRv
bid0IGhhdmUgYWxsIHRoZSBkZXZpY2VzIHRoYXQgYXJlCj4gICAgIG5vdCBjb25uZWN0ZWQgb24g
eW91ciBVU0IgY29ubmVjdG9yLgo+ICAgLSBGaW5hbGx5LCB0aGlzIG1lYW5zIHRoYXQgaW4gb3Jk
ZXIgdG8ga2VlcCBpdCBzb21ld2hhdCBjb25zaXN0ZW50LAo+ICAgICB3ZSB3b3VsZCBoYXZlIHRv
IG1lcmdlIHRoZSBTUEkgZmxhc2ggaW4gdGhlIG1haW4gRFQgdG9vLiBUaGlzIHdpbGwKPiAgICAg
cHJldmVudCBwZW9wbGUgd2l0aG91dCBhIFNQSSBmbGFzaCB0byB1c2UgdGhlIFNQSSBzaWduYWxz
IG9uIHRoZQo+ICAgICBVRVhUIGNvbm5lY3RvciBmb3Igc29tZXRoaW5nIGVsc2UsIHdoaWNoIGFn
YWluIGdvZXMgYWdhaW5zdCB0aGUKPiAgICAgcG9saWN5IHdlJ3ZlIGhhZCBmb3IgYmFzaWNhbGx5
IGFueSBvdGhlciBib2FyZC4KCk9LLiBTaGFsbCB3ZSBiYWNrIGl0IG91dCBhbmQgZmlndXJlIG91
dCBzb21ldGhpbmcgZWxzZT8KCkNoZW5ZdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
