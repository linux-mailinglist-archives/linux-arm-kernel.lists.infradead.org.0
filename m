Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E075489778
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 09:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcQaUOuA/S9gm8I1qjSX6EdR5/x14tcN9LPcgOc2D8Y=; b=Unm/KtJxYC9E6Q
	p+/u3USzbinI8r659YZdVnx0Fu/+5sSFAn6tfmTs4zMu0C66W1ZaVB7DG5uFWkEzlqlkAPFsdPent
	l+m37VUVur0t2NQZ/S/UTrjVZK/5xo+IqK3m9AFhnx2dkvTYnpYdKBWILKWkM//Bor6cboExU0iVD
	RhvoOzFA8yTpt/cfNvPgXpTojy3nhkxfa9eH6KAroseBJqjgSWBrnFuAmxRbZdixz6OZy5bxD5pWb
	9OSCPCtxD9CaNyE6ULgAE0oCb5Ruo/onuTYkPlVpXVNx8UwNqOQWhnT+8eM6p8gXw7snn7gHk16Ls
	SCvpKdEFEIFuP8ed2Jzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx4Kz-0001sO-UB; Mon, 12 Aug 2019 07:01:50 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx4KI-0001rj-VK
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 07:01:09 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 356B7E0002;
 Mon, 12 Aug 2019 07:00:53 +0000 (UTC)
Date: Mon, 12 Aug 2019 09:00:52 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
Message-ID: <20190812070052.a6lypyr77gv7pvpz@flea>
References: <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
 <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
 <1955D9AD572C4F57A2D66B15EB8CF79C@GirolesWin7>
 <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
 <20190807120104.ssj5cvx4hwicufrv@flea>
 <CAGb2v66vcQxjoi-0hhCOesT59Loo7Bw5M9fX8eCBWv-wM1CnoA@mail.gmail.com>
 <20190807144533.bbgtmkva34su7c5v@flea>
 <CAGb2v66EjQ-_QNsJ+xR0LcR983whU-hF9SZ2dSX_i5v7qcEyww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v66EjQ-_QNsJ+xR0LcR983whU-hF9SZ2dSX_i5v7qcEyww@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_000107_306788_40EFF8E8 
