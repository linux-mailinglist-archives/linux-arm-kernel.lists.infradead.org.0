Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D48D31D9A2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 16:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmpb3D0j6tmuAqB6Imv/Lktrvazp8RSds2UA9cT8iIc=; b=pqVQdiy104E4qO
	R9l7Zv49ctb/cZBtWe469Ebvj10+51FB7YdE0q9k5T6knURA5RmE/BwrwSPmuk6dE00TveAWRihW4
	rhW/widuOtFfYUp/BqYouW8Kc9B+zsVsuErz8xS1rirSzKt/5EiUDG5NCQMcXQfSgO9JE8igD/yDn
	7Ebi6YtTqxdLZqpwVg05F8J/s5Wba4n7Ixwoyo48MfT8CjlIO2NBnm4fZz00zrBEbnf192MixFaJO
	KP5s4rbRqTBdnlo9f9+e+y6OW9jiFJ83ODy9w6GLxgwpXD/+3pD/bdAanxRzb4uPUjaCXu5dGvTMu
	AiEPMWz3l4JN1ad7m4Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3QD-0001Y5-Ul; Tue, 19 May 2020 14:40:45 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3FI-0001pN-T7
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 14:29:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fL08D6YAELbTCQq/CP+0xzHTKkGqlgFrTATA2xxoDBA=; b=fELprJCdmW0Xmv0Rw7es+tLlz
 zDn2YC+jJ+9V01HIxqMUb3RsFGUcXkOyapbzECngwB02jHy266tVJg9p2+vtjfXSBHmtw7mUnWQOd
 yIChb3wO8boTp+d1qeG7vBAcTjFDnc4HjxNgs9J6Yo1cs3f6R0uTAJJAx00+WMhmJzzDgPi29zhWJ
 4sSoclOfgDlH7eN1JFhkkXev7foPKpGO39UB8M8b/8dKt8kk/mo5YSPjflz4D/8DvI+ArNxQxBjwA
 iIMYnJq9/rfku7yQIHr4me/2bHVoBq+58IKhYnkrwsMkA8ALwiPIfuP7OSWof8kpsXyh98Qv2COMo
 rbMQ+dCbA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42272)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jb3Es-0005am-Jv; Tue, 19 May 2020 15:29:02 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jb3Ek-0005nb-JH; Tue, 19 May 2020 15:28:54 +0100
Date: Tue, 19 May 2020 15:28:54 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
Message-ID: <20200519142854.GF1551@shell.armlinux.org.uk>
References: <CGME20200429082134eucas1p2415c5269202529e6b019f2d70c1b5572@eucas1p2.samsung.com>
 <20200429082120.16259-1-geert+renesas@glider.be>
 <dleftjmu645mqn.fsf%l.stelmach@samsung.com>
 <CAMuHMdXxq6m6gebQbWvxDynDcZ7dLyZzKC_QroK63L8FGeac1Q@mail.gmail.com>
 <20200519094637.GZ1551@shell.armlinux.org.uk>
 <CAMuHMdU5DG06G4H=+PH+OONMT_9oE==KS=wP+bLgY9xVCez6Ww@mail.gmail.com>
 <CAMj1kXH_s4qjDfTO03PkGNaiwfjmfkrZ-FE8vTm74QSrgoVt0A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXH_s4qjDfTO03PkGNaiwfjmfkrZ-FE8vTm74QSrgoVt0A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_072931_307580_FB90D185 
