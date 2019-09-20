Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E64B93C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 17:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRRzLW7Zi7TYIS31qLN4j0Y1uy90/LoxC4UBoXMbWqE=; b=RFFhhuP+RmwsaN
	0ZPzLN0YcjVhJtXyDJ1AflaSh+YeBg5tObxA0xOSNlarP5iHSPAnyHo89/W2QqCi8Jkv+Jek7ADw9
	GV/M4AisE8/Rcv4BfazEXi+/AOMA04g8av4B3ycHibo1mxfNy6aY8Lv+ZPSoNAYIE4YJRSOZ4EtC4
	Q5E3qZ+wCgWo1swgrNKwwQKVYgODmazjOji22Of/PX+7+QXHHHwgszNLtbNxXvMrOx0aL26kZeuRa
	RuZbq+o08FoFaupo2JXab87hM1whYXGie+x98Id29znUH25rwWWAUiiDI65o7k1Oo0zCCX+xdwM5I
	0VdUtoeSakS2N0cwg1Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBKZc-0006BN-PR; Fri, 20 Sep 2019 15:11:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBKZV-0006Aj-Jt
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 15:11:47 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B5BE2086A;
 Fri, 20 Sep 2019 15:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568992305;
 bh=P03LHVKn6LA/jWFaOHU7Nv1MBzcqutnGsNgTkam26qY=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=PUiMZ93OuJDn+LjWStwl90tsdFKa1BD/U+Q67U8KHQwJq05X/bx7xf7+D31/Nq6vi
 kRf3XANvqkoSmIpDlCXAF873HIniYr1RMJKwMlrGbiG7HfxFoGAsmbdoLKAuzWOiAr
 St+hu0yLlgkJEO9oiUHQiZ5c8dbY1W6hdRWZmKxU=
Date: Fri, 20 Sep 2019 17:11:42 +0200
From: Maxime Ripard <mripard@kernel.org>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm: sun8i-ui/vi: Fix layer zpos change/atomic modesetting
Message-ID: <20190920151142.ijistzhtcaenehx6@gilmour>
References: <20190914220337.646719-1-megous@megous.com>
 <20190918141734.kerdbbaynwutrxf6@gilmour>
 <20190918152309.j2dbu63jaru6jn2t@core.my.home>
 <20190918201617.5gwzmshoxbcxbmrx@gilmour>
 <20190919122058.fhpuafogdq7oir2d@core.my.home>
 <20190919131244.35hmnp7jizegltp7@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919131244.35hmnp7jizegltp7@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_081145_700937_B02A0F58 
