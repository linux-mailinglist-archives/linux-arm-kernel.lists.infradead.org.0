Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E59A473321
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 17:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YODke+HNPGQ3B4YWsa2Y6vV5qwFG5TLIRq/pByXkY/0=; b=CchwgWNZJoI4/q
	oaoKf7kL0CJ2atlpGKmLEh+DGcyh976IZjb86jcHpgKAwU0tBd8t43Q1F/mxcn9tdBdwDe10RdAqq
	A30uzMaoCx31kX68qKb5Xp4N8jdJnBobtdfEwvCSh1imQNIKihdHXjVhtRnnMRZCI3AY0cCl/YFsV
	I6tgOAvxCv6bDPWvlOx0by1iDa29l2kOz16dAk/EvJEDZktBwmcwxbsO1Pq1o3Dr6lMdyni+yOqKs
	fY5XGKYAtsZ7a33iQxj7evHy3oCrzCRkyEUwkJkawlcV6tVmirtjGxDJLO0AAd2QJgMal0GQvepdN
	VxnPyKK+PnEQLALi1Wow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJZO-0001CY-VW; Wed, 24 Jul 2019 15:52:46 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJZD-0001AV-I5
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 15:52:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 23793FB04;
 Wed, 24 Jul 2019 17:52:31 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id peRBQktrt7Wu; Wed, 24 Jul 2019 17:52:29 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 0958343419; Wed, 24 Jul 2019 17:52:26 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Robert Chiras <robert.chiras@nxp.com>
Subject: [PATCH 2/3] dt-bindings: display/bridge: Add binding for IMX NWL mipi
 dsi host controller
