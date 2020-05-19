Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6741D957C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 13:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZqFfm2e89/dU5wdal3ZKRt7gMokc2PlPyUhl/3vIdk=; b=SYHPvhpBV8XE+F
	TmuWEGteVQrc51z4c44m5/WvoxpzynHTtGjrA89lIxCtNe0HSBOyuPKlfB7r1JEKhuk1qU5Uls0Wl
	W3sDGaxcZKgPPGWzH3H8EXxFUMhaHK2I54Pvh1m2UQocEKeNz3m+F8HY2iq5PBvtf++nISkP4d/t9
	5HsKh83wXzmOOd5YBfmNxqZWAEfNac1KvJZgCF9YfbsqLIcahCr+DH3CD5151eBbfF4ssVImheQLk
	b8JaGuVBziJNu1EWEKK2iITSrTX7z3OQIASu0faLT0AueqoGTDHMIVyd/JRg9Xqo9uypa1ASMxavq
	ellgczXxtIJ7KvLkeBYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb0fO-0000Nf-02; Tue, 19 May 2020 11:44:14 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb0fE-0000L6-Md
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 11:44:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i/jtSTSQlToCGqMg1V6jGHW2xzHSbUDOgdHVIrB8dzY=; b=TYgG8EpJqFSmsxPMOIGUuUVYi
 4qhSxnegror40ySupeBudw0I8hLpyWZdTXJbD6EWZaB+gpDmpTqGm9SNIYA6ktyjoevOyBZJRkAVb
 vUjUKytksSEhivQ8Mk2GmB5GMxW5fwDPFhd6QAv+rHccKbgBDLrpYf5B5f3L8fUtnhCOkwwPGQXuM
 meG+3tQpAGwLsrJpOc0qwN6oZKhWm2JSI75DshabhMfeK7aDGP5ljAFGxTaNVI3n/4wtMksDixuaV
 ShIgEPfU97Z0lNrqKfFrF7rzwUaUHn5By24AlmYQSvpRWNrxSXy0m3kzvGJynsrt+Wn6JLrLPFrjo
 TmhOqb73Q==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42220)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jb0el-00056N-K6; Tue, 19 May 2020 12:43:35 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jb0ef-0005hE-Ts; Tue, 19 May 2020 12:43:29 +0100
Date: Tue, 19 May 2020 12:43:29 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
Message-ID: <20200519114329.GB1551@shell.armlinux.org.uk>
References: <CGME20200429082134eucas1p2415c5269202529e6b019f2d70c1b5572@eucas1p2.samsung.com>
 <20200429082120.16259-1-geert+renesas@glider.be>
 <dleftjmu645mqn.fsf%l.stelmach@samsung.com>
 <CAMuHMdXxq6m6gebQbWvxDynDcZ7dLyZzKC_QroK63L8FGeac1Q@mail.gmail.com>
 <20200519094637.GZ1551@shell.armlinux.org.uk>
 <CAMuHMdU5DG06G4H=+PH+OONMT_9oE==KS=wP+bLgY9xVCez6Ww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdU5DG06G4H=+PH+OONMT_9oE==KS=wP+bLgY9xVCez6Ww@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_044405_188938_CC69AC3A 
X-CRM114-Status: GOOD (  35.92  )
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
 Lukasz Stelmach <l.stelmach@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>, Rob Herring <robh+dt@kernel.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMDE6MjE6MDlQTSArMDIwMCwgR2VlcnQgVXl0dGVyaG9l
