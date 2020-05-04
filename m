Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EFF1C477B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 21:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:References
	:In-Reply-To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2N4uXe/jFWsSV0L0yxovlhMRXD9aE7TIeXHFF0mlGVY=; b=pIiph/6iGOC/4E
	L/Hr2O+QGFzC2MZTi2oVJf/iDiwek7X9ksq5NqZbdNVlr8vfurynYgtAX0f08Yzp9/5Ln2wgbhDUU
	6gBmcP761M4ttuAMeQAR9Gl1qO84X4ec9e3MjyqwRS+A+fEbbOZq5MRPiAoEqABVoeJigWZK3vTbN
	pfUSDGEXIaLO1/ErJDPe31MZc1OY5GYjcy5jtHSY2o7fvLe26R+2PEiQawDygN5/8cx0TWKxrWeHi
	AkosH50+Fi1yPwDV3f8d3xZabRYUqbZgp8tuu6vacPGJzkx7/GqSzfZxXNGRi80+yVf2df/2+sZJw
	qtZh0aJZTnPYeWLJAg5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVhFC-0007tR-99; Mon, 04 May 2020 19:59:14 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVhEo-0007hl-VF
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 19:58:53 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49GDFK1YW0zLn;
 Mon,  4 May 2020 21:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1588622325; bh=q0nuuPw8GBajf6QHE752Jg1Lm8HpYJyCO7HmMMBN/yM=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=ox3V68X3HsLVRf9xE5CpYyhIHq/66R7WX3ii19aacH4veN9dpvpS+FHUdpGqTRid8
 OrK+0jKt+zd7u0EQ6VLoXUu/r99PiQKFPAqPucAfXqAOrYBBYyV4phrROsRZ6BI7EQ
 I+35UBw/HG/ggI9k1IBTWhK2ByFVr4dsy/T6wRltOS14TV6eBSbiYKXetXf5a7P0tt
 z3M/Y2mGTOe8RbrmDvNSYqQst2lTrb+BWxVVUwfx4DJEEVofMHFyjgnauscTzeunWg
 yUwnU7LZVtt9mchwbHBq7g4UgEPvArj5sj8lXt9kRR7SSZc9L5Nm2b6WgahansW5+0
 irijgU//jMzcQ==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Mon, 04 May 2020 21:58:44 +0200
