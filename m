Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D94B45A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 21:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SosRCKsEoIX+H2TVCmkD7vX6/A0brPGwQzBHu/jYWuk=; b=dKKBQZPUY/pa3c
	va45V6dQpLw5S0gdKE/w3ODxhvCceemc4uUcLeHb6dpVjJtC9zPsUS05zIWUrRJ9V8dlzPkhnJAJ1
	aa6HAExx8duODLx6ayuGYI+OHBy8+xmb8aQwId3BJaqmVVveYeNjGCB1vzBHMraWIuKfTBr/OnXpF
	gCsP9vdzFFnNA3eSYahQTF8vMvudqGZABXL3ZoJYXC/zYxrRhvalMzjWBSs1b4TcVghjxd7NInAdt
	Xoeawuk5xb4RpbkGBvIBClfUnz+x3IaigBmIUOkc7xuWoVHvmdAvNMtJFQU//3DNTmzXL54NkKZ5h
	nqeOaOZn3V0R8Ey6IPJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKSZy-0003a0-12; Sat, 27 Apr 2019 19:01:42 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKSZo-0003Z0-BN
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 19:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1556391687; bh=1k0KSGJbvVlz3bAl3os5LWwpFDV2ca8mHPbTDpXh5AI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oEf5axQHLSAKGWixMf6339L/blKLRClp75iCuuRnhZeZGG5PXXXOpKhxCr8hb0mtn
 E8h6myV5BEH46kzLXQEt9S8mUWOoJGCzdW94kyP5svV9TxeQ26KykrpejyWLcimAVi
 lwQUlEvtRs9vSEZqkJpG1JXzyQbGNMdUP2BnPesA=
Date: Sat, 27 Apr 2019 21:01:23 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 6/9] dt-bindings: display: hdmi-connector: Add DDC
 power supply
Message-ID: <20190427190123.6aik7by3fgkyjmq7@core.my.home>
Mail-Followup-To: Rob Herring <robh@kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Mark Rutland <mark.rutland@arm.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 devicetree@vger.kernel.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
References: <20190413165418.27880-1-megous@megous.com>
 <20190413165418.27880-7-megous@megous.com>
 <20190426182337.GA22245@bogus>
 <20190426192031.wtoaxctjo2qxxquq@core.my.home>
 <CAL_Jsq+o1j6AGL9UnhN1tV150DsFug6pg+UPEJ9EKqBc6rgq_w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+o1j6AGL9UnhN1tV150DsFug6pg+UPEJ9EKqBc6rgq_w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_120132_892791_2F6F4F6B 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev <netdev@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, Chen-Yu Tsai <wens@csie.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jose Abreu <joabreu@synopsys.com>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBcHIgMjYsIDIwMTkgYXQgMDM6MDI6NTBQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gT24gRnJpLCBBcHIgMjYsIDIwMTkgYXQgMjoyMCBQTSBPbmTFmWVqIEppcm1hbiA8bWVn
