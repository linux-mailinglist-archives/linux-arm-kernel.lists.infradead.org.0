Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD403CEC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DwE5jEgVVv8l35jVZvlBt1SVE/lGF5vxsdGZxUCmKF0=; b=n0u7M6XDRxh6y9
	1uiY/lMX8RP0nWcCRT0qXxYqBeYAGK+QhG+AHkLklVWuEtpZGH7bPmYOmTPtN7D7xoGCI7bkwBAVZ
	nFBeEHCipC/XefXnW8FkwSpVOm0xjZFsV+zA2J27jwCihkjRpZ9+Jp7bgzGJCWNuRA5B6fWV7WOCp
	ninRM3fDIYfHLHgzL3IztSR+jdsxdFYsLZ/z3NsrszZTiEQEL/ktTlUkw1c6CVF4i6Mgj1AG/JEc1
	zmQKwSjnqyo2SZWjlL5hzUL+Y7M0YrX99KfIW01CYybfghrsn59dyPw7ZgX8Am6S061IpViDdt9ow
	irHiFR/Ut2jABWQ8jL+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahpf-0007hv-Kc; Tue, 11 Jun 2019 14:33:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahpR-0007gZ-B1
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:32:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0ysm0ZI8hujjt+D76xSkaRSjMqQR8Ejr/MWUooVbSPo=; b=aeyxqHJTKtBbVvtGhT+Z2zRUq
 ELp1/5lx6aTkESZueqTYa3Uu9ArbwMWfB3Brzlj+j+2zOJj0NS32bmKwZsCcMNlkgsZ1iXQQ4Ngsv
 i16SuLXdG00oFU2obsHbQInz3BGh/Je5XDuQVxNPgFM07CtDiOv3HW1JBKe7RSZxhIz7PZYsr+QfY
 9iqJTodZSPEbh0/yweaHuGqY38Km3x50XnxbVMohl7ZYtCG/nUc+u/E4k3ERpdffsRqfWn9SwlkYF
 4vdIdVRObrzfX5zRc2wOALoSb18lKDdiacWViOwT44Ti+QLpPDCvl+JAD6pLaC8PaAatooQ0qzevr
 uP7LMQr8g==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:38608)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hahpL-00063s-1J; Tue, 11 Jun 2019 15:32:43 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hahpH-0007vX-VI; Tue, 11 Jun 2019 15:32:39 +0100
Date: Tue, 11 Jun 2019 15:32:39 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH] ARM: mvebu_v7_defconfig: fix Ethernet on Clearfog
Message-ID: <20190611143239.3v2cpg5o4u5gxzzw@shell.armlinux.org.uk>
References: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
 <87pnogzxmy.fsf@FE-laptop>
 <871fc85b-5f0a-40a4-ade2-0701796bcd9a@cesnet.cz>
 <87mujkzwkr.fsf@FE-laptop>
 <0609d750-de5e-49cb-97b5-43772c5bbe0d@cesnet.cz>
 <0f5e7886-f722-44ac-b64f-1f372a52938d@cesnet.cz>
 <87wohspdi7.fsf@FE-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wohspdi7.fsf@FE-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_073249_382513_EA9FC7DA 