Message-Id: <74a5cd94fb7fb0058d905d83f192a4cc85fa6b5b.1588622158.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1588622158.git.mirq-linux@rere.qmqm.pl>
References: <cover.1588622158.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v5 3/3] clk: at91: allow setting all PMC clock parents via DT
MIME-Version: 1.0
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_125851_337026_D38A007A 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2UgbmVlZCB0byBoYXZlIGNsb2NrcyBhY2Nlc3NpYmxlIHZpYSBwaGFuZGxlIHRvIHNlbGVjdCB0
aGVtCmFzIHBlcmlwaGVyYWwgY2xvY2sgcGFyZW50IHVzaW5nIGFzc2lnbmVkLWNsb2NrLXBhcmVu
dHMgaW4gRFQuCkFkZCBzdXBwb3J0IGZvciBQTExBQ0svUExMQkNLL0FVRElPUExMQ0sgY2xvY2tz
IHdoZXJlIGF2YWlsYWJsZS4KClNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgTWlyb3PFgmF3IDxtaXJx
LWxpbnV4QHJlcmUucW1xbS5wbD4KLS0tCnYyOiByZWJhc2UgdG8gY2xrL2Nsay1hdDkxIGJyYW5j
aAp2Mzogbm8gY2hhbmdlcwp2NDogZXh0ZW5kIHRvIHdob2xlIGZhbWlseQp2NTogZml4IGNvcHkt
YW5kLXBhc3RlIGJ1Z3MgZm9yIFNBTUE1RDMvNAotLS0KIGRyaXZlcnMvY2xrL2F0OTEvYXQ5MXJt
OTIwMC5jICAgIHwgNiArKysrKy0KIGRyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTkyNjAuYyAgIHwg
NiArKysrKy0KIGRyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTlnNDUuYyAgIHwgNCArKystCiBkcml2
ZXJzL2Nsay9hdDkxL2F0OTFzYW05bjEyLmMgICB8IDYgKysrKystCiBkcml2ZXJzL2Nsay9hdDkx
L2F0OTFzYW05cmwuYyAgICB8IDQgKysrLQogZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOXg1LmMg
ICAgfCA0ICsrKy0KIGRyaXZlcnMvY2xrL2F0OTEvc2FtOXg2MC5jICAgICAgIHwgNCArKystCiBk
cml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDIuYyAgICAgICB8IDYgKysrKystCiBkcml2ZXJzL2Nsay9h
dDkxL3NhbWE1ZDMuYyAgICAgICB8IDQgKysrLQogZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQ0LmMg
ICAgICAgfCA0ICsrKy0KIGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svYXQ5MS5oIHwgMyArKysK
IDExIGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXJtOTIwMC5jIGIvZHJpdmVycy9jbGsvYXQ5
MS9hdDkxcm05MjAwLmMKaW5kZXggOGRhODhlOWE5NWQ4Li4zOGJkYjQ5ODEzMTUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXJtOTIwMC5jCisrKyBiL2RyaXZlcnMvY2xrL2F0OTEv
YXQ5MXJtOTIwMC5jCkBAIC05OCw3ICs5OCw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBhdDkxcm05
MjAwX3BtY19zZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogCWlmIChJU19FUlIocmVnbWFw
KSkKIAkJcmV0dXJuOwogCi0JYXQ5MXJtOTIwMF9wbWMgPSBwbWNfZGF0YV9hbGxvY2F0ZShQTUNf
TUFJTiArIDEsCisJYXQ5MXJtOTIwMF9wbWMgPSBwbWNfZGF0YV9hbGxvY2F0ZShQTUNfUExMQkNL
ICsgMSwKIAkJCQkJICAgIG5jayhhdDkxcm05MjAwX3N5c3RlbWNrKSwKIAkJCQkJICAgIG5jayhh
dDkxcm05MjAwX3BlcmlwaGNrKSwgMCwgNCk7CiAJaWYgKCFhdDkxcm05MjAwX3BtYykKQEAgLTEy
MywxMiArMTIzLDE2IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBhdDkxcm05MjAwX3BtY19zZXR1cChz
dHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogCWlmIChJU19FUlIoaHcpKQogCQlnb3RvIGVycl9mcmVl
OwogCisJYXQ5MXJtOTIwMF9wbWMtPmNod3NbUE1DX1BMTEFDS10gPSBodzsKKwogCWh3ID0gYXQ5
MV9jbGtfcmVnaXN0ZXJfcGxsKHJlZ21hcCwgInBsbGJjayIsICJtYWluY2siLCAxLAogCQkJCSAg
ICZhdDkxcm05MjAwX3BsbF9sYXlvdXQsCiAJCQkJICAgJnJtOTIwMF9wbGxfY2hhcmFjdGVyaXN0
aWNzKTsKIAlpZiAoSVNfRVJSKGh3KSkKIAkJZ290byBlcnJfZnJlZTsKIAorCWF0OTFybTkyMDBf
cG1jLT5jaHdzW1BNQ19QTExCQ0tdID0gaHc7CisKIAlwYXJlbnRfbmFtZXNbMF0gPSBzbG93eHRh
bF9uYW1lOwogCXBhcmVudF9uYW1lc1sxXSA9ICJtYWluY2siOwogCXBhcmVudF9uYW1lc1syXSA9
ICJwbGxhY2siOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOTI2MC5jIGIv
ZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOTI2MC5jCmluZGV4IDdlNWZmMjUyZmZmYy4uNmQwNzIz
YWE4YjEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05MjYwLmMKKysrIGIv
ZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOTI2MC5jCkBAIC0zNTIsNyArMzUyLDcgQEAgc3RhdGlj
IHZvaWQgX19pbml0IGF0OTFzYW05MjZ4X3BtY19zZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
LAogCWlmIChJU19FUlIocmVnbWFwKSkKIAkJcmV0dXJuOwogCi0JYXQ5MXNhbTkyNjBfcG1jID0g
cG1jX2RhdGFfYWxsb2NhdGUoUE1DX01BSU4gKyAxLAorCWF0OTFzYW05MjYwX3BtYyA9IHBtY19k
YXRhX2FsbG9jYXRlKFBNQ19QTExCQ0sgKyAxLAogCQkJCQkgICAgbmRjayhkYXRhLT5zY2ssIGRh
dGEtPm51bV9zY2spLAogCQkJCQkgICAgbmRjayhkYXRhLT5wY2ssIGRhdGEtPm51bV9wY2spLAog
CQkJCQkgICAgMCwgZGF0YS0+bnVtX3Byb2djayk7CkBAIC0zOTksMTIgKzM5OSwxNiBAQCBzdGF0
aWMgdm9pZCBfX2luaXQgYXQ5MXNhbTkyNnhfcG1jX3NldHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAq
bnAsCiAJaWYgKElTX0VSUihodykpCiAJCWdvdG8gZXJyX2ZyZWU7CiAKKwlhdDkxc2FtOTI2MF9w
bWMtPmNod3NbUE1DX1BMTEFDS10gPSBodzsKKwogCWh3ID0gYXQ5MV9jbGtfcmVnaXN0ZXJfcGxs
KHJlZ21hcCwgInBsbGJjayIsICJtYWluY2siLCAxLAogCQkJCSAgIGRhdGEtPnBsbGJfbGF5b3V0
LAogCQkJCSAgIGRhdGEtPnBsbGJfY2hhcmFjdGVyaXN0aWNzKTsKIAlpZiAoSVNfRVJSKGh3KSkK
IAkJZ290byBlcnJfZnJlZTsKIAorCWF0OTFzYW05MjYwX3BtYy0+Y2h3c1tQTUNfUExMQkNLXSA9
IGh3OworCiAJcGFyZW50X25hbWVzWzBdID0gc2xja19uYW1lOwogCXBhcmVudF9uYW1lc1sxXSA9
ICJtYWluY2siOwogCXBhcmVudF9uYW1lc1syXSA9ICJwbGxhY2siOwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9jbGsvYXQ5MS9hdDkxc2FtOWc0NS5jIGIvZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOWc0
NS5jCmluZGV4IDVkMThlYjA0YzIxOC4uOTg3M2I1ODNjMjYwIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2Nsay9hdDkxL2F0OTFzYW05ZzQ1LmMKKysrIGIvZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOWc0
NS5jCkBAIC0xMTUsNyArMTE1LDcgQEAgc3RhdGljIHZvaWQgX19pbml0IGF0OTFzYW05ZzQ1X3Bt
Y19zZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogCWlmIChJU19FUlIocmVnbWFwKSkKIAkJ
cmV0dXJuOwogCi0JYXQ5MXNhbTlnNDVfcG1jID0gcG1jX2RhdGFfYWxsb2NhdGUoUE1DX01BSU4g
KyAxLAorCWF0OTFzYW05ZzQ1X3BtYyA9IHBtY19kYXRhX2FsbG9jYXRlKFBNQ19QTExBQ0sgKyAx
LAogCQkJCQkgICAgbmNrKGF0OTFzYW05ZzQ1X3N5c3RlbWNrKSwKIAkJCQkJICAgIG5jayhhdDkx
c2FtOWc0NV9wZXJpcGhjayksIDAsIDIpOwogCWlmICghYXQ5MXNhbTlnNDVfcG1jKQpAQCAtMTQz
LDYgKzE0Myw4IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBhdDkxc2FtOWc0NV9wbWNfc2V0dXAoc3Ry
dWN0IGRldmljZV9ub2RlICpucCkKIAlpZiAoSVNfRVJSKGh3KSkKIAkJZ290byBlcnJfZnJlZTsK
IAorCWF0OTFzYW05ZzQ1X3BtYy0+Y2h3c1tQTUNfUExMQUNLXSA9IGh3OworCiAJaHcgPSBhdDkx
X2Nsa19yZWdpc3Rlcl91dG1pKHJlZ21hcCwgTlVMTCwgInV0bWljayIsICJtYWluY2siKTsKIAlp
ZiAoSVNfRVJSKGh3KSkKIAkJZ290byBlcnJfZnJlZTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xr
L2F0OTEvYXQ5MXNhbTluMTIuYyBiL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTluMTIuYwppbmRl
eCAzYTI1NjRjMmY3MjQuLjYzMGRjNWQ4NzE3MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvYXQ5
MS9hdDkxc2FtOW4xMi5jCisrKyBiL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTluMTIuYwpAQCAt
MTI4LDcgKzEyOCw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBhdDkxc2FtOW4xMl9wbWNfc2V0dXAo
c3RydWN0IGRldmljZV9ub2RlICpucCkKIAlpZiAoSVNfRVJSKHJlZ21hcCkpCiAJCXJldHVybjsK
IAotCWF0OTFzYW05bjEyX3BtYyA9IHBtY19kYXRhX2FsbG9jYXRlKFBNQ19NQUlOICsgMSwKKwlh
dDkxc2FtOW4xMl9wbWMgPSBwbWNfZGF0YV9hbGxvY2F0ZShQTUNfUExMQkNLICsgMSwKIAkJCQkJ
ICAgbmNrKGF0OTFzYW05bjEyX3N5c3RlbWNrKSwgMzEsIDAsIDIpOwogCWlmICghYXQ5MXNhbTlu
MTJfcG1jKQogCQlyZXR1cm47CkBAIC0xNjIsMTEgKzE2MiwxNSBAQCBzdGF0aWMgdm9pZCBfX2lu
aXQgYXQ5MXNhbTluMTJfcG1jX3NldHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCiAJaWYgKElT
X0VSUihodykpCiAJCWdvdG8gZXJyX2ZyZWU7CiAKKwlhdDkxc2FtOW4xMl9wbWMtPmNod3NbUE1D
X1BMTEFDS10gPSBodzsKKwogCWh3ID0gYXQ5MV9jbGtfcmVnaXN0ZXJfcGxsKHJlZ21hcCwgInBs
bGJjayIsICJtYWluY2siLCAxLAogCQkJCSAgICZhdDkxcm05MjAwX3BsbF9sYXlvdXQsICZwbGxi
X2NoYXJhY3RlcmlzdGljcyk7CiAJaWYgKElTX0VSUihodykpCiAJCWdvdG8gZXJyX2ZyZWU7CiAK
KwlhdDkxc2FtOW4xMl9wbWMtPmNod3NbUE1DX1BMTEJDS10gPSBodzsKKwogCXBhcmVudF9uYW1l
c1swXSA9IHNsY2tfbmFtZTsKIAlwYXJlbnRfbmFtZXNbMV0gPSAibWFpbmNrIjsKIAlwYXJlbnRf
bmFtZXNbMl0gPSAicGxsYWRpdmNrIjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL2F0OTEvYXQ5
MXNhbTlybC5jIGIvZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOXJsLmMKaW5kZXggYmNmMDdmNmEw
ZTBlLi4wZDFjYzQ0YjA1NmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTly
bC5jCisrKyBiL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTlybC5jCkBAIC04Nyw3ICs4Nyw3IEBA
IHN0YXRpYyB2b2lkIF9faW5pdCBhdDkxc2FtOXJsX3BtY19zZXR1cChzdHJ1Y3QgZGV2aWNlX25v
ZGUgKm5wKQogCWlmIChJU19FUlIocmVnbWFwKSkKIAkJcmV0dXJuOwogCi0JYXQ5MXNhbTlybF9w
bWMgPSBwbWNfZGF0YV9hbGxvY2F0ZShQTUNfTUFJTiArIDEsCisJYXQ5MXNhbTlybF9wbWMgPSBw
bWNfZGF0YV9hbGxvY2F0ZShQTUNfUExMQUNLICsgMSwKIAkJCQkJICAgbmNrKGF0OTFzYW05cmxf
c3lzdGVtY2spLAogCQkJCQkgICBuY2soYXQ5MXNhbTlybF9wZXJpcGhjayksIDAsIDIpOwogCWlm
ICghYXQ5MXNhbTlybF9wbWMpCkBAIC0xMDUsNiArMTA1LDggQEAgc3RhdGljIHZvaWQgX19pbml0
IGF0OTFzYW05cmxfcG1jX3NldHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCiAJaWYgKElTX0VS
UihodykpCiAJCWdvdG8gZXJyX2ZyZWU7CiAKKwlhdDkxc2FtOXJsX3BtYy0+Y2h3c1tQTUNfUExM
QUNLXSA9IGh3OworCiAJaHcgPSBhdDkxX2Nsa19yZWdpc3Rlcl91dG1pKHJlZ21hcCwgTlVMTCwg
InV0bWljayIsICJtYWluY2siKTsKIAlpZiAoSVNfRVJSKGh3KSkKIAkJZ290byBlcnJfZnJlZTsK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTl4NS5jIGIvZHJpdmVycy9jbGsv
YXQ5MS9hdDkxc2FtOXg1LmMKaW5kZXggZjEzNzU2YjQwN2UyLi4wY2UzZGEwODAyODcgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTl4NS5jCisrKyBiL2RyaXZlcnMvY2xrL2F0
OTEvYXQ5MXNhbTl4NS5jCkBAIC0xNTAsNyArMTUwLDcgQEAgc3RhdGljIHZvaWQgX19pbml0IGF0
OTFzYW05eDVfcG1jX3NldHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCiAJaWYgKElTX0VSUihy
ZWdtYXApKQogCQlyZXR1cm47CiAKLQlhdDkxc2FtOXg1X3BtYyA9IHBtY19kYXRhX2FsbG9jYXRl
KFBNQ19NQUlOICsgMSwKKwlhdDkxc2FtOXg1X3BtYyA9IHBtY19kYXRhX2FsbG9jYXRlKFBNQ19Q
TExBQ0sgKyAxLAogCQkJCQkgICBuY2soYXQ5MXNhbTl4NV9zeXN0ZW1jayksIDMxLCAwLCAyKTsK
IAlpZiAoIWF0OTFzYW05eDVfcG1jKQogCQlyZXR1cm47CkBAIC0xODQsNiArMTg0LDggQEAgc3Rh
dGljIHZvaWQgX19pbml0IGF0OTFzYW05eDVfcG1jX3NldHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAq
bnAsCiAJaWYgKElTX0VSUihodykpCiAJCWdvdG8gZXJyX2ZyZWU7CiAKKwlhdDkxc2FtOXg1X3Bt
Yy0+Y2h3c1tQTUNfUExMQUNLXSA9IGh3OworCiAJaHcgPSBhdDkxX2Nsa19yZWdpc3Rlcl91dG1p
KHJlZ21hcCwgTlVMTCwgInV0bWljayIsICJtYWluY2siKTsKIAlpZiAoSVNfRVJSKGh3KSkKIAkJ
Z290byBlcnJfZnJlZTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL2F0OTEvc2FtOXg2MC5jIGIv
ZHJpdmVycy9jbGsvYXQ5MS9zYW05eDYwLmMKaW5kZXggZGIxNGUwNDI3YzdmLi4zZTIwYWE2ODI1
OWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL2F0OTEvc2FtOXg2MC5jCisrKyBiL2RyaXZlcnMv
Y2xrL2F0OTEvc2FtOXg2MC5jCkBAIC0xODIsNyArMTgyLDcgQEAgc3RhdGljIHZvaWQgX19pbml0
IHNhbTl4NjBfcG1jX3NldHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCiAJaWYgKElTX0VSUihy
ZWdtYXApKQogCQlyZXR1cm47CiAKLQlzYW05eDYwX3BtYyA9IHBtY19kYXRhX2FsbG9jYXRlKFBN
Q19NQUlOICsgMSwKKwlzYW05eDYwX3BtYyA9IHBtY19kYXRhX2FsbG9jYXRlKFBNQ19QTExBQ0sg
KyAxLAogCQkJCQluY2soc2FtOXg2MF9zeXN0ZW1jayksCiAJCQkJCW5jayhzYW05eDYwX3Blcmlw
aGNrKSwKIAkJCQkJbmNrKHNhbTl4NjBfZ2NrKSwgOCk7CkBAIC0yMTQsNiArMjE0LDggQEAgc3Rh
dGljIHZvaWQgX19pbml0IHNhbTl4NjBfcG1jX3NldHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAp
CiAJaWYgKElTX0VSUihodykpCiAJCWdvdG8gZXJyX2ZyZWU7CiAKKwlzYW05eDYwX3BtYy0+Y2h3
c1tQTUNfUExMQUNLXSA9IGh3OworCiAJaHcgPSBzYW05eDYwX2Nsa19yZWdpc3Rlcl9wbGwocmVn
bWFwLCAmcG1jX3BsbF9sb2NrLCAidXBsbGNrIiwKIAkJCQkgICAgICAibWFpbl9vc2MiLCAxLCAm
dXBsbF9jaGFyYWN0ZXJpc3RpY3MpOwogCWlmIChJU19FUlIoaHcpKQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9jbGsvYXQ5MS9zYW1hNWQyLmMgYi9kcml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDIuYwppbmRl
eCBhZTVlODNjYWRiM2QuLmIzZmEyMjkxY2NkOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvYXQ5
MS9zYW1hNWQyLmMKKysrIGIvZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQyLmMKQEAgLTE2Niw3ICsx
NjYsNyBAQCBzdGF0aWMgdm9pZCBfX2luaXQgc2FtYTVkMl9wbWNfc2V0dXAoc3RydWN0IGRldmlj
ZV9ub2RlICpucCkKIAlpZiAoSVNfRVJSKHJlZ21hcCkpCiAJCXJldHVybjsKIAotCXNhbWE1ZDJf
cG1jID0gcG1jX2RhdGFfYWxsb2NhdGUoUE1DX0kyUzFfTVVYICsgMSwKKwlzYW1hNWQyX3BtYyA9
IHBtY19kYXRhX2FsbG9jYXRlKFBNQ19BVURJT1BMTENLICsgMSwKIAkJCQkJbmNrKHNhbWE1ZDJf
c3lzdGVtY2spLAogCQkJCQluY2soc2FtYTVkMl9wZXJpcGgzMmNrKSwKIAkJCQkJbmNrKHNhbWE1
ZDJfZ2NrKSwgMyk7CkBAIC0yMDIsNiArMjAyLDggQEAgc3RhdGljIHZvaWQgX19pbml0IHNhbWE1
ZDJfcG1jX3NldHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCiAJaWYgKElTX0VSUihodykpCiAJ
CWdvdG8gZXJyX2ZyZWU7CiAKKwlzYW1hNWQyX3BtYy0+Y2h3c1tQTUNfUExMQUNLXSA9IGh3Owor
CiAJaHcgPSBhdDkxX2Nsa19yZWdpc3Rlcl9hdWRpb19wbGxfZnJhYyhyZWdtYXAsICJhdWRpb3Bs
bF9mcmFjY2siLAogCQkJCQkgICAgICAibWFpbmNrIik7CiAJaWYgKElTX0VSUihodykpCkBAIC0y
MTcsNiArMjE5LDggQEAgc3RhdGljIHZvaWQgX19pbml0IHNhbWE1ZDJfcG1jX3NldHVwKHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnApCiAJaWYgKElTX0VSUihodykpCiAJCWdvdG8gZXJyX2ZyZWU7CiAK
KwlzYW1hNWQyX3BtYy0+Y2h3c1tQTUNfQVVESU9QTExDS10gPSBodzsKKwogCXJlZ21hcF9zZnIg
PSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9jb21wYXRpYmxlKCJhdG1lbCxzYW1hNWQyLXNmciIp
OwogCWlmIChJU19FUlIocmVnbWFwX3NmcikpCiAJCXJlZ21hcF9zZnIgPSBOVUxMOwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQzLmMgYi9kcml2ZXJzL2Nsay9hdDkxL3NhbWE1
ZDMuYwppbmRleCA1MDdlZWY2Nzk3ZjEuLjVlNGU0NGRkNGMzNyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9jbGsvYXQ5MS9zYW1hNWQzLmMKKysrIGIvZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQzLmMKQEAg
LTEyNSw3ICsxMjUsNyBAQCBzdGF0aWMgdm9pZCBfX2luaXQgc2FtYTVkM19wbWNfc2V0dXAoc3Ry
dWN0IGRldmljZV9ub2RlICpucCkKIAlpZiAoSVNfRVJSKHJlZ21hcCkpCiAJCXJldHVybjsKIAot
CXNhbWE1ZDNfcG1jID0gcG1jX2RhdGFfYWxsb2NhdGUoUE1DX01BSU4gKyAxLAorCXNhbWE1ZDNf
cG1jID0gcG1jX2RhdGFfYWxsb2NhdGUoUE1DX1BMTEFDSyArIDEsCiAJCQkJCW5jayhzYW1hNWQz
X3N5c3RlbWNrKSwKIAkJCQkJbmNrKHNhbWE1ZDNfcGVyaXBoY2spLCAwLCAzKTsKIAlpZiAoIXNh
bWE1ZDNfcG1jKQpAQCAtMTU4LDYgKzE1OCw4IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBzYW1hNWQz
X3BtY19zZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogCWlmIChJU19FUlIoaHcpKQogCQln
b3RvIGVycl9mcmVlOwogCisJc2FtYTVkM19wbWMtPmNod3NbUE1DX1BMTEFDS10gPSBodzsKKwog
CWh3ID0gYXQ5MV9jbGtfcmVnaXN0ZXJfdXRtaShyZWdtYXAsIE5VTEwsICJ1dG1pY2siLCAibWFp
bmNrIik7CiAJaWYgKElTX0VSUihodykpCiAJCWdvdG8gZXJyX2ZyZWU7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDQuYyBiL2RyaXZlcnMvY2xrL2F0OTEvc2FtYTVkNC5jCmlu
ZGV4IDgwNjkyOTAyYjRlNC4uNjYyZmY1ZmE2ZTk4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9h
dDkxL3NhbWE1ZDQuYworKysgYi9kcml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDQuYwpAQCAtMTQwLDcg
KzE0MCw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBzYW1hNWQ0X3BtY19zZXR1cChzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5wKQogCWlmIChJU19FUlIocmVnbWFwKSkKIAkJcmV0dXJuOwogCi0Jc2FtYTVk
NF9wbWMgPSBwbWNfZGF0YV9hbGxvY2F0ZShQTUNfTUNLMiArIDEsCisJc2FtYTVkNF9wbWMgPSBw
bWNfZGF0YV9hbGxvY2F0ZShQTUNfUExMQUNLICsgMSwKIAkJCQkJbmNrKHNhbWE1ZDRfc3lzdGVt
Y2spLAogCQkJCQluY2soc2FtYTVkNF9wZXJpcGgzMmNrKSwgMCwgMyk7CiAJaWYgKCFzYW1hNWQ0
X3BtYykKQEAgLTE3Myw2ICsxNzMsOCBAQCBzdGF0aWMgdm9pZCBfX2luaXQgc2FtYTVkNF9wbWNf
c2V0dXAoc3RydWN0IGRldmljZV9ub2RlICpucCkKIAlpZiAoSVNfRVJSKGh3KSkKIAkJZ290byBl
cnJfZnJlZTsKIAorCXNhbWE1ZDRfcG1jLT5jaHdzW1BNQ19QTExBQ0tdID0gaHc7CisKIAlodyA9
IGF0OTFfY2xrX3JlZ2lzdGVyX3V0bWkocmVnbWFwLCBOVUxMLCAidXRtaWNrIiwgIm1haW5jayIp
OwogCWlmIChJU19FUlIoaHcpKQogCQlnb3RvIGVycl9mcmVlOwpkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9kdC1iaW5kaW5ncy9jbG9jay9hdDkxLmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2F0
OTEuaAppbmRleCBjM2Y0YWE2YTJkMjkuLmFkY2Y2MDhiNDFmYSAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS9kdC1iaW5kaW5ncy9jbG9jay9hdDkxLmgKKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9j
ay9hdDkxLmgKQEAgLTIxLDYgKzIxLDkgQEAKICNkZWZpbmUgUE1DX01DSzIJCTQKICNkZWZpbmUg
UE1DX0kyUzBfTVVYCQk1CiAjZGVmaW5lIFBNQ19JMlMxX01VWAkJNgorI2RlZmluZSBQTUNfUExM
QUNLCQk3CisjZGVmaW5lIFBNQ19QTExCQ0sJCTgKKyNkZWZpbmUgUE1DX0FVRElPUExMQ0sJCTgJ
CS8qIFNBTUE1RDItb25seSwgbm8gUExMQiB0aGVyZSAqLwogCiAjaWZuZGVmIEFUOTFfUE1DX01P
U0NTCiAjZGVmaW5lIEFUOTFfUE1DX01PU0NTCQkwCQkvKiBNT1NDUyBGbGFnICovCi0tIAoyLjIw
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
