Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2C49828A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pH0KxmSkaxe07TgacBwiQCE9IUd3CW+HOzsgNLbdlTc=; b=QnmVe9l9etDwbN
	3YYlJoXDpXqOdeUs8J4PvpfnpqS8OT5x0ZNjKFnqgFODo1iQwslbsjkFDkXp5l11GNIXlfB7uOgip
	ypepvQJ9sJ5uRE/v0uayQJM8Wd5OCZ0MMM6yIGBnyT20503m2O6nhj4riYC5DMIjdMXpkxHzYGErr
	jiG48hJ259YgpMkCeTpVz67hNOJ1tuxnOFz5uLaq0Q7KPTUILbtAKKz8Vz9IeU31U15QBLQjDVSjB
	151+Vt+ORZ1hGW7W3mCQsDmTbQlpkT0s9zz9+F/LVWnB59qe8mwUUk2jJir9eMvIZMoeD9X7xuhuI
	fGrKBvY28HxqCGIybDtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0V9J-0006BI-ME; Wed, 21 Aug 2019 18:15:57 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0V8v-0005wz-TO
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:15:36 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 52F6733D;
 Wed, 21 Aug 2019 20:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1566411324;
 bh=Lb+8Te0kG13/aH5BMLnQNZPSRzaVxlUBbel6YfAFews=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qQQRutvFEN1Z7mwfR+jmFizZqhQ5bBYEfS7DASqWk9fYaR+9bG7E3j/LgzbaS1LqS
 9OnMZOJU4IhgvZNbe3zKUQ5zsEY9M3EgZI56xiIN/cfjMCMv1kQxIi+CG6QM3yYbiy
 q/YWhnXNN4HeaROIR0qrYIDw+JxqMwD/ovp/v8yU=
Date: Wed, 21 Aug 2019 21:15:18 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: display/bridge: Add binding for NWL
 mipi dsi host controller
Message-ID: <20190821181518.GB26759@pendragon.ideasonboard.com>
References: <cover.1565367567.git.agx@sigxcpu.org>
 <9c906bb6592424acdb1a67447a482e010a113b49.1565367567.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c906bb6592424acdb1a67447a482e010a113b49.1565367567.git.agx@sigxcpu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_111534_286710_04F7C1EF 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8sCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCk9uIEZyaSwgQXVnIDA5LCAyMDE5
