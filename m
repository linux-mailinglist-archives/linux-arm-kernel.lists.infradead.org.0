Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9CBF4655
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:42:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0xDFv1MXtgWbCZjuEIDdgwd0waepEPwM8syzVZ5Fno=; b=SdGnXAadLLXlMJ
	TxjaHdrot6LEJ/bdMbAazfKwXkjWzp7miIPz4JAmrWvMIysB/GYYT+zBnQx6Kzjd1TWpAeZMxRtcY
	PG1wjKFELCR0kzZWCxYovsbsuZ0yopFZGuKeOX4aIO0LwdBDovC2vH7KmVWvRJJYh0Ri5GiO7I25I
	A3NOsmBbSjhI7rBuJ0ehE+nkstCsir7NmsNglGf0mdaAxvobl09WVCP8jsDnfrb5NNfAECEG6VM6d
	AyvPfMVNCAXMkfsolt+BwhGkadKSr/SUJXrvnMRJKotmnFuFh8MUam5AyUI9vzeG2rk0kZj2gLqyg
	4654xxDWsJehnUWjtU2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2eH-0002Hp-HH; Fri, 08 Nov 2019 11:41:53 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2e5-0002EH-Js
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 11:41:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1573213299; bh=DTFELkY0GJEkB2dfExMBAyshl9VFk13qMOSBa5R8u4o=;
 h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
 b=L1r9uYB1CgSwNl9LXzNO62rthSHIe/gMXCu/3zCOzUnXu9jtABcZOiGkCRdIBBXQ3
 p709SVqoWgeWqfqkUYRVnP79lTFH0l2ONEfdVLhK+M8gou89gfL0kLVV3sQKXwyxBN
 Qr52LP/xxXm00qR9AW+tn/NHI5FtWtHt88AMDIDw=
Date: Fri, 8 Nov 2019 12:41:38 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH] phy: allwinner: Fix GENMASK misuse
Message-ID: <20191108114138.snghk5n7kwuw7zz3@core.my.home>
Mail-Followup-To: Icenowy Zheng <icenowy@aosc.io>,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>, arnd@arndb.de,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 mark.rutland@arm.com, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, robh+dt@kernel.org,
 tglx@linutronix.de, wens@csie.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20191020134229.1216351-3-megous@megous.com>
 <20191107204645.13739-1-rikard.falkeborn@gmail.com>
 <20191107214514.kcz42mcehyrrif4o@core.my.home>
 <F563E52E-72BF-4297-A14F-DDE2B490DADB@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <F563E52E-72BF-4297-A14F-DDE2B490DADB@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_034142_007565_E6DD4B4A 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>, kishon@ti.com,
 paul.kocialkowski@bootlin.com, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, mripard@kernel.org, tglx@linutronix.de, wens@csie.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBOb3YgMDgsIDIwMTkgYXQgMDc6Mjk6MjFQTSArMDgwMCwgSWNlbm93eSBaaGVuZyB3
