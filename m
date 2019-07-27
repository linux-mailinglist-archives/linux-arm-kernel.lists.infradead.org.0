Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 016AF775C8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 03:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+S+uhwFY3FQEQd/JCzFwU9vKrnAWMKmVHbeJzZo076M=; b=pZ5YeXjzmUSCrJ
	lQkKLr+yupl4Kq/M7EBidQjX/1abVD+gGg6SNAbE6KfgdecJZVPG1Q9I87lvOF1BanXLolzCgOILk
	/aa4+2KGcGjcibakVkWUrP8yOkluHHOmhET1hkOmgac5y4cBEK/Ke+2WMfzlngVPPHN83T7rIkgSq
	OnCIBE1oEclSUx0OepuvrKvBdoce1N/aDlO3OVIHjMvwI6Nk5WYsySw7sKoZcVrEhdCfjoCcV+Sre
	hEbvImYWSoiT5mAnMOhVLz7iapFZnRXhcMQBB8Kdd5S3wIU/CO5YYpf5qtr+FITVPYRFp6BhC10mh
	/k0CUmD5CB6uI5gS9mrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrByA-0004MX-6E; Sat, 27 Jul 2019 01:57:58 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrBxv-0004MA-UV
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 01:57:45 +0000
Received: from pendragon.ideasonboard.com (om126200118163.15.openmobile.ne.jp
 [126.200.118.163])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1C7D12E7;
 Sat, 27 Jul 2019 03:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1564192643;
 bh=uI0bqTAW3t85cdKpK+aJtIq1FdKPSDyFmGcCRL27uww=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IHOZFXWK6i11B9Y5Yp8r4rV/SwPIw8+i8amu6nqTFpW25jE/5BxkgNnqkQ8LXj4ep
 f0OWUvcY17E0rmisWI5XM2/NqWyAbteTdPbnQCLX+oMpNFeNCrIBv9Sz7/noGheFp4
 uB5GA8vnAmhDHDWaaqcza7FOFKEeB9Vcn5UbDOv4=
Date: Sat, 27 Jul 2019 04:57:16 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH 2/3] dt-bindings: display/bridge: Add binding for IMX NWL
 mipi dsi host controller
Message-ID: <20190727015716.GA4902@pendragon.ideasonboard.com>
References: <cover.1563983037.git.agx@sigxcpu.org>
 <70a5c6617936a4a095e7608b96e3f9fae5ddfbb1.1563983037.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70a5c6617936a4a095e7608b96e3f9fae5ddfbb1.1563983037.git.agx@sigxcpu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_185744_289200_6E904085 