Date: Wed, 24 Jul 2019 17:52:25 +0200
Message-Id: <70a5c6617936a4a095e7608b96e3f9fae5ddfbb1.1563983037.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1563983037.git.agx@sigxcpu.org>
References: <cover.1563983037.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_085235_764857_715E03BC 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIE5vcnRod2VzdCBMb2dpYyBNSVBJIERTSSBJUCBjb3JlIGNhbiBiZSBmb3VuZCBpbiBOWFBz
IGkuTVg4IFNvQ3MuCgpTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUu
b3JnPgotLS0KIC4uLi9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9pbXgtbndsLWRzaS50eHQgICB8
IDg5ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4OSBpbnNlcnRpb25zKCsp
CiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rp
c3BsYXkvYnJpZGdlL2lteC1ud2wtZHNpLnR4dAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9pbXgtbndsLWRzaS50eHQgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvaW14LW53bC1kc2ku
dHh0Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uMjg4ZmRiNzI2ZDVh
Ci0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rp
c3BsYXkvYnJpZGdlL2lteC1ud2wtZHNpLnR4dApAQCAtMCwwICsxLDg5IEBACitOb3J0aHdlc3Qg
TG9naWMgTUlQSS1EU0kgb24gaW14IFNvQ3MKKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0KKworTldMIE1JUEktRFNJIGhvc3QgY29udHJvbGxlciBmb3VuZCBvbiBpLk1YOCBw
bGF0Zm9ybXMuIFRoaXMgaXMgYQorZHNpIGJyaWRnZSBmb3IgdGhlIGZvciB0aGUgTldMIE1JUEkt
RFNJIGhvc3QuCisKK1JlcXVpcmVkIHByb3BlcnRpZXM6CistIGNvbXBhdGlibGU6IAkJImZzbCw8
Y2hpcD4tbndsLWRzaSIKKwlUaGUgZm9sbG93aW5nIHN0cmluZ3MgYXJlIGV4cGVjdGVkOgorCQkJ
ImZzbCxpbXg4bXEtbndsLWRzaSIKKy0gcmVnOiAJCQl0aGUgcmVnaXN0ZXIgcmFuZ2Ugb2YgdGhl
IE1JUEktRFNJIGNvbnRyb2xsZXIKKy0gaW50ZXJydXB0czogCQl0aGUgaW50ZXJydXB0IG51bWJl
ciBmb3IgdGhpcyBtb2R1bGUKKy0gY2xvY2ssIGNsb2NrLW5hbWVzOiAJcGhhbmRsZXMgdG8gdGhl
IE1JUEktRFNJIGNsb2NrcworCVRoZSBmb2xsb3dpbmcgY2xvY2tzIGFyZSBleHBlY3RlZCBvbiBh
bGwgcGxhdGZvcm1zOgorCQkiY29yZSIgICAgLSBEU0kgY29yZSBjbG9jaworCQkidHhfZXNjIiAg
LSBUWF9FU0MgY2xvY2sgKHVzZWQgaW4gZXNjYXBlIG1vZGUpCisJCSJyeF9lc2MiICAtIFJYX0VT
QyBjbG9jayAodXNlZCBpbiBlc2NhcGUgbW9kZSkKKwkJInBoeV9yZWYiIC0gUEhZX1JFRiBjbG9j
ay4gQ2xvY2sgaXMgbWFuYWdlZCBieSB0aGUgcGh5LiBPbmx5CisgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgdXNlZCB0byByZWFkIHRoZSBjbG9jayByYXRlLgorLSBhc3NpZ25lZC1jbG9ja3M6
CXBoYW5kbGVzIHRvIGNsb2NrcyB0aGF0IHJlcXVpcmUgaW5pdGlhbCBjb25maWd1cmF0aW9uCist
IGFzc2lnbmVkLWNsb2NrLXJhdGVzOglyYXRlcyBvZiB0aGUgY2xvY2tzIHRoYXQgcmVxdWlyZSBp
bml0aWFsIGNvbmZpZ3VyYXRpb24KKwlUaGUgZm9sbG93aW5nIGNsb2NrcyBuZWVkIHRvIGhhdmUg
YW4gaW5pdGlhbCBjb25maWd1cmF0aW9uOgorCSJ0eF9lc2MiICgyMCBNSHopIGFuZCAicnhfZXNj
IiAoODAgTWh6KS4KKy0gcGh5czogCQlwaGFuZGxlIHRvIHRoZSBwaHkgbW9kdWxlIHJlcHJlc2Vu
dGluZyB0aGUgRFBIWQorCQkJaW5zaWRlIHRoZSBNSVBJLURTSSBJUCBibG9jaworLSBwaHktbmFt
ZXM6IAkJc2hvdWxkIGJlICJkcGh5IgorCitPcHRpb25hbCBwcm9wZXJ0aWVzOgorLSBwb3dlci1k
b21haW5zIAlwaGFuZGxlIHRvIHRoZSBwb3dlciBkb21haW4KKy0gc3JjCQkJcGhhbmRsZSB0byB0
aGUgc3lzdGVtIHJlc2V0IGNvbnRyb2xsZXIgKHJlcXVpcmVkIG9uCisJCQlpLk1YOE1RKQorLSBt
dXgtc2VsCQlwaGFuZGxlIHRvIHRoZSBNVVggcmVnaXN0ZXIgc2V0IChyZXF1aXJlZCBvbiBpLk1Y
OE1RKQorLSBhc3NpZ25lZC1jbG9jay1wYXJlbnRzIHBoYW5kbGVzIHRvIHBhcmVudCBjbG9ja3Mg
dGhhdCBuZWVkcyB0byBiZSBhc3NpZ25lZCBhcworCQkJcGFyZW50cyB0byBjbG9ja3MgZGVmaW5l
ZCBpbiBhc3NpZ25lZC1jbG9ja3MKKworRXhhbXBsZToKKwltaXBpX2RzaTogbWlwaV9kc2lAMzBh
MDAwMDAgeworCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJI3NpemUtY2VsbHMgPSA8MD47CisJ
CWNvbXBhdGlibGUgPSAiZnNsLGlteDhtcS1ud2wtZHNpIjsKKwkJcmVnID0gPDB4MzBBMDAwMDAg
MHgzMDA+OworCQljbG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX0RTSV9DT1JFPiwKKwkJCSA8JmNs
ayBJTVg4TVFfQ0xLX0RTSV9BSEI+LAorCQkJIDwmY2xrIElNWDhNUV9DTEtfRFNJX0lQR19ESVY+
LAorCQkJIDwmY2xrIElNWDhNUV9DTEtfRFNJX1BIWV9SRUY+OworCQljbG9jay1uYW1lcyA9ICJj
b3JlIiwgInJ4X2VzYyIsICJ0eF9lc2MiLCAicGh5X3JlZiI7CisJCWFzc2lnbmVkLWNsb2NrcyA9
IDwmY2xrIElNWDhNUV9DTEtfRFNJX0FIQj4sCisJCQkJICA8JmNsayBJTVg4TVFfQ0xLX0RTSV9D
T1JFPiwKKwkJCQkgIDwmY2xrIElNWDhNUV9DTEtfRFNJX0lQR19ESVY+OworCQlhc3NpZ25lZC1j
bG9jay1wYXJlbnRzID0gPCZjbGsgSU1YOE1RX1NZUzFfUExMXzgwTT4sCisJCQkJCSA8JmNsayBJ
TVg4TVFfU1lTMV9QTExfMjY2TT47CisJCWFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDgwMDAwMDAw
PiwKKwkJCQkgICAgICAgPDI2NjAwMDAwMD4sCisJCQkJICAgICAgIDwyMDAwMDAwMD47CisJCWlu
dGVycnVwdHMgPSA8R0lDX1NQSSAzNCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJcG93ZXItZG9t
YWlucyA9IDwmcGdjX21pcGk+OworCQlzcmMgPSA8JnNyYz47CisJCW11eC1zZWwgPSA8JmlvbXV4
Y19ncHI+OworCQlwaHlzID0gPCZkcGh5PjsKKwkJcGh5LW5hbWVzID0gImRwaHkiOworCQlzdGF0
dXMgPSAib2theSI7CisKKwkJcGFuZWxAMCB7CisJCQljb21wYXRpYmxlID0gIi4uLiI7CisJCQlw
b3J0IHsKKwkJCSAgICAgcGFuZWxfaW46IGVuZHBvaW50IHsKKwkJCQkgICAgICAgcmVtb3RlLWVu
ZHBvaW50ID0gPCZtaXBpX2RzaV9vdXQ+OworCQkJICAgICB9OworCQkJfTsKKwkJfTsKKworCQlw
b3J0cyB7CisJCSAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkgICAgICAjc2l6ZS1jZWxs
cyA9IDwwPjsKKworCQkgICAgICBwb3J0QDAgeworCQkJICAgICByZWcgPSA8MD47CisJCQkgICAg
IG1pcGlfZHNpX2luOiBlbmRwb2ludCB7CisJCQkJCSAgcmVtb3RlLWVuZHBvaW50ID0gPCZkY3Nz
X2Rpc3AwX21pcGlfZHNpPjsKKwkJCSAgICAgfTsKKwkJICAgICAgfTsKKwkJICAgICAgcG9ydEAx
IHsKKwkJCSAgICAgcmVnID0gPDE+OworCQkJICAgICBtaXBpX2RzaV9vdXQ6IGVuZHBvaW50IHsK
KwkJCQkJICAgcmVtb3RlLWVuZHBvaW50ID0gPCZwYW5lbF9pbj47CisJCQkgICAgIH07CisJCSAg
ICAgIH07CisJCX07CisJfTsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
