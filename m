Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B174748D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 14:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YsUbda176BhMepuDMT62QsI4jS6xqDTzK83WUkAVHmc=; b=S1Kl+R4hcq5S2A
	CHUdH9XUassu6HnKtxeaxnFoCSJKxA5TrGIv1JsPA1eidBX7n3dVl+3q0Q/hvIm6hL7aNyqxbZ4IN
	9MzfQkgK0DhKmDLxxQOt6DWPpD+e1lHjDZaW2yKG7AtvedE1xrRONZMkkzc61GHuz5b+0UvfJ6J+6
	+qtBTL9eetD9zzLrxzxX7K31KuuqxDUNhYo0BWtni5eOYBSa2bRQSxP/M/nt+GW5K0G/r9n/Ljq9i
	nWN6b78TOadS9P1dVV7FW2o1DMdNnOibrcMUopHElesRFlAtEbdTzxYf6idLS0+HdvE2c3GlsdO4a
	9do26Ys5Zq+Sqbe6VYJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcUaG-00088q-Va; Sun, 16 Jun 2019 12:48:32 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcUa0-00087s-NA
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 12:48:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1560689291; bh=qBJ9B0Xckt+HWWzbJLcLsikCH1xzty0YELtzbx90mkg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oPWAnWFIpuRP6ETv3DDOQhM2QI5kMHea+JQ32AOu9youL4NSvqwmFmwzXYjtOhgdA
 9FWoqGNXIs5wK/hiNjCxjUjOv+QJdWBWe6127EOIZR5gMeJOLnvT3x21C0m0lSYmRi
 irBZ/5vrY7a8yh1CJv8ZAHM8V3ZnQc1CETSSkceI=
Date: Sun, 16 Jun 2019 14:48:10 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH v6 5/6] drm: sun4i: Add support for
 enabling DDC I2C bus to sun8i_dw_hdmi glue
Message-ID: <20190616124810.qvlij6zkcl3leu3d@core.my.home>
Mail-Followup-To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
 linux-sunxi@googlegroups.com,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Mark Rutland <mark.rutland@arm.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20190527162237.18495-1-megous@megous.com>
 <20190527162237.18495-6-megous@megous.com>
 <1823986.m04BvQ5ALy@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1823986.m04BvQ5ALy@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_054817_095753_AA339F44 
