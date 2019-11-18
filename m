Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911281004D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:57:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpzxBPw+vZZ8fu8DI1KwaNXoAmyOf0q4NDaP5jHCCyI=; b=SIF8YlFFuIp8Ek
	zTV9+xJGH8Ej8vPfgD9APU/UaqHmlyK48HPnL47EIt93cINpo1FyxhlyVXgnEnz/PupuT7o1WrBB9
	u9u1+pn5kSTmHsd5Y/U9ARB7zQ8RHzD/KTGU/xUQUSPak5TBV/jT8vWheN/DMSNwQ82AoGRmHNsWH
	tKYPCp/vO2e0j7MfrXSlsULpgR/J3VxM0UtwK6j7gwBk00Y4gBhLUGriNfwIXNXLHlQ3oA/qF8iqe
	uaX4fMDBHGhJaSkZKhwsulKa1M+11htSkYLMJTVxT8gXD+CzB6vReFVvS0EKd9CHbnr7uugw7yE4Z
	HIH1gELZ6H76oQmVxI2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWffA-0002Md-6L; Mon, 18 Nov 2019 11:57:48 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfeh-00026g-Ly; Mon, 18 Nov 2019 11:57:21 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iWfef-0005JO-HE; Mon, 18 Nov 2019 12:57:17 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 xAIBvGMN025495
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Mon, 18 Nov 2019 12:57:16 +0100
Subject: Re: [PATCH] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
To: Jagan Teki <jagan@amarulasolutions.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
References: <075b3fa6-dab7-5fec-df68-b53f32bf061b@fivetechno.de>
 <2226540.xovL9aYQn6@diego>
 <CAMty3ZDwjv4ShpbAyQPWk9ewboFOK3nZO0s_QNty_m0hJKR76w@mail.gmail.com>
From: Markus Reichl <m.reichl@fivetechno.de>
Autocrypt: addr=m.reichl@fivetechno.de; prefer-encrypt=mutual; keydata=
 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
 eD/Xv4SsK2JTO4nkQYw8
Organization: five technologies GmbH
Message-ID: <62bfaad5-cbd6-efbd-426b-3da681fcd160@fivetechno.de>
Date: Mon, 18 Nov 2019 12:57:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAMty3ZDwjv4ShpbAyQPWk9ewboFOK3nZO0s_QNty_m0hJKR76w@mail.gmail.com>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1574078239;
 98fa53a2; 
