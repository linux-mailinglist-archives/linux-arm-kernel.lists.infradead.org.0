Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 924EC1D9645
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9R9BTtNGK57g2AlXmliB4IpaPW+CpLhRc814suiZcQ=; b=QlOXstWAhV00wb
	P3zNyV0YjPmG8btwJe7ZCRVtV5ir1kxQqJBO2kzln0YZBSrGaTEcf4kZos6iII/zCxL6ZptktXxqc
	g9ww5420DVDHqELqSrFAYl72yxegrE37J9ZLCIM+LR8mle8WDi+Hn6xydKI9Ei0ifZmRBpjhBR0n+
	S5AqlMUaktYfbEAjmuKYdSTF7z/6CZdszIEvliaImMW271/GZMoiqYMx/mCHeRb3Uw1ollgQWZ/1p
	0v/glS+y3jP8IXfxoPp8WfHMZ0HG+VIuzJ4Y0AAdUKLShw48KE5/wpOIVfSciF/357dIpHi5Jujet
	Nv/g68MG3mzxEwkFqkwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1Lh-0005Zo-8t; Tue, 19 May 2020 12:27:57 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1LT-0005TX-8L
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1L9JKoQ//Dyx28HUGrHWW95ieBZhHIAiZS0UIjkjzMo=; b=pXcZ6DcIZn6UqhjoTxHACwU5Y
 /mu9yAARAosgb19OI3QI+K+Q7M4ZTbaDHwWXSPaJx9Iv5gB3kFMmsnzCl4cpddTTMTUYxiXA6GODg
 bqMESPeO+DTgGHqCjUB3gcKg5WHWoLGzKdtOJkoWksfIw/t6XrkicDLMSlx1iqG/fBIgUfLWMOx/u
 DkMH/BlcdB3oMp8MQmr4el83hcM+plTtCEyyY1wsODpxNwjpqn3FJWOTTQrDfAj9AaM1UxdlhLBVw
 CZIszOI1Hm+6BNhvDdLAiujgq11q9qdwQgYZwxWMj9QpcX7Q5uZEhKj8GnBYKE62MwgJUb+8wPZ+6
 edJUI6aog==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42234)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jb1Kz-0005M2-Jn; Tue, 19 May 2020 13:27:18 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jb1Ks-0005is-Pw; Tue, 19 May 2020 13:27:06 +0100
Date: Tue, 19 May 2020 13:27:06 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Lukasz Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
Message-ID: <20200519122706.GC1551@shell.armlinux.org.uk>
References: <20200519114329.GB1551@shell.armlinux.org.uk>
 <CGME20200519122044eucas1p1220e8827c66dd1ace94b0a86a34f9c37@eucas1p1.samsung.com>
 <dleftj5zcs5d6e.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dleftj5zcs5d6e.fsf%l.stelmach@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_052743_363211_F15DAAF9 
