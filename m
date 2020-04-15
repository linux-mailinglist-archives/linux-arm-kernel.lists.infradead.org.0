Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE1E1AB017
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 19:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBkpwd+aUC2DRpiibX9b8OY8uJVk4yfUVpqdOryGP1Q=; b=RkLwjUSi2pscRM
	UX0oF1U3s55iU+JyQ0YSwlk9QzrDXw+WoNOLUU+K2gk3CjZIJa7SagP1BTwZgOfREWHpXk2xxjQFQ
	JMkVA2rD7sw1II+j3q9io8DbfRbbyr8KO3ZgAm0zN1f6Qxzc6CktfGFIdfCfKSnqDY2cJrmXX2UoS
	yxWbCkr4VedWBEzfLjHEqeVqQPadF7+pV+T8kQKeyzhvIAxNuqNPxEJllIJgtXQhj2QacEI63qEGi
	M7PuPS/ge7sfgB9UmZ2B9igKl7NaEbsdhoa1fAj0Gcdq+7qsIBrYgdWDMFRH8J0b4eFPMru5AKU2K
	T8fb/70oAXfkuyX9jpfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOmDV-00024I-NY; Wed, 15 Apr 2020 17:52:53 +0000
Received: from mailoutvs35.siol.net ([185.57.226.226] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOmDN-00023G-HB
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 17:52:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 7DA5B523E2D;
 Wed, 15 Apr 2020 19:52:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Mn71HVJwTzMB; Wed, 15 Apr 2020 19:52:38 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 1B19B52389F;
 Wed, 15 Apr 2020 19:52:38 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 832A5523E96;
 Wed, 15 Apr 2020 19:52:34 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH] drm/sun4i: hdmi ddc clk: Fix size of m divider
