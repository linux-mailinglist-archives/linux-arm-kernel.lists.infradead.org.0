Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35408A5D12
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 22:22:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4/qY2y3lcyxUfgGiJrF1JWOKmYoXoNlk4h/zv4UmYI=; b=fMHurjtoH7sNfB
	IBIZPOkLq8022NdOZYeLhePeHKoaFb4X8bI1UDNknXIqzg7s0ly71Q5Qq307GwPQnbR8l0zqZscsz
	1UJ8Ca3q7dQzbadQhEAI7c6t64BBMHg5Fs6yx3VPb+JbQ0WHdqpuMPIVl+NAx6TpUHqiFXQWCT0tb
	bqygTu4OUFiuweSD94oKYY+M3noOJnCuWxDmxXZA4Slfl+ZCXw7Jawfi07zCoRvi6gM1i7DEVRKGz
	htZ4tdkf7hfozOrBYDmQvtuy5K8QBUFclKPsRp2ZStSmluUVUj7RnwicQ4p/m2adyGvMEQXCe3nWQ
	v1I1Hi2g5tAyLJi1UvRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4sqZ-0003Qc-HP; Mon, 02 Sep 2019 20:22:43 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4sqL-0003QR-SU
 for linux-arm-kernel@bombadil.infradead.org; Mon, 02 Sep 2019 20:22:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=09PKBeh+S5bOscyDxiWcbCUO+XIGApH+iTqtdg2eJJk=; b=XIx9H2OO/mRgVVxPS3JcTYdcTp
 5np48YOT/qFrQmr7yyLQJoRDpfWzJ6SH3MQeCkb19oacFeIwt2FZkyd6Enhy9+7spPxKcYdzaWCJG
 EfUWbwGBtDnqRcqU3K8Mfkig6tBWgPPA0EvXXs2E65l/REkA4iJ+rF3PFLCk1wG08tOSv2doF9EEA
 TAUsyCxISoeMlvFwUrLGZnOvFvhbCRRhk57weTT8fPDLHBabNqxP0BR+4PU1loB8AlXcc/7JlA8te
 VpxG46g/7tKThxYsNomlqS9rkyDS38Ss/G7QNfKSeJMtizsjMBaO19Xe8C0Li94byLsykQ0ZCREgI
 HGic4SSQ==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4sqI-0004OE-0I
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 20:22:27 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id BC238100008;
 Mon,  2 Sep 2019 20:21:12 +0000 (UTC)
Date: Mon, 2 Sep 2019 22:21:11 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH 1/3] ASoC: xlnx: add Xilinx logicPD-I2S FPGA IP support
Message-ID: <20190902222111.045ede17@xps13>
In-Reply-To: <df36fc2d-ed62-2556-513d-158a7707d5cd@xilinx.com>
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
 <df36fc2d-ed62-2556-513d-158a7707d5cd@xilinx.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org,
 Maruthi Srinivas Bayyavarapu <maruthis@xilinx.com>,
 Takashi Iwai <tiwai@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, praveenv@xilinx.com,
 Jaroslav Kysela <perex@perex.cz>, alexandre@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWljaGFsLAoKTWljaGFsIFNpbWVrIDxtaWNoYWwuc2ltZWtAeGlsaW54LmNvbT4gd3JvdGUg
