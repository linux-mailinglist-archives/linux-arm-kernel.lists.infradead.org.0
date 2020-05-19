Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 268751D93C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CbNjJgJzWwBy9YjnApldsgOY3u6i8zkGzqd9dJKwuoM=; b=u2pe22RBJx3mKi
	4vf+nSdtFI1YZtoVvTFjvvr6KcTlfv03e3iMhRpCUuC9R0I6mj0sbQXDDVhL5Afb8O2m20aQMwPOQ
	2egr94HsEW3gF+TbPArCIqsfx/yrJRBXgEXiWaz4tgLcnxaNSzozmds/Y9zD29xwrKLC4gqM9TLuz
	GFwAUlzw2b3rhEYF1CSEJR+icS7d5vaBa5zdyIM1pP8KJPrF6IKXpZMjz/b5ArfRNNe5zke5lla/s
	LkZ6Ple8P7cLSrCoBz41fXlLJuzSHgCydoNwoQIHwDAzjh/hncHiJrP7gWQas6MQyFTeE2prOoBVz
	Cp006C38tc6//0CRacwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayrN-0004HX-VF; Tue, 19 May 2020 09:48:29 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayq1-0003M9-Nr
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:47:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o2TB3YkBO2n8jSgZ++cw+OOgCnt3BO5Cd6TIeUugGeY=; b=ZbKd9sCs1la1/dUxbXFbkXutj
 yKD9rIsdCGkW/MuPK682/DAxhmfreODAKXW1+kDFW6zTV1vYM0mkEdkpF499o2MayW/L+xa4X9pzl
 V4lmOanBNCkJmJnNMFkryl5DhkQLzUHQ1gymyF5MCOLJ3yZsJJCEBLQHhLnaqq3dHo4vsCzjKKTKo
 MnWH7iPxnBpTPCeHHzTuhdiwU3ufnixsyqF23Z/rYxiokgA0ofFu1BJrPgwYqoqaToNL0bWFdszej
 +qwm6r5mg/CcU21n05yVJnFPnkVLZL8u0jntQfWVF2ThU4W/qN/pIgfCvmQT8aCGo3jcWlKaMupKp
 hWN3hTIsQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42184)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jaypd-0004sK-7e; Tue, 19 May 2020 10:46:41 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jaypZ-0005cD-Lx; Tue, 19 May 2020 10:46:37 +0100
Date: Tue, 19 May 2020 10:46:37 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
Message-ID: <20200519094637.GZ1551@shell.armlinux.org.uk>
References: <CGME20200429082134eucas1p2415c5269202529e6b019f2d70c1b5572@eucas1p2.samsung.com>
 <20200429082120.16259-1-geert+renesas@glider.be>
 <dleftjmu645mqn.fsf%l.stelmach@samsung.com>
 <CAMuHMdXxq6m6gebQbWvxDynDcZ7dLyZzKC_QroK63L8FGeac1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXxq6m6gebQbWvxDynDcZ7dLyZzKC_QroK63L8FGeac1Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_024705_812765_A76B73CD 
