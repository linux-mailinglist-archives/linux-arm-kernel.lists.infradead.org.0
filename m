Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 566C2775CD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 03:59:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBVRUMVjSOYwfuE354X9QYobnGCP9O0HlPGa+g0YVVY=; b=cJiGEVw17metDu
	jI9yHV9URltONREPUF+uqrF1EduDO0fqj4UJHCY/1BHyJm6myofIgun63a+FUCrdzG91wgKgmgs5u
	J1fF0EY//qoMq860I8pHxin+Wt0NiVY+DTxc35RA7CFKYuoOkfAKWLl1Hg+e6BZB506Oz267gnaJA
	s3/+bb9mVOXBKIOqwbd7p6yG+b38WGXMjs8mG2oCESRDxSHrr/XU85Nhe5stcXbpIiapXwsClYAKF
	jHkht1NX0qBYsg6SJqgqxvpIotK/ZHYKhq3rNLczR/pcRilX0y1zXLtE4zCS9UwaLqPShhBlwZ85n
	qqQ5R77VCx5fJS2CKLGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrBzv-0004dR-EC; Sat, 27 Jul 2019 01:59:47 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrBzi-0004cy-6x
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 01:59:36 +0000
Received: from pendragon.ideasonboard.com (om126200118163.15.openmobile.ne.jp
 [126.200.118.163])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3DA4B31B;
 Sat, 27 Jul 2019 03:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1564192771;
 bh=6t+jAtBCGWrb64hybjYFjRUbVdoEv4zxqtatGFJf+Oc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hhfUF5uOPmjdISVzt0ArAAmJZOZWdE7qk/uMhMytLvazxdlh/Bc6YEu3ScOUIbyje
 OMnhaaoIjUX20cEzYAeCITnqdtJHs3b+4BLDodLgfrgPpHFq09QHctNBfOhA5QjJz4
 PcYkg4iUwywBvJV5bWFCRYrSJRczt8D2cE5KN3Ek=
Date: Sat, 27 Jul 2019 04:59:25 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 2/3] dt-bindings: display/bridge: Add binding for IMX NWL
 mipi dsi host controller
Message-ID: <20190727015925.GB4902@pendragon.ideasonboard.com>
References: <cover.1563983037.git.agx@sigxcpu.org>
 <70a5c6617936a4a095e7608b96e3f9fae5ddfbb1.1563983037.git.agx@sigxcpu.org>
 <20190726092315.GA9754@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726092315.GA9754@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_185934_554268_861C2BA4 