X-CRM114-Status: GOOD (  30.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

T24gVGh1LCBBdWcgMDgsIDIwMTkgYXQgMDE6MTI6MzdQTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdy
b3RlOgo+IE9uIFdlZCwgQXVnIDcsIDIwMTkgYXQgMTA6NDUgUE0gTWF4aW1lIFJpcGFyZCA8bWF4
aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiBPbiBXZWQsIEF1ZyAwNywgMjAxOSBh
dCAwODowOToxOVBNICswODAwLCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4gPiA+IE9uIFdlZCwgQXVn
IDcsIDIwMTkgYXQgODowMSBQTSBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4u
Y29tPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IE9uIFR1ZSwgQXVnIDA2LCAyMDE5IGF0IDAyOjI1
OjE3UE0gKzA4MDAsIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+ID4gPiA+IE9uIE1vbiwgQXVnIDUs
IDIwMTkgYXQgODo1OCBQTSBNYXJ0aW4gQXlvdHRlIDxtYXJ0aW5heW90dGVAZ21haWwuY29tPiB3
cm90ZToKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gRmluZSBmb3IgbWUgdG9vLgo+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiBUaGFua3MgLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiAtLS0tLU1lc3Nh
Z2UgZCdvcmlnaW5lLS0tLS0KPiA+ID4gPiA+ID4gRGUgOiBTdW5pbCBNb2hhbiBBZGFwYSBbbWFp
bHRvOnN1bmlsQG1lZGhhcy5vcmddCj4gPiA+ID4gPiA+IEVudm95w6kgOiBNb25kYXksIEF1Z3Vz
dCAwNSwgMjAxOSAxOjI1IEFNCj4gPiA+ID4gPiA+IMSEIDogQ2hlbi1ZdSBUc2FpCj4gPiA+ID4g
PiA+IENjIDogTWF4aW1lIFJpcGFyZDsgTWFydGluIEF5b3R0ZTsgbGludXgtYXJtLWtlcm5lbAo+
ID4gPiA+ID4gPiBPYmpldCA6IFJlOiBbUEFUQ0ggdjJdIGFybTY0OiBkdHM6IGFsbHdpbm5lcjog
YTY0OiBFbmFibGUgZU1NQyBvbgo+ID4gPiA+ID4gPiBBNjQtT0xpbnVYaW5vCj4gPiA+ID4gPiA+
Cj4gPiA+ID4gPiA+IE9uIDA0LzA4LzE5IDg6MzMgcG0sIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+
ID4gPiA+ID4gPiBPbiBGcmksIEF1ZyAyLCAyMDE5IGF0IDI6NDcgQU0gU3VuaWwgTW9oYW4gQWRh
cGEgPHN1bmlsQG1lZGhhcy5vcmc+IHdyb3RlOgo+ID4gPiA+ID4gPiA+Pgo+ID4gPiA+ID4gPiA+
PiBPbiAwMS8wOC8xOSA2OjQ5IGFtLCBNYXJ0aW4gQXlvdHRlIHdyb3RlOgo+ID4gPiA+ID4gPiA+
Pj4gSWYgbXkgU09CIGNvdWxkIGhlbHAgaGVyZSwgSSBkb24ndCBtaW5kIHNpbmNlIEkndmUgZG9u
ZSB0aGUgY29tbWl0Cj4gPiA+ID4gPiA+ID4+PiBtb3JlIHRoYW4gYSB5ZWFyIGFnbyBmb3IgQXJt
YmlhbiAuLi4KPiA+ID4gPiA+ID4gPj4+Cj4gPiA+ID4gPiA+ID4+PiBTaWduZWQtb2ZmLWJ5OiBN
YXJ0aW4gQXlvdHRlIDxtYXJ0aW5heW90dGVAZ21haS5jb20+Cj4gPiA+ID4gPiA+ID4+PiBUZXN0
ZWQtYnk6IE1hcnRpbiBBeW90dGUgPG1hcnRpbmF5b3R0ZUBnbWFpLmNvbT4KPiA+ID4gPiA+ID4g
Pj4gZ21haS5jb20gaXMgbGlrZWx5IGEgdHlwby4KPiA+ID4gPiA+ID4gPj4KPiA+ID4gPiA+ID4g
Pj4+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDEwOjQyIFBNIENoZW4tWXUgVHNhaSA8d2Vuc0Bj
c2llLm9yZwo+ID4gPiA+ID4gPiA+Pj4KPiA+ID4gPiA+ID4gPj4+PiBUaGFua3MuIFRoZSBwYXRj
aCBsb29rcyBnb29kIG92ZXJhbGwuIFRoZSBhdXRob3JzaGlwIGlzIGEgbGl0dGxlCj4gPiA+ID4g
PiA+ID4+Pj4gY29uZnVzaW5nIHRob3VnaC4gSWYgaXQgd2FzIGluaXRpYWxseSBkb25lIGJ5IE1h
cnRpbiAoQ0MtZWQpLCB0aGVuCj4gPiA+ID4gPiA+ID4+Pj4gaGUgc2hvdWxkIGJlIHRoZSBhdXRo
b3IsIGFuZCB3ZSBzaG91bGQgZ2V0IGhpcyBTaWduZWQtb2ZmLWJ5IGlmCj4gPiA+ID4gPiA+ID4+
Pj4gcG9zc2libGUuCj4gPiA+ID4gPiA+ID4+Cj4gPiA+ID4gPiA+ID4+IE1hcnRpbiBpcyBpbmRl
ZWQgdGhlIG9yaWdpbmFsIGF1dGhvciBvZiB0aGUgcGF0Y2guIFRoYW5rIHlvdSBmb3IKPiA+ID4g
PiA+ID4gcmV2aWV3aW5nLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gSSdkIGxpa2UgdG8g
YXBwbHkgdGhpcyBwYXRjaCB3aXRoIE1hcnRpbiBhcyB0aGUgYXV0aG9yLCBpZiB0aGF0J3MgT0sg
d2l0aAo+ID4gPiA+ID4gPiB5b3UKPiA+ID4gPiA+ID4gPiBib3RoPwo+ID4gPiA+ID4gPgo+ID4g
PiA+ID4gPiBUaGF0IGlzIGNvbXBsZXRlbHkgb2theSB3aXRoIG1lLgo+ID4gPiA+ID4KPiA+ID4g
PiA+IEFwcGxpZWQgZm9yIDUuNC4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJIHJlb3JkZXJlZCB0aGUg
dGFncyBzbyB0aGV5IG1ha2UgbW9yZSBzZW5zZToKPiA+ID4gPiA+Cj4gPiA+ID4gPiBodHRwczov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zdW54aS9saW51eC5naXQv
Y29tbWl0Lz9oPXN1bnhpL2R0LWZvci01LjQmaWQ9MDgzNDg4NzczMmRmNWFmNDFiNTliMmU0ZDUz
MGZjMWY1NDc4OTY1Zgo+ID4gPiA+Cj4gPiA+ID4gU29ycnkgZm9yIGJlaW5nIGxhdGUgb24gdGhp
cywgYnV0IGl0IGxvb2tzIGxpa2UgdGhlIGVNTUMsIE5BTkQgYW5kIFNQSQo+ID4gPiA+IHBpbnMg
YXJlIGNvbmZsaWN0aW5nIG9uIHRoZSBBNjQtT2xpbnV4aW5vIGRlc2lnbi4KPiA+ID4gPgo+ID4g
PiA+IFRoZXJlJ3Mgbm8gY29uZmlndXJhdGlvbiB3aXRoIGEgTkFORCwgc28gd2UgZG9uJ3QgcmVh
bGx5IG5lZWQgdG8gd29ycnkKPiA+ID4gPiBhYm91dCB0aGF0LCBidXQgaWYgd2UgbWVyZ2UgdGhp
cyBpbiB0aGUgbWFpbiBEVCwgd2UnbGwgcHJldmVudCBhbnlvbmUKPiA+ID4gPiBmcm9tIHVzaW5n
IHRoYXQgRFQgb24gYW4gb2xpbnV4aW5vIHdpdGggYSBTUEkgZmxhc2guCj4gPiA+ID4KPiA+ID4g
PiBJIHRoaW5rIHdlIHNob3VsZCBqdXN0IGNyZWF0ZSBlbW1jIGFuZCBTUEktZmxhc2ggdmFyaWFu
dHMgb2YgdGhhdCBEVC4KPiA+ID4KPiA+ID4gQWN0dWFsbHkgdGhleSBhcmVuJ3QuIE9saW1leCBz
cGVjaWZpY2FsbHkgdXNlcyBlTU1DIG1vZHVsZXMgdGhhdCBkb24ndAo+ID4gPiB1c2UgdGhlIGRh
dGEgc3Ryb2JlIGxpbmUsIHNvIFNQSSBjYW4gYmUgdXNlZCB0b2dldGhlci4KPiA+Cj4gPiBBaCwg
cmlnaHQuCj4gPgo+ID4gU3RpbGwsIHRoaXMgY3JlYXRlcyBhIHByZWNlZGVudCB0aGF0IEknbSBu
b3QgcmVhbGx5IGNvbWZvcnRhYmxlCj4gPiB3aXRoLiBUaHJlZSBhY3R1YWxseS4KPiA+Cj4gPiBN
ZXJnaW5nIHRoaXMgaW4gdGhlIG1haW4gRFQgbWVhbnMgdGhyZWUgdGhpbmdzOgo+ID4gICAtIFdl
J3JlIG5vdCBjb25zaXN0ZW50IGFueW1vcmUsIGluY2x1ZGluZyB3aXRoaW4gdGhlIG9saW51eGlu
bwo+ID4gICAgIGJvYXJkcyBvbmx5LiBBMjAgT2xpbnV4aW5vIGlzIHByZXR0eSBtdWNoIGluIHRo
ZSBzYW1lIHNpdHVhdGlvbiwKPiA+ICAgICB5ZXQgd2UgZGVhbHQgd2l0aCBpdCBkaWZmZXJlbnRs
eS4KPiA+ICAgLSBUaGlzIG1lYW5zIHRoYXQgdGhpcyB3aWxsIGNyZWF0ZSBhIHNwdXJpb3VzIGRl
dmljZSBhbmQgcmVwb3J0Cj4gPiAgICAgZXJyb3JzIGluIHRoZSBrZXJuZWwgbWVzc2FnZSBhbmQg
d2hlbmV2ZXIgc29tZW9uZSB3aWxsIHRyeSB0bwo+ID4gICAgIGFjY2VzcyB0aGUgZGV2aWNlIG9u
IGJvYXJkcyB0aGF0IGRvbid0IGhhdmUgaXQgd2lyZWQuIFRoaXMKPiA+ICAgICBzaG91bGRuJ3Qg
aGFwcGVuIGFuZCB3ZSByZWFsbHkgc2hvdWxkbid0IGV4cG9zZSBkZXZpY2VzIHRoYXQganVzdAo+
ID4gICAgIGFyZW4ndCB0aGVyZSwganVzdCBsaWtlIHlvdSBkb24ndCBoYXZlIGFsbCB0aGUgZGV2
aWNlcyB0aGF0IGFyZQo+ID4gICAgIG5vdCBjb25uZWN0ZWQgb24geW91ciBVU0IgY29ubmVjdG9y
Lgo+ID4gICAtIEZpbmFsbHksIHRoaXMgbWVhbnMgdGhhdCBpbiBvcmRlciB0byBrZWVwIGl0IHNv
bWV3aGF0IGNvbnNpc3RlbnQsCj4gPiAgICAgd2Ugd291bGQgaGF2ZSB0byBtZXJnZSB0aGUgU1BJ
IGZsYXNoIGluIHRoZSBtYWluIERUIHRvby4gVGhpcyB3aWxsCj4gPiAgICAgcHJldmVudCBwZW9w
bGUgd2l0aG91dCBhIFNQSSBmbGFzaCB0byB1c2UgdGhlIFNQSSBzaWduYWxzIG9uIHRoZQo+ID4g
ICAgIFVFWFQgY29ubmVjdG9yIGZvciBzb21ldGhpbmcgZWxzZSwgd2hpY2ggYWdhaW4gZ29lcyBh
Z2FpbnN0IHRoZQo+ID4gICAgIHBvbGljeSB3ZSd2ZSBoYWQgZm9yIGJhc2ljYWxseSBhbnkgb3Ro
ZXIgYm9hcmQuCj4KPiBPSy4gU2hhbGwgd2UgYmFjayBpdCBvdXQgYW5kIGZpZ3VyZSBvdXQgc29t
ZXRoaW5nIGVsc2U/CgpJIGd1ZXNzIHdlIGNhbiBzZW5kIGEgbmV3IHBhdGNoIG9uIHRvcCB0byBt
b3ZlIGl0IHRvIGEgc2VwYXJhdGUgZmlsZQoKTWF4aW1lCgotLQpNYXhpbWUgUmlwYXJkLCBCb290
bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGlu
LmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