cm90ZToKPiAKPiAKPiDkuo4gMjAxOeW5tDEx5pyIOOaXpSBHTVQrMDg6MDAg5LiK5Y2INTo0NTox
NCwgIk9uZMWZZWogSmlybWFuIiA8bWVnb3VzQG1lZ291cy5jb20+IOWGmeWIsDoKPiA+SGVsbG8g
UmlrYXJkLAo+ID4KPiA+T24gVGh1LCBOb3YgMDcsIDIwMTkgYXQgMDk6NDY6NDVQTSArMDEwMCwg
UmlrYXJkIEZhbGtlYm9ybiB3cm90ZToKPiA+PiBBcmd1bWVudHMgYXJlIHN1cHBvc2VkIHRvIGJl
IG9yZGVyZWQgaGlnaCB0aGVuIGxvdy4KPiA+PiAKPiA+PiBTaWduZWQtb2ZmLWJ5OiBSaWthcmQg
RmFsa2Vib3JuIDxyaWthcmQuZmFsa2Vib3JuQGdtYWlsLmNvbT4KPiA+PiAtLS0KPiA+PiBTcG90
dGVkIHdoaWxlIHRyeWluZyB0byBhZGQgY29tcGlsZSB0aW1lIGNoZWNrcyBvZiBHRU5NQVNLIGFy
Z3VtZW50cy4KPiA+PiBQYXRjaCBoYXMgb25seSBiZWVuIGNvbXBpbGUgdGVzdGVkLgo+ID4KPiA+
dGhhbmsgeW91IQo+ID4KPiA+VGVzdGVkLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3Vz
LmNvbT4KPiAKPiBEb2VzIGl0IGFmZmVjdCBvciBmaXggdGhlIHBlcmZvcm1hbmNlPwoKU2VlIGhl
cmU6IGh0dHBzOi8vZm9ydW0uYXJtYmlhbi5jb20vdG9waWMvMTAxMzEtb3JhbmdlLXBpLWxpdGUy
LXVzYjMtbm93LXdvcmtpbmcvP2RvPWZpbmRDb21tZW50JmNvbW1lbnQ9ODg5MDQKClF1b3RlOgoK
PiBJdCBtYXkgb3IgbWF5IG5vdCBoZWxwLiBPbiBPcGkzIEkgc2VlIG5vIGNoYW5nZSwgcHJvYmFi
bHkgYmVjYXVzZSBIVUIgaXMKPiByZWFsbHkgY2xvc2UgdG8gdGhlIFNvQywgYnV0IG9uIGJvYXJk
cyB3aXRob3V0IGEgSFVCLCBTb0MncyBVU0IzIHBoeSB3aWxsCj4gaGF2ZSB0byBkcml2ZSB0aGUg
c2lnbmFsIG92ZXIgdGhlIGxvbmdlciBjYWJsZSBhbmQgdGhpcyBwYXRjaCBtaWdodCBiZW5lZml0
Cj4gdGhvc2UgYm9hcmRzLiAKCk1heWJlIHNvbWVvbmUgd2l0aCBib2FyZHMgd2l0aG91dCBQSFkg
d2lsbCB0ZXN0IGl0IG1vcmUuCgpyZWdhcmRzLAoJby4KCj4gPgo+ID5yZWdhcmRzLAo+ID4Jby4K
PiA+Cj4gPj4gIGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNTBpLXVzYjMuYyB8IDIgKy0K
PiA+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPj4g
Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNTBpLXVzYjMu
Ywo+ID5iL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNTBpLXVzYjMuYwo+ID4+IGluZGV4
IDExNjlmM2U4M2E2Zi4uYjFjMDRmNzFhMzFkIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvcGh5
L2FsbHdpbm5lci9waHktc3VuNTBpLXVzYjMuYwo+ID4+ICsrKyBiL2RyaXZlcnMvcGh5L2FsbHdp
bm5lci9waHktc3VuNTBpLXVzYjMuYwo+ID4+IEBAIC00OSw3ICs0OSw3IEBACj4gPj4gICNkZWZp
bmUgU1VOWElfTE9TX0JJQVMobikJCSgobikgPDwgMykKPiA+PiAgI2RlZmluZSBTVU5YSV9MT1Nf
QklBU19NQVNLCQlHRU5NQVNLKDUsIDMpCj4gPj4gICNkZWZpbmUgU1VOWElfVFhWQk9PU1RMVkwo
bikJCSgobikgPDwgMCkKPiA+PiAtI2RlZmluZSBTVU5YSV9UWFZCT09TVExWTF9NQVNLCQlHRU5N
QVNLKDAsIDIpCj4gPj4gKyNkZWZpbmUgU1VOWElfVFhWQk9PU1RMVkxfTUFTSwkJR0VOTUFTSygy
LCAwKQo+ID4+ICAKPiA+PiAgc3RydWN0IHN1bjUwaV91c2IzX3BoeSB7Cj4gPj4gIAlzdHJ1Y3Qg
cGh5ICpwaHk7Cj4gPj4gLS0gCj4gPj4gMi4yNC4wCj4gPj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
