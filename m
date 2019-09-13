Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 877CEB19B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 10:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5N7iUXFpZcP1OxiZi8OMrTGrUIf1ZMpEB0dEHd6bQo=; b=dfLTQCmGwn89v0
	/Xsnlt0Qax5xEmV39h5UuAZHNcb5nTYJiAlf1clmz9r/ARPceCvzID3Dy8tssGSricbvqPTjjIXO3
	LGQQaPz9F+IuI5ZR4zrPGGObS/saRMR+VFFHfhi+hUT/X/CqWSq17bMA7baTA8HXRS0C6oqV5ZLTx
	Is1Zgsqwukd+fLFZa7xFtJkpRx1x15XyNPCiO2t55bqERBWHwfJoiK9OwQB/JcFqQ8rF7F5Igq7en
	OsBGpaBTvecuKtIjbUHvcqWGOQ5Bw+ew8bhdkk7RMg2v+HthPdEidPN/PZq0upeqgnKg7vWTiW5Rz
	Ke2UpMiHQACQ+Ix3bWcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8h79-0006yw-KR; Fri, 13 Sep 2019 08:39:35 +0000
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8h6J-0006xF-MC
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 08:38:46 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 468379C01CF;
 Fri, 13 Sep 2019 04:38:40 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 0tdnGDu6uDPD; Fri, 13 Sep 2019 04:38:39 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 5428B9C02B2;
 Fri, 13 Sep 2019 04:38:39 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 1nWHepbN-k1n; Fri, 13 Sep 2019 04:38:39 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
 [192.168.48.237])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 13DF59C01CF;
 Fri, 13 Sep 2019 04:38:39 -0400 (EDT)
Date: Fri, 13 Sep 2019 04:38:39 -0400 (EDT)
From: Gilles Doffe <gilles.doffe@savoirfairelinux.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <415531537.7768114.1568363919015.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <20190912101240.ml5jmdei5rvzesap@pengutronix.de>
References: <20190719104615.5329-1-gilles.doffe@savoirfairelinux.com>
 <20190722075341.e4ve45rneusiogtk@pengutronix.de>
 <978100557.7721358.1568282514403.JavaMail.zimbra@savoirfairelinux.com>
 <20190912101240.ml5jmdei5rvzesap@pengutronix.de>
Subject: Re: [PATCH v2] arm: dts: imx6qdl: add gpio expander pca9535
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.11_GA_3737 (ZimbraWebClient - GC76 (Linux)/8.8.11_GA_3737)
Thread-Topic: imx6qdl: add gpio expander pca9535
Thread-Index: Zvv68XcE8nddO8z0uGME4oRHp/yuRA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_013843_916964_962E278D 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.88.110.44 listed in list.dnswl.org]
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
Cc: mark rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, shawnguo <shawnguo@kernel.org>,
 s hauer <s.hauer@pengutronix.de>, rennes <rennes@savoirfairelinux.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, robh+dt <robh+dt@kernel.org>,
 linux-imx <linux-imx@nxp.com>, kernel <kernel@pengutronix.de>,
 =?utf-8?Q?J=C3=A9rome?= Oufella <jerome.oufella@savoirfairelinux.com>,
 festevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyY28sCgpBY2sgZm9yIGFsbCwgdjMgaW5jb21pbmcuCgpUaGFuayB5b3UsCkdpbGxlcwoK