X-CRM114-Status: GOOD (  30.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Grant Likely <grant.likely@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMDI6MjA6MjVQTSArMDIwMCwgTHVrYXN6IFN0ZWxtYWNo
IHdyb3RlOgo+IEl0IHdhcyA8MjAyMC0wNS0xOSB3dG8gMTI6NDM+LCB3aGVuIFJ1c3NlbGwgS2lu
ZyAtIEFSTSBMaW51eCBhZG1pbiB3cm90ZToKPiA+IE9uIFR1ZSwgTWF5IDE5LCAyMDIwIGF0IDAx
OjIxOjA5UE0gKzAyMDAsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiA+PiBPbiBUdWUsIE1h
eSAxOSwgMjAyMCBhdCAxMTo0NiBBTSBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4KPiA+
PiA8bGludXhAYXJtbGludXgub3JnLnVrPiB3cm90ZToKPiA+PiA+IE9uIFR1ZSwgTWF5IDE5LCAy
MDIwIGF0IDExOjQ0OjE3QU0gKzAyMDAsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiA+PiA+
ID4gT24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMTA6NTQgQU0gTHVrYXN6IFN0ZWxtYWNoIDxsLnN0
ZWxtYWNoQHNhbXN1bmcuY29tPiB3cm90ZToKPiA+PiA+ID4gPiBJdCB3YXMgPDIwMjAtMDQtMjkg
xZtybyAxMDoyMT4sIHdoZW4gR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+ID4+ID4gPiA+ID4g
Q3VycmVudGx5LCB0aGUgc3RhcnQgYWRkcmVzcyBvZiBwaHlzaWNhbCBtZW1vcnkgaXMgb2J0YWlu
ZWQgYnkgbWFza2luZwo+ID4+ID4gPiA+ID4gdGhlIHByb2dyYW0gY291bnRlciB3aXRoIGEgZml4
ZWQgbWFzayBvZiAweGY4MDAwMDAwLiAgVGhpcyBtYXNrIHZhbHVlCj4gPj4gPiA+ID4gPiB3YXMg
Y2hvc2VuIGFzIGEgYmFsYW5jZSBiZXR3ZWVuIHRoZSByZXF1aXJlbWVudHMgb2YgZGlmZmVyZW50
IHBsYXRmb3Jtcy4KPiA+PiA+ID4gPiA+IEhvd2V2ZXIsIHRoaXMgZG9lcyByZXF1aXJlIHRoYXQg
dGhlIHN0YXJ0IGFkZHJlc3Mgb2YgcGh5c2ljYWwgbWVtb3J5IGlzCj4gPj4gPiA+ID4gPiBhIG11
bHRpcGxlIG9mIDEyOCBNaUIsIHByZWNsdWRpbmcgYm9vdGluZyBMaW51eCBvbiBwbGF0Zm9ybXMg
d2hlcmUgdGhpcwo+ID4+ID4gPiA+ID4gcmVxdWlyZW1lbnQgaXMgbm90IGZ1bGZpbGxlZC4KPiA+
PiA+ID4gPiA+Cj4gPj4gPiA+ID4gPiBGaXggdGhpcyBsaW1pdGF0aW9uIGJ5IG9idGFpbmluZyB0
aGUgc3RhcnQgYWRkcmVzcyBmcm9tIHRoZSBEVEIgaW5zdGVhZCwKPiA+PiA+ID4gPiA+IGlmIGF2
YWlsYWJsZSAoZWl0aGVyIGV4cGxpY2l0bHkgcGFzc2VkLCBvciBhcHBlbmRlZCB0byB0aGUga2Vy
bmVsKS4KPiA+PiA+ID4gPiA+IEZhbGwgYmFjayB0byB0aGUgdHJhZGl0aW9uYWwgbWV0aG9kIHdo
ZW4gbmVlZGVkLgo+ID4+ID4gPiA+ID4KPiA+PiA+ID4gPiA+IFRoaXMgYWxsb3dzIHRvIGJvb3Qg
TGludXggb24gcjdzOTIxMC9yemEybWV2YiB1c2luZyB0aGUgNjQgTWlCIG9mIFNEUkFNCj4gPj4g
PiA+ID4gPiBvbiB0aGUgUlpBMk1FVkIgc3ViIGJvYXJkLCB3aGljaCBpcyBsb2NhdGVkIGF0IDB4
MEMwMDAwMDAgKENTMyBzcGFjZSksCj4gPj4gPiA+ID4gPiBpLmUuIG5vdCBhdCBhIG11bHRpcGxl
IG9mIDEyOCBNaUIuCj4gPj4gPiA+ID4gPgo+ID4+ID4gPiA+ID4gU3VnZ2VzdGVkLWJ5OiBOaWNv
bGFzIFBpdHJlIDxuaWNvQGZsdXhuaWMubmV0Pgo+ID4+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
R2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPiA+PiA+ID4gPiA+
IFJldmlld2VkLWJ5OiBOaWNvbGFzIFBpdHJlIDxuaWNvQGZsdXhuaWMubmV0Pgo+ID4+ID4gPiA+
ID4gUmV2aWV3ZWQtYnk6IEFyZCBCaWVzaGV1dmVsIDxhcmRiQGtlcm5lbC5vcmc+Cj4gPj4gPiA+
ID4gPiBUZXN0ZWQtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNv
bT4KPiA+PiA+ID4gPiA+IFRlc3RlZC1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwu
Y29tPgo+ID4+ID4gPiA+ID4gLS0tCj4gPj4gPiA+ID4KPiA+PiA+ID4gPiBbLi4uXQo+ID4+ID4g
PiA+Cj4gPj4gPiA+ID4gQXBwYXJlbnRseSByZWFkaW5nIHBoeXNpY2FsIG1lbW9yeSBsYXlvdXQg
ZnJvbSBEVEIgYnJlYWtzIGNyYXNoZHVtcAo+ID4+ID4gPiA+IGtlcm5lbHMuIEEgY3Jhc2hkdW1w
IGtlcm5lbCBpcyBsb2FkZWQgaW50byBhIHJlZ2lvbiBvZiBtZW1vcnksIHRoYXQgaXMKPiA+PiA+
ID4gPiByZXNlcnZlZCBpbiB0aGUgb3JpZ2luYWwgKGkuZS4gdG8gYmUgY3Jhc2hlZCkga2VybmVs
LiBUaGUgcmVzZXJ2ZWQKPiA+PiA+ID4gPiByZWdpb24gaXMgbGFyZ2UgZW5vdWdoIGZvciB0aGUg
Y3Jhc2hkdW1wIGtlcm5lbCB0byBydW4gY29tcGxldGVseSBpbnNpZGUKPiA+PiA+ID4gPiBpdCBh
bmQgZG9uJ3QgbW9kaWZ5IGFueXRoaW5nIG91dHNpZGUgaXQsIGp1c3QgcmVhZCBhbmQgZHVtcCB0
aGUgcmVtYWlucwo+ID4+ID4gPiA+IG9mIHRoZSBjcmFzaGVkIGtlcm5lbC4gVXNpbmcgdGhlIGlu
Zm9ybWF0aW9uIGZyb20gRFRCIG1ha2VzIHRoZQo+ID4+ID4gPiA+IGRlY29tcHJlc3NvciBwbGFj
ZSB0aGUga2VybmVsIG91dHNpZGUgb2YgdGhlIGRlZGljYXRlZCByZWdpb24uCj4gPj4gPiA+ID4K
PiA+PiA+ID4gPiBUaGUgbG9nIGJlbG93IHNob3dzIHRoYXQgYSB6SW1hZ2UgYW5kIERUQiBhcmUg
bG9hZGVkIGF0IDB4MThlYjgwMDAgYW5kCj4gPj4gPiA+ID4gMHgxOTNmNjAwMCAocGh5c2ljYWwp
LiBUaGUga2VybmVsIGlzIGV4cGVjdGVkIHRvIHJ1biBhdCAweDE4MDA4MDAwLCBidXQKPiA+PiA+
ID4gPiBpdCBpcyBkZWNvbXByZXNzZWQgdG8gMHgwMDAwODAwMCAoc2VlIHI0IHJlcG9ydGVkIGJl
Zm9yZSBqdW1waW5nIGZyb20KPiA+PiA+ID4gPiB3aXRoaW4gX19lbnRlcl9rZXJuZWwpLiBJZiBJ
IHdlcmUgdG8gc3VnZ2VzdCBzb21ldGhpbmcsIHRoZXJlIG5lZWQgdG8gYmUKPiA+PiA+ID4gPiBv
bmUgbW9yZSBiaXQgb2YgaW5mb3JtYXRpb24gcGFzc2VkIGluIHRoZSBEVEIgdGVsbGluZyB0aGUg
ZGVjb21wcmVzc29yCj4gPj4gPiA+ID4gdG8gdXNlIHRoZSBvbGQgbWFza2luZyB0ZWNobmlxdWUg
dG8gZGV0ZXJtYWluIGtlcm5lbCBhZGRyZXNzLiBJdCB3b3VsZAo+ID4+ID4gPiA+IGJlIHNldCBp
biB0aGUgRFRCIGxvYWRlZCBhbG9uZyB3aXRoIHRoZSBjcmFzaGR1bXAga2VybmVsLgo+ID4+ID4g
Pgo+ID4+ID4gPiBTaG91bGRuJ3QgdGhlIERUQiBwYXNzZWQgdG8gdGhlIGNyYXNoa2VybmVsIGRl
c2NyaWJlIHdoaWNoIHJlZ2lvbiBvZgo+ID4+ID4gPiBtZW1vcnkgaXMgdG8gYmUgdXNlZCBpbnN0
ZWFkPwo+ID4+ID4KPiA+PiA+IERlZmluaXRlbHkgbm90LiAgVGhlIGNyYXNoa2VybmVsIG5lZWRz
IHRvIGtub3cgd2hlcmUgdGhlIFJBTSBpbiB0aGUKPiA+PiA+IG1hY2hpbmUgaXMsIHNvIHRoYXQg
aXQgY2FuIGNyZWF0ZSBhIGNvcmVkdW1wIG9mIHRoZSBjcmFzaGVkIGtlcm5lbC4KPiA+PiAKPiA+
PiBTbyB0aGUgRFRCIHNob3VsZCBkZXNjcmliZSBib3RoIDstKQo+ID4+IAo+ID4+ID4gPiBEZXNj
cmliaW5nICJ0byB1c2UgdGhlIG9sZCBtYXNraW5nIHRlY2huaXF1ZSIgc291bmRzIGEgYml0IGhh
Y2tpc2ggdG8gbWUuCj4gPj4gPiA+IEkgZ3Vlc3MgaXQgY2Fubm90IGp1c3QgcmVzdHJpY3QgdGhl
IC9tZW1vcnkgbm9kZSB0byB0aGUgcmVzZXJ2ZWQgcmVnaW9uLAo+ID4+ID4gPiBhcyB0aGUgY3Jh
c2hrZXJuZWwgbmVlZHMgdG8gYmUgYWJsZSB0byBkdW1wIHRoZSByZW1haW5zIG9mIHRoZSBjcmFz
aGVkCj4gPj4gPiA+IGtlcm5lbCwgd2hpY2ggbGllIG91dHNpZGUgdGhpcyByZWdpb24uCj4gPj4g
Pgo+ID4+ID4gQ29ycmVjdC4KPiA+PiA+Cj4gPj4gPiA+IEhvd2V2ZXIsIHNvbWV0aGluZyB1bmRl
ciAvY2hvc2VuIHNob3VsZCB3b3JrLgo+ID4+ID4KPiA+PiA+IFlldCBhbm90aGVyIHN0aWNreSBw
bGFzdGVyLi4uCj4gPj4gCj4gPj4gSU1ITyB0aGUgb2xkIG1hc2tpbmcgdGVjaG5pcXVlIGlzIHRo
ZSBoYWNreSBzb2x1dGlvbiBjb3ZlcmVkIGJ5Cj4gPj4gcGxhc3RlcnMuCj4gPgo+ID4gT25lIGxp
bmUgb2YgY29kZSBpcyBub3QgImNvdmVyZWQgYnkgcGxhc3RlcnMiLiAgVGhlcmUgYXJlIG5vIHBs
YXN0ZXJzLgo+ID4gSXQncyBhIHNvbHV0aW9uIHRoYXQgd29ya3MgZm9yIDk5Ljk5JSBvZiBwZW9w
bGUsIHVubGlrZSB5b3VyIGFwcHJvYWNoCj4gPiB0aGF0IGhhcyBoYWQgYSBzdHJlYW0gb2YgaXNz
dWVzIG92ZXIgdGhlIGxhc3QgZm91ciBtb250aHMsIGFuZCBoYXMKPiA+IHJlcXVpcmVkIG1hbnkg
cmV3b3JrcyBvZiB0aGUgY29kZSB0byBmaXggZWFjaCBvbmUuICBUaGF0IGluIGl0c2VsZgo+ID4g
c3BlYWtzIHZvbHVtZXMgYWJvdXQgdGhlIHN1aXRhYmlsaXR5IG9mIHRoZSBhcHByb2FjaC4KPiAK
PiBBcyBJIGhhdmUgYmVlbiB3b3JraW5nIHdpdGgga2V4ZWMgY29kZSAocGF0Y2hlcyBzb29uKSBJ
IHdvdWxkIGxpa2UgdG8KPiBkZWZlbmQgdGhlIERUIGFwcHJvYWNoIGEgYml0LiBJdCBhbGxvd3Mg
dG8gYXZvaWQgekltYWdlIHJlbG9jYXRpb24gd2hlbgo+IGEgZGVjb21wcmVzc2VkIGtlcm5lbCBp
cyBsYXJnZXIgdGhhbiB+MTI4TWlCLiBJbiBzdWNoIGNhc2UgekltYWdlIGlzbid0Cj4gc21hbGwg
ZWl0aGVyIGFuZCBtb3ZpbmcgaXQgYXJvdW5kIHRha2VzIHNvbWUgdGltZS4KCi4uLiB3aGljaCBp
cyBzb21ldGhpbmcgdGhhdCBoYXMgYmVlbiBzdXBwb3J0ZWQgZm9yIGEgdmVyeSBsb25nIHRpbWUs
CmJlZm9yZSB0aGUgZGF5cyBvZiBEVC4KCi0tIApSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8v
d3d3LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KRlRUQyBmb3IgMC44bSAoZXN0
LiAxNzYybSkgbGluZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMy4xTWJwcyBkb3duIDQyNGticHMg
dXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