X-CRM114-Status: GOOD (  31.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

T24gVGh1LCBTZXAgMTksIDIwMTkgYXQgMDM6MTI6NDRQTSArMDIwMCwgT25kxZllaiBKaXJtYW4g
d3JvdGU6Cj4gT24gVGh1LCBTZXAgMTksIDIwMTkgYXQgMDI6MjA6NThQTSArMDIwMCwgbWVnb3Vz
IGhsYXZuaSB3cm90ZToKPiA+IE9uIFdlZCwgU2VwIDE4LCAyMDE5IGF0IDEwOjE2OjE3UE0gKzAy
MDAsIE1heGltZSBSaXBhcmQgd3JvdGU6Cj4gPiA+IE9uIFdlZCwgU2VwIDE4LCAyMDE5IGF0IDA1
OjIzOjA5UE0gKzAyMDAsIE9uZMWZZWogSmlybWFuIHdyb3RlOgo+ID4gPiA+IEhpLAo+ID4gPiA+
Cj4gPiA+ID4gT24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMDQ6MTc6MzRQTSArMDIwMCwgTWF4aW1l
IFJpcGFyZCB3cm90ZToKPiA+ID4gPiA+IEhpLAo+ID4gPiA+ID4KPiA+ID4gPiA+IE9uIFN1biwg
U2VwIDE1LCAyMDE5IGF0IDEyOjAzOjM3QU0gKzAyMDAsIG1lZ291c0BtZWdvdXMuY29tIHdyb3Rl
Ogo+ID4gPiA+ID4gPiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gVGhlcmUgYXJlIHZhcmlvdXMgaXNzdWVzIHRoYXQgdGhpcyBy
ZS13b3JrIG9mIHN1bjhpX1t1dl1pX2xheWVyX2VuYWJsZQo+ID4gPiA+ID4gPiBmdW5jdGlvbiBm
aXhlczoKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gLSBNYWtlIHN1cmUgdGhhdCB3ZSByZS1pbml0
aWFsaXplIHpwb3Mgb24gcmVzZXQKPiA+ID4gPiA+ID4gLSBNaW5pbWl6ZSByZWdpc3RlciB1cGRh
dGVzIGJ5IGRvaW5nIHRoZW0gb25seSB3aGVuIHN0YXRlIGNoYW5nZXMKPiA+ID4gPiA+ID4gLSBG
aXggaXNzdWUgd2hlcmUgREUgcGlwZSBtaWdodCBnZXQgZGlzYWJsZWQgZXZlbiBpZiBpdCBpcyBu
byBsb25nZXIKPiA+ID4gPiA+ID4gICB1c2VkIGJ5IHRoZSBsYXllciB0aGF0J3MgY3VycmVudGx5
IGNhbGxpbmcgc3VuOGlfdWlfbGF5ZXJfZW5hYmxlCj4gPiA+ID4gPiA+IC0gLmF0b21pY19kaXNh
YmxlIGNhbGxiYWNrIGlzIG5vdCByZWFsbHkgbmVlZGVkIGJlY2F1c2UgLmF0b21pY191cGRhdGUK
PiA+ID4gPiA+ID4gICBjYW4gZG8gdGhlIGRpc2FibGUgdG9vLCBzbyBkcm9wIHRoZSBkdXBsaWNh
dGUgY29kZQo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmly
bWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJdCBsb29rcyBsaWtl
IHRoZXNlIGZpeGVzIHNob3VsZCBiZSBpbiBzZXBhcmF0ZSBwYXRjaGVzLiBJcyB0aGVyZSBhbnkK
PiA+ID4gPiA+IHJlYXNvbiBpdCdzIG5vdCB0aGUgY2FzZT8KPiA+ID4gPgo+ID4gPiA+IEJ1bGxl
dCBwb2ludHMganVzdCBkZXNjcmliZSB0aGUgcmVzdWx0aW5nIGVmZmVjdC9iZW5lZml0cyBvZiB0
aGUgY2hhbmdlIHRvIGZpeAo+ID4gPiA+IHRoZSBwaXBlIGNvbnRyb2wgcmVnaXN0ZXIgdXBkYXRl
IGlzc3VlIChzZWUgdGhlIHJlZmVyZW5jZWQgZS1tYWlsKS4KPiA+ID4KPiA+ID4gSXQncyBkZWZp
bml0ZWx5IG9rIHRvIGhhdmUgbXVsdGlwbGUgcGF0Y2hlcyBuZWVkZWQgdG8gYWRkcmVzcyBhIHNp
bmdsZQo+ID4gPiBwZXJjZWl2ZWQgaXNzdWUuCj4gPgo+ID4gWWVzLCBidXQgSSBjYW4ndCBzaW1w
bHkgc3BsaXQgdGhlIHBhdGNoLiBJbiBvcmRlciBmb3IgZWFjaCBjaGFuZ2UgdG8gd29yayBvbiBp
dHMKPiA+IG93biwgdGhleSdkIGhhdmUgdG8gYmUgZG9uZSBkaWZmZXJlbnRseSB0aGFuIHRoZSBm
aW5hbCByZXN1bHQuCj4gPgo+ID4gSSB3b3VsZG4ndCBtaW5kIGF0IGFsbCBpZiBpdCB3YXMganVz
dCBhIHNpbXBsZSBzcGxpdHRpbmcsIGJ1dCB5b3UncmUgYXNraW5nCj4gPiBmb3IgdG9vIG11Y2gg
d29yaywgdGhpcyB0aW1lLCBmb3Igbm8gYmVuZWZpdCB0aGF0IEkgY2FuIHNlZS4KPiA+Cj4gPiA+
IEEgY29tbWl0IGlzIG5vdCBhYm91dCB3aGF0IHlvdSdyZSBmaXhpbmcgYnV0IHdoYXQgeW91J3Jl
IGNoYW5naW5nLiBBbmQKPiA+ID4gdGhlIGZhY3QgdGhhdCB5b3UgaGF2ZSB0aGEgYnVsbGV0IGxp
c3QgaW4gdGhlIGZpcnN0IHBsYWNlIHByb3ZlcyB0aGF0Cj4gPiA+IHlvdSBoYXZlIG11bHRpcGxl
IGxvZ2ljYWwgY2hhbmdlcyBpbiB5b3VyIHBhdGNoLgo+ID4gPgo+ID4gPiBBbmQgZXZlbiB0aGVu
LCB5b3VyIGNvbW1pdCBsb2cgbWVudGlvbnMgdGhhdCB5b3UncmUgZml4aW5nIG11bHRpcGxlCj4g
PiA+IGlzc3VlcyAod2l0aG91dCBleHBsYWluaW5nIHRoZW0pLgo+ID4KPiA+IEkgY2FuIHJld29y
ZCB0aGUgY29tbWl0IG1lc3NhZ2UgaWYgdGhhdCBoZWxwcywgYW5kIHNraXAgdGhlIGJ1bGxldCBs
aXN0IGlmIGl0Cj4gPiBpcyBjb25mdXNpbmcuIFRoZXJlJ3MgYSBzaW5nbGUgY29yZSBpc3N1ZSBh
bmQgdGhhdCBpcyB0aGF0IHRoZSBkcml2ZXIgZG9lc24ndAo+ID4gdXBkYXRlIHRoZSBwaXBlL2No
YW5uZWwgY29uZmlndXJhdGlvbiBjb3JyZWN0bHkgbGVhZGluZyB0byBkaXNhYmxpbmcgb2YKPiA+
IGFyYml0cmFyeSBsYXllcnMgKG5vdCBldmVuIHRob3NlIGJlaW5nIHVwZGF0ZWQgLSB1cGRhdGUg
b2YgVUkgbGF5ZXIgbWF5IGRpc2FibGUKPiA+IFZJIGxheWVyIGFzIGEgc2lkZSBlZmZlY3QgZm9y
IGV4YW1wbGUpIGF0IHdyb25nIHRpbWVzLiBBbmQgb25seSBjaGFuZ2VzCj4gPiBuZWNlc3Nhcnkg
dG8gZGVidWcvZml4IHRoaXMgYXJlIGluY2x1ZGVkLgo+Cj4gSG93IGFib3V0IHRoaXM6Cj4KPiAg
QSBwcm9ibGVtIHdhcyBmb3VuZCB3aGVyZSBpZGVudGljYWwgY29uZmlndXJhdGlvbiBvZiBwbGFu
ZXMgbGVhZHMKPiAgdG8gZGlmZmVyZW50IHJlZ2lzdGVyIHNldHRpbmdzIGF0IHRoZSBIVyBsYXll
ciB3aGVuIHVzaW5nIGEgWCBzZXJ2ZXIKPiAgd2l0aCBtb2Rlc2V0dGluZyBkcml2ZXIgYW5kIG9u
ZSBwbGFuZSBtYXJrZWQgYXMgYSBjdXJzb3IuCgpXZSBkb24ndCBoYXZlIGEgY3Vyc29yIHBsYW5l
LgoKPiAgT24gZmlyc3QgcnVuIG9mIHRoZSBYIHNlcnZlciwgb25seSB0aGUgYmxhY2sgc2NyZWVu
IGFuZCB0aGUgbGF5ZXIKPiAgY29udGFpbmluZyB0aGUgY3Vyc29yIGlzIHZpc2libGUuIFN3aXRj
aGluZyB0byBjb25zb2xlIGFuZCBiYWNrCj4gIGNvcnJlY3RzIHRoZSBzaXR1YXRpb24uCj4KPiAg
SSBoYXZlIGR1bXBlZCByZWdpc3RlcnMsIGFuZCBmb3VuZCBvdXQgdGhpczoKPgo+ICAoSW4gYm90
aCBjYXNlcyB0aGVyZSBhcmUgdHdvIGVuYWJsZWQgcGxhbmVzLCBwbGFuZSAxIHdpdGggenBvcyAw
IGFuZAo+ICBwbGFuZSAzIHdpdGggenBvcyAxKS4KPgo+ICAxKSBGaXJzdCBYb3JnIHJ1bjoKPgo+
ICAgIDB4MDExMDEwMDAgOiAwMDAwMDIwMQo+ICAgIDB4MDExMDEwODAgOiAwMDAwMDAzMAo+Cj4g
ICAgQkxEX0ZJTExfQ09MT1JfQ1RMOiAoYWthIFNVTjhJX01JWEVSX0JMRU5EX1BJUEVfQ1RMKQo+
ICAgICAgUDFfRU4KPgo+ICAgIEJMRF9DSF9SVENUTDogKGFrYSBTVU44SV9NSVhFUl9CTEVORF9S
T1VURSkKPiAgICAgIFAwX1JUQ1RMIGNoYW5uZWwwCj4gICAgICBQMV9SVENUTCBjaGFubmVsMwo+
Cj4gIDIpIEFmdGVyIHN3aXRjaCB0byBjb25zb2xlIGFuZCBiYWNrIHRvIFhvcmc6Cj4KPiAgMHgw
MTEwMTAwMCA6IDAwMDAwMzAxCj4gIDB4MDExMDEwODAgOiAwMDAwMDAzMQo+Cj4gICAgQkxEX0ZJ
TExfQ09MT1JfQ1RMOgo+ICAgICAgUDFfRU4gYW5kIFAwX0VOCj4KPiAgICBCTERfQ0hfUlRDVEw6
Cj4gICAgICBQMF9SVENUTCBjaGFubmVsMQo+ICAgICAgUDFfUlRDVEwgY2hhbm5lbDMKPgo+ICBX
aGF0IGhhcHBlbnMgaXMgdGhhdCBzdW44aV91aV9sYXllcl9lbmFibGUoKSBmdW5jdGlvbiBtYXkg
ZGlzYWJsZQo+ICBibGVuZGluZyBwaXBlcyBldmVuIGlmIGl0IGlzIG5vIGxvbmdlciBhc3NpZ25l
ZCB0byBpdHMgbGF5ZXIsIGJlY2F1c2UKPiAgb2YgaW5jb3JyZWN0IHN0YXRlL3pwb3MgdHJhY2tp
bmcgaW4gdGhlIGRyaXZlci4KPgo+ICBJbiBwYXJ0aWN1bGFyLCBsYXllciAxIGlzIGNvbmZpZ3Vy
ZWQgdG8genBvcyAwIGFuZCB0aHVzIHVzZXMgcGlwZSAwLgo+ICBXaGVuIGxheWVyIDMgaXMgZW5h
YmxlZCBieSBYIHNlcnZlciwgc3VuOGlfdWlfbGF5ZXJfZW5hYmxlKCkgd2lsbCBnZXQKPiAgY2Fs
bGVkIHdpdGggb2xkX3pwb3M9MCB6cG9zPTEsIHdoaWNoIHdpbGwgbGVhZCB0byBkaXNhYmxpbmcg
b2YgcGlwZSAwLgo+Cj4gIEluIGdlbmVyYWwgdGhpcyBpc3N1ZSBjYW4gaGFwcGVuIHRvIGFueSBs
YXllciBkdXJpbmcgZW5hYmxlIG9yIHpwb3MKPiAgY2hhbmdlcyBvbiBtdWx0aXBsZSBsYXllcnMg
YXQgb25jZS4KPgo+ICBUbyBjb3JyZWN0IHRoaXMgd2Ugbm93IHBhc3MgcHJldmlvdXMgZW5hYmxl
ZC9kaXNhYmxlZCBzdGF0ZSBvZiB0aGUKPiAgbGF5ZXIsIGFuZCBwYXNzIHJlYWwgcHJldmlvdXMg
enBvcyBvZiB0aGUgbGF5ZXIgdG8KPiAgc3VuOGlfdWlfbGF5ZXJfZW5hYmxlKCkgYW5kIHJld29y
ayB0aGUgc3VuOGlfdWlfbGF5ZXJfZW5hYmxlKCkgZnVuY3Rpb24KPiAgdG8gcmVhY3QgdG8gdGhl
IHN0YXRlIGNoYW5nZXMgY29ycmVjdGx5LiBJbiBvcmRlciB0byBub3QgY29tcGxpY2F0ZQo+ICB0
aGUgYXRvbWljX2Rpc2FibGUgY2FsbGJhY2sgd2l0aCBhbGwgb2YgdGhlIGFib3ZlIGNoYW5nZXMs
IHdlIHNpbXBseQo+ICByZW1vdmUgaXQgYW5kIGltcGxlbWVudCBhbGwgdGhlIGNoYW5lcyBhcyBw
YXJ0IG9mIGF0b21pY191cGRhdGUsIHdoaWNoCj4gIGFsc28gcmVkdWNlcyB0aGUgY29kZSBkdXBs
aWNhdGlvbi4KCkknbSBub3QgZXZlbiBzdXJlIHdoeSB3ZSBuZWVkIHRoYXQgb2xkIHN0YXRlLiBD
YW4ndCB3ZSBqdXN0IHJlc2V0CmNvbXBsZXRlbHkgdGhlIHdob2xlIHRoaW5nIGFuZCBkbyB0aGUg
Y29uZmlndXJhdGlvbiBhbGwgb3ZlciBhZ2Fpbj8KClRoYXQgZGVzY3JpcHRpb24ganVzdCBsb29r
cyB0byBtZSBsaWtlIHRoZSByZXNldCBpcyBub3QgZG9uZSBwcm9wZXJseSwKYW5kIG5vdyB3ZSBo
YXZlIHRvIGRlYWwgd2l0aCB0aGUgZmFsbG91dHMgbGF0ZXIgb24uCgo+ICBUbyBtYWtlIHRoaXMg
YWxsIHdvcmssIGluaXRpYWwgenBvcyBwb3NpdGlvbnMgb2YgYWxsIGxheWVycyBuZWVkIHRvIGJl
Cj4gIHJlc3RvcmVkIHRvIGluaXRpYWwgdmFsdWVzIG9uIHJlc2V0LgoKQW5kIHRoaXMgYWxzbyBm
aXhlcyBhIHdob2xlIG90aGVyIGJ1bmNoIG9mIGlzc3VlcywgYW5kIGNhbiBiZSBtYWRlCnZlcnkg
dHJpdmlhbGx5IGluIGEgc2VwYXJhdGUgcGF0Y2guCgpNYXhpbWUKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
