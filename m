Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 874AEBA33D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 18:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80p5VlKYX8D0iDa+t7DNVOMWr90YJRcI6R7VQTBtXWk=; b=GCKWZlOpNo9lcw
	1/JyxA3aBQ8Stvz/MJ/Z+BaMzF7UOr0OlFo1HD10cuxc2ARL5EXQMeXa7sYIuK8eUTOHCU82CADyR
	pKPz5V4/wds7/LEie14BIl6u9Z1yz1vFcmRzAk93F250dFxdxdhShMUoBgOsmigr21v65r9wSaBoE
	LlQvy9hCKiw2NajqOoIuODTkzehstEDCOtNk1q8hDOFuVjcMfZe1kP/4dI0iCvkRvoQhveWScFQFS
	Mru68nOvpboXyv6oxQcDs+DPx/u+G/KuXW7w2Oedj7HTvukvukJVAIdwbk/itxvx7gHHd8F/x6asx
	Qo9c40z1NWaGJgNF3org==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC51P-0004EQ-Vh; Sun, 22 Sep 2019 16:47:39 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC517-0004CZ-Vw
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 16:47:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 88D6EFB05;
 Sun, 22 Sep 2019 18:47:15 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gPVBPwK00ize; Sun, 22 Sep 2019 18:47:13 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 419BA40154; Sun, 22 Sep 2019 09:47:12 -0700 (PDT)
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
Subject: [PATCH v6 1/2] dt-bindings: display/bridge: Add binding for NWL mipi
 dsi host controller
Date: Sun, 22 Sep 2019 09:47:11 -0700
Message-Id: <3bef8eb6a7dd32406e31c68f39ccde3accb58222.1569170717.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <cover.1569170717.git.agx@sigxcpu.org>
References: <cover.1569170717.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_094722_353904_4E3558DD 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
L2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbCAgICAgIHwgMTc2ICsrKysrKysrKysrKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDE3NiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2ku
eWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNw
bGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGlzcGxheS9icmlkZ2UvbndsLWRzaS55YW1sCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4
IDAwMDAwMDAwMDAwMC4uMzExMTljNzg4NWZmCi0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbApAQCAt
MCwwICsxLDE3NiBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBP
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
ZWNlaXZlIHBpeGVsIGRhdGEgZnJvbSB0aGUKKyAgICAgICAgICBkaXNwbGF5IGNvbnRyb2xsZXIK
KworICAgICAgcG9ydEAxOgorICAgICAgICB0eXBlOiBvYmplY3QKKyAgICAgICAgZGVzY3JpcHRp
b246CisgICAgICAgICAgRFNJIG91dHB1dCBwb3J0IG5vZGUgdG8gdGhlIHBhbmVsIG9yIHRoZSBu
ZXh0IGJyaWRnZQorICAgICAgICAgIGluIHRoZSBjaGFpbgorCisgICAgICAnI2FkZHJlc3MtY2Vs
bHMnOgorICAgICAgICBjb25zdDogMQorCisgICAgICAnI3NpemUtY2VsbHMnOgorICAgICAgICBj
b25zdDogMAorCisgICAgcmVxdWlyZWQ6CisgICAgICAtICcjYWRkcmVzcy1jZWxscycKKyAgICAg
IC0gJyNzaXplLWNlbGxzJworICAgICAgLSBwb3J0QDAKKyAgICAgIC0gcG9ydEAxCisKKyAgICBh
ZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKKworcGF0dGVyblByb3BlcnRpZXM6CisgICJecGFu
ZWxAWzAtOV0rJCI6CisgICAgdHlwZTogb2JqZWN0CisKK3JlcXVpcmVkOgorICAtICcjYWRkcmVz
cy1jZWxscycKKyAgLSAnI3NpemUtY2VsbHMnCisgIC0gY2xvY2stbmFtZXMKKyAgLSBjbG9ja3MK
KyAgLSBjb21wYXRpYmxlCisgIC0gaW50ZXJydXB0cworICAtIG11eC1jb250cm9scworICAtIHBo
eS1uYW1lcworICAtIHBoeXMKKyAgLSBwb3J0cworICAtIHJlZworICAtIHJlc2V0LW5hbWVzCisg
IC0gcmVzZXRzCisKK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQorCitleGFtcGxlczoKKyAt
IHwKKworICAgbWlwaV9kc2k6IG1pcGlfZHNpQDMwYTAwMDAwIHsKKyAgICAgICAgICAgICAgI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47CisgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+OworICAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gImZzbCxpbXg4bXEtbndsLWRzaSI7CisgICAgICAgICAg
ICAgIHJlZyA9IDwweDMwQTAwMDAwIDB4MzAwPjsKKyAgICAgICAgICAgICAgY2xvY2tzID0gPCZj
bGsgMTYzPiwgPCZjbGsgMjQ0PiwgPCZjbGsgMjQ1PiwgPCZjbGsgMTY0PjsKKyAgICAgICAgICAg
ICAgY2xvY2stbmFtZXMgPSAiY29yZSIsICJyeF9lc2MiLCAidHhfZXNjIiwgInBoeV9yZWYiOwor
ICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPDAgMzQgND47CisgICAgICAgICAgICAgIG11eC1j
b250cm9scyA9IDwmbXV4IDA+OworICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZwZ2Nf
bWlwaT47CisgICAgICAgICAgICAgIHJlc2V0cyA9IDwmc3JjIDA+LCA8JnNyYyAxPiwgPCZzcmMg
Mj4sIDwmc3JjIDM+OworICAgICAgICAgICAgICByZXNldC1uYW1lcyA9ICJieXRlIiwgImRwaSIs
ICJlc2MiLCAicGNsayI7CisgICAgICAgICAgICAgIHBoeXMgPSA8JmRwaHk+OworICAgICAgICAg
ICAgICBwaHktbmFtZXMgPSAiZHBoeSI7CisKKyAgICAgICAgICAgICAgcGFuZWxAMCB7CisgICAg
ICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrdGVjaCxqaDA1N24wMDkwMCI7Cisg
ICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDA+OworICAgICAgICAgICAgICAgICAgICAgIHBv
cnRAMCB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICBwYW5lbF9pbjogZW5kcG9pbnQgewor
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwm
bWlwaV9kc2lfb3V0PjsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgIH07CisgICAgICAgICAg
ICAgICAgICAgICAgfTsKKyAgICAgICAgICAgICAgfTsKKworICAgICAgICAgICAgICBwb3J0cyB7
CisgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+OworICAgICAgICAgICAg
ICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKKworICAgICAgICAgICAgICAgICAgICBwb3J0QDAg
eworICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDA+OworICAgICAgICAgICAgICAg
ICAgICAgICAgICAgbWlwaV9kc2lfaW46IGVuZHBvaW50IHsKKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JmxjZGlmX21pcGlfZHNpPjsK
KyAgICAgICAgICAgICAgICAgICAgICAgICAgIH07CisgICAgICAgICAgICAgICAgICAgIH07Cisg
ICAgICAgICAgICAgICAgICAgIHBvcnRAMSB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICBy
ZWcgPSA8MT47CisgICAgICAgICAgICAgICAgICAgICAgICAgICBtaXBpX2RzaV9vdXQ6IGVuZHBv
aW50IHsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVu
ZHBvaW50ID0gPCZwYW5lbF9pbj47CisgICAgICAgICAgICAgICAgICAgICAgICAgICB9OworICAg
ICAgICAgICAgICAgICAgICB9OworICAgICAgICAgICAgICB9OworICAgICAgfTsKLS0gCjIuMjMu
MC5yYzEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
