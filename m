Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A49887FDC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzXt4StSt/K0T/NiWBfzugHvR2fqwTkIj0zFbf1c594=; b=AOdqszuvmRYrXk
	7zZhwllhwkmqcPMnV73oVhoV32fujD7JJsbC55euSjWealSuXzuuU5VHB4UGk/TSSxXo8MOAT4ADG
	9tsuqxibtWgodQevYU5KayUYp+OfynQCWrgvwwfF8HNmxUMrzFHjFPrt6mnGJjHChjqklbZoyyqd5
	Gy2a7pNlfUJaSZdR4tjP8s+cMK9SxXkkvQY/YF/zPIekH7LwYTAmCViEWevfBsYRI9EpbaCUqkyI7
	RqC6WyQ2PxidsuhJfP2awhLBwB2uqlWtyusLxFAGLbl6Abu+ovq1vAVbF/WpJWOFGtCl7yeLqku87
	gfKHbrccDb7XNxp3ACgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7hi-0007CM-6m; Fri, 09 Aug 2019 16:25:23 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7gw-0006QI-E0
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:24:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id D3A35FB02;
 Fri,  9 Aug 2019 18:24:28 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3YWp7d4m5v1w; Fri,  9 Aug 2019 18:24:26 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id B904E41DAD; Fri,  9 Aug 2019 18:24:23 +0200 (CEST)
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
 Robert Chiras <robert.chiras@nxp.com>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 2/3] dt-bindings: display/bridge: Add binding for NWL mipi
 dsi host controller