dmVuIHdyb3RlOgo+IEhpIFJ1c3NlbGwsCj4gCj4gQ0MgZGV2aWNldHJlZQo+IAo+IE9uIFR1ZSwg
TWF5IDE5LCAyMDIwIGF0IDExOjQ2IEFNIFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbgo+
IDxsaW51eEBhcm1saW51eC5vcmcudWs+IHdyb3RlOgo+ID4gT24gVHVlLCBNYXkgMTksIDIwMjAg
YXQgMTE6NDQ6MTdBTSArMDIwMCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+ID4gPiBPbiBU
dWUsIE1heSAxOSwgMjAyMCBhdCAxMDo1NCBBTSBMdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hA
c2Ftc3VuZy5jb20+IHdyb3RlOgo+ID4gPiA+IEl0IHdhcyA8MjAyMC0wNC0yOSDFm3JvIDEwOjIx
Piwgd2hlbiBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gPiA+ID4gPiBDdXJyZW50bHksIHRo
ZSBzdGFydCBhZGRyZXNzIG9mIHBoeXNpY2FsIG1lbW9yeSBpcyBvYnRhaW5lZCBieSBtYXNraW5n
Cj4gPiA+ID4gPiB0aGUgcHJvZ3JhbSBjb3VudGVyIHdpdGggYSBmaXhlZCBtYXNrIG9mIDB4Zjgw
MDAwMDAuICBUaGlzIG1hc2sgdmFsdWUKPiA+ID4gPiA+IHdhcyBjaG9zZW4gYXMgYSBiYWxhbmNl
IGJldHdlZW4gdGhlIHJlcXVpcmVtZW50cyBvZiBkaWZmZXJlbnQgcGxhdGZvcm1zLgo+ID4gPiA+
ID4gSG93ZXZlciwgdGhpcyBkb2VzIHJlcXVpcmUgdGhhdCB0aGUgc3RhcnQgYWRkcmVzcyBvZiBw
aHlzaWNhbCBtZW1vcnkgaXMKPiA+ID4gPiA+IGEgbXVsdGlwbGUgb2YgMTI4IE1pQiwgcHJlY2x1
ZGluZyBib290aW5nIExpbnV4IG9uIHBsYXRmb3JtcyB3aGVyZSB0aGlzCj4gPiA+ID4gPiByZXF1
aXJlbWVudCBpcyBub3QgZnVsZmlsbGVkLgo+ID4gPiA+ID4KPiA+ID4gPiA+IEZpeCB0aGlzIGxp
bWl0YXRpb24gYnkgb2J0YWluaW5nIHRoZSBzdGFydCBhZGRyZXNzIGZyb20gdGhlIERUQiBpbnN0
ZWFkLAo+ID4gPiA+ID4gaWYgYXZhaWxhYmxlIChlaXRoZXIgZXhwbGljaXRseSBwYXNzZWQsIG9y
IGFwcGVuZGVkIHRvIHRoZSBrZXJuZWwpLgo+ID4gPiA+ID4gRmFsbCBiYWNrIHRvIHRoZSB0cmFk
aXRpb25hbCBtZXRob2Qgd2hlbiBuZWVkZWQuCj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhpcyBhbGxv
d3MgdG8gYm9vdCBMaW51eCBvbiByN3M5MjEwL3J6YTJtZXZiIHVzaW5nIHRoZSA2NCBNaUIgb2Yg
U0RSQU0KPiA+ID4gPiA+IG9uIHRoZSBSWkEyTUVWQiBzdWIgYm9hcmQsIHdoaWNoIGlzIGxvY2F0
ZWQgYXQgMHgwQzAwMDAwMCAoQ1MzIHNwYWNlKSwKPiA+ID4gPiA+IGkuZS4gbm90IGF0IGEgbXVs
dGlwbGUgb2YgMTI4IE1pQi4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBTdWdnZXN0ZWQtYnk6IE5pY29s
YXMgUGl0cmUgPG5pY29AZmx1eG5pYy5uZXQ+Cj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHZWVy
dCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+ID4gPiA+ID4gUmV2aWV3
ZWQtYnk6IE5pY29sYXMgUGl0cmUgPG5pY29AZmx1eG5pYy5uZXQ+Cj4gPiA+ID4gPiBSZXZpZXdl
ZC1ieTogQXJkIEJpZXNoZXV2ZWwgPGFyZGJAa2VybmVsLm9yZz4KPiA+ID4gPiA+IFRlc3RlZC1i
eTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+ID4gPiA+ID4g
VGVzdGVkLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+Cj4gPiA+ID4gPiAt
LS0KPiA+ID4gPgo+ID4gPiA+IFsuLi5dCj4gPiA+ID4KPiA+ID4gPiBBcHBhcmVudGx5IHJlYWRp
bmcgcGh5c2ljYWwgbWVtb3J5IGxheW91dCBmcm9tIERUQiBicmVha3MgY3Jhc2hkdW1wCj4gPiA+
ID4ga2VybmVscy4gQSBjcmFzaGR1bXAga2VybmVsIGlzIGxvYWRlZCBpbnRvIGEgcmVnaW9uIG9m
IG1lbW9yeSwgdGhhdCBpcwo+ID4gPiA+IHJlc2VydmVkIGluIHRoZSBvcmlnaW5hbCAoaS5lLiB0
byBiZSBjcmFzaGVkKSBrZXJuZWwuIFRoZSByZXNlcnZlZAo+ID4gPiA+IHJlZ2lvbiBpcyBsYXJn
ZSBlbm91Z2ggZm9yIHRoZSBjcmFzaGR1bXAga2VybmVsIHRvIHJ1biBjb21wbGV0ZWx5IGluc2lk
ZQo+ID4gPiA+IGl0IGFuZCBkb24ndCBtb2RpZnkgYW55dGhpbmcgb3V0c2lkZSBpdCwganVzdCBy
ZWFkIGFuZCBkdW1wIHRoZSByZW1haW5zCj4gPiA+ID4gb2YgdGhlIGNyYXNoZWQga2VybmVsLiBV
c2luZyB0aGUgaW5mb3JtYXRpb24gZnJvbSBEVEIgbWFrZXMgdGhlCj4gPiA+ID4gZGVjb21wcmVz
c29yIHBsYWNlIHRoZSBrZXJuZWwgb3V0c2lkZSBvZiB0aGUgZGVkaWNhdGVkIHJlZ2lvbi4KPiA+
ID4gPgo+ID4gPiA+IFRoZSBsb2cgYmVsb3cgc2hvd3MgdGhhdCBhIHpJbWFnZSBhbmQgRFRCIGFy
ZSBsb2FkZWQgYXQgMHgxOGViODAwMCBhbmQKPiA+ID4gPiAweDE5M2Y2MDAwIChwaHlzaWNhbCku
IFRoZSBrZXJuZWwgaXMgZXhwZWN0ZWQgdG8gcnVuIGF0IDB4MTgwMDgwMDAsIGJ1dAo+ID4gPiA+
IGl0IGlzIGRlY29tcHJlc3NlZCB0byAweDAwMDA4MDAwIChzZWUgcjQgcmVwb3J0ZWQgYmVmb3Jl
IGp1bXBpbmcgZnJvbQo+ID4gPiA+IHdpdGhpbiBfX2VudGVyX2tlcm5lbCkuIElmIEkgd2VyZSB0
byBzdWdnZXN0IHNvbWV0aGluZywgdGhlcmUgbmVlZCB0byBiZQo+ID4gPiA+IG9uZSBtb3JlIGJp
dCBvZiBpbmZvcm1hdGlvbiBwYXNzZWQgaW4gdGhlIERUQiB0ZWxsaW5nIHRoZSBkZWNvbXByZXNz
b3IKPiA+ID4gPiB0byB1c2UgdGhlIG9sZCBtYXNraW5nIHRlY2huaXF1ZSB0byBkZXRlcm1haW4g
a2VybmVsIGFkZHJlc3MuIEl0IHdvdWxkCj4gPiA+ID4gYmUgc2V0IGluIHRoZSBEVEIgbG9hZGVk
IGFsb25nIHdpdGggdGhlIGNyYXNoZHVtcCBrZXJuZWwuCj4gPiA+Cj4gPiA+IFNob3VsZG4ndCB0
aGUgRFRCIHBhc3NlZCB0byB0aGUgY3Jhc2hrZXJuZWwgZGVzY3JpYmUgd2hpY2ggcmVnaW9uIG9m
Cj4gPiA+IG1lbW9yeSBpcyB0byBiZSB1c2VkIGluc3RlYWQ/Cj4gPgo+ID4gRGVmaW5pdGVseSBu
b3QuICBUaGUgY3Jhc2hrZXJuZWwgbmVlZHMgdG8ga25vdyB3aGVyZSB0aGUgUkFNIGluIHRoZQo+
ID4gbWFjaGluZSBpcywgc28gdGhhdCBpdCBjYW4gY3JlYXRlIGEgY29yZWR1bXAgb2YgdGhlIGNy
YXNoZWQga2VybmVsLgo+IAo+IFNvIHRoZSBEVEIgc2hvdWxkIGRlc2NyaWJlIGJvdGggOy0pCj4g
Cj4gPiA+IERlc2NyaWJpbmcgInRvIHVzZSB0aGUgb2xkIG1hc2tpbmcgdGVjaG5pcXVlIiBzb3Vu
ZHMgYSBiaXQgaGFja2lzaCB0byBtZS4KPiA+ID4gSSBndWVzcyBpdCBjYW5ub3QganVzdCByZXN0
cmljdCB0aGUgL21lbW9yeSBub2RlIHRvIHRoZSByZXNlcnZlZCByZWdpb24sCj4gPiA+IGFzIHRo
ZSBjcmFzaGtlcm5lbCBuZWVkcyB0byBiZSBhYmxlIHRvIGR1bXAgdGhlIHJlbWFpbnMgb2YgdGhl
IGNyYXNoZWQKPiA+ID4ga2VybmVsLCB3aGljaCBsaWUgb3V0c2lkZSB0aGlzIHJlZ2lvbi4KPiA+
Cj4gPiBDb3JyZWN0Lgo+ID4KPiA+ID4gSG93ZXZlciwgc29tZXRoaW5nIHVuZGVyIC9jaG9zZW4g
c2hvdWxkIHdvcmsuCj4gPgo+ID4gWWV0IGFub3RoZXIgc3RpY2t5IHBsYXN0ZXIuLi4KPiAKPiBJ
TUhPIHRoZSBvbGQgbWFza2luZyB0ZWNobmlxdWUgaXMgdGhlIGhhY2t5IHNvbHV0aW9uIGNvdmVy
ZWQgYnkKPiBwbGFzdGVycy4KCk9uZSBsaW5lIG9mIGNvZGUgaXMgbm90ICJjb3ZlcmVkIGJ5IHBs
YXN0ZXJzIi4gIFRoZXJlIGFyZSBubyBwbGFzdGVycy4KSXQncyBhIHNvbHV0aW9uIHRoYXQgd29y
a3MgZm9yIDk5Ljk5JSBvZiBwZW9wbGUsIHVubGlrZSB5b3VyIGFwcHJvYWNoCnRoYXQgaGFzIGhh
ZCBhIHN0cmVhbSBvZiBpc3N1ZXMgb3ZlciB0aGUgbGFzdCBmb3VyIG1vbnRocywgYW5kIGhhcwpy
ZXF1aXJlZCBtYW55IHJld29ya3Mgb2YgdGhlIGNvZGUgdG8gZml4IGVhY2ggb25lLiAgVGhhdCBp
biBpdHNlbGYKc3BlYWtzIHZvbHVtZXMgYWJvdXQgdGhlIHN1aXRhYmlsaXR5IG9mIHRoZSBhcHBy
b2FjaC4KCj4gRFQgZGVzY3JpYmVzIHRoZSBoYXJkd2FyZS4KClJpZ2h0LCBzbyBEVCBpcyBjb3Jy
ZWN0LgoKPiBJbiBnZW5lcmFsLCB3aGVyZSB0byBwdXQgdGhlIGtlcm5lbCBpcyBhCj4gc29mdHdh
cmUgcG9saWN5LCBhbmQgdGh1cyBkb2Vzbid0IGJlbG9uZyBpbiBEVCwgZXhjZXB0IHBlcmhhcHMg
dW5kZXIKPiAvY2hvc2VuLiAgQnV0IHRoYXQgd291bGQgb3BlbiBhbm90aGVyIGNhbiBvZiB3b3Jt
cywgYXMgcGVvcGxlIHVzdWFsbHkKPiBoYXZlIG5vIGJ1c2luZXNzIGluIHNwZWNpZnlpbmcgd2hl
cmUgdGhlIGtlcm5lbCBzaG91bGQgYmUgbG9jYXRlZC4KPiBJbiB0aGUgY3Jhc2hrZXJuZWwgY2Fz
ZSwgdGhlcmUgaXMgYSBjbGVhciBzZXBhcmF0aW9uIGJldHdlZW4gbWVtb3J5IHRvCj4gYmUgdXNl
ZCBieSB0aGUgY3Jhc2hrZXJuZWwsIGFuZCBtZW1vcnkgdG8gYmUgc29sZWx5IGluc3BlY3RlZCBi
eSB0aGUKPiBjcmFzaGtlcm5lbC4KPiAKPiBEZXZpY2V0cmVlIFNwZWNpZmljYXRpb24sIFJlbGVh
c2UgdjAuMywgU2VjdGlvbiAzLjQgIi9tZW1vcnkgbm9kZSIgc2F5czoKPiAKPiAgICAgIlRoZSBj
bGllbnQgcHJvZ3JhbSBtYXkgYWNjZXNzIG1lbW9yeSBub3QgY292ZXJlZCBieSBhbnkgbWVtb3J5
Cj4gICAgICByZXNlcnZhdGlvbnMgKHNlZSBzZWN0aW9uIDUuMykiCj4gCj4gKFNlY3Rpb24gNS4z
ICJNZW1vcnkgUmVzZXJ2YXRpb24gQmxvY2siIG9ubHkgdGFsa3MgYWJvdXQgc3RydWN0dXJlcyBp
bgo+IHRoZSBGRFQsIG5vdCBhYm91dCBEVFMpCj4gCj4gSGVuY2UgYWNjb3JkaW5nIHRvIHRoZSBh
Ym92ZSwgdGhlIGNyYXNoa2VybmVsIGlzIHJpZ2h0ZnVsbHkgYWxsb3dlZCB0bwo+IGRvIHdoYXRl
dmVyIGl0IHdhbnRzIHdpdGggYWxsIG1lbW9yeSB1bmRlciB0aGUgL21lbW9yeSBub2RlLgo+IEhv
d2V2ZXIsIHRoZXJlIGlzIGFsc28KPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cmVzZXJ2ZWQtbWVtb3J5L3Jlc2VydmVkLW1lbW9yeS50eHQuCj4gVGhpcyBzdWdnZXN0cyB0aGUg
Y3Jhc2hrZXJuZWwgc2hvdWxkIGJlIHBhc3NlZCBhIERUQiB0aGF0IGNvbnRhaW5zIGEKPiAvcmVz
ZXJ2ZWQtbWVtb3J5IG5vZGUsIGRlc2NyaWJpbmcgd2hpY2ggbWVtb3J5IGNhbm5vdCBiZSB1c2Vk
IGZyZWVseS4KPiBUaGVuIHRoZSBkZWNvbXByZXNzb3IgbmVlZHMgdG8gdGFrZSB0aGlzIGludG8g
YWNjb3VudCB3aGVuIGRlY2lkaW5nCj4gd2hlcmUgdGhlIHB1dCB0aGUga2VybmVsLgoKU28geW91
IHdhbnQgdG8gdGhyb3cgeWV0IG1vcmUgY29tcGxleGl0eSBhdCB0aGlzIHNvbHV0aW9uIHRvIHRy
eSBhbmQKbWFrZSBpdCB3b3JrLi4uCgo+IFllcywgdGhlIGFib3ZlIHJlcXVpcmVzIGNoYW5naW5n
IGNvZGUuIEJ1dCBhdCBsZWFzdCBpdCBwcm92aWRlcyBhCj4gcGF0aCBmb3J3YXJkLCBnZXR0aW5n
IHJpZCBvZiB0aGUgZnJhZ2lsZSBvbGQgbWFza2luZyB0ZWNobmlxdWUuCgpJdCdzIGhhcmRseSBm
cmFnaWxlIHdoZW4gaXQncyB3b3JrZWQgZmluZSBmb3IgdGhlIGxhc3QgMjArIHllYXJzLAp3aGVy
ZWFzIHlvdXIgc29sdXRpb24gY2FuJ3Qgd29yayB3aXRob3V0IHNvbWUgcmVncmVzc2lvbiBiZWlu
ZyByZXBvcnRlZAp3aXRoaW4gYSBjb3VwbGUgb2Ygd2Vla3Mgb2YgaXQgYmVpbmcgYXBwbGllZC4g
IEFnYWluLCB0aGF0IHNwZWFrcwp2b2x1bWVzIGFib3V0IHdoaWNoIG9uZSBpcyBiZXR0ZXIgdGhh
biB0aGUgb3RoZXIuCgpDb250aW51YWxseSBwYXRjaGluZyB0aGlzIGFwcHJvYWNoIHRvIHdvcmth
cm91bmQgb25lIGlzc3VlIGFmdGVyIGFub3RoZXIKc2hvd3MgdGhhdCBpdCBpcyBfdGhpc18gc29s
dXRpb24gdGhhdCBpcyB0aGUgZnJhZ2lsZSBpbXBsZW1lbnRhdGlvbi4KCkEgZnJhZ2lsZSBpbXBs
ZW1lbnRhdGlvbiBpcyBieSBkZWZpbml0aW9uIG9uZSB0aGF0IGtlZXBzIGJyZWFraW5nLgpUaGF0
J3MgeW91cnMuICBUaGUgbWFza2luZyBhcHByb2FjaCBoYXNuJ3QgImJyb2tlbiIgZm9yIGFueW9u
ZSwgYW5kCmhhc24ndCBiZWVuIHRoZSBjYXVzZSBvZiBvbmUgc2luZ2xlIHJlZ3Jlc3Npb24gYW55
d2hlcmUuICBZZXMsIHRoZXJlCmFyZSBzb21lIHBsYXRmb3JtcyB0aGF0IGl0IGRvZXNuJ3Qgd29y
ayBmb3IgKGJlY2F1c2UgdGhleSBjaG9vc2UgdG8KcmVzZXJ2ZSB0aGUgZmlyc3QgY2h1bmsgb2Yg
UkFNIGZvciBzb21ldGhpbmcpIGJ1dCB0aGF0IGlzIG5vdCBhCnJlZ3Jlc3Npb24uCgpTbywgSSdt
IG5vdCBnb2luZyB0byBhcHBseSB0aGUgbmV4dCByZXZpc2lvbiBvZiB0aGlzIHBhdGNoIGZvciBh
dCBsZWFzdApvbmUgd2hvbGUga2VybmVsIGN5Y2xlIC0gdGhhdCBtZWFucyBzY2hlZHVsaW5nIGl0
IGZvciA1LjEwLXJjIGF0IHRoZQplYXJsaWVzdC4KCi0tIApSTUsncyBQYXRjaCBzeXN0ZW06IGh0
dHBzOi8vd3d3LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KRlRUQyBmb3IgMC44
bSAoZXN0LiAxNzYybSkgbGluZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMy4xTWJwcyBkb3duIDQy
NGticHMgdXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