X-CRM114-Status: GOOD (  27.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jan =?iso-8859-1?Q?Kundr=E1t?= <jan.kundrat@cesnet.cz>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Baruch Siach <baruch@tkos.co.il>, linux-arm-kernel@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgMDE6Mjg6MzJQTSArMDIwMCwgR3JlZ29yeSBDTEVNRU5U
IHdyb3RlOgo+IEphbiBLdW5kcsOhdCA8amFuLmt1bmRyYXRAY2VzbmV0LmN6PiB3cml0ZXM6Cj4g
Cj4gPiBPbiBzb2JvdGEgMTguIGt2xJt0bmEgMjAxOSAwOjUwOjI4IENFU1QsIEphbiBLdW5kcsOh
dCB3cm90ZToKPiA+Pj4gV2VsbCwgdGhpcyBpcyBqdXN0IGFib3V0IGNvbmZpZ3VyYXRpb24sIEkg
ZG9uJ3QgY29uc2lkZXIgdGhpcyBpcwo+ID4+PiBzb21ldGhpbmcgdGhhdCBpcyBhIGNhbmRpZGF0
ZSBmb3IgYSBmaXguCj4gPj4+IAo+ID4+PiBJZiB0aGVyZSBpcyBhIHJlZ3Jlc3Npb24sIHRoZW4s
IGl0IGlzIG1heWJlIGxvY2F0ZWQgaW4gdGhlIEtjb25maWcKPiA+Pj4gZGVwZW5kZW5jeS4KPiA+
Pj4gCj4gPj4+IE9mIGNvdXJzZSBJIGNhbiBjaGFuZ2UgbXkgbWluZCB3aXRoIGdvb2QgYXJndW1l
bnRzIDopCj4gPj4KPiA+PiBIaSBHcmVnb3J5LAo+ID4+IEkgYWdyZWUgdGhhdCBpdCdzIGp1c3Qg
YSBjb25maWcgYnVnLCBidXQgaXQncyBhbHNvIHNvbWV0aGluZyAKPiA+PiB3aGljaCBjYW4gc2ls
ZW50bHkgcHJvZHVjZSBicm9rZW4gc3lzdGVtcy4gSWYgdGhpcyBpcyBub3QgZml4ZWQsIAo+ID4+
IHBlb3BsZSBidWlsZGluZyB0aGVpciA1LjIga2VybmVscyB3aWxsIG5vdCBoYXZlIHdvcmtpbmcg
bmV0d29yayAKPiA+PiBvbiBDbGVhcmZvZyB1bmxlc3MgdGhleSB0YWtlIGFuIGV4dHJhIGFjdGlv
bi4gRm9yIGV4YW1wbGUsIGEgCj4gPj4gQnVpbGRyb290IGRlZmNvbmZpZyB0aGF0J3MgYmVlbiBh
dmFpbGFibGUgZm9yIHF1aXRlIHNvbWUgdGltZSAKPiA+PiAoYW5kIHdoaWNoIHVzZXMganVzdCBg
bXZlYnVfdjdfZGVmY29uZmlnYCBmb3Iga2VybmVsKSBzdWRkZW5seSAKPiA+PiBiZWNvbWVzIGJy
b2tlbi4KPiA+Pgo+ID4+IElzbid0IHRoZSB3aG9sZSBwb2ludCBvZiB0aGUgLXJjIHJlbGVhc2Ug
dG8gZmluZCAqYW5kKiBmaXggYnVncyAKPiA+PiBlYXJseT8gVGhpcyB0cml2aWFsIHBhdGNoIGRv
ZXMgbm90IGludHJvZHVjZSBhbnkgbmV3IG9yIHVudGVzdGVkIAo+ID4+IGNvZGUuIEkgbWFkZSBh
IGNob2ljZSB0byB0ZXN0IGEgcHJlLXJlbGVhc2Uga2VybmVsLCBJIGhpdCBhIGJ1ZyAKPiA+PiAt
LSBubyBiaWcgZGVhbC4gSSBmb3VuZCB0aGUgcm9vdCBjYXVzZSwgSSBzZW50IGEgdHJpdmlhbCBm
aXggCj4gPj4gdXBzdHJlYW0sIGFuZCBub3cgSSdtIHRvbGQgYnkgYSBtYWludGFpbmVyIHRoYXQg
dGhleSB3aWxsIGxldCAKPiA+PiB0aGUgbmV4dCBrZXJuZWwgdmVyc2lvbiwgd2hpY2ggaXMgYWJv
dXQgc2V2ZW4gLXJjIHJlbGVhc2VzIGF3YXksIAo+ID4+IGJlIHJlbGVhc2VkIHdpdGhvdXQgYSBm
dWxseSBmdW5jdGlvbmluZyBuZXR3b3JrLCBJIGFtIHN1cnByaXNlZCAKPiA+PiBieSB0aGF0LiBJ
IHdvdWxkIGhhdmUgdW5kZXJzdG9vZCB0aGlzIGJldHRlciBpZiB3ZSB3ZXJlIGF0IHRoZSAKPiA+
PiBmaW5hbCAtcmMgc3RhZ2UsIGJ1dCBkdXJpbmcgdGhlIG1lcmdlIHdpbmRvdz8gT3IgaXMgdGhh
dCBwZXJoYXBzIAo+ID4+IGEgbWlzdW5kZXJzdGFuZGluZyBhbmQgeW91J3JlIHBsYW5uaW5nIHRv
IHNlbmQgdGhpcyBpbiB0aW1lIAo+ID4+IGFmdGVyIC1yYzE/Cj4gPgo+ID4gSGkgR3JlZ29yeSwK
PiA+IHdhcyBJIHN1Y2Nlc3NmdWwgaW4gcGVyc3VhZGluZyB5b3UgdGhhdCB0aGlzIHBhdGNoIHNo
b3VsZCBiZSBpbmNsdWRlZCBpbiAKPiA+IHRoZSA1LjIgdHJlZSwgc28gdGhhdCBDbGVhcmZvZyBC
YXNlIGhhcyBhbGwgdGhyZWUgRXRoZXJuZXQgaW50ZXJmYWNlcz8KPiAKPiBGaW5hbGx5IEkgbW92
ZWQgdGhlIGNvbW1pdCBmcm9tIG12ZWJ1L2FybSB0byBtdmVidS9maXhlcy4gSSBzdGlsbCB0aGlu
awo+IHRoZSBwcm9ibGVtIGlzIGF0IGRyaXZlciBsZXZlbCwgYnV0IEkgZGlkbid0IHRha2UgZW5v
dWdoIHRpbWUgdG8gZmluZAo+IHdoZXJlIGFuZCB3ZSBkaWRuJ3QgaGF2ZSBhbnkgZmVlZGJhY2sg
ZnJvbSB0aGUgYXV0aG9yIG9mIHRoZSBpbml0aWxhCj4gcGF0Y2guCgpJIGRvbid0IHNlZSB0aGF0
IHRoZXJlJ3MgbXVjaCB0aGF0IEkgbmVlZCB0byBzYXksIGFuZCBJJ20gYXQgYSB0b3RhbApsb3Nz
IHRvIHdvcmsgb3V0IHdoeSB5b3UgdGhpbmsgaXQncyBhIHByb2JsZW0gYXQgZHJpdmVyIGxldmVs
LgoKV2h5IGRvIHlvdSB0aGluayBpdCdzIGFwcHJvcHJpYXRlIGZvciBtdm5ldGEgdG8ga25vdyB3
aGV0aGVyIHRoZSBhMzh4CmNvbXBoeSBkcml2ZXIgaXMgY29uZmlndXJlZCBmb3IgdGhlIGN1cnJl
bnQga2VybmVsIG9yIG5vdCwgZ2l2ZW4gdGhhdAptdm5ldGEgaXMgbm90IGV4Y2x1c2l2ZWx5IHVz
ZWQgb24gQXJtYWRhIDM4eCBzeXN0ZW1zPwoKV2UncmUgYWxyZWFkeSBkb2luZyB0aGUgYmVzdCB3
ZSBjYW4gZG8gd2l0aCBpZ25vcmluZyB0aGUgY29tcGh5IGlmCm5vdCBwcmVzZW50OyB0aGUgb25s
eSBjYXNlIHRoYXQgd2UgZGVmZXIgcHJvYmUgaXMgd2hlbgpkZXZtX29mX3BoeV9nZXQoKSByZXR1
cm5zIC1FUFJPQkVfREVGRVIsIHdoaWNoIGNvdWxkIG1lYW4gInRoZSBjb21waHkKZHJpdmVyIGlz
IGEgbW9kdWxlIGJ1dCBpcyBub3QgbG9hZGVkIHlldCIgb3IgInRoZSBjb21waHkgZHJpdmVyIGhh
cwpub3QgYmVlbiBwcm9iZWQgeWV0IiAtIHdlIGNhbid0IGlnbm9yZSB0aG9zZS4KCj4gU28gbGV0
J3MgdHJ5IHRvIHB1c2ggaXQgdG8gZml4ZXMsIEkgd2lsbCBkbyB0aGUgcHVsbCByZXF1ZXN0IGZv
ciBhcm0tc29jCj4gYmVmb3JlIGVuZCBvZiB0aGUgd2Vlay4KClRoYXQncyB0aGUgY29ycmVjdCBz
b2x1dGlvbiwgYW5kIGl0IHNob3VsZCBhbHNvIGhhdmUgYSBGaXhlczogdGFnIG9uCml0LiAgVW5m
b3J0dW5hdGVseSwga2VlcGluZyB0aGUgZGVmY29uZmlncyB1cCB0byBkYXRlIGlzIHF1aXRlIGEg
aGFyZApwcm9ibGVtIHVubGVzcyB5b3UgaGF2ZSBsb3RzIG9mIGNvbXB1dGluZyBwb3dlciB0byBi
dWlsZCBhbmQgYm9vdCBhbGwKdGhlIGRlZmNvbmZpZ3Mgb24gYWxsIHBsYXRmb3JtcyAoSSBkb24n
dC4pCgotLSAKUk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRwczovL3d3dy5hcm1saW51eC5vcmcudWsv
ZGV2ZWxvcGVyL3BhdGNoZXMvCkZUVEMgYnJvYWRiYW5kIGZvciAwLjhtaWxlIGxpbmUgaW4gc3Vi
dXJiaWE6IHN5bmMgYXQgMTIuMU1icHMgZG93biA2MjJrYnBzIHVwCkFjY29yZGluZyB0byBzcGVl
ZHRlc3QubmV0OiAxMS45TWJwcyBkb3duIDUwMGticHMgdXAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
