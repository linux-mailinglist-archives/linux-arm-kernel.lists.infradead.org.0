Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 100A313E161
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:49:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JGsebm9iPJEo+0VKyXte0qsi0gUWokREORi4/sjNY8w=; b=SXjcfAhd/wZTgM
	WmydvUzdnyMIENnJugRVbB4pe56o8b3p8cDIQOAH9jD7iuztoJTTwY6Ol8GCbdrjwXccLM5oBmfYX
	8fbZAuODGXDcdUm+uODEWXpb2MjNERCV88ZK1IZN5kjsNKxVHCHDe3XNP8XCSNDoLRg3KNBDNRlVW
	QfBCaYNvfR4gna3rtpqABkGdyvgRGgDji8OJhNrgKkjB8l8mOY/s4+8X+pBXKTIHmrydw9g2menTa
	g+xyW2XXtXd3Jm8UwVvR6TMCckXKFDdssZy61gY2eE2I0s7W/AAoHsrqV+yzR6UXunohZX5xoSUeO
	CaaehzkOscGBkXZZHz9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8Kc-0003XD-1G; Thu, 16 Jan 2020 16:49:18 +0000
Received: from mailoutvs63.siol.net ([185.57.226.254] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Ie-0001yj-6W
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:47:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 3256D522C71;
 Thu, 16 Jan 2020 17:47:13 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id yW5AjuuxMjwE; Thu, 16 Jan 2020 17:47:12 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C28C9523561;
 Thu, 16 Jan 2020 17:47:12 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 66D88522C71;
 Thu, 16 Jan 2020 17:47:12 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: tanix-tx6: Use internal
 oscillator
Date: Thu, 16 Jan 2020 17:47:12 +0100
Message-ID: <20509747.EfDdHjke4D@jernej-laptop>
In-Reply-To: <20200116080652.mp5z7dtrtj3nyhpq@gilmour.lan>
References: <20200113180720.77461-1-jernej.skrabec@siol.net>
 <20200116080652.mp5z7dtrtj3nyhpq@gilmour.lan>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_084716_592143_C17EF4A0 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.254 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCgpEbmUgxI1ldHJ0ZWssIDE2LiBqYW51YXIgMjAyMCBvYiAwOTowNjo1MiBDRVQgamUgTWF4
aW1lIFJpcGFyZCBuYXBpc2FsKGEpOgo+IEhpIEplcm5laiwKPiAKPiBPbiBNb24sIEphbiAxMywg
MjAyMCBhdCAwNzowNzoyMFBNICswMTAwLCBKZXJuZWogU2tyYWJlYyB3cm90ZToKPiA+IFRhbml4
IFRYNiBkb2Vzbid0IGhhdmUgZXh0ZXJuYWwgMzIga0h6IG9zY2lsbGF0b3IsIHNvIHN3aXRjaCBS
VEMgY2xvY2sKPiA+IHRvIGludGVybmFsIG9uZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogSmVy
bmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gLS0tCj4gPiAKPiA+IFdo
aWxlIHRoaXMgcGF0Y2ggZ2l2ZXMgb25lIHBvc3NpYmxlIHNvbHV0aW9uLCBJIG1haW5seSB3YW50
IHRvIHN0YXJ0Cj4gPiBkaXNjdXNzaW9uIHdoeSBBbGx3aW5uZXIgU29DIGR0c2kgcmVmZXJlbmNl
IGV4dGVybmFsIDMyIGtIeiBjcnlzdGFsCj4gPiBhbHRob3VnaCBzb21lIGJvYXJkcyBkb24ndCBo
YXZlIGl0LiBNeSBwcm9wb3NhbCB3b3VsZCBiZSB0byBtYWtlIGNsb2NrCj4gPiBwcm9wZXJ0eSBv
cHRpb25hbCwgYmFzZWQgb24gdGhlIGZhY3QgaWYgZXh0ZXJuYWwgY3J5c3RhbCBpcyBwcmVzZW50
IG9yCj4gPiBub3QuIEhvd2V2ZXIsIEknbSBub3Qgc3VyZSBpZiB0aGF0IGlzIHBvc3NpYmxlIGF0
IHRoaXMgcG9pbnQgb3Igbm90Lgo+IAo+IEl0J3MgcHJvYmFibHkgYSBiaXQgb2YgYSBkdW1iIHF1
ZXN0aW9uIGJ1dC4uIGFyZSB5b3Ugc3VyZSB0aGUgY3J5c3RhbAo+IGlzIG1pc3Npbmc/CgpBbHRo
b3VnaCBJIGRvbid0IGhhdmUgc2NoZW1hdGljLCBJJ20gcHJldHR5IHN1cmUuIFdpdGhvdXQgdGhp
cyBwYXRjaCBvciBvbmUgYXQgClsxXSwgUlRDIGdpdmVzIGEgbG90IG9mIGVycm9ycyBpbiBkbWVz
Zy4gSSB0aGluayB0aGF0IHVucG9wdWxhdGVkIFhDMiBwYWRzIApuZWFyIFNvQyAoc2VlIFsyXSkg
YXJlIHByb2JhYmx5IHJlc2VydmVkIGZvciBjcnlzdGFsLgoKV2l0aCBwYXRjaCBpbiBbMV0sIHdo
aWNoIGVuYWJsZXMgYXV0b21hdGljIHN3aXRjaGluZyBpbiBjYXNlIG9mIGVycm9yLCBJIHNhdyAK
dGhhdCBvbiB0aGlzIGJveCBSVEMgYWx3YXlzIHN3aXRjaGVkIHRvIGludGVybmFsIFJDLgoKPiAK
PiBUaGUgSDYgZGF0YXNoZWV0IG1lbnRpb25zIHRoYXQgdGhlIDMya0h6IGNyeXN0YWwgbmVlZHMg
dG8gYmUgdGhlcmUsCj4gYW5kIGl0J3MgcGFydCBvZiB0aGUgcG93ZXIgc2VxdWVuY2UsIHNvIEkn
ZCBleHBlY3QgYWxsIGJvYXJkcyB0byBoYXZlCj4gaXQuCgpDYW4geW91IGJlIG1vcmUgc3BlY2lm
aWMgd2hlcmUgaXQgaXMgc3RhdGVkIHRoYXQgY3J5c3RhbCBpcyBtYW5kYXRvcnk/IAoKTm90ZSB0
aGF0IHNjaGVtYXRpYyBvZiBzb21lIGJvYXJkcywgbGlrZSBPcmFuZ2VQaSBQQzIgKEg1KSBvciBP
cmFuZ2VQaSBaZXJvIAooSDMpIGRvbid0IGV2ZW4gaGF2ZSAzMksgY3J5c3RhbCBpbiB0aGVtLgoK
PiAKPiA+IERyaXZlciBhbHNvIGNvbnNpZGVycyBtaXNzaW5nIGNsb2NrIHByb3BlcnR5IGFzIGRl
cHJlY2F0ZWQgKG9sZCBEVCkgWzFdLAo+ID4gc28gdGhpcyBtaWdodCBjb21wbGljYXRlIHRoaW5n
cyBldmVuIGZ1cnRoZXIuCj4gPiAKPiA+IFdoYXQgZG8geW91IHRoaW5rPwo+IAo+IEknbSBwcmV0
dHkgc3VyZSAoYnV0IHRoYXQgd291bGQgbmVlZCB0byBiZSBjaGVja2VkKSB0aGF0IHdlIG5ldmVy
IGdvdAo+IGEgbm9kZSB3aXRob3V0IHRoZSBjbG9ja3MgcHJvcGVydHkgb24gdGhlIEg2LiBJZiB0
aGF0J3MgdGhlIGNhc2UsIHRoZW4KPiB3ZSBjYW4gYWRkIGEgY2hlY2sgb24gdGhlIGNvbXBhdGli
bGUuCgpZZXMsIHRoYXQgd291bGQgYmUgbmljZSBzb2x1dGlvbi4gSSBjYW4gd29yayBzb21ldGhp
bmcgb3V0IGlmIHlvdSBhZ3JlZSB0aGF0IAp0aGlzIGlzIHRoZSB3YXkuCgo+IAo+ID4gQmVzdCBy
ZWdhcmRzLAo+ID4gSmVybmVqCj4gPiAKPiA+IFsxXQo+ID4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxp
bi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL3J0Yy9ydGMtc3VuNmkuYyNMMgo+ID4g
NjM+IAo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi10YW5peC10
eDYuZHRzIHwgNiArKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4g
PiAKPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYtdGFuaXgtdHg2LmR0cwo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYtdGFuaXgtdHg2LmR0cyBpbmRleAo+ID4gODNlNmNiMGU1OWNlLi5hZjNhZWJkYTQ3YmIg
MTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYt
dGFuaXgtdHg2LmR0cwo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LXRhbml4LXR4Ni5kdHMKPiA+IEBAIC05MSw2ICs5MSwxMiBAQCAmcl9pciB7Cj4gPiAK
PiA+ICAJc3RhdHVzID0gIm9rYXkiOwo+ID4gIAo+ID4gIH07Cj4gPiAKPiA+ICsvKiBUaGlzIGJv
YXJkIGRvZXNuJ3QgaGF2ZSBleHRlcm5hbCAzMiBrSHogY3J5c3RhbC4gKi8KPiA+ICsmcnRjIHsK
PiA+ICsJYXNzaWduZWQtY2xvY2tzID0gPCZydGMgMD47Cj4gPiArCWFzc2lnbmVkLWNsb2NrLXBh
cmVudHMgPSA8JnJ0YyAyPjsKPiA+ICt9Owo+ID4gKwo+IAo+IFRoaXMgc2hvdWxkIGJlIGRlYWx0
IHdpdGggaW4gdGhlIGRyaXZlciBob3dldmVyLgoKU3VyZSwgaXQgaXMgc29tZXRoaW5nIHRvIHN0
YXJ0IGRpc2N1c3Npb24sIEkgZG9uJ3QgbGlrZSB0YWNrbGluZyBjbG9ja3MgaW4gRFQgCmVpdGhl
ci4KCkJlc3QgcmVnYXJkcywKSmVybmVqCgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL0xpYnJlRUxF
Qy9MaWJyZUVMRUMudHYvYmxvYi9tYXN0ZXIvcHJvamVjdHMvQWxsd2lubmVyLwpkZXZpY2VzL0g2
L3BhdGNoZXMvbGludXgvMTUtUlRDLXdvcmthcm91bmQucGF0Y2gKWzJdIGh0dHA6Ly9saW51eC1z
dW54aS5vcmcvaW1hZ2VzLzIvMmUvVGFuaXhfdHg2X3BjYl90b3AucG5nCgoKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