Date: Wed, 15 Apr 2020 19:52:28 +0200
Message-ID: <1785843.taCxCBeP46@jernej-laptop>
In-Reply-To: <20200415104214.ndkkxfnufkxgu53r@gilmour.lan>
References: <20200413095457.1176754-1-jernej.skrabec@siol.net>
 <1742537.tdWV9SEqCh@jernej-laptop>
 <20200415104214.ndkkxfnufkxgu53r@gilmour.lan>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_105245_729753_86D99326 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.226 listed in list.dnswl.org]
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
Cc: David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHNyZWRhLCAxNS4gYXByaWwgMjAyMCBvYiAxMjo0MjoxNCBDRVNUIGplIE1heGltZSBSaXBh
cmQgbmFwaXNhbChhKToKPiBPbiBNb24sIEFwciAxMywgMjAyMCBhdCAwNjowOTowOFBNICswMjAw
LCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiBEbmUgcG9uZWRlbGplaywgMTMuIGFwcmlsIDIw
MjAgb2IgMTY6MTI6MzkgQ0VTVCBqZSBDaGVuLVl1IFRzYWkgCm5hcGlzYWwoYSk6Cj4gPiA+IE9u
IE1vbiwgQXByIDEzLCAyMDIwIGF0IDY6MTEgUE0gQ2hlbi1ZdSBUc2FpIDx3ZW5zQGNzaWUub3Jn
PiB3cm90ZToKPiA+ID4gPiBPbiBNb24sIEFwciAxMywgMjAyMCBhdCA1OjU1IFBNIEplcm5laiBT
a3JhYmVjCj4gPiA+ID4gPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gCj4gPiB3cm90ZToK
PiA+ID4gPiA+IG0gZGl2aWRlciBpbiBEREMgY2xvY2sgcmVnaXN0ZXIgaXMgNCBiaXRzIHdpZGUu
IEZpeCB0aGF0Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBGaXhlczogOWM1NjgxMDExYTBjICgiZHJt
L3N1bjRpOiBBZGQgSERNSSBzdXBwb3J0IikKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEplcm5l
aiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+ID4gPiAKPiA+ID4gPiBSZXZp
ZXdlZC1ieTogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGNzaWUub3JnPgo+ID4gPiAKPiA+ID4gQ2Mgc3Rh
YmxlPwo+ID4gCj4gPiBJIGRvbid0IHRoaW5rIGl0J3MgbmVjZXNzYXJ5Ogo+ID4gMS4gSXQgZG9l
c24ndCBjaGFuZ2UgbXVjaCAoYW55dGhpbmc/KSBmb3IgbWUgd2hlbiByZWFkaW5nIEVESUQuIEkg
ZG9uJ3QKPiA+IHRoaW5rIGl0J3Mgc3VwZXIgaW1wb3J0YW50IHRvIGhhdmUgcHJlY2lzZSBEREMg
Y2xvY2sgaW4gb3JkZXIgdG8gcHJvcGVybHkKPiA+IHJlYWQgRURJRC4gMi4gTm8gbWF0dGVyIGlm
IGl0IGhhcyAiQ2Mgc3RhYmxlIiB0YWcgb3Igbm90LCBpdCB3aWxsIGJlCj4gPiBldmVudHVhbGx5
IHBpY2tlZCBmb3Igc3RhYmxlIGR1ZSB0byBmaXhlcyB0YWcuCj4gPiAKPiA+IFRoaXMgd2FzIG9u
bHkgc21hbGwgb2JzZXJ2YXRpb24gd2hlbiBJIHdhcyByZXNlYXJjaGluZyBFRElEIHJlYWRvdXQg
aXNzdWUKPiA+IG9uIEEyMCBib2FyZCwgYnV0IHNhZGx5LCBJIHdhc24ndCBhYmxlIHRvIGZpZ3Vy
ZSBvdXQgd2h5IHJlYWRpbmcgaXQKPiA+IHNvbWV0aW1lcyBmYWlscy4gSSBub3RpY2VkIHNpbWls
YXIgaXNzdWUgb24gU29DcyB3aXRoIERFMiAobW9zdAo+ID4gcHJvbWluZW50bHkgb24gT3Jhbmdl
UGkgUEMyIC0gSDUpLCBidXQgdGhlcmUgd2FzIGVhc3kgd29ya2Fyb3VuZCAtIEkganVzdAo+ID4g
ZGlzYWJsZWQgdmlkZW8gZHJpdmVyIGluIFUtIEJvb3QuIEhvd2V2ZXIsIGlmIEEyMCBkaXNwbGF5
IGRyaXZlciBnZXRzCj4gPiBkaXNhYmxlZCBpbiBVLUJvb3QsIGl0IHRvdGFsbHkgYnJlYWtzIHZp
ZGVvIG91dHB1dCBvbiBteSBUViB3aGVuIExpbnV4Cj4gPiBib290cyAobm8gb3V0cHV0KS4gSSBn
dWVzcyB0aGVyZSBpcyBtb3JlIGZ1bmRhbWVudGFsIHByb2JsZW0gd2l0aCBjbG9ja3MKPiA+IHRo
YW4ganVzdCBmaWVsZCBzaXplLiBJIHRoaW5rIHdlIHNob3VsZCBhZGQgbW9yZSBjb25zdHJhaW50
cyBpbiBjbG9jawo+ID4gZHJpdmVyLCBsaWtlIHByZXNldCBzb21lIGNsb2NrIHBhcmVudHMgYW5k
IG5vdCBhbGxvdyB0byBjaGFuZ2UgcGFyZW50cwo+ID4gd2hlbiBzZXR0aW5nIHJhdGUsIGJ1dCBj
YXJlZnVsbHksIHNvIHNpbXBsZWZiIGRvZXNuJ3QgYnJlYWsuIFN1Y2gKPiA+IGNvbnN0cmFpbnRz
IHNob3VsZCBhbHNvIHNvbHZlIHByb2JsZW1zIHdpdGggZHVhbCBoZWFkIHNldHVwcy4KPiBJIGRp
c2FncmVlIGhlcmUuIERvaW5nIGFsbCBzb3J0cyBvZiBzcGVjaWFsIGNhc2UganVzdCBkb2Vzbid0
IHNjYWxlLAo+IGFuZCB3ZSdsbCBuZXZlciBoYXZlIHRoZSBzcGVjaWFsIGNhc2VzIHNvcnRlZCBv
dXQgb24gYWxsIHRoZSBib2FyZHMKPiAoYW5kIGl0J3MgYSBuaWdodG1hcmUgdG8gbWFpbnRhaW4p
Lgo+IAo+IEVzcGVjaWFsbHkgc2luY2UgaXQncyBiYXNpY2FsbHkgcHV0dGluZyBhIGJsYW5rZXQg
b3ZlciB0aGUgYWN0dWFsCj4gaXNzdWUgYW5kIGxvb2tpbmcgdGhlIG90aGVyIHdheS4gSWYgdGhl
cmUncyBzb21ldGhpbmcgd3Jvbmcgd2l0aCBob3cKPiB3ZSBkZWFsIHdpdGggKHJlKXBhcmVudGlu
Zywgd2Ugc2hvdWxkIGZpeCB0aGF0LiBJdCBpbXBhY3RzIG1vcmUgdGhhbgo+IGp1c3QgRFJNLCBh
bmQgYWxsIHRoZSBTb0NzLgoKSSBhZ3JlZSB3aXRoIHlvdSB0aGF0IGF1dG9tYXRpYyBzb2x1dGlv
biB3b3VsZCBiZSBiZXN0LCBidXQgSSBqdXN0IGRvbid0IHNlZSAKaXQgaG93IGl0IHdvdWxkIGJl
IGRvbmUuIER1YWwgaGVhZCBkaXNwbGF5IHBpcGVsaW5lIGlzIHByZXR0eSBjb21wbGV4IGZvciAK
Y2xvY2sgZHJpdmVyIHRvIGdldCBpdCByaWdodCBvbiBpdCdzIG93bi4gVGhlcmUgYXJlIGRpZmZl
cmVudCBwb3NzaWJsZSBzZXR1cHMgCmFuZCBzb21lIG9mIHRoZW0gYXJlIGhvdCBwbHVnZ2FibGUs
IGxpa2UgSERNSS4gQW5kIHRoZXJlIGFyZSBhbHNvIFNvQyBzcGVjaWZpYyAKcXVpcmtzLCBsaWtl
IEE2NCwgd2hlcmUgZm9yIHNvbWUgcmVhc29uLCBNSVBJIERQSFkgYW5kIEhETUkgUEhZIHNoYXJl
IHNhbWUgCmNsb2NrIHBhcmVudCAtIFBMTF9WSURFTzAuIFRlY2huaWNhbGx5LCBNSVBJIERQSFkg
Y2FuIGJlIGNsb2NrZWQgZnJvbSAKUExMX1BFUklQSDAgKGZpeGVkIHRvIDYwMCBNSHopLCBidXQg
dGhhdCdzIG5vdCByZWFsbHkgaGVscGZ1bC4gSSdtIG5vdCBldmVuIApzdXJlIGlmIHRoZXJlIGlz
IGFueSBnb29kIHNvbHV0aW9uIHRvIHRoaXMgLSBjZXJ0YWlubHkgSERNSSBhbmQgTUlQSSBjYW4n
dCAKY2xhaW0gZXhjbHVzaXZpdHkgYW5kIHNvbWVob3cgYmVzdCBjb21tb24gcmF0ZSBtdXN0IGJl
IGZvdW5kIGZvciBQTExfVklERU8wLCAKaWYgdGhhdCdzIGV2ZW4gcG9zc2libGUuIEkgd2FzIHN1
cmUgdGhhdCBIRE1JIFBIWSBvbiBBNjQgY2FuIGJlIGNsb2NrZWQgZnJvbSAKUExMX1ZJREVPMSwg
d2hpY2ggd291bGQgc29sdmUgbWFpbiBpc3N1ZSwgYnV0IHRvIGRhdGUsIEkgZGlkbid0IGZpbmQg
YW55IHdheSB0byAKZG8gdGhhdC4KClRoYXQncyBwcmV0dHkgb2ZmIHRvcGljLCBzbyBJIGhvcGUg
b3JpZ2luYWwgcGF0Y2ggY2FuIGJlIG1lcmdlZCBhcy1pcy4KCkJlc3QgcmVnYXJkcywKSmVybmVq
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