Date: Fri,  9 Aug 2019 18:24:22 +0200
Message-Id: <9c906bb6592424acdb1a67447a482e010a113b49.1565367567.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565367567.git.agx@sigxcpu.org>
References: <cover.1565367567.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_092434_804795_F142AAE0 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
b3JnPgotLS0KIC4uLi9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwgICAgICB8
IDE1NSArKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNTUgaW5zZXJ0aW9ucygr
KQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
aXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvbndsLWRzaS55YW1sIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbApuZXcg
ZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjVlZDhiYzRhNGQxOAotLS0gL2Rl
di9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2Jy
aWRnZS9ud2wtZHNpLnlhbWwKQEAgLTAsMCArMSwxNTUgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAKKyVZQU1MIDEuMgorLS0tCiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9zY2hlbWFzL2Rpc3BsYXkvYnJpZGdlL2lteC1ud2wtZHNpLnlhbWwjCiskc2NoZW1hOiBodHRw
Oi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IE5vcnRo
d2VzdCBMb2dpYyBNSVBJLURTSSBvbiBpbXggU29DcworCittYWludGFpbmVyczoKKyAgLSBHdWlk
byBHw7pudGhlciA8YWd4QHNpZ3hjcHUub3JnPgorICAtIFJvYmVydCBDaGlyYXMgPHJvYmVydC5j
aGlyYXNAbnhwLmNvbT4KKworZGVzY3JpcHRpb246IHwKKyAgTldMIE1JUEktRFNJIGhvc3QgY29u
dHJvbGxlciBmb3VuZCBvbiBpLk1YOCBwbGF0Zm9ybXMuIFRoaXMgaXMgYSBkc2kgYnJpZGdlIGZv
cgorICB0aGUgU09DcyBOV0wgTUlQSS1EU0kgaG9zdCBjb250cm9sbGVyLgorCitwcm9wZXJ0aWVz
OgorICBjb21wYXRpYmxlOgorICAgIG9uZU9mOgorICAgICAgLSBpdGVtczoKKyAgICAgICAgLSBj
b25zdDogZnNsLGlteDhtcS1ud2wtZHNpCisKKyAgcmVnOgorICAgIG1heEl0ZW1zOiAxCisKKyAg
aW50ZXJydXB0czoKKyAgICBtYXhJdGVtczogMQorCisgIGNsb2NrczoKKyAgICBpdGVtczoKKyAg
ICAgIC0gZGVzY3JpcHRpb246IERTSSBjb3JlIGNsb2NrCisgICAgICAtIGRlc2NyaXB0aW9uOiBS
WF9FU0MgY2xvY2sgKHVzZWQgaW4gZXNjYXBlIG1vZGUpCisgICAgICAtIGRlc2NyaXB0aW9uOiBU
WF9FU0MgY2xvY2sgKHVzZWQgaW4gZXNjYXBlIG1vZGUpCisgICAgICAtIGRlc2NyaXB0aW9uOiBQ
SFlfUkVGIGNsb2NrCisKKyAgY2xvY2stbmFtZXM6CisgICAgaXRlbXM6CisgICAgICAtIGNvbnN0
OiBjb3JlCisgICAgICAtIGNvbnN0OiByeF9lc2MKKyAgICAgIC0gY29uc3Q6IHR4X2VzYworICAg
ICAgLSBjb25zdDogcGh5X3JlZgorCisgIHBoeXM6CisgICAgbWF4SXRlbXM6IDEKKyAgICBkZXNj
cmlwdGlvbjoKKyAgICAgIEEgcGhhbmRsZSB0byB0aGUgcGh5IG1vZHVsZSByZXByZXNlbnRpbmcg
dGhlIERQSFkKKworICBwaHktbmFtZXM6CisgICAgaXRlbXM6CisgICAgICAtIGNvbnN0OiBkcGh5
CisKKyAgcG93ZXItZG9tYWluczoKKyAgICBtYXhJdGVtczogMQorICAgIGRlc2NyaXB0aW9uOgor
ICAgICAgQSBwaGFuZGxlIHRvIHRoZSBwb3dlciBkb21haW4KKworICByZXNldHM6CisgICAgbWF4
SXRlbXM6IDQKKyAgICBkZXNjcmlwdGlvbjoKKyAgICAgIEEgcGhhbmRsZSB0byB0aGUgcmVzZXQg
Y29udHJvbGxlcgorCisgIHJlc2V0LW5hbWVzOgorICAgIGl0ZW1zOgorICAgICAgLSBjb25zdDog
Ynl0ZQorICAgICAgLSBjb25zdDogZHBpCisgICAgICAtIGNvbnN0OiBlc2MKKyAgICAgIC0gY29u
c3Q6IHBjbGsKKworICBtdXgtc2VsOgorICAgIG1heEl0ZW1zOiAxCisgICAgZGVzY3JpcHRpb246
CisgICAgICBBIHBoYW5kbGUgdG8gdGhlIE1VWCByZWdpc3RlciBzZXQKKworICBwb3J0OgorICAg
IHR5cGU6IG9iamVjdAorICAgIGRlc2NyaXB0aW9uOgorICAgICAgQSBpbnB1dCBwdXQgb3Igb3V0
cHV0IHBvcnQgbm9kZS4KKworICBwb3J0czoKKyAgICB0eXBlOiBvYmplY3QKKyAgICBkZXNjcmlw
dGlvbjoKKyAgICAgIEEgbm9kZSBjb250YWluaW5nIERTSSBpbnB1dCAmIG91dHB1dCBwb3J0IG5v
ZGVzIHdpdGggZW5kcG9pbnQKKyAgICAgIGRlZmluaXRpb25zIGFzIGRvY3VtZW50ZWQgaW4KKyAg
ICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncmFwaC50eHQuCisKK3BhdHRl
cm5Qcm9wZXJ0aWVzOgorICAiXnBhbmVsQFswLTldKyQiOiB0cnVlCisKK2FsbE9mOgorICAtIGlm
OgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAgY29tcGF0aWJsZToKKyAgICAgICAgICBjb250
YWluczoKKyAgICAgICAgICAgIGVudW06CisgICAgICAgICAgICAgIC0gZnNsLGlteDhtcS1ud2wt
ZHNpCisgICAgdGhlbjoKKyAgICAgIHJlcXVpcmVkOgorICAgICAgICAtIHJlc2V0cworICAgICAg
ICAtIHJlc2V0LW5hbWVzCisgICAgICAgIC0gbXV4LXNlbAorCityZXF1aXJlZDoKKyAgLSBjb21w
YXRpYmxlCisgIC0gcmVnCisgIC0gaW50ZXJydXB0cworICAtIGNsb2NrcworICAtIGNsb2NrLW5h
bWVzCisgIC0gcGh5cworICAtIHBoeS1uYW1lcworCitleGFtcGxlczoKKyAtIHwKKworICAgbWlw
aV9kc2k6IG1pcGlfZHNpQDMwYTAwMDAwIHsKKyAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMg
PSA8MT47CisgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+OworICAgICAgICAgICAgICBj
b21wYXRpYmxlID0gImZzbCxpbXg4bXEtbndsLWRzaSI7CisgICAgICAgICAgICAgIHJlZyA9IDww
eDMwQTAwMDAwIDB4MzAwPjsKKyAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbGsgMTYzPiwgPCZj
bGsgMjQ0PiwgPCZjbGsgMjQ1PiwgPCZjbGsgMTY0PjsKKyAgICAgICAgICAgICAgY2xvY2stbmFt
ZXMgPSAiY29yZSIsICJyeF9lc2MiLCAidHhfZXNjIiwgInBoeV9yZWYiOworICAgICAgICAgICAg
ICBpbnRlcnJ1cHRzID0gPDAgMzQgND47CisgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8
JnBnY19taXBpPjsKKyAgICAgICAgICAgICAgcmVzZXRzID0gPCZzcmMgMD4sIDwmc3JjIDE+LCA8
JnNyYyAyPiwgPCZzcmMgMz47CisgICAgICAgICAgICAgIHJlc2V0LW5hbWVzID0gImJ5dGUiLCAi
ZHBpIiwgImVzYyIsICJwY2xrIjsKKyAgICAgICAgICAgICAgbXV4LXNlbCA9IDwmaW9tdXhjX2dw
cj47CisgICAgICAgICAgICAgIHBoeXMgPSA8JmRwaHk+OworICAgICAgICAgICAgICBwaHktbmFt
ZXMgPSAiZHBoeSI7CisKKyAgICAgICAgICAgICAgcGFuZWxAMCB7CisgICAgICAgICAgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICIuLi4iOworICAgICAgICAgICAgICAgICAgICAgIHBvcnRAMCB7
CisgICAgICAgICAgICAgICAgICAgICAgICAgICBwYW5lbF9pbjogZW5kcG9pbnQgeworICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmbWlwaV9k
c2lfb3V0PjsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgIH07CisgICAgICAgICAgICAgICAg
ICAgICAgfTsKKyAgICAgICAgICAgICAgfTsKKworICAgICAgICAgICAgICBwb3J0cyB7CisgICAg
ICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+OworICAgICAgICAgICAgICAgICAg
ICAjc2l6ZS1jZWxscyA9IDwwPjsKKworICAgICAgICAgICAgICAgICAgICBwb3J0QDAgeworICAg
ICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDA+OworICAgICAgICAgICAgICAgICAgICAg
ICAgICAgbWlwaV9kc2lfaW46IGVuZHBvaW50IHsKKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JmxjZGlmX21pcGlfZHNpPjsKKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgIH07CisgICAgICAgICAgICAgICAgICAgIH07CisgICAgICAg
ICAgICAgICAgICAgIHBvcnRAMSB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8
MT47CisgICAgICAgICAgICAgICAgICAgICAgICAgICBtaXBpX2RzaV9vdXQ6IGVuZHBvaW50IHsK
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50
ID0gPCZwYW5lbF9pbj47CisgICAgICAgICAgICAgICAgICAgICAgICAgICB9OworICAgICAgICAg
ICAgICAgICAgICB9OworICAgICAgICAgICAgICB9OworICAgICAgfTsKLS0gCjIuMjAuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
