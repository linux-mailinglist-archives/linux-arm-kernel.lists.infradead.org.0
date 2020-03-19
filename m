Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E51918AE3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 09:19:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWvhM29NrVLdo6ZytQdenZTtiWO0CoObrdFqsIoEH+8=; b=hmncNkqYylaTAo
	6RJr0+GNEJkKioqumj/RnT/Vn5eyGJFnnWlU7TG3dqApgeKM2wEj7XU1tboidMn0+jHpCAUt4/BmW
	9appkFZmMAW/aL/TD/XUJQFzHNtdEydE7s0uRKLunRKM6pJ67XTFb3HvB97DW+/TjCe5at9r46eu6
	cNHtJ3qXM4a1snxEj4eu/kxfA6TxMmYxmVgn2IY2pj/kwxnPn5InhvT4bPbvdJunfwJomxRVdvUYs
	pSxm/i+hT4oB9VpjvBiwSA6ogTMtXdWPY9HR6REp1lVeGyF6sfTKRg9wwjsVebaiFmV60R0LLU3wm
	p3+T7SpYAD19HCe3Uoig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEqOY-0003vO-Ii; Thu, 19 Mar 2020 08:19:14 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEqOP-0003v2-Fb
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 08:19:07 +0000
Received: by mail-oi1-f195.google.com with SMTP id 9so1746426oiq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 01:19:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PHHOTMHAVr2S4KOOH2EanfmchrOEz8G+tJOrFqdCMMU=;
 b=rdNe90kJt82mCL56NXnBRja4HePot+EjA3xinEMOqJesQA/iXmTkRO5LbAys08P+SS
 11xLYWaGXfFa0BT5ef8WqMi3iyJ09Jlp1hFNQlu7ZNEGs2VBQWhXR+yaYJ5TfNKf/O+Y
 rJsIVgMdDmjlYAXXjEvMlzmvTFoMSy5TYM6f1/DdAZlOKc/9HHsJtVlrsHZKHYDwCsLy
 TDfqO4rD7I29BSwFN3rjT5+bj8DYnS9kOrqCg8X/xL2u16AwqRyF9vWnY/pC9K86jSqO
 QlefxwReW24lJDk2Cb8iLcunZ0glb2XY6+p0mN1INin7BJdNNCZlAMpxnjNoAtrVLm3b
 athA==
X-Gm-Message-State: ANhLgQ0gxMWaxdKTJ7bYSTTJLMC97ItMGmKKNW6SyCHlbDm53LVRWfUh
 C6p9m9PSc2FVD/o7f2PmHwBpgSwn8XGe8XGOCR8=
X-Google-Smtp-Source: ADFU+vtVCuX/dlfREDf0wEJ5KirUT/mS2m1kp334SMVECxLAz8K7WxnAxWoq4sfqUY/ZxPO8apzvfDLyc+E4G9+G0LM=
X-Received: by 2002:aca:5ed4:: with SMTP id s203mr1531329oib.102.1584605944151; 
 Thu, 19 Mar 2020 01:19:04 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200225112354eucas1p1300749b32c6809b6a22194c1a952a68c@eucas1p1.samsung.com>
 <20200127140716.15673-1-geert+renesas@glider.be>
 <d1b12473-5199-1cf6-25d1-a6ce79450e8e@samsung.com>
 <CAMuHMdUGu4eStpYp5W0SKJd8yrLLDTgF4__Jq_n+Z7SWtPM+Cg@mail.gmail.com>
 <90c006f2-8c13-2976-008f-37139ca49f37@gmail.com>