X-CRM114-Status: GOOD (  20.53  )
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
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robert Chiras <robert.chiras@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8sCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCk9uIFdlZCwgSnVsIDI0LCAyMDE5
IGF0IDA1OjUyOjI1UE0gKzAyMDAsIEd1aWRvIEfDvG50aGVyIHdyb3RlOgo+IFRoZSBOb3J0aHdl
c3QgTG9naWMgTUlQSSBEU0kgSVAgY29yZSBjYW4gYmUgZm91bmQgaW4gTlhQcyBpLk1YOCBTb0Nz
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Cj4g
LS0tCj4gIC4uLi9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9pbXgtbndsLWRzaS50eHQgICB8IDg5
ICsrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDg5IGluc2VydGlvbnMoKykK
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
aXNwbGF5L2JyaWRnZS9pbXgtbndsLWRzaS50eHQKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL2lteC1ud2wtZHNpLnR4dCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9pbXgtbnds
LWRzaS50eHQKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uMjg4
ZmRiNzI2ZDVhCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9pbXgtbndsLWRzaS50eHQKPiBAQCAtMCwwICsxLDg5
IEBACj4gK05vcnRod2VzdCBMb2dpYyBNSVBJLURTSSBvbiBpbXggU29Dcwo+ICs9PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpUaGVyZSdzIG9uZSB0b28gbWFueSA9LgoKPiAr
Cj4gK05XTCBNSVBJLURTSSBob3N0IGNvbnRyb2xsZXIgZm91bmQgb24gaS5NWDggcGxhdGZvcm1z
LiBUaGlzIGlzIGEKPiArZHNpIGJyaWRnZSBmb3IgdGhlIGZvciB0aGUgTldMIE1JUEktRFNJIGhv
c3QuCgpzL2RzaS9EU0kvCnMvZm9yIHRoZSBmb3IgdGhlIC9mb3IgdGhlIC8KCj4gKwo+ICtSZXF1
aXJlZCBwcm9wZXJ0aWVzOgo+ICstIGNvbXBhdGlibGU6IAkJImZzbCw8Y2hpcD4tbndsLWRzaSIK
PiArCVRoZSBmb2xsb3dpbmcgc3RyaW5ncyBhcmUgZXhwZWN0ZWQ6Cj4gKwkJCSJmc2wsaW14OG1x
LW53bC1kc2kiCj4gKy0gcmVnOiAJCQl0aGUgcmVnaXN0ZXIgcmFuZ2Ugb2YgdGhlIE1JUEktRFNJ
IGNvbnRyb2xsZXIKPiArLSBpbnRlcnJ1cHRzOiAJCXRoZSBpbnRlcnJ1cHQgbnVtYmVyIGZvciB0
aGlzIG1vZHVsZQoKSXQncyBub3QganVzdCBhIG51bWJlciBidXQgYSBzcGVjaWZpZXIgKHdpdGgg
ZmxhZ3MpLgoKPiArLSBjbG9jaywgY2xvY2stbmFtZXM6IAlwaGFuZGxlcyB0byB0aGUgTUlQSS1E
U0kgY2xvY2tzCgpUaGF0IHNob3VsZCBiZSBwaGFuZGxlcyBhbmQgbmFtZXMuCgo+ICsJVGhlIGZv
bGxvd2luZyBjbG9ja3MgYXJlIGV4cGVjdGVkIG9uIGFsbCBwbGF0Zm9ybXM6CgpFeHBlY3RlZCBv
ciByZXF1aXJlZCA/CgpzLyBvbiBhbGwgcGxhdGZvcm1zLy8gYXMgeW91IG9ubHkgc3VwcG9ydCBh
IHNpbmdsZSBwbGF0Zm9ybS4KCj4gKwkJImNvcmUiICAgIC0gRFNJIGNvcmUgY2xvY2sKPiArCQki
dHhfZXNjIiAgLSBUWF9FU0MgY2xvY2sgKHVzZWQgaW4gZXNjYXBlIG1vZGUpCj4gKwkJInJ4X2Vz
YyIgIC0gUlhfRVNDIGNsb2NrICh1c2VkIGluIGVzY2FwZSBtb2RlKQo+ICsJCSJwaHlfcmVmIiAt
IFBIWV9SRUYgY2xvY2suIENsb2NrIGlzIG1hbmFnZWQgYnkgdGhlIHBoeS4gT25seQo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdXNlZCB0byByZWFkIHRoZSBjbG9jayByYXRlLgo+ICst
IGFzc2lnbmVkLWNsb2NrczoJcGhhbmRsZXMgdG8gY2xvY2tzIHRoYXQgcmVxdWlyZSBpbml0aWFs
IGNvbmZpZ3VyYXRpb24KPiArLSBhc3NpZ25lZC1jbG9jay1yYXRlczoJcmF0ZXMgb2YgdGhlIGNs
b2NrcyB0aGF0IHJlcXVpcmUgaW5pdGlhbCBjb25maWd1cmF0aW9uCj4gKwlUaGUgZm9sbG93aW5n
IGNsb2NrcyBuZWVkIHRvIGhhdmUgYW4gaW5pdGlhbCBjb25maWd1cmF0aW9uOgo+ICsJInR4X2Vz
YyIgKDIwIE1IeikgYW5kICJyeF9lc2MiICg4MCBNaHopLgoKSSB0aGluayB0aG9zZSB0d28gcHJv
cGVydGllcyBhcmUgb3V0IG9mIHNjb3BlIGZvciB0aGVzZSBiaW5kaW5ncy4KCj4gKy0gcGh5czog
CQlwaGFuZGxlIHRvIHRoZSBwaHkgbW9kdWxlIHJlcHJlc2VudGluZyB0aGUgRFBIWQo+ICsJCQlp
bnNpZGUgdGhlIE1JUEktRFNJIElQIGJsb2NrCj4gKy0gcGh5LW5hbWVzOiAJCXNob3VsZCBiZSAi
ZHBoeSIKPiArCj4gK09wdGlvbmFsIHByb3BlcnRpZXM6Cj4gKy0gcG93ZXItZG9tYWlucyAJcGhh
bmRsZSB0byB0aGUgcG93ZXIgZG9tYWluCj4gKy0gc3JjCQkJcGhhbmRsZSB0byB0aGUgc3lzdGVt
IHJlc2V0IGNvbnRyb2xsZXIgKHJlcXVpcmVkIG9uCj4gKwkJCWkuTVg4TVEpCgpTaG91bGQgdGhp
cyB1c2UgdGhlIHN0YW5kYXJkIHJlc2V0cyBwcm9wZXJ0eSA/Cgo+ICstIG11eC1zZWwJCXBoYW5k
bGUgdG8gdGhlIE1VWCByZWdpc3RlciBzZXQgKHJlcXVpcmVkIG9uIGkuTVg4TVEpCj4gKy0gYXNz
aWduZWQtY2xvY2stcGFyZW50cyBwaGFuZGxlcyB0byBwYXJlbnQgY2xvY2tzIHRoYXQgbmVlZHMg
dG8gYmUgYXNzaWduZWQgYXMKPiArCQkJcGFyZW50cyB0byBjbG9ja3MgZGVmaW5lZCBpbiBhc3Np
Z25lZC1jbG9ja3MKClRoaXMgcHJvcGVydHkgaXMgYWxzbyBvdXQgb2Ygc2NvcGUuCgo+ICsKPiAr
RXhhbXBsZToKPiArCW1pcGlfZHNpOiBtaXBpX2RzaUAzMGEwMDAwMCB7Cj4gKwkJI2FkZHJlc3Mt
Y2VsbHMgPSA8MT47Cj4gKwkJI3NpemUtY2VsbHMgPSA8MD47Cj4gKwkJY29tcGF0aWJsZSA9ICJm
c2wsaW14OG1xLW53bC1kc2kiOwo+ICsJCXJlZyA9IDwweDMwQTAwMDAwIDB4MzAwPjsKPiArCQlj
bG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX0RTSV9DT1JFPiwKPiArCQkJIDwmY2xrIElNWDhNUV9D
TEtfRFNJX0FIQj4sCj4gKwkJCSA8JmNsayBJTVg4TVFfQ0xLX0RTSV9JUEdfRElWPiwKPiArCQkJ
IDwmY2xrIElNWDhNUV9DTEtfRFNJX1BIWV9SRUY+Owo+ICsJCWNsb2NrLW5hbWVzID0gImNvcmUi
LCAicnhfZXNjIiwgInR4X2VzYyIsICJwaHlfcmVmIjsKPiArCQlhc3NpZ25lZC1jbG9ja3MgPSA8
JmNsayBJTVg4TVFfQ0xLX0RTSV9BSEI+LAo+ICsJCQkJICA8JmNsayBJTVg4TVFfQ0xLX0RTSV9D
T1JFPiwKPiArCQkJCSAgPCZjbGsgSU1YOE1RX0NMS19EU0lfSVBHX0RJVj47Cj4gKwkJYXNzaWdu
ZWQtY2xvY2stcGFyZW50cyA9IDwmY2xrIElNWDhNUV9TWVMxX1BMTF84ME0+LAo+ICsJCQkJCSA8
JmNsayBJTVg4TVFfU1lTMV9QTExfMjY2TT47Cj4gKwkJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8
ODAwMDAwMDA+LAo+ICsJCQkJICAgICAgIDwyNjYwMDAwMDA+LAo+ICsJCQkJICAgICAgIDwyMDAw
MDAwMD47Cj4gKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM0IElSUV9UWVBFX0xFVkVMX0hJR0g+
Owo+ICsJCXBvd2VyLWRvbWFpbnMgPSA8JnBnY19taXBpPjsKPiArCQlzcmMgPSA8JnNyYz47Cj4g
KwkJbXV4LXNlbCA9IDwmaW9tdXhjX2dwcj47Cj4gKwkJcGh5cyA9IDwmZHBoeT47Cj4gKwkJcGh5
LW5hbWVzID0gImRwaHkiOwo+ICsJCXN0YXR1cyA9ICJva2F5IjsKPiArCj4gKwkJcGFuZWxAMCB7
Cj4gKwkJCWNvbXBhdGlibGUgPSAiLi4uIjsKPiArCQkJcG9ydCB7Cj4gKwkJCSAgICAgcGFuZWxf
aW46IGVuZHBvaW50IHsKPiArCQkJCSAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8Jm1pcGlfZHNp
X291dD47Cj4gKwkJCSAgICAgfTsKPiArCQkJfTsKPiArCQl9Owo+ICsKPiArCQlwb3J0cyB7Cj4g
KwkJICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKwkJICAgICAgI3NpemUtY2VsbHMgPSA8
MD47Cj4gKwo+ICsJCSAgICAgIHBvcnRAMCB7Cj4gKwkJCSAgICAgcmVnID0gPDA+Owo+ICsJCQkg
ICAgIG1pcGlfZHNpX2luOiBlbmRwb2ludCB7Cj4gKwkJCQkJICByZW1vdGUtZW5kcG9pbnQgPSA8
JmRjc3NfZGlzcDBfbWlwaV9kc2k+Owo+ICsJCQkgICAgIH07Cj4gKwkJICAgICAgfTsKPiArCQkg
ICAgICBwb3J0QDEgewo+ICsJCQkgICAgIHJlZyA9IDwxPjsKPiArCQkJICAgICBtaXBpX2RzaV9v
dXQ6IGVuZHBvaW50IHsKPiArCQkJCQkgICByZW1vdGUtZW5kcG9pbnQgPSA8JnBhbmVsX2luPjsK
PiArCQkJICAgICB9Owo+ICsJCSAgICAgIH07Cj4gKwkJfTsKClRoZSBwb3J0cyBzaG91bGQgYmUg
ZG9jdW1lbnRlZCB0b28uIFRoZXJlIGFyZSBtdWx0aXBsZSBleGFtcGxlIGJpbmRpbmdzCmF2YWls
YWJsZS4KCj4gKwl9OwoKLS0gClJlZ2FyZHMsCgpMYXVyZW50IFBpbmNoYXJ0CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
