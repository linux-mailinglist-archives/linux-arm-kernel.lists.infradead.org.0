Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C1218CA10
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:19:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XcJLVsEDWADguH74AhnYJkyyTmvFk7O9SFDZ2ABqX8Y=; b=YS95yhBgkPi6wV
	S42PFtab2OSm8P5N34vf120wBn4Td26ozDK/mSvU1znkTz24GoVxMeyC5q/uy+etzDwcMMB2oK+JT
	8lF26qDorG7UXE1Q2SvCOw0ED5oyPynmFBPeniK5hF3VvUSWVWNWSUjmkggswFpSzI8lSxXgpar6g
	sBeqeNGjHuotha8xxR1vNyJl+TrLsnDIsTqGaIU1GQXByD+JlgQofOgmqu6mwVb7A/TA3NxfvY+vs
	mHzioXnQNBVfN+jyr2zRi27bKkSrcljbhCv8HKQGE4MxpptuQaHjVvIJRBuzovd4qzAtuY+XoKDOm
	HmoQJ/qhN/dYh6b2HiGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDoF-0003I9-Dt; Fri, 20 Mar 2020 09:19:19 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDo6-0003HT-RL
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:19:12 +0000
Received: by mail-ot1-f68.google.com with SMTP id a49so5271525otc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 02:19:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WN9UfvYf0lvNC9mxWTqFaq0Qp0Vsh7kPQa4AQHkdeXg=;
 b=qBombi3gHOzcvWDkpd9Wm9YcFO3Mbtkcu/ugl+QFisdv/PMczAtlK+xpc+DRZL9jOh
 /VD/u5IGFZ7zQ4GzwxoaQSOiTJEnxOjed0xX7q7UOXQ+yErY12jpnnv4H06sOMiRfDWH
 dsIg7K9YaXz46HHD2ZA6pcTsXh3CvChCv0yBKLXwBQK+iJsnr5lGIqrLP4bKR8wsp6Ac
 E24gwtKrdlVjViCS8zZ5y+Ar5vyE8UMpcETTo/OJ0UbbZkHZbRKPvR2n03nQkwoTsB7u
 BXmT5afr80ihI4LA40+YcB5UM2hIH/nVFJng5U3cn7fkXxo/syXCplko3sav2Cq5OW1j
 fTjA==
X-Gm-Message-State: ANhLgQ3bYud4I/PqnFiCRep3o0kmUydxSz/FGVsoT7LvwA0lm16Fb7U7
 pRQze0kYtcxps++eSiM4xj6xxXkiTINquK+4WcI=
X-Google-Smtp-Source: ADFU+vt+8iCcmQlShj3SkV8Wy2b8mhszkQOhM+PCwNvG6MRm1/8p99Gy8bsv9fZ9sr/JtEhLq0oc0wiUNzWCOjWQP8o=
X-Received: by 2002:a9d:1708:: with SMTP id i8mr5857263ota.250.1584695949403; 
 Fri, 20 Mar 2020 02:19:09 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200225112354eucas1p1300749b32c6809b6a22194c1a952a68c@eucas1p1.samsung.com>
 <20200127140716.15673-1-geert+renesas@glider.be>
 <d1b12473-5199-1cf6-25d1-a6ce79450e8e@samsung.com>
 <CAMuHMdUGu4eStpYp5W0SKJd8yrLLDTgF4__Jq_n+Z7SWtPM+Cg@mail.gmail.com>
 <90c006f2-8c13-2976-008f-37139ca49f37@gmail.com>
 <CAMuHMdVkhf+4CQwpf9tn3UfaMb=qoRRYS2XpwcgBMciTVmXjHA@mail.gmail.com>
 <75358399-c292-4e60-abdc-bd0729cf5c08@gmail.com>
