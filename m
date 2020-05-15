Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A12571D4EB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 15:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksX681p6eXI7nC/VaOSQDofcnaNKKdDCbPrYy0QK6nI=; b=pMZ043P5jtCDlJ
	G3Ltjs3e0ANfSniy/z2gxTImtuM2cRVylKYrMvJhfoVk8tPJU0CBVBiB7pgI4VSJ7EwW5WT3J70pY
	wFw2Ho6COySTAogtlXNGEuLwZggwd2q1Fh/lfs4k2fHXm7faGcLDJf4k+9pKqxBcZEDV3aqdnbwrL
	ZUW7hvtNb+C8GLk9uDq5dSU4MXt+LsSVSEDOd9arHwOOhUwg3W0ubNG9vrfmc57G12NJePwaTqTfd
	HWsNPYdyHpXezfzbZ81HkZrlcSdobf4vI78Yjr/zPGYYldmrILrnvwrPxbLJW7vQz8xHsrn+jW6LJ
	8TCxyV2pkZs4NRCjsFCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZaA1-0001o8-Lz; Fri, 15 May 2020 13:13:57 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZa8Y-0000JF-4v
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 13:12:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 52834FB02;
 Fri, 15 May 2020 15:12:19 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f2J9qBn8ahqL; Fri, 15 May 2020 15:12:16 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 686394458A; Fri, 15 May 2020 15:12:15 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 1/6] dt-bindings: display/bridge: Add binding for input
 mux bridge
Date: Fri, 15 May 2020 15:12:10 +0200
Message-Id: <14a44a664f40584ffa25c1764aab5ebf97809c71.1589548223.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1589548223.git.agx@sigxcpu.org>
References: <cover.1589548223.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_061226_396769_A50D78D1 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