X-HE-SMSGID: 1iWfef-0005JO-HE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_035719_871238_B1A550B3 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFnYW4sCgpBbSAxOC4xMS4xOSB1bSAxMjo0NCBzY2hyaWViIEphZ2FuIFRla2k6Cj4gT24g
TW9uLCBOb3YgNCwgMjAxOSBhdCA1OjQyIFBNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+IHdyb3RlOgo+Pgo+PiBIaSBNYXJrdXMsCj4+Cj4+IEFtIEZyZWl0YWcsIDEuIE5vdmVtYmVy
IDIwMTksIDE3OjU0OjIzIENFVCBzY2hyaWViIE1hcmt1cyBSZWljaGw6Cj4+ID4gRm9yIHJrMzM5
OS1yb2MtcGMgaXMgYSBtZXp6YW5pbmUgYm9hcmQgYXZhaWxhYmxlIHRoYXQgY2FycmllcyBNLjIg
YW5kCj4+ID4gUE9FIGludGVyZmFjZXMuIFVzZSBpdCB3aXRoIGEgc2VwYXJhdGUgZHRzLgo+PiA+
Cj4+ID4gU2lnbmVkLW9mZi1ieTogTWFya3VzIFJlaWNobCA8bS5yZWljaGxAZml2ZXRlY2huby5k
ZT4KPj4gPiAtLS0KPj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAg
ICAgICAgIHwgICAxICsKPj4gPiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMt
bWV6ei5kdHMgIHwgIDUyICsrCj4+ID4gIC4uLi9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktcm9jLXBjLmR0cyB8IDc1NyArLS0tLS0tLS0tLS0tLS0tLQo+PiA+ICAuLi4vYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpICAgICAgfCA3NjcgKysrKysrKysrKysrKysrKysr
Cj4+ID4gIDQgZmlsZXMgY2hhbmdlZCwgODIxIGluc2VydGlvbnMoKyksIDc1NiBkZWxldGlvbnMo
LSkKPj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LXJvYy1wYy1tZXp6LmR0cwo+PiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLmR0c2kKPj4gPgo+PiA+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+PiA+IGluZGV4IGE5NTk0MzRhZDQ2ZS4uODBlZTlm
MWZjNWY1IDEwMDY0NAo+PiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFr
ZWZpbGUKPj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4+
ID4gQEAgLTI4LDYgKzI4LDcgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5
OS1uYW5vcGktbmVvNC5kdGIKPj4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJr
MzM5OS1vcmFuZ2VwaS5kdGIKPj4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJr
MzM5OS1wdW1hLWhhaWtvdS5kdGIKPj4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9
IHJrMzM5OS1yb2MtcGMuZHRiCj4+ID4gK2R0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSBy
azMzOTktcm9jLXBjLW1lenouZHRiCj4+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSAr
PSByazMzOTktcm9jay1waS00LmR0Ygo+PiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkg
Kz0gcmszMzk5LXJvY2s5NjAuZHRiCj4+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSAr
PSByazMzOTktcm9ja3BybzY0LmR0Ygo+PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMtbWV6ei5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMtbWV6ei5kdHMKPj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+PiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uZWU3NzY3N2QyY2YyCj4+ID4gLS0tIC9kZXYvbnVs
bAo+PiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy1t
ZXp6LmR0cwo+PiA+IEBAIC0wLDAgKzEsNTIgQEAKPj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4+ID4gKy8qCj4+ID4gKyAqIENvcHlyaWdodCAoYykg
MjAxNyBULUNoaXAgSW50ZWxsaWdlbnQgVGVjaG5vbG9neSBDby4sIEx0ZAo+PiA+ICsgKiBDb3B5
cmlnaHQgKGMpIDIwMTkgTWFya3VzIFJlaWNobCA8bS5yZWljaGxAZml2ZXRlY2huby5kZT4KPj4g
PiArICovCj4+ID4gKwo+PiA+ICsvZHRzLXYxLzsKPj4gPiArI2luY2x1ZGUgInJrMzM5OS1yb2Mt
cGMuZHRzaSIKPj4gPiArCj4+ID4gKy8gewo+PiA+ICsgICAgIG1vZGVsID0gIkZpcmVmbHkgUk9D
LVJLMzM5OS1QQyBNZXp6YW5pbmUgQm9hcmQiOwo+PiA+ICsgICAgIGNvbXBhdGlibGUgPSAiZmly
ZWZseSxyb2MtcmszMzk5LXBjIiwgInJvY2tjaGlwLHJrMzM5OSI7Cj4+Cj4+IGRpZmZlcmVudCBi
b2FyZCB3aXRoIHNhbWUgY29tcGF0aWJsZSBpc24ndCBwb3NzaWJsZSwgc28KPj4geW91J2xsIG5l
ZWQgYSBuZXcgY29tcGF0aWJsZSBmb3IgaXQgYW5kIGFkZCBhIG5ldyBsaW5lIHRvCj4+IHRoZSBy
b2MtcGMgZW50cnkgaW4KPj4gICAgICAgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvYXJtL3JvY2tjaGlwLnlhbWwKPj4KPj4gRWl0aGVyIHlvdSBzZWUgaXQgYXMKPj4gLSBhIGJv
YXJkICsgaGF0LCB1c2luZyBkdCBvdmVybGF5IGFuZCBzYW1lIGNvbXBhdGlibGUKPj4gLSBhIGNv
bXBsZXRlbHkgc2VwYXJhdGUgYm9hcmQsIHdoaWNoIG5lZWRzIGEgc2VwYXJhdGUKPj4gICBjb21w
YXRpYmxlIGFzIHdlbGwKPj4KPj4gQW5kIGFzIGRpc2N1c3NlZCBpbiB0aGUgcHJldmlvdXMgdGhy
ZWFkCj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9saW51eC1yb2NrY2hp
cC8yMDE5LU5vdmVtYmVyLzAyNzU5Mi5odG1sCj4+IGJ1dCBhbHNvIGluIEphZ2FuJ3MgcmVzcG9u
c2UgdGhhdCByZWFsbHkgaXMgc29tZWhvdyBhIGdyZXkgYXJlYQo+PiBmb3Igc29tZXRoaW5nIHJl
bGF0aXZlbHkgc3RhdGljIGFzIHRoZSBNLjIgZXh0ZW5zaW9uLgo+IAo+IFNvcnJ5IGZvciBsYXRl
IHJlc3BvbnNlIG9uIHRoaXMuIEkgc3RpbGwgdGhpbmsgdGhhdCB0aGUgIm92ZXJsYXkgd291bGQK
PiBiZSBhIGJldHRlciBzdWl0ZSIgdGhhbiBoYXZpbmcgc2VwYXJhdGUgZHRzLCBzaW5jZSBpdCBp
cyBIQVQgd2hpY2ggaXMKPiBvcHRpb25hbCB0byBpbnNlcnQgYW5kIGhhdmUgcG9zc2liaWxpdHkg
b2YgaGF2aW5nIGFub3RoZXIgSEFUIGlmIGl0Cj4gcmVhbGx5IGZpdCBpbnRvIGl0Lgo+IAo+IENv
bW1lbnRzPwpQcmVzZW50bHkgbm8gb3RoZXIgZXh0ZW5zaW9uIGJvYXJkIGRvZXMgZXhpc3QsIEkg
ZG9uJ3QgZXhwZWN0IG9uZS4KCkkgdXNlIGl0IHdpdGggcm9vdGZzIG9uIE5WTUUgb24gdGhlIG1l
enphbmluZSBib2FyZC4KSXQgaXMgY29udmVuaWVudCB0byBoYXZlIHRoZSBOVk1FIHVwIGJlZm9y
ZSBnb2luZyB0byB1c2VyIHNwYWNlLgoKVGhlIGJvYXJkIGhhcyBTUEktTk9SIE1URCBzdG9yYWdl
IHRvIGhvc3QgVS1Cb290LiAKSW4gZnV0dXJlIFUtQm9vdCBjb3VsZCBib290IGZyb20gTlZNRSBk
aXJlY3RseSB3aXRob3V0IG5lZWRpbmcKYW4gU0Qgb3IgTU1DIHRvIGhvc3QgdGhlIGJvb3Qga2Vy
bmVsLgoKR3J1w58sCi0tIApNYXJrdXMgUmVpY2hsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
