Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEB712C28A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 14:33:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EO0yARWYI8ub2LY8pEplsWUvPM4vVVuTjfYAzyBItl4=; b=HsTafp/IBq+bx/
	4c7nCOEyk5PDL5A3iGhZ8qYzs+/v2T/kDVAP0Ro1V5xN5yCM1bExXmev51ANbHh9zizgn50PXiFWt
	9QOFo3iNo1F9ZrWQH/oEfn1ejoWPE6dV9qRJFJlsbsVvJNWjIr2PRm6AKffsFahFTwKl3j3jmmixE
	2Us7WH2WSb3hmDHITAdNmzole16zWwc95/bAoIraqft0qDq0qs1PL7IG4Qizu7yytc01jKe9BV3wF
	6JgX5PN3v/1AKPuQpJAsZFW9uSXIzhRCLmC3SoLM6/FrFETz/pYRumbYssc0NlUFxNvoFrdQa8JYT
	EEiQB3kSodzZ4zbcvJaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilYhJ-0003rl-Os; Sun, 29 Dec 2019 13:33:33 +0000
Received: from mailoutvs13.siol.net ([185.57.226.204] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilYh6-0003rL-8o
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 13:33:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 345EA521E56;
 Sun, 29 Dec 2019 14:33:14 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id k4KDYSjbhKdQ; Sun, 29 Dec 2019 14:33:13 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 342E3521E60;
 Sun, 29 Dec 2019 14:33:13 +0100 (CET)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id C6491521E56;
 Sun, 29 Dec 2019 14:33:12 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Roman Stratiienko <roman.stratiienko@globallogic.com>
Subject: Re: [RFC 3/4] drm/sun4i: Reimplement plane z position setting logic
Date: Sun, 29 Dec 2019 14:33:12 +0100
Message-ID: <2194917.NG923GbCHz@jernej-laptop>
In-Reply-To: <CAODwZ7u81WkAZ0=2KuwX56esVLH+nAt0VbpTSmaJcTvMMjGffg@mail.gmail.com>
References: <20191228202818.69908-1-roman.stratiienko@globallogic.com>
 <2015568.Icojqenx9y@jernej-laptop>
 <CAODwZ7u81WkAZ0=2KuwX56esVLH+nAt0VbpTSmaJcTvMMjGffg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_053320_790729_34F51CF2 
X-CRM114-Status: GOOD (  29.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.204 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIG5lZGVsamEsIDI5LiBkZWNlbWJlciAyMDE5IG9iIDE0OjEzOjA2IENFVCBqZSBSb21hbiBT
dHJhdGlpZW5rbyAKbmFwaXNhbChhKToKPiBNeSBwcm9wb3NhbCBpcyB0byBnbyB3aXRoIERSTV9E
RUJVR19EUklWRVIgZm9yIG5vdy4KPiBJbiBjYXNlIHN0YWJsZSBicmFuY2hlcyB3b3VsZCBiZSBp
bnRlcmVzdGVkIGluIHRoZXNlIGZpeGVzLCBpdCB3aWxsIGJlCj4gZWFzaWVyIHRvIGJhY2twb3J0
LgoKRmFpciBlbm91Z2gsIGJ1dCB5b3UgbmVlZCB0byBhZGQgYXQgbGVhc3QgRml4ZXMgdGFnLgoK
QmVzdCByZWdhcmRzLApKZXJuZWoKCj4gCj4gQWxzbyBJIGFtIHVzaW5nIHY1LjQgZm9yIHRlc3Rp
bmcgc2luY2UgR29vZ2xlIEFPU1AgcGF0Y2hlcyBkb2VzIG5vdAo+IHdvcmsgY29ycmVjdGx5IHdp
dGggbWFpbmxpbmUgYW5kIG1pc3NpbmcgZm9yIGtlcm5lbC1uZXh0Lgo+IE1haW50YWluaW5nIDIg
dmFyaWFudHMgd2lsbCBiZSBtdWNoIGhhcmRlciBmb3IgbWUuCj4gCj4gT24gU3VuLCBEZWMgMjks
IDIwMTkgYXQgMzowMiBQTSBKZXJuZWogxaBrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0
PiAKd3JvdGU6Cj4gPiBEbmUgbmVkZWxqYSwgMjkuIGRlY2VtYmVyIDIwMTkgb2IgMTM6NDc6Mzgg
Q0VUIGplIFJvbWFuIFN0cmF0aWllbmtvCj4gPiAKPiA+IG5hcGlzYWwoYSk6Cj4gPiA+IE9uIFN1
biwgRGVjIDI5LCAyMDE5IGF0IDI6MTggUE0gSmVybmVqIMWga3JhYmVjIDxqZXJuZWouc2tyYWJl
Y0BzaW9sLm5ldD4KPiA+IAo+ID4gd3JvdGU6Cj4gPiA+ID4gRG5lIG5lZGVsamEsIDI5LiBkZWNl
bWJlciAyMDE5IG9iIDEzOjA4OjE5IENFVCBqZSBSb21hbiBTdHJhdGlpZW5rbwo+ID4gPiA+IAo+
ID4gPiA+IG5hcGlzYWwoYSk6Cj4gPiA+ID4gPiBIZWxsbyBKZXJuZWosCj4gPiA+ID4gPiAKPiA+
ID4gPiA+IFRoYW5rIHlvdSBmb3IgcmV2aWV3Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBPbiBTdW4s
IERlYyAyOSwgMjAxOSBhdCAxMTo0MCBBTSBKZXJuZWogxaBrcmFiZWMKPiA+ID4gPiA+IDxqZXJu
ZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+ID4gPiAKPiA+ID4gPiB3cm90ZToKPiA+ID4gPiA+ID4g
SGkhCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBEbmUgc29ib3RhLCAyOC4gZGVjZW1iZXIgMjAx
OSBvYiAyMToyODoxNyBDRVQgamUKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IHJvbWFuLnN0cmF0
aWllbmtvQGdsb2JhbGxvZ2ljLmNvbSBuYXBpc2FsKGEpOgo+ID4gPiA+ID4gPiA+IEZyb206IFJv
bWFuIFN0cmF0aWllbmtvIDxyb21hbi5zdHJhdGlpZW5rb0BnbG9iYWxsb2dpYy5jb20+Cj4gPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gVG8gc2V0IGJsZW5kaW5nIGNoYW5uZWwgb3JkZXIgcmVn
aXN0ZXIgc29mdHdhcmUgbmVlZHMgdG8ga25vdwo+ID4gPiA+ID4gPiA+IHN0YXRlCj4gPiA+ID4g
PiA+ID4gYW5kCj4gPiA+ID4gPiA+ID4gcG9zaXRpb24gb2YgZWFjaCBjaGFubmVsLCB3aGljaCBp
bXBvc3NpYmxlIGF0IHBsYW5lIGNvbW1pdAo+ID4gPiA+ID4gPiA+IHN0YWdlLgo+ID4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+IE1vdmUgdGhpcyBwcm9jZWR1cmUgdG8gYXRvbWljX2ZsdXNoIHN0
YWdlLCB3aGVyZSBhbGwgbmVjZXNzYXJ5Cj4gPiA+ID4gPiA+ID4gaW5mb3JtYXRpb24KPiA+ID4g
PiA+ID4gPiBpcyBhdmFpbGFibGUuCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gU2lnbmVk
LW9mZi1ieTogUm9tYW4gU3RyYXRpaWVua28KPiA+ID4gPiA+ID4gPiA8cm9tYW4uc3RyYXRpaWVu
a29AZ2xvYmFsbG9naWMuY29tPgo+ID4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfbWl4ZXIuYyAgICB8IDQ3Cj4g
PiA+ID4gPiA+ID4gICsrKysrKysrKysrKysrKysrKysrKysrKystCj4gPiA+ID4gPiA+ID4gIGRy
aXZlcnMvZ3B1L2RybS9zdW40aS9zdW44aV9taXhlci5oICAgIHwgIDMgKysKPiA+ID4gPiA+ID4g
PiAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX3VpX2xheWVyLmMgfCA0Mgo+ID4gPiA+ID4g
PiA+ICArKysrLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9k
cm0vc3VuNGkvc3VuOGlfdmlfbGF5ZXIuYyB8IDM5Cj4gPiA+ID4gPiA+ID4gICsrKy0tLS0tLS0t
LS0tLS0tLS0tLQo+ID4gPiA+ID4gPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDYwIGluc2VydGlvbnMo
KyksIDcxIGRlbGV0aW9ucygtKQo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfbWl4ZXIuYwo+ID4gPiA+ID4gPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX21peGVyLmMgaW5kZXgKPiA+ID4gPiA+ID4gPiBi
YjlhNjY1ZmQwNTMuLmRhODRmY2NmNzc4NAo+ID4gPiA+ID4gPiA+IDEwMDY0NAo+ID4gPiA+ID4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW44aV9taXhlci5jCj4gPiA+ID4gPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX21peGVyLmMKPiA+ID4gPiA+ID4g
PiBAQCAtMzA3LDggKzMwNyw0NyBAQCBzdGF0aWMgdm9pZCBzdW44aV9hdG9taWNfYmVnaW4oc3Ry
dWN0Cj4gPiA+ID4gPiA+ID4gc3VueGlfZW5naW5lCj4gPiA+ID4gPiA+ID4gKmVuZ2luZSwKPiA+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAgc3RhdGljIHZvaWQgc3VuOGlfbWl4ZXJfY29tbWl0
KHN0cnVjdCBzdW54aV9lbmdpbmUgKmVuZ2luZSkKPiA+ID4gPiA+ID4gPiAgewo+ID4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+IC0gICAgIERSTV9ERUJVR19EUklWRVIoIkNvbW1pdHRpbmcgY2hh
bmdlc1xuIik7Cj4gPiA+ID4gPiA+ID4gKyAgICAgc3RydWN0IHN1bjhpX21peGVyICptaXhlciA9
IGVuZ2luZV90b19zdW44aV9taXhlcihlbmdpbmUpOwo+ID4gPiA+ID4gPiA+ICsgICAgIHUzMiBi
YXNlID0gc3VuOGlfYmxlbmRlcl9iYXNlKG1peGVyKTsKPiA+ID4gPiA+ID4gPiArICAgICBpbnQg
aSwgajsKPiA+ID4gPiA+ID4gPiArICAgICBpbnQgY2hhbm5lbF9ieV96cG9zWzRdID0gey0xLCAt
MSwgLTEsIC0xfTsKPiA+ID4gPiA+ID4gPiArICAgICB1MzIgcm91dGUgPSAwLCBwaXBlX2N0bCA9
IDA7Cj4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICsgICAgIERSTV9ERUJVR19EUklWRVIo
IlVwZGF0ZSBibGVuZGVyIHJvdXRpbmdcbiIpOwo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gVXNl
IGRybV9kYmcoKS4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gKyAgICAgZm9yIChpID0gMDsg
aSA8IDQ7IGkrKykgewo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgaW50IHpwb3MgPSBtaXhl
ci0+Y2hhbm5lbF96cG9zW2ldOwo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gY2hhbm5lbF96cG9z
IGNhbiBob2xkIDUgZWxlbWVudHMgd2hpY2ggaXMgYWxzbyB0aGVvcmV0aWNhbCBtYXhpbXVtCj4g
PiA+ID4gPiA+IGZvcgo+ID4gPiA+ID4gPiBjdXJyZW50IEhXIGRlc2lnbi4gV2h5IGRvIHlvdSBj
aGVjayBvbmx5IDQgZWxlbWVudHM/Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IEknbGwgdXNlIHBsYW5l
X2NudCBhcyBpdCBkb25lIGluIG1peGVyX2JpbmQKPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBJdCB3
b3VsZCBiZSBncmVhdCB0byBpbnRyb2R1Y2UgYSBtYWNybyBsaWtlIFNVTjhJX01JWEVSX01BWF9M
QVlFUlMKPiA+ID4gPiA+ID4gc28KPiA+ID4gPiA+ID4gZXZlcnlvbmUgd291bGQgdW5kZXJzdGFu
ZCB3aGVyZSB0aGlzIG51bWJlciBjb21lcyBmcm9tLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBXaWxs
IGRvLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgaWYgKHpwb3MgPj0gMCAmJiB6cG9zIDwgNCkKPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgY2hhbm5lbF9ieV96cG9zW3pwb3NdID0gaTsKPiA+ID4gPiA+ID4gPiArICAgICB9
Cj4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICsgICAgIGogPSAwOwo+ID4gPiA+ID4gPiA+
ICsgICAgIGZvciAoaSA9IDA7IGkgPCA0OyBpKyspIHsKPiA+ID4gPiA+ID4gPiArICAgICAgICAg
ICAgIGludCBjaCA9IGNoYW5uZWxfYnlfenBvc1tpXTsKPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4g
PiA+ID4gKyAgICAgICAgICAgICBpZiAoY2ggPj0gMCkgewo+ID4gPiA+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICBwaXBlX2N0bCB8PQo+ID4gPiA+ID4gPiA+IFNVTjhJX01JWEVSX0JMRU5E
X1BJUEVfQ1RMX0VOKGopOwo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICByb3V0
ZSB8PSBjaCA8PAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gU1VOOElfTUlYRVJfQkxFTkRfUk9V
VEVfUElQRV9TSElGVChqKTsKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgIGorKzsKPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgIH0KPiA+ID4gPiA+ID4g
PiArICAgICB9Cj4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICsgICAgIGZvciAoaSA9IDA7
IGkgPCA0ICYmIGogPCA0OyBpKyspIHsKPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgIGludCB6
cG9zID0gbWl4ZXItPmNoYW5uZWxfenBvc1tpXTsKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
PiArICAgICAgICAgICAgIGlmICh6cG9zIDwgMCkgewo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgICByb3V0ZSB8PSBpIDw8Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBTVU44SV9N
SVhFUl9CTEVORF9ST1VURV9QSVBFX1NISUZUKGopOwo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgaisrOwo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAg
fQo+ID4gPiA+ID4gPiA+ICsgICAgIH0KPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gKyAg
ICAgcmVnbWFwX3VwZGF0ZV9iaXRzKG1peGVyLT5lbmdpbmUucmVncywKPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+IFNVTjhJX01JWEVSX0JMRU5EX1BJUEVfQ1RMKGJhc2UpLAo+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgU1VOOElfTUlYRVJfQkxFTkRf
UElQRV9DVExfRU5fTVNLLAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gcGlwZV9jdGwpOwo+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gKyAgICAgcmVnbWFwX3dyaXRl
KG1peGVyLT5lbmdpbmUucmVncywKPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgU1VO
OElfTUlYRVJfQkxFTkRfUk9VVEUoYmFzZSksIHJvdXRlKTsKPiA+ID4gPiA+ID4gPiArCj4gPiA+
ID4gPiA+ID4gKyAgICAgRFJNX0RFQlVHX0RSSVZFUigiQ29tbWl0dGluZyBjaGFuZ2VzXG4iKTsK
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFVzZSBkcm1fZGJnKCkuCj4gPiA+ID4gPiAKPiA+ID4g
PiA+IEFjY29yZGluZyB0bwo+ID4gPiA+ID4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xp
bnV4L2NvbW1pdC85OWE5NTQ4NzRlN2I5ZjBjODA1ODQ3NjU3NTUKPiA+ID4gPiA+IDkzYjMKPiA+
ID4gPiA+IGJlYgo+ID4gPiA+ID4gNTczMWE1I2RpZmYtYjBjZDJkNjgzYzZhZmJhYjdiZDU0MTcz
Y2ZkM2QzZWNSMjg5ICwKPiA+ID4gPiA+IERSTV9ERUJVR19EUklWRVIgdXNlcyBkcm1fZGJnLgo+
ID4gPiA+ID4gQWxzbywgdXNpbmcgZHJtX2RiZyB3aXRoIGNhdGVnb3J5IG1hY3JvIHdvdWxkIHJl
cXVpcmUgbGFyZ2VyIGluZGVudCwKPiA+ID4gPiA+IG1ha2luZyBoYXJkZXIgdG8gZml0IGluIDgw
IGNoYXJzIGxpbWl0Lgo+ID4gPiA+IAo+ID4gPiA+IEZyb20gd2hhdCBJIGNhbiBzZWUsIGNhdGVn
b3J5IGlzIGFscmVhZHkgZGVmaW5lZCBieSBtYWNybyBuYW1lLiBDaGVjawo+ID4gPiA+IGhlcmU6
Cj4gPiA+ID4gaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLW1pc2MvdHJlZS9p
bmNsdWRlL2RybS9kcm1fcHJpbnQuaAo+ID4gPiA+ICNuNDYKPiA+ID4gPiA1Cj4gPiA+ID4gCj4g
PiA+ID4gU28gaXQgc2hvdWxkIGJlIGFjdHVhbGx5IHNob3J0ZXIuCj4gPiA+IAo+ID4gPiBBaCwg
aXQgc29tZXRoaW5nIHZlcnkgcmVjZW50Lgo+ID4gPiBkcm1fZGJnIGFsc28gcmVxdWlyZSBkcm1f
ZGV2aWNlIHN0cnVjdAo+ID4gPiBEbyB5b3Uga25vdyB0aGUgYmVzdCB3YXkgdG8gZXh0cmFjdCBp
dCBmcm9tIGBzdHJ1Y3QgZW5naW5lYD8KPiA+IAo+ID4gSSBkb24ndCB0aGluayB0aGVyZSBpcyBh
IHdheS4gSSBndWVzcyB3ZSBjYW4gc29sdmUgdGhpcyBsYXRlci4gTWF4aW1lLCBhbnkKPiA+IHRo
b3VnaHRzPwo+ID4gCj4gPiBCZXN0IHJlZ2FyZHMsCj4gPiBKZXJuZWoKPiA+IAo+ID4gPiA+ID4g
QXJlIHRoZXJlIGFueSBwbGFucyB0byBkZXByZWNhdGUgRFJNX0RFQlVHX0RSSVZFUiBtYWNybz8K
PiA+ID4gPiAKPiA+ID4gPiBZZXMsIGF0IGxlYXN0IEkgdW5kZXJzdGFuZCBmb2xsb3dpbmcgY29t
bWl0IG1lc3NhZ2UgaW4gc3VjaCBtYW5uZXI6Cj4gPiA+ID4gaHR0cHM6Ly9jZ2l0LmZyZWVkZXNr
dG9wLm9yZy9kcm0vZHJtLW1pc2MvY29tbWl0Lz8KPiA+ID4gPiBpZD05M2NjZmE5YTRlY2E0ODIy
MTZjNWNhZjg4YmU3N2U1ZmZhMGQ3NDRhCj4gPiA+ID4gCj4gPiA+ID4gQmVzdCByZWdhcmRzLAo+
ID4gPiA+IEplcm5lago+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ICAgICAgIHJlZ21hcF93cml0ZShl
bmdpbmUtPnJlZ3MsIFNVTjhJX01JWEVSX0dMT0JBTF9EQlVGRiwKPiA+ID4gPiA+ID4gPiAgICAg
ICAKPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgU1VOOElfTUlYRVJfR0xPQkFMX0RC
VUZGX0VOQUJMRSk7Cj4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiA+
ID4gCj4gPiA+ID4gPiA+ID4gQEAgLTQyMiw2ICs0NjEsMTIgQEAgc3RhdGljIGludCBzdW44aV9t
aXhlcl9iaW5kKHN0cnVjdCBkZXZpY2UKPiA+ID4gPiA+ID4gPiAqZGV2LAo+ID4gPiA+ID4gPiA+
IHN0cnVjdAo+ID4gPiA+ID4gPiA+IGRldmljZSAqbWFzdGVyLCBtaXhlci0+ZW5naW5lLm9wcyA9
ICZzdW44aV9lbmdpbmVfb3BzOwo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ICAgICAgIG1p
eGVyLT5lbmdpbmUubm9kZSA9IGRldi0+b2Zfbm9kZTsKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiArICAgICBtaXhlci0+Y2hhbm5lbF96cG9zWzBdID0gLTE7Cj4gPiA+ID4gPiA+ID4gKyAg
ICAgbWl4ZXItPmNoYW5uZWxfenBvc1sxXSA9IC0xOwo+ID4gPiA+ID4gPiA+ICsgICAgIG1peGVy
LT5jaGFubmVsX3pwb3NbMl0gPSAtMTsKPiA+ID4gPiA+ID4gPiArICAgICBtaXhlci0+Y2hhbm5l
bF96cG9zWzNdID0gLTE7Cj4gPiA+ID4gPiA+ID4gKyAgICAgbWl4ZXItPmNoYW5uZWxfenBvc1s0
XSA9IC0xOwo+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IGZvciBsb29w
IHdvdWxkIGJlIGJldHRlciwgZXNwZWNpYWxseSB1c2luZyBwcm9wb3NlZCBtYWNyby4KPiA+ID4g
PiA+IAo+ID4gPiA+ID4gSSdsbCBwdXQgaXQgaW50byBhbHJlYWR5IGV4aXN0ZW50IGZvci1sb29w
IGJlbG93Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEJlc3QgcmVnYXJkcywKPiA+ID4gPiA+ID4g
SmVybmVqCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ICAgICAgIC8qCj4gPiA+ID4gPiA+ID4g
ICAgICAgCj4gPiA+ID4gPiA+ID4gICAgICAgICogV2hpbGUgdGhpcyBmdW5jdGlvbiBjYW4gZmFp
bCwgd2Ugc2hvdWxkbid0IGRvIGFueXRoaW5nCj4gPiA+ID4gPiA+ID4gICAgICAgICogaWYgdGhp
cyBoYXBwZW5zLiBTb21lIGVhcmx5IERFMiBEVCBlbnRyaWVzIGRvbid0Cj4gPiA+ID4gPiA+ID4g
ICAgICAgIHByb3ZpZGUKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX21peGVyLmgKPiA+ID4gPiA+ID4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9zdW40aS9zdW44aV9taXhlci5oIGluZGV4Cj4gPiA+ID4gPiA+ID4gOTE1NDc5
Y2MzMDc3Li45YzJmZjg3OTIzZDgKPiA+ID4gPiA+ID4gPiAxMDA2NDQKPiA+ID4gPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfbWl4ZXIuaAo+ID4gPiA+ID4gPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW44aV9taXhlci5oCj4gPiA+ID4gPiA+ID4gQEAg
LTE3OCw2ICsxNzgsOSBAQCBzdHJ1Y3Qgc3VuOGlfbWl4ZXIgewo+ID4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiA+ICAgICAgIHN0cnVjdCBjbGsgICAgICAgICAgICAgICAgICAgICAgKmJ1c19jbGs7
Cj4gPiA+ID4gPiA+ID4gICAgICAgc3RydWN0IGNsayAgICAgICAgICAgICAgICAgICAgICAqbW9k
X2NsazsKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gKyAgICAg
LyogLTEgbWVhbnMgdGhhdCBsYXllciBpcyBkaXNhYmxlZCAqLwo+ID4gPiA+ID4gPiA+ICsgICAg
IGludCBjaGFubmVsX3pwb3NbNV07Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gIH07Cj4g
PiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ICBzdGF0aWMgaW5saW5lIHN0cnVjdCBzdW44aV9t
aXhlciAqCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9zdW40aS9zdW44aV91aV9sYXllci5jCj4gPiA+ID4gPiA+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vc3VuNGkvc3VuOGlfdWlfbGF5ZXIuYyBpbmRleAo+ID4gPiA+ID4gPiA+IDg5MzA3Njcx
NjA3MC4uMjNjMmY0YjY4Yzg5Cj4gPiA+ID4gPiA+ID4gMTAwNjQ0Cj4gPiA+ID4gPiA+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX3VpX2xheWVyLmMKPiA+ID4gPiA+ID4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfdWlfbGF5ZXIuYwo+ID4gPiA+ID4gPiA+
IEBAIC0yNCwxMiArMjQsMTAgQEAKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAgI2luY2x1
ZGUgInN1bjhpX3VpX3NjYWxlci5oIgo+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiAgc3Rh
dGljIHZvaWQgc3VuOGlfdWlfbGF5ZXJfZW5hYmxlKHN0cnVjdCBzdW44aV9taXhlciAqbWl4ZXIs
Cj4gPiA+ID4gPiA+ID4gIGludAo+ID4gPiA+ID4gPiA+ICBjaGFubmVsLAo+ID4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IG92ZXJs
YXksIGJvb2wgZW5hYmxlLAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gdW5zaWduZWQgaW50IHpw
b3MsCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdW5zaWduZWQgaW50IG9sZF96cG9zKQo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgaW50IG92ZXJsYXksIGJvb2wgZW5hYmxlLAo+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gdW5zaWduZWQgaW50IHpwb3MpCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+
ICB7Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gLSAgICAgdTMyIHZhbCwgYmxkX2Jhc2Us
IGNoX2Jhc2U7Cj4gPiA+ID4gPiA+ID4gKyAgICAgdTMyIHZhbCwgY2hfYmFzZTsKPiA+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gPiAtICAgICBibGRfYmFzZSA9IHN1bjhpX2JsZW5kZXJfYmFzZSht
aXhlcik7Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gICAgICAgY2hfYmFzZSA9IHN1bjhp
X2NoYW5uZWxfYmFzZShtaXhlciwgY2hhbm5lbCk7Cj4gPiA+ID4gPiA+ID4gICAgICAgCj4gPiA+
ID4gPiA+ID4gICAgICAgRFJNX0RFQlVHX0RSSVZFUigiJXNhYmxpbmcgY2hhbm5lbCAlZCBvdmVy
bGF5ICVkXG4iLAo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IEBAIC00NCwzMiArNDIsNyBA
QCBzdGF0aWMgdm9pZCBzdW44aV91aV9sYXllcl9lbmFibGUoc3RydWN0Cj4gPiA+ID4gPiA+ID4g
c3VuOGlfbWl4ZXIKPiA+ID4gPiA+ID4gPiAqbWl4ZXIsIGludCBjaGFubmVsLCBTVU44SV9NSVhF
Ul9DSEFOX1VJX0xBWUVSX0FUVFIoY2hfYmFzZSwKPiA+ID4gPiA+ID4gPiBvdmVybGF5KSwKPiA+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgU1VOOElf
TUlYRVJfQ0hBTl9VSV9MQVlFUl9BVFRSX0VOLAo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICB2YWwpOwo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IC0gICAgIGlmICgh
ZW5hYmxlIHx8IHpwb3MgIT0gb2xkX3pwb3MpIHsKPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAg
IHJlZ21hcF91cGRhdGVfYml0cyhtaXhlci0+ZW5naW5lLnJlZ3MsCj4gPiA+ID4gPiA+ID4gLQo+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gU1VOOElfTUlYRVJfQkxFTkRfUElQRV9DVEwoYmxkX2Jh
c2UpLAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAtCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4g
PiBTVU44SV9NSVhFUl9CTEVORF9QSVBFX0NUTF9FTihvbGRfenBvcyksCj4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDApOwo+ID4gPiA+
ID4gPiA+IC0KPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgIHJlZ21hcF91cGRhdGVfYml0cyht
aXhlci0+ZW5naW5lLnJlZ3MsCj4gPiA+ID4gPiA+ID4gLQo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gU1VOOElfTUlYRVJfQkxFTkRfUk9VVEUoYmxkX2Jhc2UpLAo+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gPiAtCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBTVU44SV9NSVhFUl9CTEVORF9ST1VU
RV9QSVBFX01TSyhvbGRfenBvcyksCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDApOwo+ID4gPiA+ID4gPiA+IC0gICAgIH0KPiA+ID4g
PiA+ID4gPiAtCj4gPiA+ID4gPiA+ID4gLSAgICAgaWYgKGVuYWJsZSkgewo+ID4gPiA+ID4gPiA+
IC0gICAgICAgICAgICAgdmFsID0gU1VOOElfTUlYRVJfQkxFTkRfUElQRV9DVExfRU4oenBvcyk7
Cj4gPiA+ID4gPiA+ID4gLQo+ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgcmVnbWFwX3VwZGF0
ZV9iaXRzKG1peGVyLT5lbmdpbmUucmVncywKPiA+ID4gPiA+ID4gPiAtCj4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiBTVU44SV9NSVhFUl9CTEVORF9QSVBFX0NUTChibGRfYmFzZSksCj4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhbCwg
dmFsKTsKPiA+ID4gPiA+ID4gPiAtCj4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICB2YWwgPSBj
aGFubmVsIDw8Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBTVU44SV9NSVhFUl9CTEVORF9ST1VU
RV9QSVBFX1NISUZUKHpwb3MpOwo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAtCj4gPiA+ID4g
PiA+ID4gLSAgICAgICAgICAgICByZWdtYXBfdXBkYXRlX2JpdHMobWl4ZXItPmVuZ2luZS5yZWdz
LAo+ID4gPiA+ID4gPiA+IC0KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFNVTjhJX01JWEVSX0JM
RU5EX1JPVVRFKGJsZF9iYXNlKSwKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gLQo+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gU1VOOElfTUlYRVJfQkxFTkRfUk9VVEVfUElQRV9NU0soenBvcyks
Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHZhbCk7Cj4gPiA+ID4gPiA+ID4gLSAgICAgfQo+ID4gPiA+ID4gPiA+ICsgICAgIG1peGVy
LT5jaGFubmVsX3pwb3NbY2hhbm5lbF0gPSBlbmFibGUgPyB6cG9zIDogLTE7Cj4gPiA+ID4gPiA+
ID4gCj4gPiA+ID4gPiA+ID4gIH0KPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gIHN0YXRp
YyBpbnQgc3VuOGlfdWlfbGF5ZXJfdXBkYXRlX2Nvb3JkKHN0cnVjdCBzdW44aV9taXhlcgo+ID4g
PiA+ID4gPiA+ICAqbWl4ZXIsCj4gPiA+ID4gPiA+ID4gIGludAo+ID4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiA+IGNoYW5uZWwsIEBAIC0yMzUsMTEgKzIwOCw5IEBAIHN0YXRpYyB2b2lkCj4gPiA+
ID4gPiA+ID4gc3VuOGlfdWlfbGF5ZXJfYXRvbWljX2Rpc2FibGUoc3RydWN0IGRybV9wbGFuZSAq
cGxhbmUsIHN0cnVjdAo+ID4gPiA+ID4gPiA+IGRybV9wbGFuZV9zdGF0ZSAqb2xkX3N0YXRlKQo+
ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ICB7Cj4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4g
PiA+ICAgICAgIHN0cnVjdCBzdW44aV91aV9sYXllciAqbGF5ZXIgPQo+ID4gPiA+ID4gPiA+ICAg
ICAgIHBsYW5lX3RvX3N1bjhpX3VpX2xheWVyKHBsYW5lKTsKPiA+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gPiAtICAgICB1bnNpZ25lZCBpbnQgb2xkX3pwb3MgPSBvbGRfc3RhdGUtPm5vcm1hbGl6
ZWRfenBvczsKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAgICAgICBzdHJ1Y3Qgc3VuOGlf
bWl4ZXIgKm1peGVyID0gbGF5ZXItPm1peGVyOwo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+
IC0gICAgIHN1bjhpX3VpX2xheWVyX2VuYWJsZShtaXhlciwgbGF5ZXItPmNoYW5uZWwsCj4gPiA+
ID4gPiA+ID4gbGF5ZXItPm92ZXJsYXksCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBmYWxzZSwg
MCwKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
IG9sZF96cG9zKTsKPiA+ID4gPiA+ID4gPiArICAgICBzdW44aV91aV9sYXllcl9lbmFibGUobWl4
ZXIsIGxheWVyLT5jaGFubmVsLAo+ID4gPiA+ID4gPiA+IGxheWVyLT5vdmVybGF5LAo+ID4gPiA+
ID4gPiA+IGZhbHNlLAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gMCk7Cj4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ICBzdGF0aWMgdm9p
ZCBzdW44aV91aV9sYXllcl9hdG9taWNfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUKPiA+ID4gPiA+
ID4gPiAgKnBsYW5lLAo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IEBAIC0yNDcsMTIgKzIx
OCwxMSBAQCBzdGF0aWMgdm9pZAo+ID4gPiA+ID4gPiA+IHN1bjhpX3VpX2xheWVyX2F0b21pY191
cGRhdGUoc3RydWN0Cj4gPiA+ID4gPiA+ID4gZHJtX3BsYW5lICpwbGFuZSwgewo+ID4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+ICAgICAgIHN0cnVjdCBzdW44aV91aV9sYXllciAqbGF5ZXIgPQo+
ID4gPiA+ID4gPiA+ICAgICAgIHBsYW5lX3RvX3N1bjhpX3VpX2xheWVyKHBsYW5lKTsKPiA+ID4g
PiA+ID4gPiAgICAgICB1bnNpZ25lZCBpbnQgenBvcyA9IHBsYW5lLT5zdGF0ZS0+bm9ybWFsaXpl
ZF96cG9zOwo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IC0gICAgIHVuc2lnbmVkIGludCBv
bGRfenBvcyA9IG9sZF9zdGF0ZS0+bm9ybWFsaXplZF96cG9zOwo+ID4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiA+ICAgICAgIHN0cnVjdCBzdW44aV9taXhlciAqbWl4ZXIgPSBsYXllci0+bWl4ZXI7
Cj4gPiA+ID4gPiA+ID4gICAgICAgCj4gPiA+ID4gPiA+ID4gICAgICAgaWYgKCFwbGFuZS0+c3Rh
dGUtPnZpc2libGUpIHsKPiA+ID4gPiA+ID4gPiAgICAgICAKPiA+ID4gPiA+ID4gPiAgICAgICAg
ICAgICAgIHN1bjhpX3VpX2xheWVyX2VuYWJsZShtaXhlciwgbGF5ZXItPmNoYW5uZWwsCj4gPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgbGF5ZXItPm92ZXJsYXksIGZhbHNlLCAwLAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gb2xk
X3pwb3MpOwo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBsYXllci0+b3ZlcmxheSwgZmFsc2UsIDApOwo+ID4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4gPiA+ID4gPiA+ICAgICAgIAo+
ID4gPiA+ID4gPiA+ICAgICAgIH0KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBAQCAtMjYz
LDcgKzIzMyw3IEBAIHN0YXRpYyB2b2lkCj4gPiA+ID4gPiA+ID4gc3VuOGlfdWlfbGF5ZXJfYXRv
bWljX3VwZGF0ZShzdHJ1Y3QKPiA+ID4gPiA+ID4gPiBkcm1fcGxhbmUgKnBsYW5lLCBzdW44aV91
aV9sYXllcl91cGRhdGVfYnVmZmVyKG1peGVyLAo+ID4gPiA+ID4gPiA+IGxheWVyLT5jaGFubmVs
LAo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgbGF5ZXItPm92ZXJsYXksIHBsYW5lKTsKPiA+ID4gPiA+ID4gPiAgICAgICAKPiA+
ID4gPiA+ID4gPiAgICAgICBzdW44aV91aV9sYXllcl9lbmFibGUobWl4ZXIsIGxheWVyLT5jaGFu
bmVsLAo+ID4gPiA+ID4gPiA+ICAgICAgIGxheWVyLT5vdmVybGF5LAo+ID4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICB0cnVlLCB6cG9zLCBvbGRf
enBvcyk7Cj4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHRydWUsIHpw
b3MpOwo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiA+ID4gIAo+ID4g
PiA+ID4gPiA+ICBzdGF0aWMgc3RydWN0IGRybV9wbGFuZV9oZWxwZXJfZnVuY3MKPiA+ID4gPiA+
ID4gPiAgc3VuOGlfdWlfbGF5ZXJfaGVscGVyX2Z1bmNzID0KPiA+ID4gPiA+ID4gPiAgewo+ID4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3Vu
NGkvc3VuOGlfdmlfbGF5ZXIuYwo+ID4gPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL3N1bjRp
L3N1bjhpX3ZpX2xheWVyLmMgaW5kZXgKPiA+ID4gPiA+ID4gPiA0MmQ0NDVkMjM3NzMuLjk3Y2Jj
OThiZjc4MQo+ID4gPiA+ID4gPiA+IDEwMDY0NAo+ID4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9zdW40aS9zdW44aV92aV9sYXllci5jCj4gPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3N1bjRpL3N1bjhpX3ZpX2xheWVyLmMKPiA+ID4gPiA+ID4gPiBAQCAtMTcsOCAr
MTcsNyBAQAo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ICAjaW5jbHVkZSAic3VuOGlfdmlf
c2NhbGVyLmgiCj4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ICBzdGF0aWMgdm9pZCBzdW44
aV92aV9sYXllcl9lbmFibGUoc3RydWN0IHN1bjhpX21peGVyICptaXhlciwKPiA+ID4gPiA+ID4g
PiAgaW50Cj4gPiA+ID4gPiA+ID4gIGNoYW5uZWwsCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+
ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgb3ZlcmxheSwgYm9vbCBlbmFi
bGUsCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiB1bnNpZ25lZCBpbnQgenBvcywKPiA+ID4gPiA+
ID4gCj4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25l
ZCBpbnQgb2xkX3pwb3MpCj4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBpbnQgb3ZlcmxheSwgYm9vbCBlbmFibGUsCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiB1
bnNpZ25lZCBpbnQgenBvcykKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gIHsKPiA+ID4gPiA+
ID4gPiAgCj4gPiA+ID4gPiA+ID4gICAgICAgdTMyIHZhbCwgYmxkX2Jhc2UsIGNoX2Jhc2U7Cj4g
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gQEAgLTM3LDMyICszNiw3IEBAIHN0YXRpYyB2b2lk
IHN1bjhpX3ZpX2xheWVyX2VuYWJsZShzdHJ1Y3QKPiA+ID4gPiA+ID4gPiBzdW44aV9taXhlcgo+
ID4gPiA+ID4gPiA+ICptaXhlciwgaW50IGNoYW5uZWwsIFNVTjhJX01JWEVSX0NIQU5fVklfTEFZ
RVJfQVRUUihjaF9iYXNlLAo+ID4gPiA+ID4gPiA+IG92ZXJsYXkpLAo+ID4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICBTVU44SV9NSVhFUl9DSEFOX1ZJ
X0xBWUVSX0FUVFJfRU4sCj4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgIHZh
bCk7Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gLSAgICAgaWYgKCFlbmFibGUgfHwgenBv
cyAhPSBvbGRfenBvcykgewo+ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgcmVnbWFwX3VwZGF0
ZV9iaXRzKG1peGVyLT5lbmdpbmUucmVncywKPiA+ID4gPiA+ID4gPiAtCj4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiBTVU44SV9NSVhFUl9CTEVORF9QSVBFX0NUTChibGRfYmFzZSksCj4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+IC0KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFNVTjhJX01JWEVS
X0JMRU5EX1BJUEVfQ1RMX0VOKG9sZF96cG9zKSwKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMCk7Cj4gPiA+ID4gPiA+ID4gLQo+ID4g
PiA+ID4gPiA+IC0gICAgICAgICAgICAgcmVnbWFwX3VwZGF0ZV9iaXRzKG1peGVyLT5lbmdpbmUu
cmVncywKPiA+ID4gPiA+ID4gPiAtCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBTVU44SV9NSVhF
Ul9CTEVORF9ST1VURShibGRfYmFzZSksCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IC0KPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFNVTjhJX01JWEVSX0JMRU5EX1JPVVRFX1BJUEVfTVNLKG9s
ZF96cG9zKSwKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgMCk7Cj4gPiA+ID4gPiA+ID4gLSAgICAgfQo+ID4gPiA+ID4gPiA+IC0KPiA+
ID4gPiA+ID4gPiAtICAgICBpZiAoZW5hYmxlKSB7Cj4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAg
ICB2YWwgPSBTVU44SV9NSVhFUl9CTEVORF9QSVBFX0NUTF9FTih6cG9zKTsKPiA+ID4gPiA+ID4g
PiAtCj4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICByZWdtYXBfdXBkYXRlX2JpdHMobWl4ZXIt
PmVuZ2luZS5yZWdzLAo+ID4gPiA+ID4gPiA+IC0KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFNV
TjhJX01JWEVSX0JMRU5EX1BJUEVfQ1RMKGJsZF9iYXNlKSwKPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFsLCB2YWwpOwo+ID4gPiA+
ID4gPiA+IC0KPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgIHZhbCA9IGNoYW5uZWwgPDwKPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFNVTjhJX01JWEVSX0JMRU5EX1JPVVRFX1BJUEVfU0hJRlQo
enBvcyk7Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IC0KPiA+ID4gPiA+ID4gPiAtICAgICAg
ICAgICAgIHJlZ21hcF91cGRhdGVfYml0cyhtaXhlci0+ZW5naW5lLnJlZ3MsCj4gPiA+ID4gPiA+
ID4gLQo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gU1VOOElfTUlYRVJfQkxFTkRfUk9VVEUoYmxk
X2Jhc2UpLAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAtCj4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiBTVU44SV9NSVhFUl9CTEVORF9ST1VURV9QSVBFX01TSyh6cG9zKSwKPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFsKTsKPiA+
ID4gPiA+ID4gPiAtICAgICB9Cj4gPiA+ID4gPiA+ID4gKyAgICAgbWl4ZXItPmNoYW5uZWxfenBv
c1tjaGFubmVsXSA9IGVuYWJsZSA/IHpwb3MgOiAtMTsKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiAgfQo+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiAgc3RhdGljIGludCBzdW44aV92
aV9sYXllcl91cGRhdGVfY29vcmQoc3RydWN0IHN1bjhpX21peGVyCj4gPiA+ID4gPiA+ID4gICpt
aXhlciwKPiA+ID4gPiA+ID4gPiAgaW50Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gY2hh
bm5lbCwgQEAgLTM1MCwxMSArMzI0LDkgQEAgc3RhdGljIHZvaWQKPiA+ID4gPiA+ID4gPiBzdW44
aV92aV9sYXllcl9hdG9taWNfZGlzYWJsZShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0
Cj4gPiA+ID4gPiA+ID4gZHJtX3BsYW5lX3N0YXRlICpvbGRfc3RhdGUpCj4gPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+ID4gIHsKPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gICAgICAgc3Ry
dWN0IHN1bjhpX3ZpX2xheWVyICpsYXllciA9Cj4gPiA+ID4gPiA+ID4gICAgICAgcGxhbmVfdG9f
c3VuOGlfdmlfbGF5ZXIocGxhbmUpOwo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IC0gICAg
IHVuc2lnbmVkIGludCBvbGRfenBvcyA9IG9sZF9zdGF0ZS0+bm9ybWFsaXplZF96cG9zOwo+ID4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ICAgICAgIHN0cnVjdCBzdW44aV9taXhlciAqbWl4ZXIg
PSBsYXllci0+bWl4ZXI7Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gLSAgICAgc3VuOGlf
dmlfbGF5ZXJfZW5hYmxlKG1peGVyLCBsYXllci0+Y2hhbm5lbCwKPiA+ID4gPiA+ID4gPiBsYXll
ci0+b3ZlcmxheSwKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IGZhbHNlLCAwLAo+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgb2xkX3pwb3MpOwo+
ID4gPiA+ID4gPiA+ICsgICAgIHN1bjhpX3ZpX2xheWVyX2VuYWJsZShtaXhlciwgbGF5ZXItPmNo
YW5uZWwsCj4gPiA+ID4gPiA+ID4gbGF5ZXItPm92ZXJsYXksCj4gPiA+ID4gPiA+ID4gZmFsc2Us
Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAwKTsKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4g
IH0KPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gIHN0YXRpYyB2b2lkIHN1bjhpX3ZpX2xh
eWVyX2F0b21pY191cGRhdGUoc3RydWN0IGRybV9wbGFuZQo+ID4gPiA+ID4gPiA+ICAqcGxhbmUs
Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gQEAgLTM2MiwxMiArMzM0LDExIEBAIHN0YXRp
YyB2b2lkCj4gPiA+ID4gPiA+ID4gc3VuOGlfdmlfbGF5ZXJfYXRvbWljX3VwZGF0ZShzdHJ1Y3QK
PiA+ID4gPiA+ID4gPiBkcm1fcGxhbmUgKnBsYW5lLCB7Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+ID4gICAgICAgc3RydWN0IHN1bjhpX3ZpX2xheWVyICpsYXllciA9Cj4gPiA+ID4gPiA+ID4g
ICAgICAgcGxhbmVfdG9fc3VuOGlfdmlfbGF5ZXIocGxhbmUpOwo+ID4gPiA+ID4gPiA+ICAgICAg
IHVuc2lnbmVkIGludCB6cG9zID0gcGxhbmUtPnN0YXRlLT5ub3JtYWxpemVkX3pwb3M7Cj4gPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gLSAgICAgdW5zaWduZWQgaW50IG9sZF96cG9zID0gb2xk
X3N0YXRlLT5ub3JtYWxpemVkX3pwb3M7Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gICAg
ICAgc3RydWN0IHN1bjhpX21peGVyICptaXhlciA9IGxheWVyLT5taXhlcjsKPiA+ID4gPiA+ID4g
PiAgICAgICAKPiA+ID4gPiA+ID4gPiAgICAgICBpZiAoIXBsYW5lLT5zdGF0ZS0+dmlzaWJsZSkg
ewo+ID4gPiA+ID4gPiA+ICAgICAgIAo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgc3VuOGlf
dmlfbGF5ZXJfZW5hYmxlKG1peGVyLCBsYXllci0+Y2hhbm5lbCwKPiA+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYXllci0+b3Zl
cmxheSwgZmFsc2UsIDAsCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBvbGRfenBvcyk7Cj4gPiA+
ID4gPiA+IAo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGxheWVyLT5vdmVybGF5LCBmYWxzZSwgMCk7Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4g
ICAgICAgICAgICAgICByZXR1cm47Cj4gPiA+ID4gPiA+ID4gICAgICAgCj4gPiA+ID4gPiA+ID4g
ICAgICAgfQo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IEBAIC0zNzgsNyArMzQ5LDcgQEAg
c3RhdGljIHZvaWQKPiA+ID4gPiA+ID4gPiBzdW44aV92aV9sYXllcl9hdG9taWNfdXBkYXRlKHN0
cnVjdAo+ID4gPiA+ID4gPiA+IGRybV9wbGFuZSAqcGxhbmUsIHN1bjhpX3ZpX2xheWVyX3VwZGF0
ZV9idWZmZXIobWl4ZXIsCj4gPiA+ID4gPiA+ID4gbGF5ZXItPmNoYW5uZWwsCj4gPiA+ID4gPiA+
ID4gCj4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYXll
ci0+b3ZlcmxheSwgcGxhbmUpOwo+ID4gPiA+ID4gPiA+ICAgICAgIAo+ID4gPiA+ID4gPiA+ICAg
ICAgIHN1bjhpX3ZpX2xheWVyX2VuYWJsZShtaXhlciwgbGF5ZXItPmNoYW5uZWwsCj4gPiA+ID4g
PiA+ID4gICAgICAgbGF5ZXItPm92ZXJsYXksCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgIHRydWUsIHpwb3MsIG9sZF96cG9zKTsKPiA+ID4g
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgdHJ1ZSwgenBvcyk7Cj4gPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+ID4gIH0KPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gIHN0
YXRpYyBzdHJ1Y3QgZHJtX3BsYW5lX2hlbHBlcl9mdW5jcwo+ID4gPiA+ID4gPiA+ICBzdW44aV92
aV9sYXllcl9oZWxwZXJfZnVuY3MgPQo+ID4gPiA+ID4gPiA+ICB7CgoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
