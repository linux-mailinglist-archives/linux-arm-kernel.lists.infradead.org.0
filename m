Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E86199129
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 12:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQiRCJAtTVEXI7G56PgO4reO5k2ZHiwExA4Bg61AOF0=; b=TRbEAKW6SmSF6m
	PJmTsBsof38tEDEumVKaACcRhyjBlOv0Z3SeRkkHSb4gMcT3jhYgXm/YwMFXuv4M87ODpIf15/9XK
	9q88MpUaQXenSIX9L1MbnZtyQoZUrcKuejdfQrYKB0LQ8o+DOMU8qSmBZXv7P0kw8/aEnLkIqwIvZ
	2Wp6tLScmq4HSZGRHvrtxTdOBBMEoHLaAFfM8POU7egZ2pDQFEgkxByTma19opaOCRAUNWmh/isTh
	sXSeTSRHTjCPUMe2Ggc8c8CDpH8VVuzlXz2UvEL5HWQ71RG6gqhyCZ+RnAFiUg/JYGpuaa3MXcFlm
	BW0YZiWT0x2I+Vk0CMeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kaC-0007Go-Pf; Thu, 22 Aug 2019 10:44:44 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kZr-00079d-LS
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 10:44:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id A958EFB05;
 Thu, 22 Aug 2019 12:44:19 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id op8bJPHu9r8Q; Thu, 22 Aug 2019 12:44:17 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id AC9724014E; Thu, 22 Aug 2019 12:44:16 +0200 (CEST)
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
 Robert Chiras <robert.chiras@nxp.com>, Sam Ravnborg <sam@ravnborg.org>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v3 1/2] dt-bindings: display/bridge: Add binding for NWL mipi
 dsi host controller