X-CRM114-Status: GOOD (  24.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Fabio Estevam <festevam@gmail.com>,
 Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robert Chiras <robert.chiras@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAxMToyMzoxNUFNICswMjAwLCBTYW0gUmF2
bmJvcmcgd3JvdGU6Cj4gT24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMDU6NTI6MjVQTSArMDIwMCwg
R3VpZG8gR8O8bnRoZXIgd3JvdGU6Cj4gPiBUaGUgTm9ydGh3ZXN0IExvZ2ljIE1JUEkgRFNJIElQ
IGNvcmUgY2FuIGJlIGZvdW5kIGluIE5YUHMgaS5NWDggU29Dcy4KPiA+IAo+ID4gU2lnbmVkLW9m
Zi1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KPiA+IC0tLQo+ID4gIC4uLi9i
aW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9pbXgtbndsLWRzaS50eHQgICB8IDg5ICsrKysrKysrKysr
KysrKysrKysKPiAKPiBOZXcgYmluZGluZy4gQW55IGNoYW5jZSB3ZSBjYW4gZ2V0IHRoaXMgaW4g
eWFtbCBmb3JtYXQ/Cj4gVGhpcyBpcyB0aGUgd2F5IGZvcndhcmQgYW5kIHdlIGhhdmUgdG8gY29u
dmVydCB0aGUgZmlsZSBhbnl3YXkuCj4gCj4gTm9uZSBvZiB0aGUgb3RoZXIgYnJpZGdlcyB1c2Ug
eWFtbCBmb3JtYXQsIGJ1dCBzb21lb25lIGhhcyB0byBiZSB0aGUKPiBmaXJzdC4KPiAKPiA+ICAx
IGZpbGUgY2hhbmdlZCwgODkgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvaW14LW53bC1k
c2kudHh0Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9icmlkZ2UvaW14LW53bC1kc2kudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL2lteC1ud2wtZHNpLnR4dAo+ID4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMjg4ZmRiNzI2ZDVhCj4gPiAt
LS0gL2Rldi9udWxsCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
ZGlzcGxheS9icmlkZ2UvaW14LW53bC1kc2kudHh0Cj4gPiBAQCAtMCwwICsxLDg5IEBACj4gPiAr
Tm9ydGh3ZXN0IExvZ2ljIE1JUEktRFNJIG9uIGlteCBTb0NzCj4gPiArPT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PQo+ID4gKwo+ID4gK05XTCBNSVBJLURTSSBob3N0IGNvbnRy
b2xsZXIgZm91bmQgb24gaS5NWDggcGxhdGZvcm1zLiBUaGlzIGlzIGEKPiA+ICtkc2kgYnJpZGdl
IGZvciB0aGUgZm9yIHRoZSBOV0wgTUlQSS1EU0kgaG9zdC4KPiAKPiBUbyBteSBiZXN0IHVuZGVy
c3RhbmRpbmcgYSBicmlkZ2UgaXMgc29tZXRoaW5nIHRoYXQgY29udmVydHMgZnJvbSBvbmUKPiBm
b3JtYXQgdG8gYW5vdGhlciBmb3JtYXQuCj4gU29tZXRoaW5nIHRoYXQgaW4gdGhlIGRybSB3b3Js
ZCBhcmUgY29ubmVjdGVkIHRvIGFuIGVuY29kZXIuCj4gCj4gSSBkbyBub3Qga25vdyB0aGUgSFcg
aGVyZSAtIGJ1dCBmcm9tIHRoaXMgdmVyeSBicmlmIGRlc2NyaXB0aW9uIHRoaXMKPiBzb3VuZHMg
bW9yZSBsaWtlIGEgZGlzcGxheSBjb250cm9sbGVyIGFuZCBub3QgYSBicmlkZ2U/CgpJIHdvdWxk
IGNhbGwgaXQgYW4gZW5jb2RlciwgdGhhdCdzIHRoZSB0ZXJtIHVzdWFsbHkgZW1wbG95ZWQgZm9y
IHN1Y2gKZGV2aWNlcyAoc2ltaWxhciB0byBIRE1JIGVuY29kZXIpLgoKPiA+ICsKPiA+ICtSZXF1
aXJlZCBwcm9wZXJ0aWVzOgo+ID4gKy0gY29tcGF0aWJsZTogCQkiZnNsLDxjaGlwPi1ud2wtZHNp
Igo+ID4gKwlUaGUgZm9sbG93aW5nIHN0cmluZ3MgYXJlIGV4cGVjdGVkOgo+ID4gKwkJCSJmc2ws
aW14OG1xLW53bC1kc2kiCj4gPiArLSByZWc6IAkJCXRoZSByZWdpc3RlciByYW5nZSBvZiB0aGUg
TUlQSS1EU0kgY29udHJvbGxlcgo+ID4gKy0gaW50ZXJydXB0czogCQl0aGUgaW50ZXJydXB0IG51
bWJlciBmb3IgdGhpcyBtb2R1bGUKPiA+ICstIGNsb2NrLCBjbG9jay1uYW1lczogCXBoYW5kbGVz
IHRvIHRoZSBNSVBJLURTSSBjbG9ja3MKPiA+ICsJVGhlIGZvbGxvd2luZyBjbG9ja3MgYXJlIGV4
cGVjdGVkIG9uIGFsbCBwbGF0Zm9ybXM6Cj4gPiArCQkiY29yZSIgICAgLSBEU0kgY29yZSBjbG9j
awo+ID4gKwkJInR4X2VzYyIgIC0gVFhfRVNDIGNsb2NrICh1c2VkIGluIGVzY2FwZSBtb2RlKQo+
ID4gKwkJInJ4X2VzYyIgIC0gUlhfRVNDIGNsb2NrICh1c2VkIGluIGVzY2FwZSBtb2RlKQo+ID4g
KwkJInBoeV9yZWYiIC0gUEhZX1JFRiBjbG9jay4gQ2xvY2sgaXMgbWFuYWdlZCBieSB0aGUgcGh5
LiBPbmx5Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVzZWQgdG8gcmVhZCB0aGUg
Y2xvY2sgcmF0ZS4KPiA+ICstIGFzc2lnbmVkLWNsb2NrczoJcGhhbmRsZXMgdG8gY2xvY2tzIHRo
YXQgcmVxdWlyZSBpbml0aWFsIGNvbmZpZ3VyYXRpb24KPiA+ICstIGFzc2lnbmVkLWNsb2NrLXJh
dGVzOglyYXRlcyBvZiB0aGUgY2xvY2tzIHRoYXQgcmVxdWlyZSBpbml0aWFsIGNvbmZpZ3VyYXRp
b24KPiA+ICsJVGhlIGZvbGxvd2luZyBjbG9ja3MgbmVlZCB0byBoYXZlIGFuIGluaXRpYWwgY29u
ZmlndXJhdGlvbjoKPiA+ICsJInR4X2VzYyIgKDIwIE1IeikgYW5kICJyeF9lc2MiICg4MCBNaHop
Lgo+ID4gKy0gcGh5czogCQlwaGFuZGxlIHRvIHRoZSBwaHkgbW9kdWxlIHJlcHJlc2VudGluZyB0
aGUgRFBIWQo+ID4gKwkJCWluc2lkZSB0aGUgTUlQSS1EU0kgSVAgYmxvY2sKPiA+ICstIHBoeS1u
YW1lczogCQlzaG91bGQgYmUgImRwaHkiCj4gPiArCj4gPiArT3B0aW9uYWwgcHJvcGVydGllczoK
PiA+ICstIHBvd2VyLWRvbWFpbnMgCXBoYW5kbGUgdG8gdGhlIHBvd2VyIGRvbWFpbgo+ID4gKy0g
c3JjCQkJcGhhbmRsZSB0byB0aGUgc3lzdGVtIHJlc2V0IGNvbnRyb2xsZXIgKHJlcXVpcmVkIG9u
Cj4gPiArCQkJaS5NWDhNUSkKPiBOYW1lIGlzIG5vdCB2ZXJ5IGRlc2NyaXB0aXZlLgo+IE90aGVy
IGJpbmRpbmdzIHNlZW1zIHRvIHVzZSAicmVzZXRzIiBoZXJlPwo+IAo+ID4gKy0gbXV4LXNlbAkJ
cGhhbmRsZSB0byB0aGUgTVVYIHJlZ2lzdGVyIHNldCAocmVxdWlyZWQgb24gaS5NWDhNUSkKPiA+
ICstIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMgcGhhbmRsZXMgdG8gcGFyZW50IGNsb2NrcyB0aGF0
IG5lZWRzIHRvIGJlIGFzc2lnbmVkIGFzCj4gPiArCQkJcGFyZW50cyB0byBjbG9ja3MgZGVmaW5l
ZCBpbiBhc3NpZ25lZC1jbG9ja3MKPiA+ICsKPiA+ICtFeGFtcGxlOgo+ID4gKwltaXBpX2RzaTog
bWlwaV9kc2lAMzBhMDAwMDAgewo+ID4gKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gPiArCQkj
c2l6ZS1jZWxscyA9IDwwPjsKPiA+ICsJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhtcS1ud2wtZHNp
IjsKPiA+ICsJCXJlZyA9IDwweDMwQTAwMDAwIDB4MzAwPjsKPiA+ICsJCWNsb2NrcyA9IDwmY2xr
IElNWDhNUV9DTEtfRFNJX0NPUkU+LAo+ID4gKwkJCSA8JmNsayBJTVg4TVFfQ0xLX0RTSV9BSEI+
LAo+ID4gKwkJCSA8JmNsayBJTVg4TVFfQ0xLX0RTSV9JUEdfRElWPiwKPiA+ICsJCQkgPCZjbGsg
SU1YOE1RX0NMS19EU0lfUEhZX1JFRj47Cj4gPiArCQljbG9jay1uYW1lcyA9ICJjb3JlIiwgInJ4
X2VzYyIsICJ0eF9lc2MiLCAicGh5X3JlZiI7Cj4gPiArCQlhc3NpZ25lZC1jbG9ja3MgPSA8JmNs
ayBJTVg4TVFfQ0xLX0RTSV9BSEI+LAo+ID4gKwkJCQkgIDwmY2xrIElNWDhNUV9DTEtfRFNJX0NP
UkU+LAo+ID4gKwkJCQkgIDwmY2xrIElNWDhNUV9DTEtfRFNJX0lQR19ESVY+Owo+ID4gKwkJYXNz
aWduZWQtY2xvY2stcGFyZW50cyA9IDwmY2xrIElNWDhNUV9TWVMxX1BMTF84ME0+LAo+ID4gKwkJ
CQkJIDwmY2xrIElNWDhNUV9TWVMxX1BMTF8yNjZNPjsKPiA+ICsJCWFzc2lnbmVkLWNsb2NrLXJh
dGVzID0gPDgwMDAwMDAwPiwKPiA+ICsJCQkJICAgICAgIDwyNjYwMDAwMDA+LAo+ID4gKwkJCQkg
ICAgICAgPDIwMDAwMDAwPjsKPiA+ICsJCWludGVycnVwdHMgPSA8R0lDX1NQSSAzNCBJUlFfVFlQ
RV9MRVZFTF9ISUdIPjsKPiA+ICsJCXBvd2VyLWRvbWFpbnMgPSA8JnBnY19taXBpPjsKPiA+ICsJ
CXNyYyA9IDwmc3JjPjsKPiA+ICsJCW11eC1zZWwgPSA8JmlvbXV4Y19ncHI+Owo+ID4gKwkJcGh5
cyA9IDwmZHBoeT47Cj4gPiArCQlwaHktbmFtZXMgPSAiZHBoeSI7Cj4gPiArCQlzdGF0dXMgPSAi
b2theSI7Cj4gSSByZWNhbGwgc3RhdHVzIHNob3VsZCBub3QgYmUgaW5jbHVkZWQgaW4gZXhhbXBs
ZXMuCj4gCj4gPiArCj4gPiArCQlwYW5lbEAwIHsKPiA+ICsJCQljb21wYXRpYmxlID0gIi4uLiI7
Cj4gPiArCQkJcG9ydCB7Cj4gPiArCQkJICAgICBwYW5lbF9pbjogZW5kcG9pbnQgewo+ID4gKwkJ
CQkgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZtaXBpX2RzaV9vdXQ+Owo+ID4gKwkJCSAgICAg
fTsKPiA+ICsJCQl9Owo+ID4gKwkJfTsKPiA+ICsKPiA+ICsJCXBvcnRzIHsKPiA+ICsJCSAgICAg
ICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4gKwkJICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4g
PiArCj4gPiArCQkgICAgICBwb3J0QDAgewo+ID4gKwkJCSAgICAgcmVnID0gPDA+Owo+ID4gKwkJ
CSAgICAgbWlwaV9kc2lfaW46IGVuZHBvaW50IHsKPiA+ICsJCQkJCSAgcmVtb3RlLWVuZHBvaW50
ID0gPCZkY3NzX2Rpc3AwX21pcGlfZHNpPjsKPiA+ICsJCQkgICAgIH07Cj4gPiArCQkgICAgICB9
Owo+ID4gKwkJICAgICAgcG9ydEAxIHsKPiA+ICsJCQkgICAgIHJlZyA9IDwxPjsKPiA+ICsJCQkg
ICAgIG1pcGlfZHNpX291dDogZW5kcG9pbnQgewo+ID4gKwkJCQkJICAgcmVtb3RlLWVuZHBvaW50
ID0gPCZwYW5lbF9pbj47Cj4gPiArCQkJICAgICB9Owo+ID4gKwkJICAgICAgfTsKPiA+ICsJCX07
Cj4gPiArCX07CgotLSAKUmVnYXJkcywKCkxhdXJlbnQgUGluY2hhcnQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
