Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E01BC807
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 14:41:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAZvlNzZbCfO/g0jCNWoafuY9zZRbshSIUU+W52sv2I=; b=ucarxo7RyFL9TJ
	eTnUR2zBbGG7g0pZ7MpEAtCugkqbOYo6HNaHqLqsrCOtM+CdyDNhrK+KAKmJq8S470MHadLxxMZDU
	rc+BTtlRorwwL2aEucKuTnyo3IdnsyDrOlZfU3OkIKt+RbXnGiyE/QyrQkjwIjz8dG8o+ga8nIuEy
	wun+LTFNxF09ROnSdGLajfNLWrkrlg6sXwWgu3qecpXeoGONOLjzcL2idJtRsOgrYmg0CBkiT0DDV
	xzbJf4RUoLO6//eBRcgLRYsQM0LI1AYrC8qsmaKnRnss1g7TH24DFJpFn+PyAIwctefygO4LtXF7k
	w18x318t9jSyL6WTCNIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCk8C-0002Di-Nm; Tue, 24 Sep 2019 12:41:24 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCk7n-0002CQ-E7
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 12:41:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1569328855; bh=oVT9ClptL/L7PI8HbzA0tllJzB7d4OH0Ds2LiOo9d+A=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=NRaDdbQRgl2ob+Vr58o4la614m5BaThxAJSuPDH7Y/lkWHmYasRG1OrEyCuPyynvV
 3dSuMOENSBLhEwsU8tGAy6XuC1gfgyIzY0is0e7Uo1Mhz7GokkY6TWBpa4ueg3yfPA
 uXwCjeXOFtTWMZMULllDj32Z9Rm2f0gWX3KeCoVE=
Date: Tue, 24 Sep 2019 14:40:54 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] drm: sun8i-ui/vi: Fix layer zpos change/atomic modesetting
Message-ID: <20190924124054.743s3tlw5qirghxo@core.my.home>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190914220337.646719-1-megous@megous.com>
 <20190918141734.kerdbbaynwutrxf6@gilmour>
 <20190918152309.j2dbu63jaru6jn2t@core.my.home>
 <20190918201617.5gwzmshoxbcxbmrx@gilmour>
 <20190919122058.fhpuafogdq7oir2d@core.my.home>
 <20190919131244.35hmnp7jizegltp7@core.my.home>
 <20190920151142.ijistzhtcaenehx6@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920151142.ijistzhtcaenehx6@gilmour>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_054059_983013_1A8A0E3E 