Date: Thu, 22 Aug 2019 12:44:15 +0200
Message-Id: <36f62b431f32bc76e92d21e04dc48464aef43869.1566470526.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1566470526.git.agx@sigxcpu.org>
References: <cover.1566470526.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_034424_265763_582466DA 
X-CRM114-Status: GOOD (  13.79  )
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
ZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjI0ZDE3YTYzMTBkYwotLS0gL2Rl
di9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2Jy
aWRnZS9ud2wtZHNpLnlhbWwKQEAgLTAsMCArMSwxNTUgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAKKyVZQU1MIDEuMgorLS0tCiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9zY2hlbWFzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbCMKKyRzY2hlbWE6IGh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIworCit0aXRsZTogTm9ydGh3ZXN0
IExvZ2ljIE1JUEktRFNJIGNvbnRyb2xsZXIgb24gaS5NWCBTb0NzCisKK21haW50YWluZXJzOgor
ICAtIEd1aWRvIEfDum50aGVyIDxhZ3hAc2lneGNwdS5vcmc+CisgIC0gUm9iZXJ0IENoaXJhcyA8
cm9iZXJ0LmNoaXJhc0BueHAuY29tPgorCitkZXNjcmlwdGlvbjogfAorICBOV0wgTUlQSS1EU0kg
aG9zdCBjb250cm9sbGVyIGZvdW5kIG9uIGkuTVg4IHBsYXRmb3Jtcy4gVGhpcyBpcyBhIGRzaSBi
cmlkZ2UgZm9yCisgIHRoZSBTT0NzIE5XTCBNSVBJLURTSSBob3N0IGNvbnRyb2xsZXIuCisKK3By
b3BlcnRpZXM6CisgIGNvbXBhdGlibGU6CisgICAgY29uc3Q6IGZzbCxpbXg4bXEtbndsLWRzaQor
CisgIHJlZzoKKyAgICBtYXhJdGVtczogMQorCisgIGludGVycnVwdHM6CisgICAgbWF4SXRlbXM6
IDEKKworICBjbG9ja3M6CisgICAgaXRlbXM6CisgICAgICAtIGRlc2NyaXB0aW9uOiBEU0kgY29y
ZSBjbG9jaworICAgICAgLSBkZXNjcmlwdGlvbjogUlhfRVNDIGNsb2NrICh1c2VkIGluIGVzY2Fw
ZSBtb2RlKQorICAgICAgLSBkZXNjcmlwdGlvbjogVFhfRVNDIGNsb2NrICh1c2VkIGluIGVzY2Fw
ZSBtb2RlKQorICAgICAgLSBkZXNjcmlwdGlvbjogUEhZX1JFRiBjbG9jaworCisgIGNsb2NrLW5h
bWVzOgorICAgIGl0ZW1zOgorICAgICAgLSBjb25zdDogY29yZQorICAgICAgLSBjb25zdDogcnhf
ZXNjCisgICAgICAtIGNvbnN0OiB0eF9lc2MKKyAgICAgIC0gY29uc3Q6IHBoeV9yZWYKKworICBt
dXgtY29udHJvbHM6CisgICAgZGVzY3JpcHRpb246CisgICAgICBtdXggY29udHJvbGxlciBub2Rl
IHRvIHVzZSBmb3Igb3BlcmF0aW5nIHRoZSBpbnB1dCBtdXgKKworICBwaHlzOgorICAgIG1heEl0
ZW1zOiAxCisgICAgZGVzY3JpcHRpb246CisgICAgICBBIHBoYW5kbGUgdG8gdGhlIHBoeSBtb2R1
bGUgcmVwcmVzZW50aW5nIHRoZSBEUEhZCisKKyAgcGh5LW5hbWVzOgorICAgIGl0ZW1zOgorICAg
ICAgLSBjb25zdDogZHBoeQorCisgIHBvd2VyLWRvbWFpbnM6CisgICAgbWF4SXRlbXM6IDEKKyAg
ICBkZXNjcmlwdGlvbjoKKyAgICAgIEEgcGhhbmRsZSB0byB0aGUgcG93ZXIgZG9tYWluCisKKyAg
cmVzZXRzOgorICAgIGRlc2NyaXB0aW9uOgorICAgICAgcGhhbmRsZXMgdG8gdGhlIHJlc2V0IGNv
bnRyb2xsZXIKKyAgICBpdGVtczoKKyAgICAgIC0gZGVzY3JpcHRpb246IGRzaSBieXRlIHJlc2V0
IGxpbmUKKyAgICAgIC0gZGVzY3JpcHRpb246IGRzaSBkcGkgcmVzZXQgbGluZQorICAgICAgLSBk
ZXNjcmlwdGlvbjogZHNpIGVzYyByZXNldCBsaW5lCisgICAgICAtIGRlc2NyaXB0aW9uOiBkc2kg
cGNsayByZXNldCBsaW5lCisKKyAgcmVzZXQtbmFtZXM6CisgICAgaXRlbXM6CisgICAgICAtIGNv
bnN0OiBieXRlCisgICAgICAtIGNvbnN0OiBkcGkKKyAgICAgIC0gY29uc3Q6IGVzYworICAgICAg
LSBjb25zdDogcGNsaworCisgIHBvcnRzOgorICAgIHR5cGU6IG9iamVjdAorICAgIGRlc2NyaXB0
aW9uOgorICAgICAgQSBub2RlIGNvbnRhaW5pbmcgRFNJIGlucHV0ICYgb3V0cHV0IHBvcnQgbm9k
ZXMgd2l0aCBlbmRwb2ludAorICAgICAgZGVmaW5pdGlvbnMgYXMgZG9jdW1lbnRlZCBpbgorICAg
ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dyYXBoLnR4dC4KKworICBwb3J0
QDA6CisgICAgdHlwZTogb2JqZWN0CisgICAgZGVzY3JpcHRpb246CisgICAgICBJbnB1dCBwb3J0
IG5vZGUgdG8gcmVjZWl2ZSBwaXhlbCBkYXRhIGZyb20gdGhlCisgICAgICBkaXNwbGF5IGNvbnRy
b2xsZXIKKworICBwb3J0QDE6CisgICAgdHlwZTogb2JqZWN0CisgICAgZGVzY3JpcHRpb246Cisg
ICAgICBEU0kgb3V0cHV0IHBvcnQgbm9kZSB0byB0aGUgcGFuZWwgb3IgdGhlIG5leHQgYnJpZGdl
CisgICAgICBpbiB0aGUgY2hhaW4KKworcGF0dGVyblByb3BlcnRpZXM6CisgICJecGFuZWxAWzAt
OV0rJCI6IHRydWUKKworcmVxdWlyZWQ6CisgIC0gY2xvY2stbmFtZXMKKyAgLSBjbG9ja3MKKyAg
LSBjb21wYXRpYmxlCisgIC0gaW50ZXJydXB0cworICAtIG11eC1jb250cm9scworICAtIHBoeS1u
YW1lcworICAtIHBoeXMKKyAgLSBwb3J0cworICAtIHJlZworICAtIHJlc2V0LW5hbWVzCisgIC0g
cmVzZXRzCisKK2V4YW1wbGVzOgorIC0gfAorCisgICBtaXBpX2RzaTogbWlwaV9kc2lAMzBhMDAw
MDAgeworICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKKyAgICAgICAgICAgICAg
I3NpemUtY2VsbHMgPSA8MD47CisgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGlteDht
cS1ud2wtZHNpIjsKKyAgICAgICAgICAgICAgcmVnID0gPDB4MzBBMDAwMDAgMHgzMDA+OworICAg
ICAgICAgICAgICBjbG9ja3MgPSA8JmNsayAxNjM+LCA8JmNsayAyNDQ+LCA8JmNsayAyNDU+LCA8
JmNsayAxNjQ+OworICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJjb3JlIiwgInJ4X2VzYyIs
ICJ0eF9lc2MiLCAicGh5X3JlZiI7CisgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8MCAzNCA0
PjsKKyAgICAgICAgICAgICAgbXV4LWNvbnRyb2xzID0gPCZtdXggMD47CisgICAgICAgICAgICAg
IHBvd2VyLWRvbWFpbnMgPSA8JnBnY19taXBpPjsKKyAgICAgICAgICAgICAgcmVzZXRzID0gPCZz
cmMgMD4sIDwmc3JjIDE+LCA8JnNyYyAyPiwgPCZzcmMgMz47CisgICAgICAgICAgICAgIHJlc2V0
LW5hbWVzID0gImJ5dGUiLCAiZHBpIiwgImVzYyIsICJwY2xrIjsKKyAgICAgICAgICAgICAgcGh5
cyA9IDwmZHBoeT47CisgICAgICAgICAgICAgIHBoeS1uYW1lcyA9ICJkcGh5IjsKKworICAgICAg
ICAgICAgICBwYW5lbEAwIHsKKyAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJv
Y2t0ZWNoLGpoMDU3bjAwOTAwIjsKKyAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MD47Cisg
ICAgICAgICAgICAgICAgICAgICAgcG9ydEAwIHsKKyAgICAgICAgICAgICAgICAgICAgICAgICAg
IHBhbmVsX2luOiBlbmRwb2ludCB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgcmVtb3RlLWVuZHBvaW50ID0gPCZtaXBpX2RzaV9vdXQ+OworICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfTsKKyAgICAgICAgICAgICAgICAgICAgICB9OworICAgICAgICAgICAgICB9Owor
CisgICAgICAgICAgICAgIHBvcnRzIHsKKyAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2Vs
bHMgPSA8MT47CisgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+OworCisgICAg
ICAgICAgICAgICAgICAgIHBvcnRAMCB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcg
PSA8MD47CisgICAgICAgICAgICAgICAgICAgICAgICAgICBtaXBpX2RzaV9pbjogZW5kcG9pbnQg
eworICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2lu
dCA9IDwmbGNkaWZfbWlwaV9kc2k+OworICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKKyAg
ICAgICAgICAgICAgICAgICAgfTsKKyAgICAgICAgICAgICAgICAgICAgcG9ydEAxIHsKKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwxPjsKKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgIG1pcGlfZHNpX291dDogZW5kcG9pbnQgeworICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnBhbmVsX2luPjsKKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgIH07CisgICAgICAgICAgICAgICAgICAgIH07CisgICAgICAgICAgICAg
IH07CisgICAgICB9OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