In-Reply-To: <90c006f2-8c13-2976-008f-37139ca49f37@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Mar 2020 09:18:52 +0100
Message-ID: <CAMuHMdVkhf+4CQwpf9tn3UfaMb=qoRRYS2XpwcgBMciTVmXjHA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: boot: Obtain start of physical memory from DTB
To: Dmitry Osipenko <digetx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_011905_523161_D514A0C0 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRG1pdHJ5LAoKT24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMjoxMSBBTSBEbWl0cnkgT3NpcGVu
a28gPGRpZ2V0eEBnbWFpbC5jb20+IHdyb3RlOgo+IDI1LjAyLjIwMjAgMTQ6NDAsIEdlZXJ0IFV5
dHRlcmhvZXZlbiDQv9C40YjQtdGCOgo+ID4gT24gVHVlLCBGZWIgMjUsIDIwMjAgYXQgMTI6MjQg
UE0gTWFyZWsgU3p5cHJvd3NraQo+ID4gPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4gd3JvdGU6
Cj4gPj4gT24gMjcuMDEuMjAyMCAxNTowNywgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+ID4+
PiBDdXJyZW50bHksIHRoZSBzdGFydCBhZGRyZXNzIG9mIHBoeXNpY2FsIG1lbW9yeSBpcyBvYnRh
aW5lZCBieSBtYXNraW5nCj4gPj4+IHRoZSBwcm9ncmFtIGNvdW50ZXIgd2l0aCBhIGZpeGVkIG1h
c2sgb2YgMHhmODAwMDAwMC4gIFRoaXMgbWFzayB2YWx1ZQo+ID4+PiB3YXMgY2hvc2VuIGFzIGEg
YmFsYW5jZSBiZXR3ZWVuIHRoZSByZXF1aXJlbWVudHMgb2YgZGlmZmVyZW50IHBsYXRmb3Jtcy4K
PiA+Pj4gSG93ZXZlciwgdGhpcyBkb2VzIHJlcXVpcmUgdGhhdCB0aGUgc3RhcnQgYWRkcmVzcyBv
ZiBwaHlzaWNhbCBtZW1vcnkgaXMKPiA+Pj4gYSBtdWx0aXBsZSBvZiAxMjggTWlCLCBwcmVjbHVk
aW5nIGJvb3RpbmcgTGludXggb24gcGxhdGZvcm1zIHdoZXJlIHRoaXMKPiA+Pj4gcmVxdWlyZW1l
bnQgaXMgbm90IGZ1bGZpbGxlZC4KPiA+Pj4KPiA+Pj4gRml4IHRoaXMgbGltaXRhdGlvbiBieSBv
YnRhaW5pbmcgdGhlIHN0YXJ0IGFkZHJlc3MgZnJvbSB0aGUgRFRCIGluc3RlYWQsCj4gPj4+IGlm
IGF2YWlsYWJsZSAoZWl0aGVyIGV4cGxpY2l0bHkgcGFzc2VkLCBvciBhcHBlbmRlZCB0byB0aGUg
a2VybmVsKS4KPiA+Pj4gRmFsbCBiYWNrIHRvIHRoZSB0cmFkaXRpb25hbCBtZXRob2Qgd2hlbiBu
ZWVkZWQuCj4gPj4+Cj4gPj4+IFRoaXMgYWxsb3dzIHRvIGJvb3QgTGludXggb24gcjdzOTIxMC9y
emEybWV2YiB1c2luZyB0aGUgNjQgTWlCIG9mIFNEUkFNCj4gPj4+IG9uIHRoZSBSWkEyTUVWQiBz
dWIgYm9hcmQsIHdoaWNoIGlzIGxvY2F0ZWQgYXQgMHgwQzAwMDAwMCAoQ1MzIHNwYWNlKSwKPiA+
Pj4gaS5lLiBub3QgYXQgYSBtdWx0aXBsZSBvZiAxMjggTWlCLgo+ID4+Pgo+ID4+PiBTdWdnZXN0
ZWQtYnk6IE5pY29sYXMgUGl0cmUgPG5pY29AZmx1eG5pYy5uZXQ+Cj4gPj4+IFNpZ25lZC1vZmYt
Ynk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+Cj4gPj4+IFJl
dmlld2VkLWJ5OiBOaWNvbGFzIFBpdHJlIDxuaWNvQGZsdXhuaWMubmV0Pgo+ID4+PiAtLS0KPiA+
Pj4gQWdhaW5zdCBhcm0vZm9yLW5leHQuCj4gPj4KPiA+PiBUaGlzIHBhdGNoIGxhbmRlZCByZWNl
bnRseSBpbiBsaW51eC1uZXh0LiBJdCBicmVha3MgbGVnYWN5IGJvb3RpbmcgZnJvbQo+ID4+IHRo
ZSB6SW1hZ2UgKyBhcHBlbmRlZCBEVCArIGNtZGxpbmUvbWVtb3J5IGluZm8gcHJvdmlkZWQgdmlh
IEFUQUdzLiBJCj4gPj4gd2lsbCBkZWJ1ZyBpdCBmdXJ0aGVyIG9uY2UgSSBmaW5kIHNvbWUgc3Bh
cmUgdGltZS4gV2hhdCBJIG5vdGljZWQgc28KPiA+PiBmYXIsIHRoZSBjbWRsaW5lL21lbW9yeSBp
bmZvIGlzIG5vdCByZWFkIGZyb20gdGhlIEFUQUdzLCBvbmx5IHRoZSB2YWx1ZXMKPiA+PiBwcm92
aWRlZCB2aWEgYXBwZW5kZWQgRFQgYXJlIHVzZWQuCj4gPgo+ID4gT29wcywgc29tZXRoaW5nIGhh
cHBlbmluZyBsaWtlIHRoaXMgd2FzIG9uZSBvZiBteSBiaWdnZXN0IHdvcnJpZXMgd2hlbgo+ID4g
cG9zdGluZyB0aGlzIHBhdGNoLi4uIFNvcnJ5IGZvciB0aGUgYnJlYWthZ2UuCj4gPgo+ID4gSUlV
SUMsIHRoZSBrZXJuZWwgc3RpbGwgYm9vdHMsIGJ1dCBqdXN0IGRvZXNuJ3QgdXNlIHRoZSBpbmZv
IHBhc3NlZCBieSBBVEFHcz8KPiA+Cj4gPiBJJ2xsIGhhdmUgYSBjbG9zZXIgbG9vayBsYXRlciB0
b2RheS4KPiA+IEluIHRoZSBtZWFuIHRpbWUsIEkndmUgc2VudCBzb21lIGRlYnVnIGNvZGUgSSB1
c2VkIHdoZW4gZGV2ZWxvcGluZwo+ID4gdGhpcyBwYXRjaCwgd2hpY2ggbWF5IGJlIHVzZWZ1bCwg
aG9wZWZ1bGx5Lgo+Cj4gTlZJRElBIFRlZ3JhIGlzIGFsc28gYWZmZWN0ZWQgYnkgdGhpcyBwYXRj
aC4gQSB3ZWVrIGFnbyBhbiB1cGRhdGVkCj4gdmVyc2lvbiBvZiB0aGUgcGF0Y2ggd2FzIHB1c2hl
ZCBpbnRvIGxpbnV4LW5leHQgYW5kIG5vdyBtYWNoaW5lIGRvZXNuJ3QKPiBib290IGF0IGFsbC4K
CkknbSBzb3JyeSB0byBoZWFyIHRoYXQuCgpEaWQgdjIgd29yayBmb3IgeW91PwpBcmUgeW91IHN1
cmUgdGhpcyB1cGRhdGVkIHZlcnNpb24gaXMgdGhlIGN1bHByaXQ/IFRoZXJlIGFyZSBzZXZlcmFs
IG90aGVyCnJlY2VudCBjaGFuZ2VzIHRvIGhlYWQuUyBpbiBhcm0vZm9yLW5leHQuCgpEbyB5b3Ug
Ym9vdCBhIHNlcGFyYXRlIERUQiBvciBhbiBhcHBlbmRlZCBEVEI/CkRvIHlvdSB1c2UgQVRBR1M/
Cgo+IEkgY291bGRuJ3QgZmluZCB2MyBvbiB0aGUgTUwsIHNvIHJlcGx5aW5nIHRvIHRoZSB2Mi4g
UGxlYXNlIHRha2UgYSBsb29rCj4gYW5kIGZpeCB0aGUgcHJvYmxlbSwgb3IgcmV2ZXJ0L2Ryb3Ag
dGhlIG9mZmVuZGluZyBwYXRjaCwgdGhhbmtzIGluIGFkdmFuY2UuCgpWMyBpcyB2MiBjb21iaW5l
ZCB3aXRoICJbUEFUQ0hdIEFSTTogYm9vdDogRml4IEFUQUdzIHdpdGggYXBwZW5kZWQgRFRCIgoo
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcmVuZXNhcy1zb2MvMjAyMDAyMjUxNDQ3NDku
MTk4MTUtMS1nZWVydCtyZW5lc2FzQGdsaWRlci5iZS8pLgoKCkdye29ldGplLGVldGluZ31zLAoK
ICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBU
aGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcK
CkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwg
bXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1
c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
