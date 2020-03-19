Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBADC18B026
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 10:26:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QO/zV1BmTafTrNG1UdcCjZlozDR1mjo6qMPwWBN2mk=; b=d/IksdoT9L8rVh
	dtRFH0imYOYz46ZA7s8qz1Ckbnb/z7ruZ8kAby4oXtc1tXilaktS81QiXg/Y8CwA2Sf12uBf+ZeCN
	3WhR+PI60J75ioqQJQlXcStMQ/TF5rfZx/LXPMLIJTgeeQIT3kxV//4h8ohfhCHwpkEfGNgRyJ3g/
	np9P4u0bjIgxbzWFr+YdQoFFgG6n+MtSHeUeB4Pf4T7Dze4GEJPImmo42TrQPzGnp6ri43ISY7x7B
	5wQW00ObMymb+BwYJayEEh8lsT8gCcC7NQKXftITS88muidD63yhT4NLlGRvEjxMPGiiRT5Yc5SPm
	JagH4xROLXyJn4g4aPGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jErRa-00056H-GR; Thu, 19 Mar 2020 09:26:26 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jErRS-00054v-Q3
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 09:26:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yb/xjLK1ui2j4hUNbhZagNJyXnbqQ+joMlyaDUNd3FM=; b=DDdZRk/eS5AQ/lCDPOwBAGNZx
 rmNqgJZFXL9pV819W/fxoEfzt9A4Tl+xIQRjOmQ1TxKcLh4bqPj137R2jYlNtfJw2ccGPLGwsooM2
 zW85Yr7KkEx/jwWJYmcXSnfkxdoXLQrcxvPVs643O1wrGJTkJvGtFR2bX8KiKNkzD0OMATYnrT7uZ
 A9SbTd3luF5DISAJkO3L3H4uWKzpZ9Smbg5qtb5kcPXU17QzADSAWYIoqmqq1jHyrM/p3MsxTTC8d
 aJVKexv8S73aD7bWnEl5LnnI8gjpdiskScrcUW3HrhuaUQUYqDAhy5MJveIbIDxDv8lRd+hkKDrKY
 NLaz6hM5Q==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:55058)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jErQt-0001LT-TO; Thu, 19 Mar 2020 09:25:44 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jErQl-0004f3-RZ; Thu, 19 Mar 2020 09:25:35 +0000
Date: Thu, 19 Mar 2020 09:25:35 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2] ARM: boot: Obtain start of physical memory from DTB
Message-ID: <20200319092535.GB25745@shell.armlinux.org.uk>
References: <CGME20200225112354eucas1p1300749b32c6809b6a22194c1a952a68c@eucas1p1.samsung.com>
 <20200127140716.15673-1-geert+renesas@glider.be>
 <d1b12473-5199-1cf6-25d1-a6ce79450e8e@samsung.com>
 <CAMuHMdUGu4eStpYp5W0SKJd8yrLLDTgF4__Jq_n+Z7SWtPM+Cg@mail.gmail.com>
 <90c006f2-8c13-2976-008f-37139ca49f37@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90c006f2-8c13-2976-008f-37139ca49f37@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_022619_007993_DE8F5B23 