X-CRM114-Status: GOOD (  26.45  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Lukasz Stelmach <l.stelmach@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMTE6NDQ6MTdBTSArMDIwMCwgR2VlcnQgVXl0dGVyaG9l
dmVuIHdyb3RlOgo+IEhpIMWBdWthc3oKPiAKPiBUaGFua3MgZm9yIHlvdXIgcmVwb3J0IQo+IAo+
IE9uIFR1ZSwgTWF5IDE5LCAyMDIwIGF0IDEwOjU0IEFNIEx1a2FzeiBTdGVsbWFjaCA8bC5zdGVs
bWFjaEBzYW1zdW5nLmNvbT4gd3JvdGU6Cj4gPiBJdCB3YXMgPDIwMjAtMDQtMjkgxZtybyAxMDoy
MT4sIHdoZW4gR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+ID4gPiBDdXJyZW50bHksIHRoZSBz
dGFydCBhZGRyZXNzIG9mIHBoeXNpY2FsIG1lbW9yeSBpcyBvYnRhaW5lZCBieSBtYXNraW5nCj4g
PiA+IHRoZSBwcm9ncmFtIGNvdW50ZXIgd2l0aCBhIGZpeGVkIG1hc2sgb2YgMHhmODAwMDAwMC4g
IFRoaXMgbWFzayB2YWx1ZQo+ID4gPiB3YXMgY2hvc2VuIGFzIGEgYmFsYW5jZSBiZXR3ZWVuIHRo
ZSByZXF1aXJlbWVudHMgb2YgZGlmZmVyZW50IHBsYXRmb3Jtcy4KPiA+ID4gSG93ZXZlciwgdGhp
cyBkb2VzIHJlcXVpcmUgdGhhdCB0aGUgc3RhcnQgYWRkcmVzcyBvZiBwaHlzaWNhbCBtZW1vcnkg
aXMKPiA+ID4gYSBtdWx0aXBsZSBvZiAxMjggTWlCLCBwcmVjbHVkaW5nIGJvb3RpbmcgTGludXgg
b24gcGxhdGZvcm1zIHdoZXJlIHRoaXMKPiA+ID4gcmVxdWlyZW1lbnQgaXMgbm90IGZ1bGZpbGxl
ZC4KPiA+ID4KPiA+ID4gRml4IHRoaXMgbGltaXRhdGlvbiBieSBvYnRhaW5pbmcgdGhlIHN0YXJ0
IGFkZHJlc3MgZnJvbSB0aGUgRFRCIGluc3RlYWQsCj4gPiA+IGlmIGF2YWlsYWJsZSAoZWl0aGVy
IGV4cGxpY2l0bHkgcGFzc2VkLCBvciBhcHBlbmRlZCB0byB0aGUga2VybmVsKS4KPiA+ID4gRmFs
bCBiYWNrIHRvIHRoZSB0cmFkaXRpb25hbCBtZXRob2Qgd2hlbiBuZWVkZWQuCj4gPiA+Cj4gPiA+
IFRoaXMgYWxsb3dzIHRvIGJvb3QgTGludXggb24gcjdzOTIxMC9yemEybWV2YiB1c2luZyB0aGUg
NjQgTWlCIG9mIFNEUkFNCj4gPiA+IG9uIHRoZSBSWkEyTUVWQiBzdWIgYm9hcmQsIHdoaWNoIGlz
IGxvY2F0ZWQgYXQgMHgwQzAwMDAwMCAoQ1MzIHNwYWNlKSwKPiA+ID4gaS5lLiBub3QgYXQgYSBt
dWx0aXBsZSBvZiAxMjggTWlCLgo+ID4gPgo+ID4gPiBTdWdnZXN0ZWQtYnk6IE5pY29sYXMgUGl0
cmUgPG5pY29AZmx1eG5pYy5uZXQ+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEdlZXJ0IFV5dHRlcmhv
ZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+Cj4gPiA+IFJldmlld2VkLWJ5OiBOaWNvbGFz
IFBpdHJlIDxuaWNvQGZsdXhuaWMubmV0Pgo+ID4gPiBSZXZpZXdlZC1ieTogQXJkIEJpZXNoZXV2
ZWwgPGFyZGJAa2VybmVsLm9yZz4KPiA+ID4gVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxt
LnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4gPiA+IFRlc3RlZC1ieTogRG1pdHJ5IE9zaXBlbmtv
IDxkaWdldHhAZ21haWwuY29tPgo+ID4gPiAtLS0KPiA+Cj4gPiBbLi4uXQo+ID4KPiA+IEFwcGFy
ZW50bHkgcmVhZGluZyBwaHlzaWNhbCBtZW1vcnkgbGF5b3V0IGZyb20gRFRCIGJyZWFrcyBjcmFz
aGR1bXAKPiA+IGtlcm5lbHMuIEEgY3Jhc2hkdW1wIGtlcm5lbCBpcyBsb2FkZWQgaW50byBhIHJl
Z2lvbiBvZiBtZW1vcnksIHRoYXQgaXMKPiA+IHJlc2VydmVkIGluIHRoZSBvcmlnaW5hbCAoaS5l
LiB0byBiZSBjcmFzaGVkKSBrZXJuZWwuIFRoZSByZXNlcnZlZAo+ID4gcmVnaW9uIGlzIGxhcmdl
IGVub3VnaCBmb3IgdGhlIGNyYXNoZHVtcCBrZXJuZWwgdG8gcnVuIGNvbXBsZXRlbHkgaW5zaWRl
Cj4gPiBpdCBhbmQgZG9uJ3QgbW9kaWZ5IGFueXRoaW5nIG91dHNpZGUgaXQsIGp1c3QgcmVhZCBh
bmQgZHVtcCB0aGUgcmVtYWlucwo+ID4gb2YgdGhlIGNyYXNoZWQga2VybmVsLiBVc2luZyB0aGUg
aW5mb3JtYXRpb24gZnJvbSBEVEIgbWFrZXMgdGhlCj4gPiBkZWNvbXByZXNzb3IgcGxhY2UgdGhl
IGtlcm5lbCBvdXRzaWRlIG9mIHRoZSBkZWRpY2F0ZWQgcmVnaW9uLgo+ID4KPiA+IFRoZSBsb2cg
YmVsb3cgc2hvd3MgdGhhdCBhIHpJbWFnZSBhbmQgRFRCIGFyZSBsb2FkZWQgYXQgMHgxOGViODAw
MCBhbmQKPiA+IDB4MTkzZjYwMDAgKHBoeXNpY2FsKS4gVGhlIGtlcm5lbCBpcyBleHBlY3RlZCB0
byBydW4gYXQgMHgxODAwODAwMCwgYnV0Cj4gPiBpdCBpcyBkZWNvbXByZXNzZWQgdG8gMHgwMDAw
ODAwMCAoc2VlIHI0IHJlcG9ydGVkIGJlZm9yZSBqdW1waW5nIGZyb20KPiA+IHdpdGhpbiBfX2Vu
dGVyX2tlcm5lbCkuIElmIEkgd2VyZSB0byBzdWdnZXN0IHNvbWV0aGluZywgdGhlcmUgbmVlZCB0
byBiZQo+ID4gb25lIG1vcmUgYml0IG9mIGluZm9ybWF0aW9uIHBhc3NlZCBpbiB0aGUgRFRCIHRl
bGxpbmcgdGhlIGRlY29tcHJlc3Nvcgo+ID4gdG8gdXNlIHRoZSBvbGQgbWFza2luZyB0ZWNobmlx
dWUgdG8gZGV0ZXJtYWluIGtlcm5lbCBhZGRyZXNzLiBJdCB3b3VsZAo+ID4gYmUgc2V0IGluIHRo
ZSBEVEIgbG9hZGVkIGFsb25nIHdpdGggdGhlIGNyYXNoZHVtcCBrZXJuZWwuCj4gCj4gU2hvdWxk
bid0IHRoZSBEVEIgcGFzc2VkIHRvIHRoZSBjcmFzaGtlcm5lbCBkZXNjcmliZSB3aGljaCByZWdp
b24gb2YKPiBtZW1vcnkgaXMgdG8gYmUgdXNlZCBpbnN0ZWFkPwoKRGVmaW5pdGVseSBub3QuICBU
aGUgY3Jhc2hrZXJuZWwgbmVlZHMgdG8ga25vdyB3aGVyZSB0aGUgUkFNIGluIHRoZQptYWNoaW5l
IGlzLCBzbyB0aGF0IGl0IGNhbiBjcmVhdGUgYSBjb3JlZHVtcCBvZiB0aGUgY3Jhc2hlZCBrZXJu
ZWwuCgo+IERlc2NyaWJpbmcgInRvIHVzZSB0aGUgb2xkIG1hc2tpbmcgdGVjaG5pcXVlIiBzb3Vu
ZHMgYSBiaXQgaGFja2lzaCB0byBtZS4KPiBJIGd1ZXNzIGl0IGNhbm5vdCBqdXN0IHJlc3RyaWN0
IHRoZSAvbWVtb3J5IG5vZGUgdG8gdGhlIHJlc2VydmVkIHJlZ2lvbiwKPiBhcyB0aGUgY3Jhc2hr
ZXJuZWwgbmVlZHMgdG8gYmUgYWJsZSB0byBkdW1wIHRoZSByZW1haW5zIG9mIHRoZSBjcmFzaGVk
Cj4ga2VybmVsLCB3aGljaCBsaWUgb3V0c2lkZSB0aGlzIHJlZ2lvbi4KCkNvcnJlY3QuCgo+IEhv
d2V2ZXIsIHNvbWV0aGluZyB1bmRlciAvY2hvc2VuIHNob3VsZCB3b3JrLgoKWWV0IGFub3RoZXIg
c3RpY2t5IHBsYXN0ZXIuLi4KCi0tIApSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3LmFy
bWxpbnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KRlRUQyBmb3IgMC44bSAoZXN0LiAxNzYy
bSkgbGluZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMy4xTWJwcyBkb3duIDQyNGticHMgdXAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