b24gTW9uLCAyIFNlcCAyMDE5CjA5OjM5OjExICswMjAwOgoKPiBIaSBNaXF1ZWwKPiAKPiBPbiAz
MC4gMDguIDE5IDIzOjA2LCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+ID4gVGhpcyBJUCBpcyB2ZXJ5
IHNpbXBsZSBzbyB0aGlzIGRyaXZlciBtYW5hZ2UgYm90aCB0aGUgREFJIGFuZCB0aGUgUENNCj4g
PiBzdHJlYW1zLCBoZW5jZSB0aGUgcHJlc2VuY2Ugb2YgYm90aCBjb21wb25lbnRzIGluIHRoaXMg
ZHJpdmVyLgo+ID4gCj4gPiBUaGVyZSBhcmUgcGxlbnR5IGF2YWlsYWJsZSBpbnRlcnJ1cHRpb25z
IHdoZW4gY2FwdHVyaW5nIG9yIHBsYXlpbmcKPiA+IGJhY2sgYXVkaW8gdGhhdCBjYW4gYmUgdHJp
Z2dlcmVkIGJ1dCB0aGUgb25seSBvbmUgdGhhdCBmaXRzIHRoZSBBTFNBCj4gPiBzb3VuZCBzeXN0
ZW0gaXMgdGhlIFhGRVJfRE9ORSB3aGljaCBpcyB1c2VkIHRvIGJvdW5kIHNvdW5kCj4gPiBwZXJp
b2RzLiBPdGhlciBpbnRlcnJ1cHRzIGFyZSBtYXNrZWQuIFBsZWFzZSBub3RlIHRoYXQgY2FwdHVy
ZSBhbmQKPiA+IHBsYXliYWNrIGFyZSBub3QgcG9zc2libGUgYXQgdGhlIHNhbWUgdGltZSB0aG91
Z2guCj4gPiAKPiA+IENhcHR1cmUgc2VlbXMgdG8gd29yayAoYXQgbGVhc3QgaXQgY3JlYXRlcyBh
IGZpbGUgd2l0aCBzb21ldGhpbmcKPiA+IGluc2lkZSkgYnV0IEkgaGF2ZSBubyBjYXB0dXJlIG1l
Y2hhbmlzbSBvbiB0aGUgYm9hcmQgdG8gYWN0dWFsbHkgdGVzdAo+ID4gdGhhdCBpdCB3b3JrcyBj
b3JyZWN0bHkuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5y
YXluYWxAYm9vdGxpbi5jb20+Cj4gPiAtLS0KPiA+IAo+ID4gSGVsbG8sCj4gPiAKPiA+IFRoaXMg
aXMgbXkgZmlyc3QgY29udHJpYnV0aW9uIGluIHRoZSBzb3VuZCBzdWJzeXN0ZW0sIEkgaG9wZSBJ
J3ZlCj4gPiB1bmRlcnN0b29kIHRoZSBjb3JlIGJ1dCBJIG1pZ2h0IGJlIGVudGlyZWx5IHdyb25n
IGFzIHdlbGwsIHNvIHBsZWFzZQo+ID4gZG8gbm90IGhlc2l0YXRlIHRvIGJlIGNyaXRpY2FsIG9u
IG15IGNob2ljZXMuCj4gPiAKPiA+IFRoYW5rcywKPiA+IE1pcXXDqGwKPiA+IAo+ID4gIHNvdW5k
L3NvYy94aWxpbngvS2NvbmZpZyAgICAgICAgICAgIHwgICA3ICsKPiA+ICBzb3VuZC9zb2MveGls
aW54L01ha2VmaWxlICAgICAgICAgICB8ICAgMiArCj4gPiAgc291bmQvc29jL3hpbGlueC94bG54
LWxvZ2ljcGQtaTJzLmMgfCA0NjggKysrKysrKysrKysrKysrKysrKysrKysrKysrKyAgCj4gCj4g
V2hhdCBJUCBpcyB0aGlzPwo+IGh0dHBzOi8vd3d3LnhpbGlueC5jb20vcHJvZHVjdHMvaW50ZWxs
ZWN0dWFsLXByb3BlcnR5L2F1ZGlvLWkycy5odG1sCj4gCj4gaHR0cHM6Ly9naXRodWIuY29tL1hp
bGlueC9saW51eC14bG54L2Jsb2IvbWFzdGVyL3NvdW5kL3NvYy94aWxpbngveGxueF9pMnMuYwo+
IAo+IEFueXdheSBJIGFtIGFkZGluZyBQcmF2ZWVuIGFuZCBNYXJ1dGhpIHRvIHRha2UgYSBsb29r
LgoKQWN0dWFsbHkgSSBoYXZlIGJlZW4gdHJpY2tlZCBieSBhIGRhdGFzaGVldCB3aXRoIHRoZSB3
cm9uZyB0aXRsZTogdGhpcwppcyBhIExvZ2ljUEQgSVAsIGl0IGlzIG5vdCBmcm9tIFhpbGlueC4g
SSB3aWxsIHJlc3VibWl0IHdpdGggYSBuZXcKZHJpdmVyIG5hbWUvY29tcGF0aWJsZSBhbmQgYWRk
IHRoZSByZWxldmFudCBwZW9wbGUuCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