X-CRM114-Status: GOOD (  25.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMDQ6MTE6MDBBTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+IDI1LjAyLjIwMjAgMTQ6NDAsIEdlZXJ0IFV5dHRlcmhvZXZlbiDQv9C40YjQtdGC
Ogo+ID4gSGkgTWFyZWssCj4gPiAKPiA+IE9uIFR1ZSwgRmViIDI1LCAyMDIwIGF0IDEyOjI0IFBN
IE1hcmVrIFN6eXByb3dza2kKPiA+IDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+IHdyb3RlOgo+
ID4+IE9uIDI3LjAxLjIwMjAgMTU6MDcsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiA+Pj4g
Q3VycmVudGx5LCB0aGUgc3RhcnQgYWRkcmVzcyBvZiBwaHlzaWNhbCBtZW1vcnkgaXMgb2J0YWlu
ZWQgYnkgbWFza2luZwo+ID4+PiB0aGUgcHJvZ3JhbSBjb3VudGVyIHdpdGggYSBmaXhlZCBtYXNr
IG9mIDB4ZjgwMDAwMDAuICBUaGlzIG1hc2sgdmFsdWUKPiA+Pj4gd2FzIGNob3NlbiBhcyBhIGJh
bGFuY2UgYmV0d2VlbiB0aGUgcmVxdWlyZW1lbnRzIG9mIGRpZmZlcmVudCBwbGF0Zm9ybXMuCj4g
Pj4+IEhvd2V2ZXIsIHRoaXMgZG9lcyByZXF1aXJlIHRoYXQgdGhlIHN0YXJ0IGFkZHJlc3Mgb2Yg
cGh5c2ljYWwgbWVtb3J5IGlzCj4gPj4+IGEgbXVsdGlwbGUgb2YgMTI4IE1pQiwgcHJlY2x1ZGlu
ZyBib290aW5nIExpbnV4IG9uIHBsYXRmb3JtcyB3aGVyZSB0aGlzCj4gPj4+IHJlcXVpcmVtZW50
IGlzIG5vdCBmdWxmaWxsZWQuCj4gPj4+Cj4gPj4+IEZpeCB0aGlzIGxpbWl0YXRpb24gYnkgb2J0
YWluaW5nIHRoZSBzdGFydCBhZGRyZXNzIGZyb20gdGhlIERUQiBpbnN0ZWFkLAo+ID4+PiBpZiBh
dmFpbGFibGUgKGVpdGhlciBleHBsaWNpdGx5IHBhc3NlZCwgb3IgYXBwZW5kZWQgdG8gdGhlIGtl
cm5lbCkuCj4gPj4+IEZhbGwgYmFjayB0byB0aGUgdHJhZGl0aW9uYWwgbWV0aG9kIHdoZW4gbmVl
ZGVkLgo+ID4+Pgo+ID4+PiBUaGlzIGFsbG93cyB0byBib290IExpbnV4IG9uIHI3czkyMTAvcnph
Mm1ldmIgdXNpbmcgdGhlIDY0IE1pQiBvZiBTRFJBTQo+ID4+PiBvbiB0aGUgUlpBMk1FVkIgc3Vi
IGJvYXJkLCB3aGljaCBpcyBsb2NhdGVkIGF0IDB4MEMwMDAwMDAgKENTMyBzcGFjZSksCj4gPj4+
IGkuZS4gbm90IGF0IGEgbXVsdGlwbGUgb2YgMTI4IE1pQi4KPiA+Pj4KPiA+Pj4gU3VnZ2VzdGVk
LWJ5OiBOaWNvbGFzIFBpdHJlIDxuaWNvQGZsdXhuaWMubmV0Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5
OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+ID4+PiBSZXZp
ZXdlZC1ieTogTmljb2xhcyBQaXRyZSA8bmljb0BmbHV4bmljLm5ldD4KPiA+Pj4gLS0tCj4gPj4+
IEFnYWluc3QgYXJtL2Zvci1uZXh0Lgo+ID4+Cj4gPj4gVGhpcyBwYXRjaCBsYW5kZWQgcmVjZW50
bHkgaW4gbGludXgtbmV4dC4gSXQgYnJlYWtzIGxlZ2FjeSBib290aW5nIGZyb20KPiA+PiB0aGUg
ekltYWdlICsgYXBwZW5kZWQgRFQgKyBjbWRsaW5lL21lbW9yeSBpbmZvIHByb3ZpZGVkIHZpYSBB
VEFHcy4gSQo+ID4+IHdpbGwgZGVidWcgaXQgZnVydGhlciBvbmNlIEkgZmluZCBzb21lIHNwYXJl
IHRpbWUuIFdoYXQgSSBub3RpY2VkIHNvCj4gPj4gZmFyLCB0aGUgY21kbGluZS9tZW1vcnkgaW5m
byBpcyBub3QgcmVhZCBmcm9tIHRoZSBBVEFHcywgb25seSB0aGUgdmFsdWVzCj4gPj4gcHJvdmlk
ZWQgdmlhIGFwcGVuZGVkIERUIGFyZSB1c2VkLgo+ID4gCj4gPiBPb3BzLCBzb21ldGhpbmcgaGFw
cGVuaW5nIGxpa2UgdGhpcyB3YXMgb25lIG9mIG15IGJpZ2dlc3Qgd29ycmllcyB3aGVuCj4gPiBw
b3N0aW5nIHRoaXMgcGF0Y2guLi4gU29ycnkgZm9yIHRoZSBicmVha2FnZS4KPiA+IAo+ID4gSUlV
SUMsIHRoZSBrZXJuZWwgc3RpbGwgYm9vdHMsIGJ1dCBqdXN0IGRvZXNuJ3QgdXNlIHRoZSBpbmZv
IHBhc3NlZCBieSBBVEFHcz8KPiA+IAo+ID4gSSdsbCBoYXZlIGEgY2xvc2VyIGxvb2sgbGF0ZXIg
dG9kYXkuCj4gPiBJbiB0aGUgbWVhbiB0aW1lLCBJJ3ZlIHNlbnQgc29tZSBkZWJ1ZyBjb2RlIEkg
dXNlZCB3aGVuIGRldmVsb3BpbmcKPiA+IHRoaXMgcGF0Y2gsIHdoaWNoIG1heSBiZSB1c2VmdWws
IGhvcGVmdWxseS4KPiAKPiBIZWxsbywKPiAKPiBOVklESUEgVGVncmEgaXMgYWxzbyBhZmZlY3Rl
ZCBieSB0aGlzIHBhdGNoLiBBIHdlZWsgYWdvIGFuIHVwZGF0ZWQKPiB2ZXJzaW9uIG9mIHRoZSBw
YXRjaCB3YXMgcHVzaGVkIGludG8gbGludXgtbmV4dCBhbmQgbm93IG1hY2hpbmUgZG9lc24ndAo+
IGJvb3QgYXQgYWxsLgo+IAo+IEkgY291bGRuJ3QgZmluZCB2MyBvbiB0aGUgTUwsIHNvIHJlcGx5
aW5nIHRvIHRoZSB2Mi4gUGxlYXNlIHRha2UgYSBsb29rCj4gYW5kIGZpeCB0aGUgcHJvYmxlbSwg
b3IgcmV2ZXJ0L2Ryb3AgdGhlIG9mZmVuZGluZyBwYXRjaCwgdGhhbmtzIGluIGFkdmFuY2UuCgpJ
J2xsIGRyb3AgdGhlIHBhdGNoLiBJdCdzIGNsZWFyIHRoYXQgdGhpcyBpcyBnb2luZyB0byBiZSBk
aWZmaWN1bHQsCnNvIEkgd291bGQgYXNrIHlvdSB0byB0ZXN0IHRoZSBuZXh0IHZlcnNpb24sIHJh
dGhlciB0aGFuIHdhaXRpbmcgZm9yCml0IHRvIGFwcGVhciBpbiBsaW51eC1uZXh0LgoKVGhhbmtz
LgoKLS0gClJNSydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2Rl
dmVsb3Blci9wYXRjaGVzLwpGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVy
YmlhOiBzeW5jIGF0IDEwLjJNYnBzIGRvd24gNTg3a2JwcyB1cAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