VGhlIGJyaWRnZSBhbGxvd3MgdG8gc2VsZWN0IHRoZSBpbnB1dCBzb3VyY2UgdmlhIGEgbXV4IGNv
bnRyb2xsZXIuCgpTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3Jn
PgotLS0KIC4uLi9kaXNwbGF5L2JyaWRnZS9tdXgtaW5wdXQtYnJpZGdlLnlhbWwgICAgICB8IDEy
MyArKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMjMgaW5zZXJ0aW9ucygrKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNw
bGF5L2JyaWRnZS9tdXgtaW5wdXQtYnJpZGdlLnlhbWwKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvbXV4LWlucHV0LWJyaWRnZS55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL211
eC1pbnB1dC1icmlkZ2UueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAw
MDAuLjQwMjljZjYzZWU1YwotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9tdXgtaW5wdXQtYnJpZGdlLnlhbWwKQEAgLTAs
MCArMSwxMjMgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1Ig
QlNELTItQ2xhdXNlKQorJVlBTUwgMS4yCistLS0KKyRpZDogaHR0cDovL2RldmljZXRyZWUub3Jn
L3NjaGVtYXMvZGlzcGxheS9icmlkZ2UvbXV4LWlucHV0LWJyaWRnZS55YW1sIworJHNjaGVtYTog
aHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCisKK3RpdGxlOiBE
Uk0gaW5wdXQgc291cmNlIHNlbGVjdGlvbiB2aWEgbXVsdGlwbGV4ZXIKKworbWFpbnRhaW5lcnM6
CisgIC0gR3VpZG8gR8O6bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KKworZGVzY3JpcHRpb246IHwK
KyAgVGhlIGlucHV0IG11bHRpcGxleGVyIGJyaWRnZSBhbGxvd3MgdG8gc2VsZWN0IGFuIGlucHV0
IHNvdXJjZQorICB2aWEgYW4gYXNzb2NpYXRlZCBtdXggY29udHJvbGxlci4KKworcHJvcGVydGll
czoKKyAgY29tcGF0aWJsZToKKyAgICBjb25zdDogbXV4LWlucHV0LWJyaWRnZQorCisgICcjYWRk
cmVzcy1jZWxscyc6CisgICAgY29uc3Q6IDEKKworICAnI3NpemUtY2VsbHMnOgorICAgIGNvbnN0
OiAwCisKKyAgZGVmYXVsdC1pbnB1dDoKKyAgICBkZXNjcmlwdGlvbjogVGhlIGRlZmF1bHQgaW5w
dXQgdG8gdXNlCisKKyAgbXV4LWNvbnRyb2xzOgorICAgIGRlc2NyaXB0aW9uOgorICAgICAgbXV4
IGNvbnRyb2xsZXIgbm9kZSB0byB1c2UgZm9yIG9wZXJhdGluZyB0aGUgaW5wdXQgbXV4CisKKyAg
cG9ydHM6CisgICAgdHlwZTogb2JqZWN0CisgICAgcHJvcGVydGllczoKKyAgICAgICcjYWRkcmVz
cy1jZWxscyc6CisgICAgICAgIGNvbnN0OiAxCisgICAgICAnI3NpemUtY2VsbHMnOgorICAgICAg
ICBjb25zdDogMAorCisgICAgcGF0dGVyblByb3BlcnRpZXM6CisgICAgICAiXnBvcnRAWzAtOV0r
IjoKKyAgICAgICAgdHlwZTogb2JqZWN0CisgICAgICAgIGRlc2NyaXB0aW9uOgorICAgICAgICAg
IEF0IGxlYXN0IHRocmVlIG5vZGVzIGNvbnRhaW5pbmcgZW5kcG9pbnRzIGNvbm5lY3RpbmcgdG8g
dGhlCisgICAgICAgICAgcGl4ZWwgZGF0YSBpbnB1dHMgYW5kIG91dHB1dHMuIFRoZSBsYXN0IHBv
cnQgaXMgYWx3YXlzIHRoZQorICAgICAgICAgIG91dHB1dCBwb3J0LgorCisgICAgICAgIHByb3Bl
cnRpZXM6CisgICAgICAgICAgcmVnOgorICAgICAgICAgICAgbWF4SXRlbXM6IDEKKworICAgICAg
ICAgIGVuZHBvaW50OgorICAgICAgICAgICAgZGVzY3JpcHRpb246IHN1Yi1ub2RlIGRlc2NyaWJp
bmcgdGhlIGlucHV0CisgICAgICAgICAgICB0eXBlOiBvYmplY3QKKworICAgICAgICByZXF1aXJl
ZDoKKyAgICAgICAgICAtIHJlZworCisgICAgICAgIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxz
ZQorCisgICAgcmVxdWlyZWQ6CisgICAgICAtIHBvcnRAMAorICAgICAgLSBwb3J0QDEKKyAgICAg
IC0gcG9ydEAyCisKKyAgICBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKKworcmVxdWlyZWQ6
CisgIC0gJyNhZGRyZXNzLWNlbGxzJworICAtICcjc2l6ZS1jZWxscycKKyAgLSBtdXgtY29udHJv
bHMKKyAgLSBwb3J0cworCithZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKKworZXhhbXBsZXM6
CisgLSB8CisgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+CisKKyAgIG11eDog
bXV4LWNvbnRyb2xsZXIgeworICAgICAgICAgICBjb21wYXRpYmxlID0gImdwaW8tbXV4IjsKKyAg
ICAgICAgICAgI211eC1jb250cm9sLWNlbGxzID0gPDA+OworCisgICAgICAgICAgIG11eC1ncGlv
cyA9IDwmZ3BpbzEgMTUgR1BJT19BQ1RJVkVfSElHSD47CisgICB9OworCisgICBtaXBpLW11eCB7
CisgICAgICAgICAgIGNvbXBhdGlibGUgPSAibXV4LWlucHV0LWJyaWRnZSI7CisgICAgICAgICAg
IGRlZmF1bHQtaW5wdXQgPSA8MD47CisgICAgICAgICAgIG11eC1jb250cm9scyA9IDwmbXV4IDA+
OworICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKKyAgICAgICAgICAgI3NpemUtY2Vs
bHMgPSA8MD47CisKKyAgICAgICAgICAgcG9ydHMgeworICAgICAgICAgICAgICAgICAgICNhZGRy
ZXNzLWNlbGxzID0gPDE+OworICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owor
CisgICAgICAgICAgICAgICAgICAgcG9ydEAwIHsKKyAgICAgICAgICAgICAgICAgICAgICAgICAg
IHJlZyA9IDwwPjsKKworICAgICAgICAgICAgICAgICAgICAgICAgICAgZHBpX211eF9mcm9tX2xj
ZGlmOiBlbmRwb2ludCB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90
ZS1lbmRwb2ludCA9IDwmbGNkaWZfZHBpX291dD47CisgICAgICAgICAgICAgICAgICAgICAgICAg
ICB9OworICAgICAgICAgICAgICAgICAgIH07CisKKyAgICAgICAgICAgICAgICAgICBwb3J0QDEg
eworICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDE+OworCisgICAgICAgICAgICAg
ICAgICAgICAgICAgICBkcGlfbXV4X2Zyb21fZGNjc3M6IGVuZHBvaW50IHsKKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZkY3NzX2RwaV9vdXQ+
OworICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKKyAgICAgICAgICAgICAgICAgICB9Owor
CisgICAgICAgICAgICAgICAgICAgcG9ydEAyIHsKKyAgICAgICAgICAgICAgICAgICAgICAgICAg
IHJlZyA9IDwyPjsKKworICAgICAgICAgICAgICAgICAgICAgICAgICAgZHBpX211eF9vdXQ6IGVu
ZHBvaW50IHsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBv
aW50ID0gPCZud2xfZHBpX2luPjsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgIH07CisgICAg
ICAgICAgICAgICAgICAgfTsKKyAgICAgICAgICAgfTsKKyAgIH07Ci0tIAoyLjI2LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