b3VzQG1lZ291cy5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIEZyaSwgQXByIDI2LCAyMDE5IGF0IDAx
OjIzOjM3UE0gLTA1MDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+ID4gPiBPbiBTYXQsIEFwciAxMywg
MjAxOSBhdCAwNjo1NDoxNVBNICswMjAwLCBtZWdvdXNAbWVnb3VzLmNvbSB3cm90ZToKPiA+ID4g
PiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+ID4gPgo+ID4gPiA+
IFNvbWUgQWxsd2lubmVyIFNvQyB1c2luZyBib2FyZHMgKE9yYW5nZSBQaSAzIGZvciBleGFtcGxl
KSBuZWVkIHRvIGVuYWJsZQo+ID4gPiA+IG9uLWJvYXJkIHZvbHRhZ2Ugc2hpZnRpbmcgbG9naWMg
Zm9yIHRoZSBEREMgYnVzIHRvIGJlIHVzYWJsZS4gVXNlCj4gPiA+ID4gZGRjLXN1cHBseSBvbiB0
aGUgaGRtaS1jb25uZWN0b3IgdG8gbW9kZWwgdGhpcy4KPiA+ID4gPgo+ID4gPiA+IEFkZCBiaW5k
aW5nIGRvY3VtZW50YXRpb24gZm9yIG9wdGlvbmFsIGRkYy1zdXBwbHkgcHJvcGVydHkuCj4gPiA+
ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNv
bT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9j
b25uZWN0b3IvaGRtaS1jb25uZWN0b3IudHh0ICAgICB8IDEgKwo+ID4gPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9jb25uZWN0b3IvaGRtaS1jb25uZWN0
b3IudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvY29ubmVj
dG9yL2hkbWktY29ubmVjdG9yLnR4dAo+ID4gPiA+IGluZGV4IDUwOGFlZTQ2MWUwZC4uMzMwODVh
ZWIwYmI5IDEwMDY0NAo+ID4gPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kaXNwbGF5L2Nvbm5lY3Rvci9oZG1pLWNvbm5lY3Rvci50eHQKPiA+ID4gPiArKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9jb25uZWN0b3IvaGRtaS1j
b25uZWN0b3IudHh0Cj4gPiA+ID4gQEAgLTksNiArOSw3IEBAIE9wdGlvbmFsIHByb3BlcnRpZXM6
Cj4gPiA+ID4gIC0gbGFiZWw6IGEgc3ltYm9saWMgbmFtZSBmb3IgdGhlIGNvbm5lY3Rvcgo+ID4g
PiA+ICAtIGhwZC1ncGlvczogSFBEIEdQSU8gbnVtYmVyCj4gPiA+ID4gIC0gZGRjLWkyYy1idXM6
IHBoYW5kbGUgbGluayB0byB0aGUgSTJDIGNvbnRyb2xsZXIgdXNlZCBmb3IgRERDIEVESUQgcHJv
YmluZwo+ID4gPiA+ICstIGRkYy1zdXBwbHk6IHRoZSBwb3dlciBzdXBwbHkgZm9yIHRoZSBEREMg
YnVzCj4gPiA+Cj4gPiA+IEl0J3Mgbm90IGp1c3QgZm9yIEREQy4gSXQgcG93ZXJzIHRoZSBjaGlw
cyBpbiBicmlkZ2UgZG9uZ2xlcyBmb3IKPiA+ID4gZXhhbXBsZS4gUHJldHR5IG11Y2ggZXZlcnkg
ZGlhZ3JhbSBJIGZpbmQganVzdCBjYWxscyBpdCA1ViBvciArNVYuCj4gPiA+Cj4gPiA+IFNvIGhv
dyBhYm91dCAnNVYtc3VwcGx5JyBvciAndjVWLXN1cHBseSc/Cj4gPgo+ID4gSnVzdCB0byBiZSBz
dXJlLCB0aGUgc2NoZW1hdGljIHRoYXQgaW5zcGlyZWQgdGhpcyBjaGFuZ2UgbG9va3MgbGlrZSB0
aGlzOgo+ID4KPiA+IGh0dHBzOi8vbWVnb3VzLmNvbS9kbC90bXAvMzNiMjk3MWRlNjk0M2U5ZC5w
bmcKPiA+Cj4gPiBIRE1JLTVWIGlzIGFsd2F5cyBvbiwgYW5kIHdoYXQgaXMgcmVhbGx5IGJlaW5n
IGVuYWJsZWQgaGVyZSBhcmUgbW9zZmV0cwo+ID4gY29ubmVjdGVkIHRvIEREQ19DRUNfRU4gYW5k
IG5vdCB0aGUgSERNSS01ViBwb3dlciBzdXBwbHkuIFNvIGluIHRoaXMgY2FzZSBpdAo+ID4gcmVh
bGx5IGlzIGp1c3QgZm9yIEREQy4gSXQgaXMgY29uY2VpdmFibGUgdGhhdCBzb21lIGJvYXJkcyBt
YXkgbmVlZCBib3RoIHRvCj4gPiBlbmFibGUgNVYgZm9yIEhETUkgY2lyY3VpdHJ5IGFuZCBzb21l
IHNlcGFyYXRlIHBvd2VyIHNoaWZ0aW5nIGxvZ2ljIGZvcgo+ID4gRERDIGJ1cy4KPiAKPiBPa2F5
LCBub3Qgd2hhdCBJIHRob3VnaHQgeW91IHdlcmUgZGVmaW5pbmcuIEREQ19DRUNfRU4gaXMgYSBH
UElPIGxpbmU/Cj4gSSB3b3VsZG4ndCBjaGFyYWN0ZXJpemUgdGhpcyBhcyBhIHZvbHRhZ2UgcmFp
bCwgc28gSSBkb24ndCB0aGluayBpdAo+IHNob3VsZCBiZSBhIHN1cHBseS4gUGVyaGFwcyAnZGRj
LWVuLWdwaW9zJz8KClllcyBpdCdzIEdQSU8uIEknbGwgaW1wbGVtZW50IGl0IGFzIEdQSU8uCgo+
IFdlIGNlcnRhaW5seSB3YW50IHRvIG1ha2UgaXQgY2xlYXIgdGhpcyBpcyBub3QgdGhlIDVWIHN1
cHBseS4KClJpZ2h0LiBUaGFuayB5b3UgZm9yIHJldmlldy4KCnJlZ2FyZHMsCglPbmRyZWoKCj4g
Um9iCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