X-CRM114-Status: GOOD (  24.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmVybmVqLAoKT24gU3VuLCBKdW4gMTYsIDIwMTkgYXQgMDE6MDU6MTNQTSArMDIwMCwgSmVy
bmVqIMWga3JhYmVjIHdyb3RlOgo+IEhpIE9uZHJlaiEKPiAKPiBEbmUgcG9uZWRlbGplaywgMjcu
IG1haiAyMDE5IG9iIDE4OjIyOjM2IENFU1QgamUgbWVnb3VzIHZpYSBsaW51eC1zdW54aSAKPiBu
YXBpc2FsKGEpOgo+ID4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4g
PiAKPiA+IE9yYW5nZSBQaSAzIGJvYXJkIHJlcXVpcmVzIGVuYWJsaW5nIGEgdm9sdGFnZSBzaGlm
dGluZyBjaXJjdWl0IHZpYSBHUElPCj4gPiBmb3IgdGhlIEREQyBidXMgdG8gYmUgdXNhYmxlLgo+
ID4gCj4gPiBBZGQgc3VwcG9ydCBmb3IgaGRtaS1jb25uZWN0b3Igbm9kZSdzIG9wdGlvbmFsIGRk
Yy1lbi1ncGlvcyBwcm9wZXJ0eSB0bwo+ID4gc3VwcG9ydCB0aGlzIHVzZSBjYXNlLgo+ID4gCj4g
PiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+IC0t
LQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW44aV9kd19oZG1pLmMgfCA1NSArKysrKysr
KysrKysrKysrKysrKysrKysrLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfZHdf
aGRtaS5oIHwgIDMgKysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3VuNGkv
c3VuOGlfZHdfaGRtaS5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW44aV9kd19oZG1p
LmMgaW5kZXggMzlkODUwOWQ5NmEwLi41OWI4MWJhMDJkOTYKPiA+IDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX2R3X2hkbWkuYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3N1bjRpL3N1bjhpX2R3X2hkbWkuYwo+ID4gQEAgLTk4LDYgKzk4LDMwIEBAIHN0YXRp
YyB1MzIgc3VuOGlfZHdfaGRtaV9maW5kX3Bvc3NpYmxlX2NydGNzKHN0cnVjdAo+ID4gZHJtX2Rl
dmljZSAqZHJtLCByZXR1cm4gY3J0Y3M7Cj4gPiAgfQo+ID4gCj4gPiArc3RhdGljIGludCBzdW44
aV9kd19oZG1pX2ZpbmRfY29ubmVjdG9yX3BkZXYoc3RydWN0IGRldmljZSAqZGV2LAo+ID4gKwkJ
CQkJICAgICBzdHJ1Y3QgCj4gcGxhdGZvcm1fZGV2aWNlICoqcGRldl9vdXQpCj4gPiArewo+ID4g
KwlzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2Owo+ID4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUg
KnJlbW90ZTsKPiA+ICsKPiA+ICsJcmVtb3RlID0gb2ZfZ3JhcGhfZ2V0X3JlbW90ZV9ub2RlKGRl
di0+b2Zfbm9kZSwgMSwgLTEpOwo+ID4gKwlpZiAoIXJlbW90ZSkKPiA+ICsJCXJldHVybiAtRU5P
REVWOwo+ID4gKwo+ID4gKwlpZiAoIW9mX2RldmljZV9pc19jb21wYXRpYmxlKHJlbW90ZSwgImhk
bWktY29ubmVjdG9yIikpIHsKPiA+ICsJCW9mX25vZGVfcHV0KHJlbW90ZSk7Cj4gPiArCQlyZXR1
cm4gLUVOT0RFVjsKPiA+ICsJfQo+ID4gKwo+ID4gKwlwZGV2ID0gb2ZfZmluZF9kZXZpY2VfYnlf
bm9kZShyZW1vdGUpOwo+ID4gKwlvZl9ub2RlX3B1dChyZW1vdGUpOwo+ID4gKwlpZiAoIXBkZXYp
Cj4gPiArCQlyZXR1cm4gLUVOT0RFVjsKPiA+ICsKPiA+ICsJKnBkZXZfb3V0ID0gcGRldjsKPiA+
ICsJcmV0dXJuIDA7Cj4gPiArfQo+ID4gKwo+ID4gIHN0YXRpYyBpbnQgc3VuOGlfZHdfaGRtaV9i
aW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLAo+ID4gIAkJCSAg
ICAgIHZvaWQgKmRhdGEpCj4gPiAgewo+ID4gQEAgLTE1MSwxNiArMTc1LDI5IEBAIHN0YXRpYyBp
bnQgc3VuOGlfZHdfaGRtaV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwKPiA+IHN0cnVjdCBkZXZp
Y2UgKm1hc3RlciwgcmV0dXJuIFBUUl9FUlIoaGRtaS0+cmVndWxhdG9yKTsKPiA+ICAJfQo+ID4g
Cj4gPiArCXJldCA9IHN1bjhpX2R3X2hkbWlfZmluZF9jb25uZWN0b3JfcGRldihkZXYsICZoZG1p
LT5jb25uZWN0b3JfcGRldik7Cj4gPiArCWlmICghcmV0KSB7Cj4gPiArCQloZG1pLT5kZGNfZW4g
PSBncGlvZF9nZXRfb3B0aW9uYWwoJmhkbWktPmNvbm5lY3Rvcl9wZGV2LQo+ID5kZXYsCj4gPiAr
CQkJCQkJICAiZGRjLWVuIiwgCj4gR1BJT0RfT1VUX0hJR0gpOwo+ID4gKwkJaWYgKElTX0VSUiho
ZG1pLT5kZGNfZW4pKSB7Cj4gPiArCQkJcGxhdGZvcm1fZGV2aWNlX3B1dChoZG1pLT5jb25uZWN0
b3JfcGRldik7Cj4gPiArCQkJZGV2X2VycihkZXYsICJDb3VsZG4ndCBnZXQgZGRjLWVuIGdwaW9c
biIpOwo+ID4gKwkJCXJldHVybiBQVFJfRVJSKGhkbWktPmRkY19lbik7Cj4gPiArCQl9Cj4gPiAr
CX0KPiA+ICsKPiA+ICAJcmV0ID0gcmVndWxhdG9yX2VuYWJsZShoZG1pLT5yZWd1bGF0b3IpOwo+
ID4gIAlpZiAocmV0KSB7Cj4gPiAgCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBlbmFibGUgcmVn
dWxhdG9yXG4iKTsKPiA+IC0JCXJldHVybiByZXQ7Cj4gPiArCQlnb3RvIGVycl91bnJlZl9kZGNf
ZW47Cj4gPiAgCX0KPiA+IAo+ID4gKwlncGlvZF9zZXRfdmFsdWUoaGRtaS0+ZGRjX2VuLCAxKTsK
PiAKPiBXaHkgZG9uJ3QgeW91IGRvIHRoYXQgaW5zaWRlIGlmIGNsYXVzZSB3aGVyZSBoZG1pLT5k
ZGNfZW4gaXMgYXNzaWduZWQ/IEl0J3MgCj4gbm90IHVzZWZ1bCBvdGhlcndpc2UgYW55d2F5Lgo+
IAo+IEJlc2lkZXMsIHlvdSB3b3VsZCB0aGVuIG9ubHkgbmVlZCB0byBhZGp1c3Qgb25lIGdvdG8g
bGFiZWwgaW4gZXJyb3IgcGF0aC4KClRoZSBpZGVhIGlzIHRvIGVuYWJsZSBEREMgYWZ0ZXIgZW5h
YmxpbmcgdGhlIHJlZ3VsYXRvci4gSSBkb24ndCB0aGluayBpdCBtYXR0ZXJzCmZvciB0aGUgcGFy
dGljdWxhciBIVyB0aGF0J3Mgb24gT3JhbmdlIFBpIDMsIGFuZCBzaW1pbGFyIFh1bmxvbmcgYm9h
cmRzLCBidXQKdGhpcyBpcyBhIGZhaXJseSBnZW5lcmljIGJpbmRpbmcgYW5kIGl0IG1ha2VzIG1v
cmUgc2Vuc2UgdG8gcG93ZXIgdGhlIGJ1cywgYW5kCnRoZW4gZW5hYmxlIHdoYXRldmVyIGFkaXRp
b25hbCBjaXJjdWl0cnkgbWlnaHQgYmUgdGhlcmUgZm9yIHRoZSBJTy4KCkkgY2FuIG1vdmUgc3Vu
OGlfZHdfaGRtaV9maW5kX2Nvbm5lY3Rvcl9wZGV2IGxvd2VyLCBidXQgSSB3b3VsZCB0aGVuIG5l
ZWQgdG8KZGlzYWJsZSB0aGUgcmVndWxhdG9yIGluIHRoZSBlcnJvciBwYXRoLCBhbmQgSSBsaWtl
IHRvIGtlZXAgdGhpcyBvcmRlcjoKCi0gcGFyc2luZyBEVAotIGVuYWJsaW5nIGFjdHVhbCBIVyBz
dHVmZgoKQmVjYXVzZSBwYXJzaW5nIGlzIGxpa2VseSB0byBmYWlsIHdpdGggREVGRVJFRF9QUk9C
RSwgYmVjYXVzZSBHUElPIG9yIHdoYXRldmVyCmVsc2UgaXMgbm90IHlldCByZWFkeSwgYW5kIHRo
aXMgYXBwcm9hY2ggYXZvaWRzIGVuYWJsaW5nL2Rpc2FibGluZyB0aGUgSFcKbmVlZGxlc3NseS4K
Cj4gPiArCj4gPiAgCXJldCA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoaGRtaS0+cnN0X2N0cmwp
Owo+ID4gIAlpZiAocmV0KSB7Cj4gPiAgCQlkZXZfZXJyKGRldiwgIkNvdWxkIG5vdCBkZWFzc2Vy
dCBjdHJsIHJlc2V0IAo+IGNvbnRyb2xcbiIpOwo+ID4gLQkJZ290byBlcnJfZGlzYWJsZV9yZWd1
bGF0b3I7Cj4gPiArCQlnb3RvIGVycl9kaXNhYmxlX2RkY19lbjsKPiA+ICAJfQo+ID4gCj4gPiAg
CXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShoZG1pLT5jbGtfdG1kcyk7Cj4gPiBAQCAtMjEzLDgg
KzI1MCwxNCBAQCBzdGF0aWMgaW50IHN1bjhpX2R3X2hkbWlfYmluZChzdHJ1Y3QgZGV2aWNlICpk
ZXYsCj4gPiBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsIGNsa19kaXNhYmxlX3VucHJlcGFyZShoZG1p
LT5jbGtfdG1kcyk7Cj4gPiAgZXJyX2Fzc2VydF9jdHJsX3Jlc2V0Ogo+ID4gIAlyZXNldF9jb250
cm9sX2Fzc2VydChoZG1pLT5yc3RfY3RybCk7Cj4gPiAtZXJyX2Rpc2FibGVfcmVndWxhdG9yOgo+
ID4gK2Vycl9kaXNhYmxlX2RkY19lbjoKPiA+ICsJZ3Bpb2Rfc2V0X3ZhbHVlKGhkbWktPmRkY19l
biwgMCk7Cj4gPiAgCXJlZ3VsYXRvcl9kaXNhYmxlKGhkbWktPnJlZ3VsYXRvcik7Cj4gPiArZXJy
X3VucmVmX2RkY19lbjoKPiA+ICsJaWYgKGhkbWktPmRkY19lbikKPiA+ICsJCWdwaW9kX3B1dCho
ZG1pLT5kZGNfZW4pOwo+ID4gKwo+ID4gKwlwbGF0Zm9ybV9kZXZpY2VfcHV0KGhkbWktPmNvbm5l
Y3Rvcl9wZGV2KTsKPiA+IAo+ID4gIAlyZXR1cm4gcmV0Owo+ID4gIH0KPiA+IEBAIC0yMjgsNyAr
MjcxLDEzIEBAIHN0YXRpYyB2b2lkIHN1bjhpX2R3X2hkbWlfdW5iaW5kKHN0cnVjdCBkZXZpY2Ug
KmRldiwKPiA+IHN0cnVjdCBkZXZpY2UgKm1hc3Rlciwgc3VuOGlfaGRtaV9waHlfcmVtb3ZlKGhk
bWkpOwo+ID4gIAljbGtfZGlzYWJsZV91bnByZXBhcmUoaGRtaS0+Y2xrX3RtZHMpOwo+ID4gIAly
ZXNldF9jb250cm9sX2Fzc2VydChoZG1pLT5yc3RfY3RybCk7Cj4gPiArCWdwaW9kX3NldF92YWx1
ZShoZG1pLT5kZGNfZW4sIDApOwo+ID4gIAlyZWd1bGF0b3JfZGlzYWJsZShoZG1pLT5yZWd1bGF0
b3IpOwo+ID4gKwo+ID4gKwlpZiAoaGRtaS0+ZGRjX2VuKQo+ID4gKwkJZ3Bpb2RfcHV0KGhkbWkt
PmRkY19lbik7Cj4gPiArCj4gPiArCXBsYXRmb3JtX2RldmljZV9wdXQoaGRtaS0+Y29ubmVjdG9y
X3BkZXYpOwo+ID4gIH0KPiA+IAo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY29tcG9uZW50X29w
cyBzdW44aV9kd19oZG1pX29wcyA9IHsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
c3VuNGkvc3VuOGlfZHdfaGRtaS5oCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW44aV9k
d19oZG1pLmggaW5kZXggNzIwYzVhYThhZGMxLi5kYWQ2NmI4MzAxYzIKPiA+IDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX2R3X2hkbWkuaAo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX2R3X2hkbWkuaAo+ID4gQEAgLTksNiArOSw3IEBACj4g
PiAgI2luY2x1ZGUgPGRybS9icmlkZ2UvZHdfaGRtaS5oPgo+ID4gICNpbmNsdWRlIDxkcm0vZHJt
X2VuY29kZXIuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gPiArI2luY2x1ZGUgPGxp
bnV4L2dwaW8vY29uc3VtZXIuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvcmVnbWFwLmg+Cj4gPiAg
I2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPgo+ID4gICNpbmNsdWRlIDxsaW51
eC9yZXNldC5oPgo+ID4gQEAgLTE5MCw2ICsxOTEsOCBAQCBzdHJ1Y3Qgc3VuOGlfZHdfaGRtaSB7
Cj4gPiAgCXN0cnVjdCByZWd1bGF0b3IJCSpyZWd1bGF0b3I7Cj4gPiAgCWNvbnN0IHN0cnVjdCBz
dW44aV9kd19oZG1pX3F1aXJrcyAqcXVpcmtzOwo+ID4gIAlzdHJ1Y3QgcmVzZXRfY29udHJvbAkJ
KnJzdF9jdHJsOwo+ID4gKwlzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlCQkqY29ubmVjdG9yX3BkZXY7
Cj4gCj4gSXQgc2VlbXMgdGhhdCBjb25uZWN0b3JfcGRldiBpcyBuZWVkZWQgb25seSBkdXJpbmcg
aW50aWFsaXphdGlvbi4gV2h5IGRvIHlvdSAKPiBzdG9yZSBpdD8KCkZvciBzb21lIHJlYXNvbiBJ
IHRob3VnaHQgdGhhdCBJIG5lZWQgdG8ga2VlcCBpdCB0byBrZWVwIHRoZSBHUElPIGF2YWlsYWJs
ZSwKYnV0IHRoYXQncyBub3QgdHJ1ZS4gSSdsbCBkcm9wIGl0LgoKdGhhbmsgeW91LAoJT25kcmVq
Cgo+IEJlc3QgcmVnYXJkcywKPiBKZXJuZWoKPiAKPiA+ICsJc3RydWN0IGdwaW9fZGVzYwkJKmRk
Y19lbjsKPiA+ICB9Owo+ID4gCj4gPiAgc3RhdGljIGlubGluZSBzdHJ1Y3Qgc3VuOGlfZHdfaGRt
aSAqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