X-CRM114-Status: GOOD (  35.27  )
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
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMDM6NTY6NTlQTSArMDIwMCwgQXJkIEJpZXNoZXV2ZWwg
d3JvdGU6Cj4gT24gVHVlLCAxOSBNYXkgMjAyMCBhdCAxMzoyMSwgR2VlcnQgVXl0dGVyaG9ldmVu
IDxnZWVydEBsaW51eC1tNjhrLm9yZz4gd3JvdGU6Cj4gPgo+ID4gSGkgUnVzc2VsbCwKPiA+Cj4g
PiBDQyBkZXZpY2V0cmVlCj4gPgo+ID4gT24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMTE6NDYgQU0g
UnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluCj4gPiA8bGludXhAYXJtbGludXgub3JnLnVr
PiB3cm90ZToKPiA+ID4gT24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMTE6NDQ6MTdBTSArMDIwMCwg
R2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+ID4gPiA+IE9uIFR1ZSwgTWF5IDE5LCAyMDIwIGF0
IDEwOjU0IEFNIEx1a2FzeiBTdGVsbWFjaCA8bC5zdGVsbWFjaEBzYW1zdW5nLmNvbT4gd3JvdGU6
Cj4gPiA+ID4gPiBJdCB3YXMgPDIwMjAtMDQtMjkgxZtybyAxMDoyMT4sIHdoZW4gR2VlcnQgVXl0
dGVyaG9ldmVuIHdyb3RlOgo+ID4gPiA+ID4gPiBDdXJyZW50bHksIHRoZSBzdGFydCBhZGRyZXNz
IG9mIHBoeXNpY2FsIG1lbW9yeSBpcyBvYnRhaW5lZCBieSBtYXNraW5nCj4gPiA+ID4gPiA+IHRo
ZSBwcm9ncmFtIGNvdW50ZXIgd2l0aCBhIGZpeGVkIG1hc2sgb2YgMHhmODAwMDAwMC4gIFRoaXMg
bWFzayB2YWx1ZQo+ID4gPiA+ID4gPiB3YXMgY2hvc2VuIGFzIGEgYmFsYW5jZSBiZXR3ZWVuIHRo
ZSByZXF1aXJlbWVudHMgb2YgZGlmZmVyZW50IHBsYXRmb3Jtcy4KPiA+ID4gPiA+ID4gSG93ZXZl
ciwgdGhpcyBkb2VzIHJlcXVpcmUgdGhhdCB0aGUgc3RhcnQgYWRkcmVzcyBvZiBwaHlzaWNhbCBt
ZW1vcnkgaXMKPiA+ID4gPiA+ID4gYSBtdWx0aXBsZSBvZiAxMjggTWlCLCBwcmVjbHVkaW5nIGJv
b3RpbmcgTGludXggb24gcGxhdGZvcm1zIHdoZXJlIHRoaXMKPiA+ID4gPiA+ID4gcmVxdWlyZW1l
bnQgaXMgbm90IGZ1bGZpbGxlZC4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gRml4IHRoaXMgbGlt
aXRhdGlvbiBieSBvYnRhaW5pbmcgdGhlIHN0YXJ0IGFkZHJlc3MgZnJvbSB0aGUgRFRCIGluc3Rl
YWQsCj4gPiA+ID4gPiA+IGlmIGF2YWlsYWJsZSAoZWl0aGVyIGV4cGxpY2l0bHkgcGFzc2VkLCBv
ciBhcHBlbmRlZCB0byB0aGUga2VybmVsKS4KPiA+ID4gPiA+ID4gRmFsbCBiYWNrIHRvIHRoZSB0
cmFkaXRpb25hbCBtZXRob2Qgd2hlbiBuZWVkZWQuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFRo
aXMgYWxsb3dzIHRvIGJvb3QgTGludXggb24gcjdzOTIxMC9yemEybWV2YiB1c2luZyB0aGUgNjQg
TWlCIG9mIFNEUkFNCj4gPiA+ID4gPiA+IG9uIHRoZSBSWkEyTUVWQiBzdWIgYm9hcmQsIHdoaWNo
IGlzIGxvY2F0ZWQgYXQgMHgwQzAwMDAwMCAoQ1MzIHNwYWNlKSwKPiA+ID4gPiA+ID4gaS5lLiBu
b3QgYXQgYSBtdWx0aXBsZSBvZiAxMjggTWlCLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBTdWdn
ZXN0ZWQtYnk6IE5pY29sYXMgUGl0cmUgPG5pY29AZmx1eG5pYy5uZXQ+Cj4gPiA+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+
Cj4gPiA+ID4gPiA+IFJldmlld2VkLWJ5OiBOaWNvbGFzIFBpdHJlIDxuaWNvQGZsdXhuaWMubmV0
Pgo+ID4gPiA+ID4gPiBSZXZpZXdlZC1ieTogQXJkIEJpZXNoZXV2ZWwgPGFyZGJAa2VybmVsLm9y
Zz4KPiA+ID4gPiA+ID4gVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lA
c2Ftc3VuZy5jb20+Cj4gPiA+ID4gPiA+IFRlc3RlZC1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdl
dHhAZ21haWwuY29tPgo+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+Cj4gPiA+ID4gPiBbLi4uXQo+
ID4gPiA+ID4KPiA+ID4gPiA+IEFwcGFyZW50bHkgcmVhZGluZyBwaHlzaWNhbCBtZW1vcnkgbGF5
b3V0IGZyb20gRFRCIGJyZWFrcyBjcmFzaGR1bXAKPiA+ID4gPiA+IGtlcm5lbHMuIEEgY3Jhc2hk
dW1wIGtlcm5lbCBpcyBsb2FkZWQgaW50byBhIHJlZ2lvbiBvZiBtZW1vcnksIHRoYXQgaXMKPiA+
ID4gPiA+IHJlc2VydmVkIGluIHRoZSBvcmlnaW5hbCAoaS5lLiB0byBiZSBjcmFzaGVkKSBrZXJu
ZWwuIFRoZSByZXNlcnZlZAo+ID4gPiA+ID4gcmVnaW9uIGlzIGxhcmdlIGVub3VnaCBmb3IgdGhl
IGNyYXNoZHVtcCBrZXJuZWwgdG8gcnVuIGNvbXBsZXRlbHkgaW5zaWRlCj4gPiA+ID4gPiBpdCBh
bmQgZG9uJ3QgbW9kaWZ5IGFueXRoaW5nIG91dHNpZGUgaXQsIGp1c3QgcmVhZCBhbmQgZHVtcCB0
aGUgcmVtYWlucwo+ID4gPiA+ID4gb2YgdGhlIGNyYXNoZWQga2VybmVsLiBVc2luZyB0aGUgaW5m
b3JtYXRpb24gZnJvbSBEVEIgbWFrZXMgdGhlCj4gPiA+ID4gPiBkZWNvbXByZXNzb3IgcGxhY2Ug
dGhlIGtlcm5lbCBvdXRzaWRlIG9mIHRoZSBkZWRpY2F0ZWQgcmVnaW9uLgo+ID4gPiA+ID4KPiA+
ID4gPiA+IFRoZSBsb2cgYmVsb3cgc2hvd3MgdGhhdCBhIHpJbWFnZSBhbmQgRFRCIGFyZSBsb2Fk
ZWQgYXQgMHgxOGViODAwMCBhbmQKPiA+ID4gPiA+IDB4MTkzZjYwMDAgKHBoeXNpY2FsKS4gVGhl
IGtlcm5lbCBpcyBleHBlY3RlZCB0byBydW4gYXQgMHgxODAwODAwMCwgYnV0Cj4gPiA+ID4gPiBp
dCBpcyBkZWNvbXByZXNzZWQgdG8gMHgwMDAwODAwMCAoc2VlIHI0IHJlcG9ydGVkIGJlZm9yZSBq
dW1waW5nIGZyb20KPiA+ID4gPiA+IHdpdGhpbiBfX2VudGVyX2tlcm5lbCkuIElmIEkgd2VyZSB0
byBzdWdnZXN0IHNvbWV0aGluZywgdGhlcmUgbmVlZCB0byBiZQo+ID4gPiA+ID4gb25lIG1vcmUg
Yml0IG9mIGluZm9ybWF0aW9uIHBhc3NlZCBpbiB0aGUgRFRCIHRlbGxpbmcgdGhlIGRlY29tcHJl
c3Nvcgo+ID4gPiA+ID4gdG8gdXNlIHRoZSBvbGQgbWFza2luZyB0ZWNobmlxdWUgdG8gZGV0ZXJt
YWluIGtlcm5lbCBhZGRyZXNzLiBJdCB3b3VsZAo+ID4gPiA+ID4gYmUgc2V0IGluIHRoZSBEVEIg
bG9hZGVkIGFsb25nIHdpdGggdGhlIGNyYXNoZHVtcCBrZXJuZWwuCj4gPiA+ID4KPiA+ID4gPiBT
aG91bGRuJ3QgdGhlIERUQiBwYXNzZWQgdG8gdGhlIGNyYXNoa2VybmVsIGRlc2NyaWJlIHdoaWNo
IHJlZ2lvbiBvZgo+ID4gPiA+IG1lbW9yeSBpcyB0byBiZSB1c2VkIGluc3RlYWQ/Cj4gPiA+Cj4g
PiA+IERlZmluaXRlbHkgbm90LiAgVGhlIGNyYXNoa2VybmVsIG5lZWRzIHRvIGtub3cgd2hlcmUg
dGhlIFJBTSBpbiB0aGUKPiA+ID4gbWFjaGluZSBpcywgc28gdGhhdCBpdCBjYW4gY3JlYXRlIGEg
Y29yZWR1bXAgb2YgdGhlIGNyYXNoZWQga2VybmVsLgo+ID4KPiA+IFNvIHRoZSBEVEIgc2hvdWxk
IGRlc2NyaWJlIGJvdGggOy0pCj4gPgo+ID4gPiA+IERlc2NyaWJpbmcgInRvIHVzZSB0aGUgb2xk
IG1hc2tpbmcgdGVjaG5pcXVlIiBzb3VuZHMgYSBiaXQgaGFja2lzaCB0byBtZS4KPiA+ID4gPiBJ
IGd1ZXNzIGl0IGNhbm5vdCBqdXN0IHJlc3RyaWN0IHRoZSAvbWVtb3J5IG5vZGUgdG8gdGhlIHJl
c2VydmVkIHJlZ2lvbiwKPiA+ID4gPiBhcyB0aGUgY3Jhc2hrZXJuZWwgbmVlZHMgdG8gYmUgYWJs
ZSB0byBkdW1wIHRoZSByZW1haW5zIG9mIHRoZSBjcmFzaGVkCj4gPiA+ID4ga2VybmVsLCB3aGlj
aCBsaWUgb3V0c2lkZSB0aGlzIHJlZ2lvbi4KPiA+ID4KPiA+ID4gQ29ycmVjdC4KPiA+ID4KPiA+
ID4gPiBIb3dldmVyLCBzb21ldGhpbmcgdW5kZXIgL2Nob3NlbiBzaG91bGQgd29yay4KPiA+ID4K
PiA+ID4gWWV0IGFub3RoZXIgc3RpY2t5IHBsYXN0ZXIuLi4KPiA+Cj4gPiBJTUhPIHRoZSBvbGQg
bWFza2luZyB0ZWNobmlxdWUgaXMgdGhlIGhhY2t5IHNvbHV0aW9uIGNvdmVyZWQgYnkKPiA+IHBs
YXN0ZXJzLgo+ID4KPiAKPiBJIHRoaW5rIGRlYmF0aW5nIHdoaWNoIHNvbHV0aW9uIGlzIHRoZSBo
YWNreSBvbmUgd2lsbCBub3QgZ2V0IHVzIGFueXdoZXJlLgo+IAo+IFRoZSBzaW1wbGUgcmVhbGl0
eSBpcyB0aGF0IHRoZSBleGlzdGluZyBzb2x1dGlvbiB3b3JrcyBmaW5lIGZvcgo+IGV4aXN0aW5n
IHBsYXRmb3JtcywgYW5kIHNvIGFueSBjaGFuZ2VzIGluIHRoZSBsb2dpYyB3aWxsIGhhdmUgdG8g
YmUKPiBvcHQtaW4gaW4gb25lIHdheSBvciB0aGUgb3RoZXIuCj4gCj4gU2luY2UgVS1ib290IHN1
cHBvcnRzIEVGSSBib290IHRoZXNlIGRheXMsIG9uZSBwb3RlbnRpYWwgb3B0aW9uIGlzIHRvCj4g
cmVseSBvbiB0aGF0LiBJIGhhdmUgc29tZSBjaGFuZ2VzIGltcGxlbWVudGluZyB0aGlzIHRoYXQg
Z28gb24gdG9wIG9mCj4gdGhpcyBwYXRjaCwgYnV0IHRoZXkgZG9uJ3QgYWN0dWFsbHkgcmVseSBv
biBpdCAtIGl0IHdhcyBqdXN0IHRvCj4gcHJldmVudCBsZXhpY2FsIGNvbmZsaWN0cy4KPiAKPiBU
aGUgb25seSByZW1haW5pbmcgb3B0aW9ucyBpbW8gYXJlIGEga2VybmVsIGNvbW1hbmQgbGluZSBv
cHRpb24sIG9yIGEKPiBEVCBwcm9wZXJ0eSB0aGF0IHRlbGxzIHRoZSBkZWNvbXByZXNzb3IgdG8g
bG9vayBhdCB0aGUgbWVtb3J5IG5vZGVzLgo+IEJ1dCB1c2luZyB0aGUgRFQgbWVtb3J5IG5vZGVz
IG9uIGFsbCBwbGF0Zm9ybXMgbGlrZSB0aGlzIHBhdGNoIGRvZXMgaXMKPiBvYnZpb3VzbHkganVz
dCB0b28gcmlza3kuCj4gCj4gT24gYW5vdGhlciBub3RlLCBJIGRvIHRoaW5rIHRoZSB1c2FibGUt
bWVtb3J5LXJlZ2lvbiBwcm9wZXJ0eSBzaG91bGQKPiBiZSBpbXBsZW1lbnRlZCBmb3IgQVJNIGFz
IHdlbGwgLSByZWx5aW5nIG9uIHRoaXMgcm91bmRpbmcgdG8gZW5zdXJlCj4gdGhhdCB0aGUgZGVj
b21wcmVzc29yIGRvZXMgdGhlIHJpZ2h0IHRoaW5nIGlzIHRvbyBmcmFnaWxlLgoKV2hhdCBpcyAi
dG9vIGZyYWdpbGUiIGlzIHRyeWluZyB0byBjaGFuZ2UgdGhpcyBhbmQgZXhwZWN0aW5nIGV2ZXJ5
dGhpbmcKdG8gY29udGludWUgd29ya2luZyBhcyBpdCBkaWQgYmVmb3JlLgoKSG93IHdpbGwgc3dp
dGNoaW5nIHRvIEVGSSBoZWxwPyAgV29uJ3QgdGhlIGNyYXNoZHVtcCBrZXJuZWwgZGV0ZWN0IEVG
SQphbmQgdHJ5IHRvIGdldCB0aGUgbWVtb3J5IG1hcCBmcm9tIEVGSSwgd2hlcmVieSBpdCBydW5z
IGludG8gZXhhY3RseQp0aGUgc2FtZSBpc3N1ZSB0aGF0IHRoZSBEVCBhcHByb2FjaCBkb2VzPwoK
VGhlIGN1cnJlbnQgY3Jhc2hrZXJuZWwgc2l0dWF0aW9uIHdvcmtzIHByZWNpc2VseSBiZWNhdXNl
IG9mIHRoZSAxMjhNCm1hc2tpbmcgdGhhdCBpcyBiZWluZyBkb25lLgoKLS0gClJNSydzIFBhdGNo
IHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwpG
VFRDIGZvciAwLjhtIChlc3QuIDE3NjJtKSBsaW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0IDEzLjFN
YnBzIGRvd24gNDI0a2JwcyB1cAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
