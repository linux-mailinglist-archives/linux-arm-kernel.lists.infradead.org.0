Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 800F5A3762
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47jp02y41aSV6HZa9KOTxGjI+wGst+3LOGmaMJjCRoA=; b=JPPvki8CYdUEfn
	ndJQ6g5h5XwX4bJUG4cp5217nTNYLqvyp3dtV830+FuzeRWFiBw06JQs1+zwowE8PcCnDTSBb64GD
	Bx8HQVLAi773Tf7tNkbHrB38rB+0qGbRHR6SQ26klMgvTB7JEXHBkIViQIXYokyAKQaBbKxC5I/jK
	1Fxveu3EHwek0al9VfEnP3HpWAIutEjVl7XmHtUMW4MHJQ4NguZwk6aqhzMjvMQMYgkM6FBPaGsmm
	uo6o39qoPq8OPzMTAyVXCk1w7tCf+hTZfPUFov7SFTGXljU15dp+7Xrw3/qelyofzo2Voo0gjBxt4
	xpVMM7EN3kbY2K7Z63Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gUb-0007Rp-LY; Fri, 30 Aug 2019 12:59:05 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gU3-0007Ea-KU
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:58:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id A258BFB02;
 Fri, 30 Aug 2019 14:58:28 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wyKjrYPEYbnf; Fri, 30 Aug 2019 14:58:26 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 1E51B46CBF; Fri, 30 Aug 2019 14:58:22 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: "To : David Airlie" <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
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
 Robert Chiras <robert.chiras@nxp.com>, Sam Ravnborg <sam@ravnborg.org>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v4 1/2] dt-bindings: display/bridge: Add binding for NWL mipi
 dsi host controller