X-CRM114-Status: GOOD (  36.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBTZXAgMjAsIDIwMTkgYXQgMDU6MTE6NDJQTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3
cm90ZToKPiBPbiBUaHUsIFNlcCAxOSwgMjAxOSBhdCAwMzoxMjo0NFBNICswMjAwLCBPbmTFmWVq
IEppcm1hbiB3cm90ZToKPiA+IE9uIFRodSwgU2VwIDE5LCAyMDE5IGF0IDAyOjIwOjU4UE0gKzAy
MDAsIG1lZ291cyBobGF2bmkgd3JvdGU6Cj4gPiA+IE9uIFdlZCwgU2VwIDE4LCAyMDE5IGF0IDEw
OjE2OjE3UE0gKzAyMDAsIE1heGltZSBSaXBhcmQgd3JvdGU6Cj4gPiA+ID4gT24gV2VkLCBTZXAg
MTgsIDIwMTkgYXQgMDU6MjM6MDlQTSArMDIwMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gPiA+
ID4gPiBIaSwKPiA+ID4gPiA+Cj4gPiA+ID4gPiBPbiBXZWQsIFNlcCAxOCwgMjAxOSBhdCAwNDox
NzozNFBNICswMjAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+ID4gPiA+ID4gPiBIaSwKPiA+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gT24gU3VuLCBTZXAgMTUsIDIwMTkgYXQgMTI6MDM6MzdBTSArMDIw
MCwgbWVnb3VzQG1lZ291cy5jb20gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gRnJvbTogT25kcmVqIEpp
cm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBUaGVy
ZSBhcmUgdmFyaW91cyBpc3N1ZXMgdGhhdCB0aGlzIHJlLXdvcmsgb2Ygc3VuOGlfW3V2XWlfbGF5
ZXJfZW5hYmxlCj4gPiA+ID4gPiA+ID4gZnVuY3Rpb24gZml4ZXM6Cj4gPiA+ID4gPiA+ID4KPiA+
ID4gPiA+ID4gPiAtIE1ha2Ugc3VyZSB0aGF0IHdlIHJlLWluaXRpYWxpemUgenBvcyBvbiByZXNl
dAo+ID4gPiA+ID4gPiA+IC0gTWluaW1pemUgcmVnaXN0ZXIgdXBkYXRlcyBieSBkb2luZyB0aGVt
IG9ubHkgd2hlbiBzdGF0ZSBjaGFuZ2VzCj4gPiA+ID4gPiA+ID4gLSBGaXggaXNzdWUgd2hlcmUg
REUgcGlwZSBtaWdodCBnZXQgZGlzYWJsZWQgZXZlbiBpZiBpdCBpcyBubyBsb25nZXIKPiA+ID4g
PiA+ID4gPiAgIHVzZWQgYnkgdGhlIGxheWVyIHRoYXQncyBjdXJyZW50bHkgY2FsbGluZyBzdW44
aV91aV9sYXllcl9lbmFibGUKPiA+ID4gPiA+ID4gPiAtIC5hdG9taWNfZGlzYWJsZSBjYWxsYmFj
ayBpcyBub3QgcmVhbGx5IG5lZWRlZCBiZWNhdXNlIC5hdG9taWNfdXBkYXRlCj4gPiA+ID4gPiA+
ID4gICBjYW4gZG8gdGhlIGRpc2FibGUgdG9vLCBzbyBkcm9wIHRoZSBkdXBsaWNhdGUgY29kZQo+
ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8
bWVnb3VzQG1lZ291cy5jb20+Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEl0IGxvb2tzIGxpa2Ug
dGhlc2UgZml4ZXMgc2hvdWxkIGJlIGluIHNlcGFyYXRlIHBhdGNoZXMuIElzIHRoZXJlIGFueQo+
ID4gPiA+ID4gPiByZWFzb24gaXQncyBub3QgdGhlIGNhc2U/Cj4gPiA+ID4gPgo+ID4gPiA+ID4g
QnVsbGV0IHBvaW50cyBqdXN0IGRlc2NyaWJlIHRoZSByZXN1bHRpbmcgZWZmZWN0L2JlbmVmaXRz
IG9mIHRoZSBjaGFuZ2UgdG8gZml4Cj4gPiA+ID4gPiB0aGUgcGlwZSBjb250cm9sIHJlZ2lzdGVy
IHVwZGF0ZSBpc3N1ZSAoc2VlIHRoZSByZWZlcmVuY2VkIGUtbWFpbCkuCj4gPiA+ID4KPiA+ID4g
PiBJdCdzIGRlZmluaXRlbHkgb2sgdG8gaGF2ZSBtdWx0aXBsZSBwYXRjaGVzIG5lZWRlZCB0byBh
ZGRyZXNzIGEgc2luZ2xlCj4gPiA+ID4gcGVyY2VpdmVkIGlzc3VlLgo+ID4gPgo+ID4gPiBZZXMs
IGJ1dCBJIGNhbid0IHNpbXBseSBzcGxpdCB0aGUgcGF0Y2guIEluIG9yZGVyIGZvciBlYWNoIGNo
YW5nZSB0byB3b3JrIG9uIGl0cwo+ID4gPiBvd24sIHRoZXknZCBoYXZlIHRvIGJlIGRvbmUgZGlm
ZmVyZW50bHkgdGhhbiB0aGUgZmluYWwgcmVzdWx0Lgo+ID4gPgo+ID4gPiBJIHdvdWxkbid0IG1p
bmQgYXQgYWxsIGlmIGl0IHdhcyBqdXN0IGEgc2ltcGxlIHNwbGl0dGluZywgYnV0IHlvdSdyZSBh
c2tpbmcKPiA+ID4gZm9yIHRvbyBtdWNoIHdvcmssIHRoaXMgdGltZSwgZm9yIG5vIGJlbmVmaXQg
dGhhdCBJIGNhbiBzZWUuCj4gPiA+Cj4gPiA+ID4gQSBjb21taXQgaXMgbm90IGFib3V0IHdoYXQg
eW91J3JlIGZpeGluZyBidXQgd2hhdCB5b3UncmUgY2hhbmdpbmcuIEFuZAo+ID4gPiA+IHRoZSBm
YWN0IHRoYXQgeW91IGhhdmUgdGhhIGJ1bGxldCBsaXN0IGluIHRoZSBmaXJzdCBwbGFjZSBwcm92
ZXMgdGhhdAo+ID4gPiA+IHlvdSBoYXZlIG11bHRpcGxlIGxvZ2ljYWwgY2hhbmdlcyBpbiB5b3Vy
IHBhdGNoLgo+ID4gPiA+Cj4gPiA+ID4gQW5kIGV2ZW4gdGhlbiwgeW91ciBjb21taXQgbG9nIG1l
bnRpb25zIHRoYXQgeW91J3JlIGZpeGluZyBtdWx0aXBsZQo+ID4gPiA+IGlzc3VlcyAod2l0aG91
dCBleHBsYWluaW5nIHRoZW0pLgo+ID4gPgo+ID4gPiBJIGNhbiByZXdvcmQgdGhlIGNvbW1pdCBt
ZXNzYWdlIGlmIHRoYXQgaGVscHMsIGFuZCBza2lwIHRoZSBidWxsZXQgbGlzdCBpZiBpdAo+ID4g
PiBpcyBjb25mdXNpbmcuIFRoZXJlJ3MgYSBzaW5nbGUgY29yZSBpc3N1ZSBhbmQgdGhhdCBpcyB0
aGF0IHRoZSBkcml2ZXIgZG9lc24ndAo+ID4gPiB1cGRhdGUgdGhlIHBpcGUvY2hhbm5lbCBjb25m
aWd1cmF0aW9uIGNvcnJlY3RseSBsZWFkaW5nIHRvIGRpc2FibGluZyBvZgo+ID4gPiBhcmJpdHJh
cnkgbGF5ZXJzIChub3QgZXZlbiB0aG9zZSBiZWluZyB1cGRhdGVkIC0gdXBkYXRlIG9mIFVJIGxh
eWVyIG1heSBkaXNhYmxlCj4gPiA+IFZJIGxheWVyIGFzIGEgc2lkZSBlZmZlY3QgZm9yIGV4YW1w
bGUpIGF0IHdyb25nIHRpbWVzLiBBbmQgb25seSBjaGFuZ2VzCj4gPiA+IG5lY2Vzc2FyeSB0byBk
ZWJ1Zy9maXggdGhpcyBhcmUgaW5jbHVkZWQuCj4gPgo+ID4gSG93IGFib3V0IHRoaXM6Cj4gPgo+
ID4gIEEgcHJvYmxlbSB3YXMgZm91bmQgd2hlcmUgaWRlbnRpY2FsIGNvbmZpZ3VyYXRpb24gb2Yg
cGxhbmVzIGxlYWRzCj4gPiAgdG8gZGlmZmVyZW50IHJlZ2lzdGVyIHNldHRpbmdzIGF0IHRoZSBI
VyBsYXllciB3aGVuIHVzaW5nIGEgWCBzZXJ2ZXIKPiA+ICB3aXRoIG1vZGVzZXR0aW5nIGRyaXZl
ciBhbmQgb25lIHBsYW5lIG1hcmtlZCBhcyBhIGN1cnNvci4KPiAKPiBXZSBkb24ndCBoYXZlIGEg
Y3Vyc29yIHBsYW5lLgoKRGlkIEkgc2F5IHdlIGRpZD8gSSBvbmx5IHdyb3RlIHRoYXQgdGhlIHBy
b2JsZW0gd2FzIGZvdW5kIHRoaXMgd2F5LiBJdCdzIHRoZXJlCnJlZ2FyZGxlc3Mgb2YgaG93IGl0
IHdhcyByZXZlYWxlZC4KCj4gPiAgT24gZmlyc3QgcnVuIG9mIHRoZSBYIHNlcnZlciwgb25seSB0
aGUgYmxhY2sgc2NyZWVuIGFuZCB0aGUgbGF5ZXIKPiA+ICBjb250YWluaW5nIHRoZSBjdXJzb3Ig
aXMgdmlzaWJsZS4gU3dpdGNoaW5nIHRvIGNvbnNvbGUgYW5kIGJhY2sKPiA+ICBjb3JyZWN0cyB0
aGUgc2l0dWF0aW9uLgo+ID4KPiA+ICBJIGhhdmUgZHVtcGVkIHJlZ2lzdGVycywgYW5kIGZvdW5k
IG91dCB0aGlzOgo+ID4KPiA+ICAoSW4gYm90aCBjYXNlcyB0aGVyZSBhcmUgdHdvIGVuYWJsZWQg
cGxhbmVzLCBwbGFuZSAxIHdpdGggenBvcyAwIGFuZAo+ID4gIHBsYW5lIDMgd2l0aCB6cG9zIDEp
Lgo+ID4KPiA+ICAxKSBGaXJzdCBYb3JnIHJ1bjoKPiA+Cj4gPiAgICAweDAxMTAxMDAwIDogMDAw
MDAyMDEKPiA+ICAgIDB4MDExMDEwODAgOiAwMDAwMDAzMAo+ID4KPiA+ICAgIEJMRF9GSUxMX0NP
TE9SX0NUTDogKGFrYSBTVU44SV9NSVhFUl9CTEVORF9QSVBFX0NUTCkKPiA+ICAgICAgUDFfRU4K
PiA+Cj4gPiAgICBCTERfQ0hfUlRDVEw6IChha2EgU1VOOElfTUlYRVJfQkxFTkRfUk9VVEUpCj4g
PiAgICAgIFAwX1JUQ1RMIGNoYW5uZWwwCj4gPiAgICAgIFAxX1JUQ1RMIGNoYW5uZWwzCj4gPgo+
ID4gIDIpIEFmdGVyIHN3aXRjaCB0byBjb25zb2xlIGFuZCBiYWNrIHRvIFhvcmc6Cj4gPgo+ID4g
IDB4MDExMDEwMDAgOiAwMDAwMDMwMQo+ID4gIDB4MDExMDEwODAgOiAwMDAwMDAzMQo+ID4KPiA+
ICAgIEJMRF9GSUxMX0NPTE9SX0NUTDoKPiA+ICAgICAgUDFfRU4gYW5kIFAwX0VOCj4gPgo+ID4g
ICAgQkxEX0NIX1JUQ1RMOgo+ID4gICAgICBQMF9SVENUTCBjaGFubmVsMQo+ID4gICAgICBQMV9S
VENUTCBjaGFubmVsMwo+ID4KPiA+ICBXaGF0IGhhcHBlbnMgaXMgdGhhdCBzdW44aV91aV9sYXll
cl9lbmFibGUoKSBmdW5jdGlvbiBtYXkgZGlzYWJsZQo+ID4gIGJsZW5kaW5nIHBpcGVzIGV2ZW4g
aWYgaXQgaXMgbm8gbG9uZ2VyIGFzc2lnbmVkIHRvIGl0cyBsYXllciwgYmVjYXVzZQo+ID4gIG9m
IGluY29ycmVjdCBzdGF0ZS96cG9zIHRyYWNraW5nIGluIHRoZSBkcml2ZXIuCj4gPgo+ID4gIElu
IHBhcnRpY3VsYXIsIGxheWVyIDEgaXMgY29uZmlndXJlZCB0byB6cG9zIDAgYW5kIHRodXMgdXNl
cyBwaXBlIDAuCj4gPiAgV2hlbiBsYXllciAzIGlzIGVuYWJsZWQgYnkgWCBzZXJ2ZXIsIHN1bjhp
X3VpX2xheWVyX2VuYWJsZSgpIHdpbGwgZ2V0Cj4gPiAgY2FsbGVkIHdpdGggb2xkX3pwb3M9MCB6
cG9zPTEsIHdoaWNoIHdpbGwgbGVhZCB0byBkaXNhYmxpbmcgb2YgcGlwZSAwLgo+ID4KPiA+ICBJ
biBnZW5lcmFsIHRoaXMgaXNzdWUgY2FuIGhhcHBlbiB0byBhbnkgbGF5ZXIgZHVyaW5nIGVuYWJs
ZSBvciB6cG9zCj4gPiAgY2hhbmdlcyBvbiBtdWx0aXBsZSBsYXllcnMgYXQgb25jZS4KPiA+Cj4g
PiAgVG8gY29ycmVjdCB0aGlzIHdlIG5vdyBwYXNzIHByZXZpb3VzIGVuYWJsZWQvZGlzYWJsZWQg
c3RhdGUgb2YgdGhlCj4gPiAgbGF5ZXIsIGFuZCBwYXNzIHJlYWwgcHJldmlvdXMgenBvcyBvZiB0
aGUgbGF5ZXIgdG8KPiA+ICBzdW44aV91aV9sYXllcl9lbmFibGUoKSBhbmQgcmV3b3JrIHRoZSBz
dW44aV91aV9sYXllcl9lbmFibGUoKSBmdW5jdGlvbgo+ID4gIHRvIHJlYWN0IHRvIHRoZSBzdGF0
ZSBjaGFuZ2VzIGNvcnJlY3RseS4gSW4gb3JkZXIgdG8gbm90IGNvbXBsaWNhdGUKPiA+ICB0aGUg
YXRvbWljX2Rpc2FibGUgY2FsbGJhY2sgd2l0aCBhbGwgb2YgdGhlIGFib3ZlIGNoYW5nZXMsIHdl
IHNpbXBseQo+ID4gIHJlbW92ZSBpdCBhbmQgaW1wbGVtZW50IGFsbCB0aGUgY2hhbmVzIGFzIHBh
cnQgb2YgYXRvbWljX3VwZGF0ZSwgd2hpY2gKPiA+ICBhbHNvIHJlZHVjZXMgdGhlIGNvZGUgZHVw
bGljYXRpb24uCj4gCj4gSSdtIG5vdCBldmVuIHN1cmUgd2h5IHdlIG5lZWQgdGhhdCBvbGQgc3Rh
dGUuIENhbid0IHdlIGp1c3QgcmVzZXQKPiBjb21wbGV0ZWx5IHRoZSB3aG9sZSB0aGluZyBhbmQg
ZG8gdGhlIGNvbmZpZ3VyYXRpb24gYWxsIG92ZXIgYWdhaW4/CgpUaGF0IHdvdWxkIGJlIG5pY2Ug
ZnJvbSBhIGRldiBzdGFuZHBvaW50IGlmIHdlIGNhbiBnZXQgYSBjb21wbGV0ZSBzdGF0ZSBmb3Ig
YWxsCnBsYW5lcyBhdCBvbmNlIGZyb20gRFJNIGNvcmUsIGJ1dCBob3c/IERSTSBoZWxwZXIgZ2l2
ZXMgY2FsbGJhY2tzCmZvciB1cGRhdGluZyBpbmRpdmlkdWFsIHBsYW5lcyB3aXRoIHByZXYgYW5k
IG5ldyBzdGF0ZS4gVGhlc2UgaW5kaXZpZHVhbCBsYXllcgpjaGFuZ2Ugbm90aWZpY2F0aW9ucyBk
b24ndCBtYXAgbmljZWx5IHRvIGhvdyBwaXBlcyBhcmUgcmVwcmVzZW50ZWQgaW4gdGhlIG1peGVy
CnJlZ2lzdGVycy4KCj4gVGhhdCBkZXNjcmlwdGlvbiBqdXN0IGxvb2tzIHRvIG1lIGxpa2UgdGhl
IHJlc2V0IGlzIG5vdCBkb25lIHByb3Blcmx5LAo+IGFuZCBub3cgd2UgaGF2ZSB0byBkZWFsIHdp
dGggdGhlIGZhbGxvdXRzIGxhdGVyIG9uLgoKV2hhdCBpbiBwYXJ0aWN1bGFyPwoKPiA+ICBUbyBt
YWtlIHRoaXMgYWxsIHdvcmssIGluaXRpYWwgenBvcyBwb3NpdGlvbnMgb2YgYWxsIGxheWVycyBu
ZWVkIHRvIGJlCj4gPiAgcmVzdG9yZWQgdG8gaW5pdGlhbCB2YWx1ZXMgb24gcmVzZXQuCj4gCj4g
QW5kIHRoaXMgYWxzbyBmaXhlcyBhIHdob2xlIG90aGVyIGJ1bmNoIG9mIGlzc3VlcywgYW5kIGNh
biBiZSBtYWRlCj4gdmVyeSB0cml2aWFsbHkgaW4gYSBzZXBhcmF0ZSBwYXRjaC4KCk1heWJlIHJl
c2V0IHNob3VsZCBhbHNvIHJlc2V0IHJlZ2lzdGVycz8KCnJlZ2FyZHMsCglvLgoKPiBNYXhpbWUK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
