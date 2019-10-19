Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B22A0DD909
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 16:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTp8iPa5HIa+U8ovO0op2KSPHpSS2DNlORSqXC1OI1U=; b=ARcdEJZntD/Ykt
	7MgkG2QX2EPd19coblLfRM3f1y/07zJa42eFGgbJiCxqSIxXUpFWQPB54bhGYMs/dMtaom7EjAWJd
	ouOn0afJZgA5kX/OSwKmIIFrQy1ST2LhNiDWGOFHXeRc4ZcH2c2haCw9ZlJUgaJmuvVpITURX8q+D
	7wME8LPM8A+xfaFDRL8ThQSbj7yVBzVSFTpRkUa4QnMDTJdt2PzGm06pbIOYqkczcGHB5IeXbkanY
	FG2cUCHzAQpe359nZI0Al3TrvAv36DlJCJof8jUcZfMgppBA6y6qSo21cyvzBp3dO792eSjdetS1P
	HbEn095wpVLHksEYknxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLpTK-0003IQ-QZ; Sat, 19 Oct 2019 14:12:46 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLpT4-0003Gy-4s
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 14:12:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 0495CFB05;
 Sat, 19 Oct 2019 16:12:28 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O8eudPkWEbcH; Sat, 19 Oct 2019 16:12:26 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id EFC4949B0D; Sat, 19 Oct 2019 16:12:25 +0200 (CEST)
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
Subject: [PATCH v7 1/2] dt-bindings: display/bridge: Add binding for NWL mipi
 dsi host controller