Date: Fri, 30 Aug 2019 14:58:21 +0200
Message-Id: <64ec3f9375d9684f432dba48af63e3a5de8875f5.1567169464.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <cover.1567169464.git.agx@sigxcpu.org>
References: <cover.1567169464.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_055831_996658_BE0D62F9 
X-CRM114-Status: GOOD (  13.14  )
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
b3JnPgpUZXN0ZWQtYnk6IFJvYmVydCBDaGlyYXMgPHJvYmVydC5jaGlyYXNAbnhwLmNvbT4KLS0t
CiAuLi4vYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvbndsLWRzaS55YW1sICAgICAgfCAxNzYgKysr
KysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTc2IGluc2VydGlvbnMoKykKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9i
cmlkZ2UvbndsLWRzaS55YW1sCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwKbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4zMTExOWM3ODg1ZmYKLS0tIC9kZXYvbnVsbAor
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2Uvbnds
LWRzaS55YW1sCkBAIC0wLDAgKzEsMTc2IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAo
R1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKKyVZQU1MIDEuMgorLS0tCiskaWQ6IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbCMKKyRz
Y2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIworCit0
aXRsZTogTm9ydGh3ZXN0IExvZ2ljIE1JUEktRFNJIGNvbnRyb2xsZXIgb24gaS5NWCBTb0NzCisK
K21haW50YWluZXJzOgorICAtIEd1aWRvIEfDum50aGVyIDxhZ3hAc2lneGNwdS5vcmc+CisgIC0g
Um9iZXJ0IENoaXJhcyA8cm9iZXJ0LmNoaXJhc0BueHAuY29tPgorCitkZXNjcmlwdGlvbjogfAor
ICBOV0wgTUlQSS1EU0kgaG9zdCBjb250cm9sbGVyIGZvdW5kIG9uIGkuTVg4IHBsYXRmb3Jtcy4g
VGhpcyBpcyBhIGRzaSBicmlkZ2UgZm9yCisgIHRoZSBTT0NzIE5XTCBNSVBJLURTSSBob3N0IGNv
bnRyb2xsZXIuCisKK3Byb3BlcnRpZXM6CisgIGNvbXBhdGlibGU6CisgICAgY29uc3Q6IGZzbCxp
bXg4bXEtbndsLWRzaQorCisgIHJlZzoKKyAgICBtYXhJdGVtczogMQorCisgIGludGVycnVwdHM6
CisgICAgbWF4SXRlbXM6IDEKKworICAnI2FkZHJlc3MtY2VsbHMnOgorICAgIGNvbnN0OiAxCisK
KyAgJyNzaXplLWNlbGxzJzoKKyAgICBjb25zdDogMAorCisgIGNsb2NrczoKKyAgICBpdGVtczoK
KyAgICAgIC0gZGVzY3JpcHRpb246IERTSSBjb3JlIGNsb2NrCisgICAgICAtIGRlc2NyaXB0aW9u
OiBSWF9FU0MgY2xvY2sgKHVzZWQgaW4gZXNjYXBlIG1vZGUpCisgICAgICAtIGRlc2NyaXB0aW9u
OiBUWF9FU0MgY2xvY2sgKHVzZWQgaW4gZXNjYXBlIG1vZGUpCisgICAgICAtIGRlc2NyaXB0aW9u
OiBQSFlfUkVGIGNsb2NrCisKKyAgY2xvY2stbmFtZXM6CisgICAgaXRlbXM6CisgICAgICAtIGNv
bnN0OiBjb3JlCisgICAgICAtIGNvbnN0OiByeF9lc2MKKyAgICAgIC0gY29uc3Q6IHR4X2VzYwor
ICAgICAgLSBjb25zdDogcGh5X3JlZgorCisgIG11eC1jb250cm9sczoKKyAgICBkZXNjcmlwdGlv
bjoKKyAgICAgIG11eCBjb250cm9sbGVyIG5vZGUgdG8gdXNlIGZvciBvcGVyYXRpbmcgdGhlIGlu
cHV0IG11eAorCisgIHBoeXM6CisgICAgbWF4SXRlbXM6IDEKKyAgICBkZXNjcmlwdGlvbjoKKyAg
ICAgIEEgcGhhbmRsZSB0byB0aGUgcGh5IG1vZHVsZSByZXByZXNlbnRpbmcgdGhlIERQSFkKKwor
ICBwaHktbmFtZXM6CisgICAgaXRlbXM6CisgICAgICAtIGNvbnN0OiBkcGh5CisKKyAgcG93ZXIt
ZG9tYWluczoKKyAgICBtYXhJdGVtczogMQorCisgIHJlc2V0czoKKyAgICBpdGVtczoKKyAgICAg
IC0gZGVzY3JpcHRpb246IGRzaSBieXRlIHJlc2V0IGxpbmUKKyAgICAgIC0gZGVzY3JpcHRpb246
IGRzaSBkcGkgcmVzZXQgbGluZQorICAgICAgLSBkZXNjcmlwdGlvbjogZHNpIGVzYyByZXNldCBs
aW5lCisgICAgICAtIGRlc2NyaXB0aW9uOiBkc2kgcGNsayByZXNldCBsaW5lCisKKyAgcmVzZXQt
bmFtZXM6CisgICAgaXRlbXM6CisgICAgICAtIGNvbnN0OiBieXRlCisgICAgICAtIGNvbnN0OiBk
cGkKKyAgICAgIC0gY29uc3Q6IGVzYworICAgICAgLSBjb25zdDogcGNsaworCisgIHBvcnRzOgor
ICAgIHR5cGU6IG9iamVjdAorICAgIGRlc2NyaXB0aW9uOgorICAgICAgQSBub2RlIGNvbnRhaW5p
bmcgRFNJIGlucHV0ICYgb3V0cHV0IHBvcnQgbm9kZXMgd2l0aCBlbmRwb2ludAorICAgICAgZGVm
aW5pdGlvbnMgYXMgZG9jdW1lbnRlZCBpbgorICAgICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2dyYXBoLnR4dC4KKyAgICBwcm9wZXJ0aWVzOgorICAgICAgcG9ydEAwOgorICAg
ICAgICB0eXBlOiBvYmplY3QKKyAgICAgICAgZGVzY3JpcHRpb246CisgICAgICAgICAgSW5wdXQg
cG9ydCBub2RlIHRvIHJlY2VpdmUgcGl4ZWwgZGF0YSBmcm9tIHRoZQorICAgICAgICAgIGRpc3Bs
YXkgY29udHJvbGxlcgorCisgICAgICBwb3J0QDE6CisgICAgICAgIHR5cGU6IG9iamVjdAorICAg
ICAgICBkZXNjcmlwdGlvbjoKKyAgICAgICAgICBEU0kgb3V0cHV0IHBvcnQgbm9kZSB0byB0aGUg
cGFuZWwgb3IgdGhlIG5leHQgYnJpZGdlCisgICAgICAgICAgaW4gdGhlIGNoYWluCisKKyAgICAg
ICcjYWRkcmVzcy1jZWxscyc6CisgICAgICAgIGNvbnN0OiAxCisKKyAgICAgICcjc2l6ZS1jZWxs
cyc6CisgICAgICAgIGNvbnN0OiAwCisKKyAgICByZXF1aXJlZDoKKyAgICAgIC0gJyNhZGRyZXNz
LWNlbGxzJworICAgICAgLSAnI3NpemUtY2VsbHMnCisgICAgICAtIHBvcnRAMAorICAgICAgLSBw
b3J0QDEKKworICAgIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQorCitwYXR0ZXJuUHJvcGVy
dGllczoKKyAgIl5wYW5lbEBbMC05XSskIjoKKyAgICB0eXBlOiBvYmplY3QKKworcmVxdWlyZWQ6
CisgIC0gJyNhZGRyZXNzLWNlbGxzJworICAtICcjc2l6ZS1jZWxscycKKyAgLSBjbG9jay1uYW1l
cworICAtIGNsb2NrcworICAtIGNvbXBhdGlibGUKKyAgLSBpbnRlcnJ1cHRzCisgIC0gbXV4LWNv
bnRyb2xzCisgIC0gcGh5LW5hbWVzCisgIC0gcGh5cworICAtIHBvcnRzCisgIC0gcmVnCisgIC0g
cmVzZXQtbmFtZXMKKyAgLSByZXNldHMKKworYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCisK
K2V4YW1wbGVzOgorIC0gfAorCisgICBtaXBpX2RzaTogbWlwaV9kc2lAMzBhMDAwMDAgeworICAg
ICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKKyAgICAgICAgICAgICAgI3NpemUtY2Vs
bHMgPSA8MD47CisgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGlteDhtcS1ud2wtZHNp
IjsKKyAgICAgICAgICAgICAgcmVnID0gPDB4MzBBMDAwMDAgMHgzMDA+OworICAgICAgICAgICAg
ICBjbG9ja3MgPSA8JmNsayAxNjM+LCA8JmNsayAyNDQ+LCA8JmNsayAyNDU+LCA8JmNsayAxNjQ+
OworICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJjb3JlIiwgInJ4X2VzYyIsICJ0eF9lc2Mi
LCAicGh5X3JlZiI7CisgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8MCAzNCA0PjsKKyAgICAg
ICAgICAgICAgbXV4LWNvbnRyb2xzID0gPCZtdXggMD47CisgICAgICAgICAgICAgIHBvd2VyLWRv
bWFpbnMgPSA8JnBnY19taXBpPjsKKyAgICAgICAgICAgICAgcmVzZXRzID0gPCZzcmMgMD4sIDwm
c3JjIDE+LCA8JnNyYyAyPiwgPCZzcmMgMz47CisgICAgICAgICAgICAgIHJlc2V0LW5hbWVzID0g
ImJ5dGUiLCAiZHBpIiwgImVzYyIsICJwY2xrIjsKKyAgICAgICAgICAgICAgcGh5cyA9IDwmZHBo
eT47CisgICAgICAgICAgICAgIHBoeS1uYW1lcyA9ICJkcGh5IjsKKworICAgICAgICAgICAgICBw
YW5lbEAwIHsKKyAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJvY2t0ZWNoLGpo
MDU3bjAwOTAwIjsKKyAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MD47CisgICAgICAgICAg
ICAgICAgICAgICAgcG9ydEAwIHsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHBhbmVsX2lu
OiBlbmRwb2ludCB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3Rl
LWVuZHBvaW50ID0gPCZtaXBpX2RzaV9vdXQ+OworICAgICAgICAgICAgICAgICAgICAgICAgICAg
fTsKKyAgICAgICAgICAgICAgICAgICAgICB9OworICAgICAgICAgICAgICB9OworCisgICAgICAg
ICAgICAgIHBvcnRzIHsKKyAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47
CisgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+OworCisgICAgICAgICAgICAg
ICAgICAgIHBvcnRAMCB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MD47Cisg
ICAgICAgICAgICAgICAgICAgICAgICAgICBtaXBpX2RzaV9pbjogZW5kcG9pbnQgeworICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmbGNk
aWZfbWlwaV9kc2k+OworICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKKyAgICAgICAgICAg
ICAgICAgICAgfTsKKyAgICAgICAgICAgICAgICAgICAgcG9ydEAxIHsKKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHJlZyA9IDwxPjsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgIG1pcGlf
ZHNpX291dDogZW5kcG9pbnQgeworICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnBhbmVsX2luPjsKKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgIH07CisgICAgICAgICAgICAgICAgICAgIH07CisgICAgICAgICAgICAgIH07CisgICAg
ICB9OwotLSAKMi4yMy4wLnJjMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