In-Reply-To: <75358399-c292-4e60-abdc-bd0729cf5c08@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Mar 2020 10:18:57 +0100
Message-ID: <CAMuHMdX9PH+WUvONz2C8D1fRrZXn5rEND-p_my2mYvoyxF_gWA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: boot: Obtain start of physical memory from DTB
To: Dmitry Osipenko <digetx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_021910_904328_C0AE6846 
X-CRM114-Status: GOOD (  24.76  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

SGkgRG1pdHJ5LAoKT24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMzozNSBQTSBEbWl0cnkgT3NpcGVu
a28gPGRpZ2V0eEBnbWFpbC5jb20+IHdyb3RlOgo+IDE5LjAzLjIwMjAgMTE6MTgsIEdlZXJ0IFV5
dHRlcmhvZXZlbiDQv9C40YjQtdGCOgo+ID4gT24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMjoxMSBB
TSBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+IHdyb3RlOgo+ID4+IDI1LjAyLjIw
MjAgMTQ6NDAsIEdlZXJ0IFV5dHRlcmhvZXZlbiDQv9C40YjQtdGCOgo+ID4+PiBPbiBUdWUsIEZl
YiAyNSwgMjAyMCBhdCAxMjoyNCBQTSBNYXJlayBTenlwcm93c2tpCj4gPj4+IDxtLnN6eXByb3dz
a2lAc2Ftc3VuZy5jb20+IHdyb3RlOgo+ID4+Pj4gT24gMjcuMDEuMjAyMCAxNTowNywgR2VlcnQg
VXl0dGVyaG9ldmVuIHdyb3RlOgo+ID4+Pj4+IEN1cnJlbnRseSwgdGhlIHN0YXJ0IGFkZHJlc3Mg
b2YgcGh5c2ljYWwgbWVtb3J5IGlzIG9idGFpbmVkIGJ5IG1hc2tpbmcKPiA+Pj4+PiB0aGUgcHJv
Z3JhbSBjb3VudGVyIHdpdGggYSBmaXhlZCBtYXNrIG9mIDB4ZjgwMDAwMDAuICBUaGlzIG1hc2sg
dmFsdWUKPiA+Pj4+PiB3YXMgY2hvc2VuIGFzIGEgYmFsYW5jZSBiZXR3ZWVuIHRoZSByZXF1aXJl
bWVudHMgb2YgZGlmZmVyZW50IHBsYXRmb3Jtcy4KPiA+Pj4+PiBIb3dldmVyLCB0aGlzIGRvZXMg
cmVxdWlyZSB0aGF0IHRoZSBzdGFydCBhZGRyZXNzIG9mIHBoeXNpY2FsIG1lbW9yeSBpcwo+ID4+
Pj4+IGEgbXVsdGlwbGUgb2YgMTI4IE1pQiwgcHJlY2x1ZGluZyBib290aW5nIExpbnV4IG9uIHBs
YXRmb3JtcyB3aGVyZSB0aGlzCj4gPj4+Pj4gcmVxdWlyZW1lbnQgaXMgbm90IGZ1bGZpbGxlZC4K
PiA+Pj4+Pgo+ID4+Pj4+IEZpeCB0aGlzIGxpbWl0YXRpb24gYnkgb2J0YWluaW5nIHRoZSBzdGFy
dCBhZGRyZXNzIGZyb20gdGhlIERUQiBpbnN0ZWFkLAo+ID4+Pj4+IGlmIGF2YWlsYWJsZSAoZWl0
aGVyIGV4cGxpY2l0bHkgcGFzc2VkLCBvciBhcHBlbmRlZCB0byB0aGUga2VybmVsKS4KPiA+Pj4+
PiBGYWxsIGJhY2sgdG8gdGhlIHRyYWRpdGlvbmFsIG1ldGhvZCB3aGVuIG5lZWRlZC4KPiA+Pj4+
Pgo+ID4+Pj4+IFRoaXMgYWxsb3dzIHRvIGJvb3QgTGludXggb24gcjdzOTIxMC9yemEybWV2YiB1
c2luZyB0aGUgNjQgTWlCIG9mIFNEUkFNCj4gPj4+Pj4gb24gdGhlIFJaQTJNRVZCIHN1YiBib2Fy
ZCwgd2hpY2ggaXMgbG9jYXRlZCBhdCAweDBDMDAwMDAwIChDUzMgc3BhY2UpLAo+ID4+Pj4+IGku
ZS4gbm90IGF0IGEgbXVsdGlwbGUgb2YgMTI4IE1pQi4KPiA+Pj4+Pgo+ID4+Pj4+IFN1Z2dlc3Rl
ZC1ieTogTmljb2xhcyBQaXRyZSA8bmljb0BmbHV4bmljLm5ldD4KPiA+Pj4+PiBTaWduZWQtb2Zm
LWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+ID4+Pj4+
IFJldmlld2VkLWJ5OiBOaWNvbGFzIFBpdHJlIDxuaWNvQGZsdXhuaWMubmV0Pgo+ID4+Pj4+IC0t
LQo+ID4+Pj4+IEFnYWluc3QgYXJtL2Zvci1uZXh0Lgo+ID4+Pj4KPiA+Pj4+IFRoaXMgcGF0Y2gg
bGFuZGVkIHJlY2VudGx5IGluIGxpbnV4LW5leHQuIEl0IGJyZWFrcyBsZWdhY3kgYm9vdGluZyBm
cm9tCj4gPj4+PiB0aGUgekltYWdlICsgYXBwZW5kZWQgRFQgKyBjbWRsaW5lL21lbW9yeSBpbmZv
IHByb3ZpZGVkIHZpYSBBVEFHcy4gSQo+ID4+Pj4gd2lsbCBkZWJ1ZyBpdCBmdXJ0aGVyIG9uY2Ug
SSBmaW5kIHNvbWUgc3BhcmUgdGltZS4gV2hhdCBJIG5vdGljZWQgc28KPiA+Pj4+IGZhciwgdGhl
IGNtZGxpbmUvbWVtb3J5IGluZm8gaXMgbm90IHJlYWQgZnJvbSB0aGUgQVRBR3MsIG9ubHkgdGhl
IHZhbHVlcwo+ID4+Pj4gcHJvdmlkZWQgdmlhIGFwcGVuZGVkIERUIGFyZSB1c2VkLgo+ID4+Pgo+
ID4+PiBPb3BzLCBzb21ldGhpbmcgaGFwcGVuaW5nIGxpa2UgdGhpcyB3YXMgb25lIG9mIG15IGJp
Z2dlc3Qgd29ycmllcyB3aGVuCj4gPj4+IHBvc3RpbmcgdGhpcyBwYXRjaC4uLiBTb3JyeSBmb3Ig
dGhlIGJyZWFrYWdlLgo+ID4+Pgo+ID4+PiBJSVVJQywgdGhlIGtlcm5lbCBzdGlsbCBib290cywg
YnV0IGp1c3QgZG9lc24ndCB1c2UgdGhlIGluZm8gcGFzc2VkIGJ5IEFUQUdzPwo+ID4+Pgo+ID4+
PiBJJ2xsIGhhdmUgYSBjbG9zZXIgbG9vayBsYXRlciB0b2RheS4KPiA+Pj4gSW4gdGhlIG1lYW4g
dGltZSwgSSd2ZSBzZW50IHNvbWUgZGVidWcgY29kZSBJIHVzZWQgd2hlbiBkZXZlbG9waW5nCj4g
Pj4+IHRoaXMgcGF0Y2gsIHdoaWNoIG1heSBiZSB1c2VmdWwsIGhvcGVmdWxseS4KPiA+Pgo+ID4+
IE5WSURJQSBUZWdyYSBpcyBhbHNvIGFmZmVjdGVkIGJ5IHRoaXMgcGF0Y2guIEEgd2VlayBhZ28g
YW4gdXBkYXRlZAo+ID4+IHZlcnNpb24gb2YgdGhlIHBhdGNoIHdhcyBwdXNoZWQgaW50byBsaW51
eC1uZXh0IGFuZCBub3cgbWFjaGluZSBkb2Vzbid0Cj4gPj4gYm9vdCBhdCBhbGwuCj4gPgo+ID4g
SSdtIHNvcnJ5IHRvIGhlYXIgdGhhdC4KPiA+Cj4gPiBEaWQgdjIgd29yayBmb3IgeW91Pwo+Cj4g
U2FtZSBhcyBpdCB3YXMgZm9yIE1hcmVrLgo+Cj4gPiBBcmUgeW91IHN1cmUgdGhpcyB1cGRhdGVk
IHZlcnNpb24gaXMgdGhlIGN1bHByaXQ/IFRoZXJlIGFyZSBzZXZlcmFsIG90aGVyCj4gPiByZWNl
bnQgY2hhbmdlcyB0byBoZWFkLlMgaW4gYXJtL2Zvci1uZXh0Lgo+Cj4gWWVzCj4KPiA+IERvIHlv
dSBib290IGEgc2VwYXJhdGUgRFRCIG9yIGFuIGFwcGVuZGVkIERUQj8KPgo+IEFwcGVuZGVkCj4K
PiA+IERvIHlvdSB1c2UgQVRBR1M/Cj4KPiBZZXMKClRoYW5rcyBmb3IgdGhlIGluZm8hCgo+IEkg
cmVjYWxsZWQgdGhhdCBDT05GSUdfVEhVTUIyX0tFUk5FTD15IGlzIHNldCBpbiBteSBrZXJuZWwn
cyBjb25maWcgYW5kCj4gZGlzYWJsaW5nIHRodW1iMiBidWlsZCBmaXhlcyB0aGUgcHJvYmxlbS4g
UGxlYXNlIGNvcnJlY3QgaXQgaW4gdGhlIG5leHQKPiB2ZXJzaW9uIG9mIHRoZSBwYXRjaCwgdGhh
bmtzIGluIGFkdmFuY2UuCgpJbnRlcmVzdGluZy4gIEkgZW5hYmxlZCBDT05GSUdfVEhVTUIyX0tF
Uk5FTD15LCBhbmQgaXQgZG9lc24ndCBtYWtlCmEgZGlmZmVyZW5jZSBmb3IgdGhlIGZldyBib2Fy
ZCBjb21ib3MgSSd2ZSB0cmllZCAod2l0aC93aXRob3V0IGFwcGVuZGVkIERUQikuClNvIGl0IG11
c3QgYmUgcmVsYXRlZCB0byBBVEFHUy4gIFdpbGwgZGl2ZSBkZWVwZXIuLi4KClAuUy4gSSBuZXZl
ciByZWFsaXplZCBDT05GSUdfVEhVTUIyX0tFUk5FTD15IGhhZCBzdWNoIGEgYmlnIHNpemUKaW1w
YWN0OiBteSBrZXJuZWwgc2hydW5rIGJ5IGNhLiAxIE1pQi4KCkdye29ldGplLGVldGluZ31zLAoK
ICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0g
VGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3Jn
CgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxs
IG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBq
dXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
