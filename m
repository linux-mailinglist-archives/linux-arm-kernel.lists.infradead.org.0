Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C78101691B3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 21:01:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	Subject:From:To:Date:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=knB5zDgNDxB1+LiMOlBJ+iG2WAMxUTYYK2XpdmKbSf4=; b=UpkGiLJ7MRlvNA
	Ml+pmLRHLAir+3TgrpmR+dam5d7pK3J6jz9aRzDWX4PZtmURcZYzxU2upOPQAg1pCFJgYkhYe9wY5
	dy5jPTruGNqR1BqSlxnbKgGP38aigZ21soQPSw0wcl51P2A1Y7v2u6kC9K1f/SccAYFsCecJVUXC+
	kaheOSMPJ6ARCCU13Qbhyp6E4t51Ay8xVYuTeim3UCHNV2iP8ZL/6ziQBQpxa9aBT84NLuukam+Eq
	LQXaNoS0IBpr2nQ7rwoE0MUq0xuPBUr+rsqLLGfbJHREmq9CkE++ORTJCUaaOgBQ7fNk6QPzyj8ei
	mficQNznZXz16jDP/Vjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5axm-0005ZV-7f; Sat, 22 Feb 2020 20:01:22 +0000
Received: from mail-40134.protonmail.ch ([185.70.40.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5axc-0005SX-Dk; Sat, 22 Feb 2020 20:01:14 +0000
Date: Sat, 22 Feb 2020 20:00:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=default; t=1582401668;
 bh=9QTCFtpYa096BcF+fNJ+hFEpUdDElt7IQEIk4DEbu8Q=;
 h=Date:To:From:Cc:Reply-To:Subject:Feedback-ID:From;
 b=UdXKmzUu7Gi5seNkwIDeLnuW+YM0twYXl5lC4KsTW2NdfsR/GKPL61yxUPlMHnvaO
 /k2uDlMfAaUmVWjahNU81RmYhYo/u0YVf6HavZMoh4QI3Uw15U3nVqedWKwqidDfm4
 jmA98Tq5/2163O55NCtKoeFvTuS9RIaBYsksRTEE=
To: devicetree@vger.kernel.org
From: =?UTF-8?Q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@protonmail.com>
Subject: [PATCH v2] dt-bindings: rng: Convert BCM2835 to DT schema
Message-ID: <20200222200037.3203931-1-nfraprado@protonmail.com>
Feedback-ID: cwTKJQq-dqva77NrgNeIaWzOvcDQqfI9VSy7DoyJdvgY6-nEE7fD-E-3GiKFHexW4OBWbzutmMZN6q4SflMDRw==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_120112_772906_3D460258 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.70.40.134 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nfraprado[at]protonmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: =?UTF-8?Q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?=
 <nfraprado@protonmail.com>
Cc: Mark Rutland <mark.rutland@arm.com>, lkcamp@lists.libreplanetbr.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>, linux-arm-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q29udmVydCBCQ00yODM1LzYzNjggUmFuZG9tIG51bWJlciBnZW5lcmF0b3IgYmluZGluZ3MgdG8g
RFQgc2NoZW1hLgoKU2lnbmVkLW9mZi1ieTogTsOtY29sYXMgRi4gUi4gQS4gUHJhZG8gPG5mcmFw
cmFkb0Bwcm90b25tYWlsLmNvbT4KLS0tCgpDaGFuZ2VzIGluIHYyOgotIFJlbW92ZSBkZXNjcmlw
dGlvbiBmb3IgY29tbW9uIHByb3BlcnRpZXMKLSBEcm9wIGxhYmVsIGZyb20gZXhhbXBsZQoKVGhp
cyBwYXRjaCB3YXMgdGVzdGVkIHdpdGg6Cm1ha2UgQVJDSD1hcm0gZHRfYmluZGluZ19jaGVjawpt
YWtlIEFSQ0g9YXJtIERUX1NDSEVNQV9GSUxFUz1Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvcm5nL2JyY20sYmNtMjgzNS55YW1sIGR0YnNfY2hlY2sKClRoYW5rcywKTsOtY29sYXMK
CiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcvYnJjbSxiY20yODM1LnR4dCAgfCA0MCAtLS0t
LS0tLS0tLS0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcvYnJjbSxiY20yODM1LnlhbWwg
fCA1OSArKysrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDU5IGluc2VydGlvbnMo
KyksIDQwIGRlbGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9ybmcvYnJjbSxiY20yODM1LnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcvYnJjbSxiY20yODM1LnlhbWwK
CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL2JyY20s
YmNtMjgzNS50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL2JyY20s
YmNtMjgzNS50eHQKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IGFhYWM3OTc1ZjYxYy4u
MDAwMDAwMDAwMDAwCi0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcv
YnJjbSxiY20yODM1LnR4dAorKysgL2Rldi9udWxsCkBAIC0xLDQwICswLDAgQEAKLUJDTTI4MzUv
NjM2OCBSYW5kb20gbnVtYmVyIGdlbmVyYXRvcgotCi1SZXF1aXJlZCBwcm9wZXJ0aWVzOgotCi0t
IGNvbXBhdGlibGUgOiBzaG91bGQgYmUgb25lIG9mCi0JImJyY20sYmNtMjgzNS1ybmciCi0JImJy
Y20sYmNtLW5zcC1ybmciCi0JImJyY20sYmNtNTMwMXgtcm5nIiBvcgotCSJicmNtLGJjbTYzNjgt
cm5nIgotLSByZWcgOiBTcGVjaWZpZXMgYmFzZSBwaHlzaWNhbCBhZGRyZXNzIGFuZCBzaXplIG9m
IHRoZSByZWdpc3RlcnMuCi0KLU9wdGlvbmFsIHByb3BlcnRpZXM6Ci0KLS0gY2xvY2tzIDogcGhh
bmRsZSB0byBjbG9jay1jb250cm9sbGVyIHBsdXMgY2xvY2stc3BlY2lmaWVyIHBhaXIKLS0gY2xv
Y2stbmFtZXMgOiAiaXBzZWMiIGFzIGEgY2xvY2sgbmFtZQotCi1PcHRpb25hbCBwcm9wZXJ0aWVz
OgotCi0tIGludGVycnVwdHM6IHNwZWNpZnkgdGhlIGludGVycnVwdCBmb3IgdGhlIFJORyBibG9j
awotCi1FeGFtcGxlOgotCi1ybmcgewotCWNvbXBhdGlibGUgPSAiYnJjbSxiY20yODM1LXJuZyI7
Ci0JcmVnID0gPDB4N2UxMDQwMDAgMHgxMD47Ci0JaW50ZXJydXB0cyA9IDwyIDI5PjsKLX07Ci0K
LXJuZ0AxODAzMzAwMCB7Ci0JY29tcGF0aWJsZSA9ICJicmNtLGJjbS1uc3Atcm5nIjsKLQlyZWcg
PSA8MHgxODAzMzAwMCAweDE0PjsKLX07Ci0KLXJhbmRvbTogcm5nQDEwMDA0MTgwIHsKLQljb21w
YXRpYmxlID0gImJyY20sYmNtNjM2OC1ybmciOwotCXJlZyA9IDwweDEwMDA0MTgwIDB4MTQ+Owot
Ci0JY2xvY2tzID0gPCZwZXJpcGhfY2xrIDE4PjsKLQljbG9jay1uYW1lcyA9ICJpcHNlYyI7Ci19
OwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JuZy9icmNt
LGJjbTI4MzUueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcvYnJj
bSxiY20yODM1LnlhbWwKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi40
MmQ5YTM4ZTRlMWEKLS0tIC9kZXYvbnVsbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3Mvcm5nL2JyY20sYmNtMjgzNS55YW1sCkBAIC0wLDAgKzEsNTkgQEAKKyMgU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wIE9SIEJTRC0yLUNsYXVzZSkKKyVZQU1MIDEuMgor
LS0tCiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3JuZy9icmNtLGJjbTI4MzUu
eWFtbCMKKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55
YW1sIworCit0aXRsZTogQkNNMjgzNS82MzY4IFJhbmRvbSBudW1iZXIgZ2VuZXJhdG9yCisKK21h
aW50YWluZXJzOgorICAtIFN0ZWZhbiBXYWhyZW4gPHN0ZWZhbi53YWhyZW5AaTJzZS5jb20+Cisg
IC0gRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+CisgIC0gSGVyYmVydCBY
dSA8aGVyYmVydEBnb25kb3IuYXBhbmEub3JnLmF1PgorCitwcm9wZXJ0aWVzOgorICBjb21wYXRp
YmxlOgorICAgIGVudW06CisgICAgICAtIGJyY20sYmNtMjgzNS1ybmcKKyAgICAgIC0gYnJjbSxi
Y20tbnNwLXJuZworICAgICAgLSBicmNtLGJjbTUzMDF4LXJuZworICAgICAgLSBicmNtLGJjbTYz
Njgtcm5nCisKKyAgcmVnOgorICAgIG1heEl0ZW1zOiAxCisKKyAgY2xvY2tzOgorICAgIG1heEl0
ZW1zOiAxCisKKyAgY2xvY2stbmFtZXM6CisgICAgY29uc3Q6IGlwc2VjCisKKyAgaW50ZXJydXB0
czoKKyAgICBtYXhJdGVtczogMQorCityZXF1aXJlZDoKKyAgLSBjb21wYXRpYmxlCisgIC0gcmVn
CisKK2V4YW1wbGVzOgorICAtIHwKKyAgICBybmcgeworICAgICAgICBjb21wYXRpYmxlID0gImJy
Y20sYmNtMjgzNS1ybmciOworICAgICAgICByZWcgPSA8MHg3ZTEwNDAwMCAweDEwPjsKKyAgICAg
ICAgaW50ZXJydXB0cyA9IDwyIDI5PjsKKyAgICB9OworCisgIC0gfAorICAgIHJuZ0AxODAzMzAw
MCB7CisgICAgICAgIGNvbXBhdGlibGUgPSAiYnJjbSxiY20tbnNwLXJuZyI7CisgICAgICAgIHJl
ZyA9IDwweDE4MDMzMDAwIDB4MTQ+OworICAgIH07CisKKyAgLSB8CisgICAgcm5nQDEwMDA0MTgw
IHsKKyAgICAgICAgY29tcGF0aWJsZSA9ICJicmNtLGJjbTYzNjgtcm5nIjsKKyAgICAgICAgcmVn
ID0gPDB4MTAwMDQxODAgMHgxND47CisKKyAgICAgICAgY2xvY2tzID0gPCZwZXJpcGhfY2xrIDE4
PjsKKyAgICAgICAgY2xvY2stbmFtZXMgPSAiaXBzZWMiOworICAgIH07Ci0tIAoyLjI1LjAKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
