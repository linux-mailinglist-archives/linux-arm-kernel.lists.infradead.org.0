Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B206112A52
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:38:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nXLX/MHJZuUA8WT5gj4ARKbszyS/wTTvviNhaJxy0sw=; b=S9BHJqYU4ES70sQHHpp2O1B7P
	BPHfFPfnWbjtK9WGgiJ7xeh1+FpEC6ARY3OT+XVN+R4VLVKZMY6qd/R1wXi5tk+7VeBt9gkF1tfaG
	K+IWiU3tT+8Hgu76Jo6Kiohn4tepE8LVdtnJGcrRaizWm9ydD/ABggAOueWgH7UBwZOoCXwarCPL1
	yeEqdVvhWssPi3ndbJjTa6BnnyD+qdpew7+5jMgp8hqptv6iNuIx/li5ZWcR97l/6RuBL2mENK30Q
	8/VaDoOLkq6W/eHecUmMl/3AOna5cTiMnOZA5IjWwxcPLaXwc8beIHLmB3UK19xFyVkEsFBVPG9Kl
	SRj39rwLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSzE-0008U6-QW; Wed, 04 Dec 2019 11:38:28 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSz6-0008TI-Ut; Wed, 04 Dec 2019 11:38:22 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1icSz1-0001Pc-Ih; Wed, 04 Dec 2019 12:38:15 +0100
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: perf record doesn't work on rtd129x SoC
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 04 Dec 2019 11:38:15 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1b2d2bc3-afcf-02c3-ccd6-e2a227c23fd3@arm.com>
References: <20191204045559.GA10458@udknight>
 <f90748d0-8112-3aa8-0c88-e35a8d6e72d3@suse.de>
 <1b2d2bc3-afcf-02c3-ccd6-e2a227c23fd3@arm.com>
Message-ID: <1892ab83960fbdcdbb49c141577f2c11@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: robin.murphy@arm.com, afaerber@suse.de, udknight@gmail.com,
 mark.rutland@arm.com, linux-realtek-soc@lists.infradead.org,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_033821_142435_FA072E13 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-realtek-soc@lists.infradead.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Wang YanQing <udknight@gmail.com>, linux-soc@vger.kernel.org,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMi0wNCAxMToyMCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMTktMTItMDQg
NzoyOCBhbSwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+PiBIaSBZYW5RaW5nLAo+PiArIExBS01M
ICsgTWFyayArIFdpbGwKPj4gQW0gMDQuMTIuMTkgdW0gMDU6NTUgc2NocmllYiBXYW5nIFlhblFp
bmc6Cj4+PiBJIHVzZSAicGVyZiByZWNvcmQiIHRvIGRlYnVnIHBlcmZvcm1hbmNlIGlzc3VlIG9u
IFJURDEyOTYgU09DLCBpdCAKPj4+IGRvZXMndCB3b3JrLCBidXQKPj4+IHRoZSAicGVyZiBzdGF0
IiBpcyBvayEKPj4gVGhhbmtzIGZvciB0aGUgcmVwb3J0IC0gd2hpY2ggYm9hcmQsIGJyYW5jaCBh
bmQgKGJhc2UpIHRhZyBhcmUgeW91Cj4+IHRlc3RpbmcgYWdhaW5zdD8gQW5kIGFyZSB5b3UgYnVp
bGRpbmcgcGVyZiB5b3Vyc2VsZiBmcm9tIGtlcm5lbCAKPj4gc291cmNlcywKPj4gb3IgYXJlIHlv
dSB1c2luZyBzb21lIGRpc3RybyBwYWNrYWdlPwo+PiBJIG9ubHkgaGF2ZSBCdXN5Ym94IGluIG15
IGluaXRyZCBvbiBEUzQxODsgSSBoYXZlIG5vdCB0ZXN0ZWQgcGVyZi4KPj4KPj4+IEFmdGVyIHNv
bWUgZGlnIGluIHRoZSBrZXJuZWwsIEkgZmluZCB0aGUgcmVhc29uIGlzIG5vIHBtdSBvdmVyZmxv
dyAKPj4+IGludGVycnVwdCwgSSB0aGluawo+Pj4gYmVsb3cgcG11IGNvbmZpZ3VyYXRpb24gaXNu
J3QgcmlnaHQgZm9yIFJURDEyOTY6Cj4+PiAiCj4+PiAgICAgICAgICBhcm1fcG11OiBhcm0tcG11
IHsKPj4+ICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE1My1wbXUi
Owo+Pj4gICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDggSVJRX1RZUEVf
TEVWRUxfSElHSD47Cj4+PiAgICAgICAgICB9Owo+Pj4gIgo+Pj4KPj4+IFdlIG5lZWQgNCBQTVUg
U1BJIGZvciBSVEQxMjk2ICg0IGNvcmVzKSwgYW5kIEkgZ3Vlc3MgdGhlIDQ4IGlzbid0IAo+Pj4g
cmlnaHQgdG9vLgo+PiBOb3RlIHRoYXQgYWJvdmUgcnRkMTI5eC5kdHNpIHNuaXBwZXQgaXMgbm90
IGNvbXBsZXRlLiBTZWUgCj4+IHJ0ZDEyOTYuZHRzaToKPj4gJmFybV9wbXUgewo+PiAJaW50ZXJy
dXB0LWFmZmluaXR5ID0gPCZjcHUwPiwgPCZjcHUxPiwgPCZjcHUyPiwgPCZjcHUzPjsKPj4gfTsK
Pgo+IFRoYXQgZG9lc24ndCBoZWxwIG11Y2gsIHNpbmNlIDQgYWZmaW5pdGllcyBmb3Igb25lIFNQ
SSBpcyByYXRoZXIgCj4gbm9uc2Vuc2ljYWwuCj4KPj4gNDggYW5kIGhpZ2gvNCBtYXRjaCB3aGF0
IEkgc2VlIGluIHRoZSBsYXRlc3QgQlNQOgo+PiAKPj4gaHR0cHM6Ly9naXRodWIuY29tL0JQSS1T
SU5PVk9JUC9CUEktTTQtYnNwL2Jsb2IvbWFzdGVyL2xpbnV4LXJ0ay9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JlYWx0ZWsvcnRkMTI5eC9ydGQtMTI5Ni5kdHNpI0wxMTYKPj4KPj4+IEFueSBzdWdnZXN0
aW9uIGlzIHdlbGNvbWUuCj4+Pgo+Pj4gVGhhbmtzIQo+PiBUaGUgb25seSBkaWZmZXJlbmNlIEkg
c2VlIGlzICJhcm0sY29ydGV4LWE1My1wbXUiIHZzLiAKPj4gImFybSxhcm12OC1wbXV2MyIuCj4+
IEJ5IG15IHJlYWRpbmcgb2YgYXJjaC9hcm02NC9rZXJuZWwvcGVyZl9ldmVudC5jIHRoZSBvbmx5
IGRpZmZlcmVuY2UKPj4gYmV0d2VlbiB0aGUgdHdvIHNob3VsZCBiZSB0aGUgbmFtZSBhbmQgYW4g
ZXh0cmEgY2FjaGVfbWFwLiBZb3UgY291bGQgCj4+IHRyeQo+PiB0aGUgb3RoZXIgY29tcGF0aWJs
ZSBzdHJpbmcgaW4geW91ciAuZHRzLCBidXQgSSBkb3VidCBpdCdsbCBoZWxwLgo+PiBIb3BlZnVs
bHkgdGhlIFJlYWx0ZWsgb3IgQXJtIGd1eXMgY2FuIHNoZWQgc29tZSBsaWdodC4KPgo+IElmIHRo
ZSBTb0MgcmVhbGx5IGhhcyBhbGwgNCBvdmVyZmxvdyBpbnRlcnJ1cHRzIGNvbWJpbmVkIGludG8g
YQo+IHNpbmdsZSBTUEkgbGluZSwgdGhlbiBzYW1wbGluZyBqdXN0IGlzbid0IGdvaW5nIHRvIGJl
IHN1cHBvcnRlZCAtIAo+IGl0J3MKPiB1bnJlYXNvbmFibHkgZGlmZmljdWx0IHRvIGhhbmRsZSBv
dmVyZmxvdyB3aGVuIHRoZSBJUlEgbWF5IGJlIHRha2VuIAo+IG9uCj4gdGhlIHdyb25nIENQVS4K
CkluZGVlZC4gQW5kIEkndmUgcmVjZW50bHkgZm91bmQgdGhpcyBleGFjdCBkZXNpZ24gYmx1bmRl
ciBvbiBhIGJyYW5kIApuZXcKQW1sb2dpYyBTb0MsIHdoZXJlIHRoZSBwZXItY29yZSBpbnRlcnJ1
cHRzIGhhdmUgYmVlbiBPUidkIHRvZ2V0aGVyLgpBbmQgbm90IGp1c3QgZm9yIHRoZSBQTVUhIEl0
IGlzIHRoZSBzYW1lIHNpdHVhdGlvbiBmb3IgdGhlIEdJQywgQ1RJLAphbmQgYSBjb3VwbGUgb2Yg
b3RoZXIgdGhpbmdzLiBUaGUgb25seSBzYW5lIGludGVycnVwdHMgYXJlIHRoZSB0aW1lcnMuCgoo
c291bmQgb2YgYSBQQ0IgaGl0dGluZyB0aGUgYmluLi4uKQoKICAgICAgICAgTS4KLS0gCkphenog
aXMgbm90IGRlYWQuIEl0IGp1c3Qgc21lbGxzIGZ1bm55Li4uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