LS0tLS0gTGUgMTIgU2VwIDE5LCDDoCAxMjoxMiwgTWFyY28gRmVsc2NoIG0uZmVsc2NoQHBlbmd1
dHJvbml4LmRlIGEgw6ljcml0IDoKCj4gSGkgR2lsbGVzLAo+IAo+IE9uIDE5LTA5LTEyIDA2OjAx
LCBHaWxsZXMgRG9mZmUgd3JvdGU6Cj4+IEhpIE1hcmNvLAo+PiAKPj4gVGhhbmtzIGZvciB5b3Vy
IHJlcGx5IGFuZCBzb3JyeSBhYm91dCB0aGUgZGVsYXkuCj4gCj4gTm8gd29ycmllcyA7KQo+IAo+
PiAtLS0tLSBMZSAyMiBKdWlsIDE5LCDDoCA5OjUzLCBNYXJjbyBGZWxzY2ggbS5mZWxzY2hAcGVu
Z3V0cm9uaXguZGUgYSDDqWNyaXQgOgo+PiAKPj4gPiBIaSBHaWxsZXMsCj4+ID4gCj4+ID4gY2Fu
IHlvdSBhZGFwdCB0aGUgcGF0Y2ggdGl0bGUsIEkgYXNzdW1lZCB0aGF0IHRoZSBiYXNlIGR0c2kg
aXMgYWRkaW5nIGEKPj4gPiBncGlvLWV4cGFuZGVyIHdoaWNoIG1ha2VzIG5vIHNlbnNlLgo+PiAK
Pj4gTXkgZmlyc3QgaW50ZW50IHdhcyB0byBhZGQgdGhlIGdwaW8tZXhwYW5kZXIgcGNhOTUzNSBp
bnRvIHRoZSBpbXg2cS1yZXgtcHJvLmR0cwo+PiBhbmQgaW4gYSBmdXR1cmUgaW14NnFwLXJleC11
bHRyYS5kdHMKPj4gSG93ZXZlciBJIG5vdGljZWQgdGhhdCB0aGUgc2d0bDUwMDAgd2FzIGFscmVh
ZHkgaW4gdGhlIGR0c2kuCj4+IEl0IGlzIG1heWJlIGR1ZSB0byB0aGUgZmFjdCB0aGF0IGxpa2Ug
dGhlIHBjYTk1MzUsIHRoZSBzZ3RsNTAwMCBpcyBwcmVzZW50IG9uCj4+IHRoZSBiYXNlYm9hcmQg
bm90IG9uIHRoZSBTT00uCj4+IFRodXMgSSBndWVzcyB0aGF0IGJhc2Vib2FyZCBzdHVmZiBjb21t
b24gdG8gYWxsIHJleCBTT00gc2hvdWxkIGJlIGluCj4+IGlteDZxZGwtcmV4LmR0c2kgYW5kIG5v
dCBpbiB0aGUgZHRzLgo+PiBEb2VzLWl0IHNlZW0gY29ycmVjdCB0byB5b3UgPwo+IAo+IFllcyB0
aGlzIGlzIGNvcnJlY3Qgd2hhdCBTaGF3biBhbmQgSSBtZWFuIGlzIHRoYXQgeW91IHNob3VsZCBh
ZGFwdCB0aGUKPiBjb21taXQgdGl0bGUuIFNoYXduIGFscmVhZHkgZ2l2ZSB5b3UgYW4gZXhhbXBs
ZS4KPiAKPj4gPiAKPj4gPiBPbiAxOS0wNy0xOSAxMjo0NiwgR2lsbGVzIERPRkZFIHdyb3RlOgo+
PiA+PiBUaGUgcGNhOTUzNSBncGlvIGV4cGFuZGVyIGlzIHByZXNlbnQgb24gdGhlIFJleCBiYXNl
Ym9hcmQsIGJ1dCBtaXNzaW5nCj4+ID4+IGZyb20gdGhlIGR0c2kuCj4+ID4+IAo+PiA+PiBBZGQg
dGhlIG5ldyBncGlvIGNvbnRyb2xsZXIgYW5kIHRoZSBhc3NvY2lhdGVkIGludGVycnVwdCBsaW5l
Cj4+ID4+IE1YNlFETF9QQURfTkFOREZfQ1MzX19HUElPNl9JTzE2Lgo+PiA+PiAKPj4gPj4gU2ln
bmVkLW9mZi1ieTogR2lsbGVzIERPRkZFIDxnaWxsZXMuZG9mZmVAc2F2b2lyZmFpcmVsaW51eC5j
b20+Cj4+ID4+IC0tLQo+PiA+IAo+PiA+IEhhdmluZyBhIGNoYW5nZWxvZyB3b3VsZCBiZSBuaWNl
IHRvby4KPj4gPiAKPj4gPj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcmV4LmR0c2kgfCAx
OSArKysrKysrKysrKysrKysrKysrCj4+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9u
cygrKQo+PiA+PiAKPj4gPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwt
cmV4LmR0c2kKPj4gPj4gYi9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLXJleC5kdHNpCj4+ID4+
IGluZGV4IDk3ZjE2NTkxNDRlYS4uYjUxN2VmYjIyZmNiIDEwMDY0NAo+PiA+PiAtLS0gYS9hcmNo
L2FybS9ib290L2R0cy9pbXg2cWRsLXJleC5kdHNpCj4+ID4+ICsrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2lteDZxZGwtcmV4LmR0c2kKPj4gPj4gQEAgLTEzNiw2ICsxMzYsMTkgQEAKPj4gPj4gIAkJ
Y29tcGF0aWJsZSA9ICJhdG1lbCwyNGMwMiI7Cj4+ID4+ICAJCXJlZyA9IDwweDU3PjsKPj4gPj4g
IAl9Owo+PiA+PiArCj4+ID4+ICsJcGNhOTUzNTogZ3BpbzhAMjcgewo+PiA+PiArCQljb21wYXRp
YmxlID0gIm54cCxwY2E5NTM1IjsKPj4gPj4gKwkJcmVnID0gPDB4Mjc+Owo+PiA+IAo+PiA+IFRo
ZSBpMmMgZGV2aWNlcyBhcmUgb3JkZXJkIGJ5IHRoZWlyIGkyYy1hZGRyZXNzZXMgc3RhcnRpbmcg
ZnJvbSB0aGUKPj4gPiBsb3dlc3QuCj4+ID4KPj4gCj4+IEFjay4KPj4gCj4+ID4+ICsJCWdwaW8t
Y29udHJvbGxlcjsKPj4gPj4gKwkJI2dwaW8tY2VsbHMgPSA8Mj47Cj4+ID4+ICsJCXBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Cj4+ID4+ICsJCXBpbmN0cmwtMCA9IDwmcGluY3RybF9wY2E5NTM1
PjsKPj4gPj4gKwkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzY+Owo+PiA+PiArCQlpbnRlcnJ1
cHRzID0gPDE2IElSUV9UWVBFX0xFVkVMX0xPVz47Cj4+ID4+ICsJCWludGVycnVwdC1jb250cm9s
bGVyOwo+PiA+PiArCQkjaW50ZXJydXB0LWNlbGxzID0gPDI+Owo+IAo+IEFzIHlvdSBwb2ludGVk
IG91dCBhYm92ZSB0aGlzIGRldmljZSBpc24ndCBhdmFpbGFibGUgb24gdGhlCj4gaW14NmRsLXJl
eC1iYXNpYz8gWW91IHNob3VsZCBhZGQ6ICdzdGF0dXMgPSAiZGlzYWJsZWQiOycgaWYgdGhpcyBp
cyB0aGUKPiBjYXNlLgo+IAo+IFJlZ2FyZHMsCj4gIE1hcmNvCj4gCj4+ID4+ICsJfTsKPj4gPj4g
IH07Cj4+ID4+ICAKPj4gPj4gICZpMmMzIHsKPj4gPj4gQEAgLTIzNyw2ICsyNTAsMTIgQEAKPj4g
Pj4gIAkJCT47Cj4+ID4+ICAJCX07Cj4+ID4+ICAKPj4gPj4gKwkJcGluY3RybF9wY2E5NTM1OiBw
Y2E5NTM1IHsKPj4gPj4gKwkJCWZzbCxwaW5zID0gPAo+PiA+PiArCQkJCU1YNlFETF9QQURfTkFO
REZfQ1MzX19HUElPNl9JTzE2CTB4MDAwMTcwNTkKPj4gPiAKPj4gPiBUaGUgcGlubXV4IGJlbG93
IGRvbid0IHVzZSB0aGUgbGVhZGluZyB6ZXJvJ3MgaWYgeW91IGFyZSB0aGUgZmlyc3QgSQo+PiA+
IHdvdWxkIGRyb3AgdGhhdC4KPj4gPiAKPj4gPiBSZWdhcmRzLAo+PiA+ICBNYXJjbwo+PiA+Cj4+
IAo+PiBBY2suCj4+IAo+PiBSZWdhcmRzLAo+PiBHaWxsZXMKPj4gCj4gCj4gLS0KPiBQZW5ndXRy
b25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfAo+IEluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8
IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8Cj4gUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBI
aWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKPiBBbXRz
Z2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEt
MjA2OTE3LTU1NTUgfAoKLS0gCkdpbGxlcyBET0ZGRSAKU2VuaW9yIFByb2R1Y3QgRW5naW5lZXJp
bmcgQ29uc3VsdGFudCB8IFJlbm5lcywgRnIgCkJ1cmVhdSAKWyB0ZWw6KzMzOTcyNDY4OTgwIHwg
KCszMykgOcKgNzLCoDQ2wqA4OcKgODAgXSBwLiA6IDYwMSAKQ2VsbHVsYWlyZSAKWyB0ZWw6KzMz
NjYwMDI1ODY2IHwgKCszMykgNsKgNjDCoDAywqA1OMKgNjYgXQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