IGF0IDA2OjI0OjIyUE0gKzAyMDAsIEd1aWRvIEfDvG50aGVyIHdyb3RlOgo+IFRoZSBOb3J0aHdl
c3QgTG9naWMgTUlQSSBEU0kgSVAgY29yZSBjYW4gYmUgZm91bmQgaW4gTlhQcyBpLk1YOCBTb0Nz
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Cj4g
LS0tCj4gIC4uLi9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwgICAgICB8IDE1
NSArKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDE1NSBpbnNlcnRpb25zKCsp
Cj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
ZGlzcGxheS9icmlkZ2UvbndsLWRzaS55YW1sCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvbndsLWRzaS55YW1s
Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjVlZDhiYzRhNGQx
OAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGlzcGxheS9icmlkZ2UvbndsLWRzaS55YW1sCj4gQEAgLTAsMCArMSwxNTUgQEAKPiArIyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICslWUFNTCAxLjIKPiArLS0tCj4gKyRp
ZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZGlzcGxheS9icmlkZ2UvaW14LW53bC1k
c2kueWFtbCMKPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9j
b3JlLnlhbWwjCj4gKwo+ICt0aXRsZTogTm9ydGh3ZXN0IExvZ2ljIE1JUEktRFNJIG9uIGlteCBT
b0NzCj4gKwo+ICttYWludGFpbmVyczoKPiArICAtIEd1aWRvIEfDum50aGVyIDxhZ3hAc2lneGNw
dS5vcmc+Cj4gKyAgLSBSb2JlcnQgQ2hpcmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+Cj4gKwo+
ICtkZXNjcmlwdGlvbjogfAo+ICsgIE5XTCBNSVBJLURTSSBob3N0IGNvbnRyb2xsZXIgZm91bmQg
b24gaS5NWDggcGxhdGZvcm1zLiBUaGlzIGlzIGEgZHNpIGJyaWRnZSBmb3IKPiArICB0aGUgU09D
cyBOV0wgTUlQSS1EU0kgaG9zdCBjb250cm9sbGVyLgo+ICsKPiArcHJvcGVydGllczoKPiArICBj
b21wYXRpYmxlOgo+ICsgICAgb25lT2Y6Cj4gKyAgICAgIC0gaXRlbXM6Cj4gKyAgICAgICAgLSBj
b25zdDogZnNsLGlteDhtcS1ud2wtZHNpCj4gKwo+ICsgIHJlZzoKPiArICAgIG1heEl0ZW1zOiAx
Cj4gKwo+ICsgIGludGVycnVwdHM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICBjbG9ja3M6
Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBkZXNjcmlwdGlvbjogRFNJIGNvcmUgY2xvY2sKPiAr
ICAgICAgLSBkZXNjcmlwdGlvbjogUlhfRVNDIGNsb2NrICh1c2VkIGluIGVzY2FwZSBtb2RlKQo+
ICsgICAgICAtIGRlc2NyaXB0aW9uOiBUWF9FU0MgY2xvY2sgKHVzZWQgaW4gZXNjYXBlIG1vZGUp
Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFBIWV9SRUYgY2xvY2sKPiArCj4gKyAgY2xvY2stbmFt
ZXM6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogY29yZQo+ICsgICAgICAtIGNvbnN0
OiByeF9lc2MKPiArICAgICAgLSBjb25zdDogdHhfZXNjCj4gKyAgICAgIC0gY29uc3Q6IHBoeV9y
ZWYKPiArCj4gKyAgcGh5czoKPiArICAgIG1heEl0ZW1zOiAxCj4gKyAgICBkZXNjcmlwdGlvbjoK
PiArICAgICAgQSBwaGFuZGxlIHRvIHRoZSBwaHkgbW9kdWxlIHJlcHJlc2VudGluZyB0aGUgRFBI
WQo+ICsKPiArICBwaHktbmFtZXM6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogZHBo
eQo+ICsKPiArICBwb3dlci1kb21haW5zOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArICAgIGRlc2Ny
aXB0aW9uOgo+ICsgICAgICBBIHBoYW5kbGUgdG8gdGhlIHBvd2VyIGRvbWFpbgo+ICsKPiArICBy
ZXNldHM6Cj4gKyAgICBtYXhJdGVtczogNAo+ICsgICAgZGVzY3JpcHRpb246Cj4gKyAgICAgIEEg
cGhhbmRsZSB0byB0aGUgcmVzZXQgY29udHJvbGxlcgo+ICsKPiArICByZXNldC1uYW1lczoKPiAr
ICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBieXRlCj4gKyAgICAgIC0gY29uc3Q6IGRwaQo+
ICsgICAgICAtIGNvbnN0OiBlc2MKPiArICAgICAgLSBjb25zdDogcGNsawo+ICsKPiArICBtdXgt
c2VsOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICBBIHBo
YW5kbGUgdG8gdGhlIE1VWCByZWdpc3RlciBzZXQKCkRpZCB5b3UgbWVhbiB0aGUgTVVYIHN5c2Nv
biA/IEEgcGhhbmRsZSB0byBhIHJlZ2lzdGVyIHNldCBzb3VuZHMgYSBiaXQKc3RyYW5nZS4KCj4g
Kwo+ICsgIHBvcnQ6Cj4gKyAgICB0eXBlOiBvYmplY3QKPiArICAgIGRlc2NyaXB0aW9uOgo+ICsg
ICAgICBBIGlucHV0IHB1dCBvciBvdXRwdXQgcG9ydCBub2RlLgoKcy9pbnB1dCBwdXQvaW5wdXQv
Cgo+ICsKPiArICBwb3J0czoKPiArICAgIHR5cGU6IG9iamVjdAo+ICsgICAgZGVzY3JpcHRpb246
Cj4gKyAgICAgIEEgbm9kZSBjb250YWluaW5nIERTSSBpbnB1dCAmIG91dHB1dCBwb3J0IG5vZGVz
IHdpdGggZW5kcG9pbnQKPiArICAgICAgZGVmaW5pdGlvbnMgYXMgZG9jdW1lbnRlZCBpbgo+ICsg
ICAgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3JhcGgudHh0Lgo+ICsKPiAr
cGF0dGVyblByb3BlcnRpZXM6Cj4gKyAgIl5wYW5lbEBbMC05XSskIjogdHJ1ZQo+ICsKPiArYWxs
T2Y6Cj4gKyAgLSBpZjoKPiArICAgICAgcHJvcGVydGllczoKPiArICAgICAgICBjb21wYXRpYmxl
Ogo+ICsgICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgIGVudW06Cj4gKyAgICAgICAg
ICAgICAgLSBmc2wsaW14OG1xLW53bC1kc2kKPiArICAgIHRoZW46Cj4gKyAgICAgIHJlcXVpcmVk
Ogo+ICsgICAgICAgIC0gcmVzZXRzCj4gKyAgICAgICAgLSByZXNldC1uYW1lcwo+ICsgICAgICAg
IC0gbXV4LXNlbAo+ICsKPiArcmVxdWlyZWQ6Cj4gKyAgLSBjb21wYXRpYmxlCj4gKyAgLSByZWcK
PiArICAtIGludGVycnVwdHMKPiArICAtIGNsb2Nrcwo+ICsgIC0gY2xvY2stbmFtZXMKPiArICAt
IHBoeXMKPiArICAtIHBoeS1uYW1lcwo+ICsKPiArZXhhbXBsZXM6Cj4gKyAtIHwKPiArCj4gKyAg
IG1pcGlfZHNpOiBtaXBpX2RzaUAzMGEwMDAwMCB7Cj4gKyAgICAgICAgICAgICAgI2FkZHJlc3Mt
Y2VsbHMgPSA8MT47Cj4gKyAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4gKyAgICAg
ICAgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsaW14OG1xLW53bC1kc2kiOwo+ICsgICAgICAgICAg
ICAgIHJlZyA9IDwweDMwQTAwMDAwIDB4MzAwPjsKPiArICAgICAgICAgICAgICBjbG9ja3MgPSA8
JmNsayAxNjM+LCA8JmNsayAyNDQ+LCA8JmNsayAyNDU+LCA8JmNsayAxNjQ+Owo+ICsgICAgICAg
ICAgICAgIGNsb2NrLW5hbWVzID0gImNvcmUiLCAicnhfZXNjIiwgInR4X2VzYyIsICJwaHlfcmVm
IjsKPiArICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPDAgMzQgND47Cj4gKyAgICAgICAgICAg
ICAgcG93ZXItZG9tYWlucyA9IDwmcGdjX21pcGk+Owo+ICsgICAgICAgICAgICAgIHJlc2V0cyA9
IDwmc3JjIDA+LCA8JnNyYyAxPiwgPCZzcmMgMj4sIDwmc3JjIDM+Owo+ICsgICAgICAgICAgICAg
IHJlc2V0LW5hbWVzID0gImJ5dGUiLCAiZHBpIiwgImVzYyIsICJwY2xrIjsKPiArICAgICAgICAg
ICAgICBtdXgtc2VsID0gPCZpb211eGNfZ3ByPjsKPiArICAgICAgICAgICAgICBwaHlzID0gPCZk
cGh5PjsKPiArICAgICAgICAgICAgICBwaHktbmFtZXMgPSAiZHBoeSI7Cj4gKwo+ICsgICAgICAg
ICAgICAgIHBhbmVsQDAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICIu
Li4iOwo+ICsgICAgICAgICAgICAgICAgICAgICAgcG9ydEAwIHsKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcGFuZWxfaW46IGVuZHBvaW50IHsKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmbWlwaV9kc2lfb3V0PjsKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAgICAgIH07Cj4g
KyAgICAgICAgICAgICAgfTsKPiArCj4gKyAgICAgICAgICAgICAgcG9ydHMgewo+ICsgICAgICAg
ICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsgICAgICAgICAgICAgICAgICAg
ICNzaXplLWNlbGxzID0gPDA+Owo+ICsKPiArICAgICAgICAgICAgICAgICAgICBwb3J0QDAgewo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MD47Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgIG1pcGlfZHNpX2luOiBlbmRwb2ludCB7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JmxjZGlmX21pcGlfZHNp
PjsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAg
ICB9Owo+ICsgICAgICAgICAgICAgICAgICAgIHBvcnRAMSB7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHJlZyA9IDwxPjsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgbWlwaV9k
c2lfb3V0OiBlbmRwb2ludCB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZwYW5lbF9pbj47Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgIH07Cj4gKyAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICB9
Owo+ICsgICAgICB9OwoKLS0gClJlZ2FyZHMsCgpMYXVyZW50IFBpbmNoYXJ0CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
