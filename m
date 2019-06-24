Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6659A503AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zt1fVmyzSaZbUycTZx906s4girEiT7YA76JgGRiSMVU=; b=IZWYbbJiGrSivN
	QubcfOpOFR1OfZqCtgz9Qf3ocahCxWbqAmyNLT5fqMl0tSvM0TqjIFdzIYKJSlxGuNMQlpJQCmwaj
	ic0jX3x5OptShPmOYt7LTU3NZTsYciQr72lbEli0eo+myfC9vOkmtZTH8IbRa/Ds7dHwWML0QftuL
	pzwWcJwK7Onj1dS/wkhcd+lTS8pHleYYLLCiqU1on8pXr5+lFqgACN0bjy1Ysvf8qtCBGpP/lyhgg
	iWi9Nt3d6yhI9e/HDmphPhGxV7BGX0H96Mdn7HZroPkLL6wVInVT7CJ5ywoBDY1Ul7s6mmxkuOESi
	4C6CKSLgt+OxUa3S6PAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJXF-0006So-99; Mon, 24 Jun 2019 07:37:05 +0000
Received: from 9.mo69.mail-out.ovh.net ([46.105.56.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJX0-0006S2-Bw
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:36:52 +0000
Received: from player690.ha.ovh.net (unknown [10.108.35.215])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id 370755EE0C
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 09:36:45 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player690.ha.ovh.net (Postfix) with ESMTPSA id 5A23C70AE81F;
 Mon, 24 Jun 2019 07:36:34 +0000 (UTC)
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: fix PWM[1-4] interrupts
To: Shawn Guo <shawnguo@kernel.org>, =?UTF-8?Q?Lothar_Wa=c3=9fmann?=
 <LW@KARO-electronics.de>
References: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
 <20190624004703.GF3800@dragon>
From: =?UTF-8?Q?S=c3=a9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
Openpgp: preference=signencrypt
Message-ID: <670f98af-2c55-de1f-d36c-37d1f33086c7@armadeus.com>
Date: Mon, 24 Jun 2019 09:36:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190624004703.GF3800@dragon>
Content-Language: en-US
X-Ovh-Tracer-Id: 9046605754512921669
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddruddugdduvdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_003650_558315_29C1AD02 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.56.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpPbiA2LzI0LzE5IDI6NDcgQU0sIFNoYXduIEd1byB3cm90ZToKPiArTG90aGFyCj4g
Cj4gT24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMDU6NTg6MzRQTSArMDIwMCwgU8OpYmFzdGllbiBT
enltYW5za2kgd3JvdGU6Cj4+IEFjY29yZGluZyB0byB0aGUgaS5NWDZVTC9MIFJNLCB0YWJsZSAz
LjEgIkFSTSBDb3J0ZXggQTcgZG9tYWluIGludGVycnVwdAo+PiBzdW1tYXJ5IiwgdGhlIGludGVy
cnVwdHMgZm9yIHRoZSBQV01bMS00XSBnbyBmcm9tIDgzIHRvIDg2Lgo+Pgo+PiBGaXhlczogYjk5
MDFmZTg0ZjAyICgiQVJNOiBkdHM6IGlteDZ1bDogYWRkIHB3bVsxLTRdIG5vZGVzIikKPj4gU2ln
bmVkLW9mZi1ieTogU8OpYmFzdGllbiBTenltYW5za2kgPHNlYmFzdGllbi5zenltYW5za2lAYXJt
YWRldXMuY29tPgo+IAo+IEp1c3QgY3VyaW91cyAtIGRpZCB5b3Ugc3BvdCB0aGUgZXJyb3IgYnkg
dGVzdGluZyBQV00gb3IgbWVyZWx5IGJ5Cj4gbG9va2luZyBhdCB0aGUgY29kZSBhbmQgZG9jdW1l
bnQ/CgpJIHNwb3R0ZWQgdGhlIGVycm9yIHdoZW4gdHJ5aW5nIHRvIHBsYXkgc291bmQgd2l0aCBQ
V00gWzFdLgpUaGUgUFdNIGRyaXZlciAoZHJpdmVycy9wd20vcHdtLWlteDI3LmMpIGRvbid0IHVz
ZSBpbnRlcnJ1cHQgdGhhdCdzCnByb2JhYmx5IHdoeSBub2JvZHkgbm90aWNlIHRoaXMgZXJyb3Iu
CgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL3Nhc2FteS9pbXgtc25kLXB3bQoKUmVnYXJkcywKCj4g
Cj4gU2hhd24KPiAKPj4gLS0tCj4+ICBhcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaSB8IDgg
KysrKy0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaSBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC5kdHNpCj4+IGluZGV4IGJiZjAxMGM3MzMzNi4uYTdmNmQx
ZDU4ZTIwIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaQo+PiAr
KysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaQo+PiBAQCAtMzU4LDcgKzM1OCw3IEBA
Cj4+ICAJCQlwd20xOiBwd21AMjA4MDAwMCB7Cj4+ICAJCQkJY29tcGF0aWJsZSA9ICJmc2wsaW14
NnVsLXB3bSIsICJmc2wsaW14MjctcHdtIjsKPj4gIAkJCQlyZWcgPSA8MHgwMjA4MDAwMCAweDQw
MDA+Owo+PiAtCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMTUgSVJRX1RZUEVfTEVWRUxfSElH
SD47Cj4+ICsJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDgzIElSUV9UWVBFX0xFVkVMX0hJR0g+
Owo+PiAgCQkJCWNsb2NrcyA9IDwmY2xrcyBJTVg2VUxfQ0xLX1BXTTE+LAo+PiAgCQkJCQkgPCZj
bGtzIElNWDZVTF9DTEtfUFdNMT47Cj4+ICAJCQkJY2xvY2stbmFtZXMgPSAiaXBnIiwgInBlciI7
Cj4+IEBAIC0zNjksNyArMzY5LDcgQEAKPj4gIAkJCXB3bTI6IHB3bUAyMDg0MDAwIHsKPj4gIAkJ
CQljb21wYXRpYmxlID0gImZzbCxpbXg2dWwtcHdtIiwgImZzbCxpbXgyNy1wd20iOwo+PiAgCQkJ
CXJlZyA9IDwweDAyMDg0MDAwIDB4NDAwMD47Cj4+IC0JCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJ
IDExNiBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gKwkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
ODQgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+ICAJCQkJY2xvY2tzID0gPCZjbGtzIElNWDZVTF9D
TEtfUFdNMj4sCj4+ICAJCQkJCSA8JmNsa3MgSU1YNlVMX0NMS19QV00yPjsKPj4gIAkJCQljbG9j
ay1uYW1lcyA9ICJpcGciLCAicGVyIjsKPj4gQEAgLTM4MCw3ICszODAsNyBAQAo+PiAgCQkJcHdt
MzogcHdtQDIwODgwMDAgewo+PiAgCQkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDZ1bC1wd20iLCAi
ZnNsLGlteDI3LXB3bSI7Cj4+ICAJCQkJcmVnID0gPDB4MDIwODgwMDAgMHg0MDAwPjsKPj4gLQkJ
CQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTE3IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiArCQkJ
CWludGVycnVwdHMgPSA8R0lDX1NQSSA4NSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gIAkJCQlj
bG9ja3MgPSA8JmNsa3MgSU1YNlVMX0NMS19QV00zPiwKPj4gIAkJCQkJIDwmY2xrcyBJTVg2VUxf
Q0xLX1BXTTM+Owo+PiAgCQkJCWNsb2NrLW5hbWVzID0gImlwZyIsICJwZXIiOwo+PiBAQCAtMzkx
LDcgKzM5MSw3IEBACj4+ICAJCQlwd200OiBwd21AMjA4YzAwMCB7Cj4+ICAJCQkJY29tcGF0aWJs
ZSA9ICJmc2wsaW14NnVsLXB3bSIsICJmc2wsaW14MjctcHdtIjsKPj4gIAkJCQlyZWcgPSA8MHgw
MjA4YzAwMCAweDQwMDA+Owo+PiAtCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMTggSVJRX1RZ
UEVfTEVWRUxfSElHSD47Cj4+ICsJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDg2IElSUV9UWVBF
X0xFVkVMX0hJR0g+Owo+PiAgCQkJCWNsb2NrcyA9IDwmY2xrcyBJTVg2VUxfQ0xLX1BXTTQ+LAo+
PiAgCQkJCQkgPCZjbGtzIElNWDZVTF9DTEtfUFdNND47Cj4+ICAJCQkJY2xvY2stbmFtZXMgPSAi
aXBnIiwgInBlciI7Cj4+IC0tIAo+PiAyLjIxLjAKPj4KCgotLSAKU8OpYmFzdGllbiBTenltYW5z
a2kKU29mdHdhcmUgZW5naW5lZXIsIEFybWFkZXVzIFN5c3RlbXMKVGVsOiArMzMgKDApOSA3MiAy
OSA0MSA0NApGYXg6ICszMyAoMCk5IDcyIDI4IDc5IDI2CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