Date: Sat, 19 Oct 2019 16:12:24 +0200
Message-Id: <65aa0f3ca727431b90f66e3d74fa3cde889f7cde.1571494140.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <cover.1571494140.git.agx@sigxcpu.org>
References: <cover.1571494140.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_071230_504915_DB6F9A88 
X-CRM114-Status: GOOD (  14.02  )
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
b3JnPgpUZXN0ZWQtYnk6IFJvYmVydCBDaGlyYXMgPHJvYmVydC5jaGlyYXNAbnhwLmNvbT4KUmV2
aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Ci0tLQogLi4uL2JpbmRpbmdz
L2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbCAgICAgIHwgMjAzICsrKysrKysrKysrKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDIwMyBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2ku
eWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNw
bGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGlzcGxheS9icmlkZ2UvbndsLWRzaS55YW1sCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4
IDAwMDAwMDAwMDAwMC4uOGNiZWNkNTNjMWFjCi0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbApAQCAt
MCwwICsxLDIwMyBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBP
UiBCU0QtMi1DbGF1c2UpCislWUFNTCAxLjIKKy0tLQorJGlkOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvc2NoZW1hcy9kaXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwjCiskc2NoZW1hOiBodHRwOi8v
ZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IE5vcnRod2Vz
dCBMb2dpYyBNSVBJLURTSSBjb250cm9sbGVyIG9uIGkuTVggU29DcworCittYWludGFpbmVyczoK
KyAgLSBHdWlkbyBHw7pudGhlciA8YWd4QHNpZ3hjcHUub3JnPgorICAtIFJvYmVydCBDaGlyYXMg
PHJvYmVydC5jaGlyYXNAbnhwLmNvbT4KKworZGVzY3JpcHRpb246IHwKKyAgTldMIE1JUEktRFNJ
IGhvc3QgY29udHJvbGxlciBmb3VuZCBvbiBpLk1YOCBwbGF0Zm9ybXMuIFRoaXMgaXMgYSBkc2kg
YnJpZGdlIGZvcgorICB0aGUgU09DcyBOV0wgTUlQSS1EU0kgaG9zdCBjb250cm9sbGVyLgorCitw
cm9wZXJ0aWVzOgorICBjb21wYXRpYmxlOgorICAgIGNvbnN0OiBmc2wsaW14OG1xLW53bC1kc2kK
KworICByZWc6CisgICAgbWF4SXRlbXM6IDEKKworICBpbnRlcnJ1cHRzOgorICAgIG1heEl0ZW1z
OiAxCisKKyAgJyNhZGRyZXNzLWNlbGxzJzoKKyAgICBjb25zdDogMQorCisgICcjc2l6ZS1jZWxs
cyc6CisgICAgY29uc3Q6IDAKKworICBjbG9ja3M6CisgICAgaXRlbXM6CisgICAgICAtIGRlc2Ny
aXB0aW9uOiBEU0kgY29yZSBjbG9jaworICAgICAgLSBkZXNjcmlwdGlvbjogUlhfRVNDIGNsb2Nr
ICh1c2VkIGluIGVzY2FwZSBtb2RlKQorICAgICAgLSBkZXNjcmlwdGlvbjogVFhfRVNDIGNsb2Nr
ICh1c2VkIGluIGVzY2FwZSBtb2RlKQorICAgICAgLSBkZXNjcmlwdGlvbjogUEhZX1JFRiBjbG9j
aworCisgIGNsb2NrLW5hbWVzOgorICAgIGl0ZW1zOgorICAgICAgLSBjb25zdDogY29yZQorICAg
ICAgLSBjb25zdDogcnhfZXNjCisgICAgICAtIGNvbnN0OiB0eF9lc2MKKyAgICAgIC0gY29uc3Q6
IHBoeV9yZWYKKworICBtdXgtY29udHJvbHM6CisgICAgZGVzY3JpcHRpb246CisgICAgICBtdXgg
Y29udHJvbGxlciBub2RlIHRvIHVzZSBmb3Igb3BlcmF0aW5nIHRoZSBpbnB1dCBtdXgKKworICBw
aHlzOgorICAgIG1heEl0ZW1zOiAxCisgICAgZGVzY3JpcHRpb246CisgICAgICBBIHBoYW5kbGUg
dG8gdGhlIHBoeSBtb2R1bGUgcmVwcmVzZW50aW5nIHRoZSBEUEhZCisKKyAgcGh5LW5hbWVzOgor
ICAgIGl0ZW1zOgorICAgICAgLSBjb25zdDogZHBoeQorCisgIHBvd2VyLWRvbWFpbnM6CisgICAg
bWF4SXRlbXM6IDEKKworICByZXNldHM6CisgICAgaXRlbXM6CisgICAgICAtIGRlc2NyaXB0aW9u
OiBkc2kgYnl0ZSByZXNldCBsaW5lCisgICAgICAtIGRlc2NyaXB0aW9uOiBkc2kgZHBpIHJlc2V0
IGxpbmUKKyAgICAgIC0gZGVzY3JpcHRpb246IGRzaSBlc2MgcmVzZXQgbGluZQorICAgICAgLSBk
ZXNjcmlwdGlvbjogZHNpIHBjbGsgcmVzZXQgbGluZQorCisgIHJlc2V0LW5hbWVzOgorICAgIGl0
ZW1zOgorICAgICAgLSBjb25zdDogYnl0ZQorICAgICAgLSBjb25zdDogZHBpCisgICAgICAtIGNv
bnN0OiBlc2MKKyAgICAgIC0gY29uc3Q6IHBjbGsKKworICBwb3J0czoKKyAgICB0eXBlOiBvYmpl
Y3QKKyAgICBkZXNjcmlwdGlvbjoKKyAgICAgIEEgbm9kZSBjb250YWluaW5nIERTSSBpbnB1dCAm
IG91dHB1dCBwb3J0IG5vZGVzIHdpdGggZW5kcG9pbnQKKyAgICAgIGRlZmluaXRpb25zIGFzIGRv
Y3VtZW50ZWQgaW4KKyAgICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncmFw
aC50eHQuCisgICAgcHJvcGVydGllczoKKyAgICAgIHBvcnRAMDoKKyAgICAgICAgdHlwZTogb2Jq
ZWN0CisgICAgICAgIGRlc2NyaXB0aW9uOgorICAgICAgICAgIElucHV0IHBvcnQgbm9kZSB0byBy
ZWNlaXZlIHBpeGVsIGRhdGEgZnJvbSB0aGUKKyAgICAgICAgICBkaXNwbGF5IGNvbnRyb2xsZXIu
IEV4YWN0bHkgb25lIGVuZHBvaW50IG11c3QgYmUKKyAgICAgICAgICBzcGVjaWZpZWQuCisgICAg
ICAgIHByb3BlcnRpZXM6CisgICAgICAgICAgJyNhZGRyZXNzLWNlbGxzJzoKKyAgICAgICAgICAg
IGNvbnN0OiAxCisKKyAgICAgICAgICAnI3NpemUtY2VsbHMnOgorICAgICAgICAgICAgY29uc3Q6
IDAKKworICAgICAgICAgIGVuZHBvaW50QDA6CisgICAgICAgICAgICBkZXNjcmlwdGlvbjogc3Vi
LW5vZGUgZGVzY3JpYmluZyB0aGUgaW5wdXQgZnJvbSBMQ0RJRgorICAgICAgICAgICAgdHlwZTog
b2JqZWN0CisKKyAgICAgICAgICBlbmRwb2ludEAxOgorICAgICAgICAgICAgZGVzY3JpcHRpb246
IHN1Yi1ub2RlIGRlc2NyaWJpbmcgdGhlIGlucHV0IGZyb20gRENTUworICAgICAgICAgICAgdHlw
ZTogb2JqZWN0CisKKyAgICAgICAgICByZWc6CisgICAgICAgICAgICBjb25zdDogMAorCisgICAg
ICAgIHJlcXVpcmVkOgorICAgICAgICAgIC0gJyNhZGRyZXNzLWNlbGxzJworICAgICAgICAgIC0g
JyNzaXplLWNlbGxzJworICAgICAgICAgIC0gcmVnCisgICAgICAgIGFkZGl0aW9uYWxQcm9wZXJ0
aWVzOiBmYWxzZQorCisgICAgICBwb3J0QDE6CisgICAgICAgIHR5cGU6IG9iamVjdAorICAgICAg
ICBkZXNjcmlwdGlvbjoKKyAgICAgICAgICBEU0kgb3V0cHV0IHBvcnQgbm9kZSB0byB0aGUgcGFu
ZWwgb3IgdGhlIG5leHQgYnJpZGdlCisgICAgICAgICAgaW4gdGhlIGNoYWluCisKKyAgICAgICcj
YWRkcmVzcy1jZWxscyc6CisgICAgICAgIGNvbnN0OiAxCisKKyAgICAgICcjc2l6ZS1jZWxscyc6
CisgICAgICAgIGNvbnN0OiAwCisKKyAgICByZXF1aXJlZDoKKyAgICAgIC0gJyNhZGRyZXNzLWNl
bGxzJworICAgICAgLSAnI3NpemUtY2VsbHMnCisgICAgICAtIHBvcnRAMAorICAgICAgLSBwb3J0
QDEKKworICAgIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQorCitwYXR0ZXJuUHJvcGVydGll
czoKKyAgIl5wYW5lbEBbMC05XSskIjoKKyAgICB0eXBlOiBvYmplY3QKKworcmVxdWlyZWQ6Cisg
IC0gJyNhZGRyZXNzLWNlbGxzJworICAtICcjc2l6ZS1jZWxscycKKyAgLSBjbG9jay1uYW1lcwor
ICAtIGNsb2NrcworICAtIGNvbXBhdGlibGUKKyAgLSBpbnRlcnJ1cHRzCisgIC0gbXV4LWNvbnRy
b2xzCisgIC0gcGh5LW5hbWVzCisgIC0gcGh5cworICAtIHBvcnRzCisgIC0gcmVnCisgIC0gcmVz
ZXQtbmFtZXMKKyAgLSByZXNldHMKKworYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCisKK2V4
YW1wbGVzOgorIC0gfAorCisgICBtaXBpX2RzaTogbWlwaV9kc2lAMzBhMDAwMDAgeworICAgICAg
ICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKKyAgICAgICAgICAgICAgI3NpemUtY2VsbHMg
PSA8MD47CisgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGlteDhtcS1ud2wtZHNpIjsK
KyAgICAgICAgICAgICAgcmVnID0gPDB4MzBBMDAwMDAgMHgzMDA+OworICAgICAgICAgICAgICBj
bG9ja3MgPSA8JmNsayAxNjM+LCA8JmNsayAyNDQ+LCA8JmNsayAyNDU+LCA8JmNsayAxNjQ+Owor
ICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJjb3JlIiwgInJ4X2VzYyIsICJ0eF9lc2MiLCAi
cGh5X3JlZiI7CisgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8MCAzNCA0PjsKKyAgICAgICAg
ICAgICAgbXV4LWNvbnRyb2xzID0gPCZtdXggMD47CisgICAgICAgICAgICAgIHBvd2VyLWRvbWFp
bnMgPSA8JnBnY19taXBpPjsKKyAgICAgICAgICAgICAgcmVzZXRzID0gPCZzcmMgMD4sIDwmc3Jj
IDE+LCA8JnNyYyAyPiwgPCZzcmMgMz47CisgICAgICAgICAgICAgIHJlc2V0LW5hbWVzID0gImJ5
dGUiLCAiZHBpIiwgImVzYyIsICJwY2xrIjsKKyAgICAgICAgICAgICAgcGh5cyA9IDwmZHBoeT47
CisgICAgICAgICAgICAgIHBoeS1uYW1lcyA9ICJkcGh5IjsKKworICAgICAgICAgICAgICBwYW5l
bEAwIHsKKyAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJvY2t0ZWNoLGpoMDU3
bjAwOTAwIjsKKyAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MD47CisgICAgICAgICAgICAg
ICAgICAgICAgcG9ydEAwIHsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHBhbmVsX2luOiBl
bmRwb2ludCB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVu
ZHBvaW50ID0gPCZtaXBpX2RzaV9vdXQ+OworICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsK
KyAgICAgICAgICAgICAgICAgICAgICB9OworICAgICAgICAgICAgICB9OworCisgICAgICAgICAg
ICAgIHBvcnRzIHsKKyAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cisg
ICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+OworCisgICAgICAgICAgICAgICAg
ICAgIHBvcnRAMCB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDww
PjsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+OworICAg
ICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDA+OworICAgICAgICAgICAgICAgICAgICAg
ICAgICAgbWlwaV9kc2lfaW46IGVuZHBvaW50QDAgeworICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHJlZyA9IDwwPjsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JmxjZGlmX21pcGlfZHNpPjsKKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgIH07CisgICAgICAgICAgICAgICAgICAgIH07CisgICAgICAgICAg
ICAgICAgICAgIHBvcnRAMSB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MT47
CisgICAgICAgICAgICAgICAgICAgICAgICAgICBtaXBpX2RzaV9vdXQ6IGVuZHBvaW50IHsKKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0g
PCZwYW5lbF9pbj47CisgICAgICAgICAgICAgICAgICAgICAgICAgICB9OworICAgICAgICAgICAg
ICAgICAgICB9OworICAgICAgICAgICAgICB9OworICAgICAgfTsKLS0gCjIuMjMuMC5yYzEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
