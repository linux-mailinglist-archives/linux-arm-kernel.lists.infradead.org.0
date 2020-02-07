Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F24B15617F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 00:14:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	Subject:From:To:Date:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bjJbjS+DEwb3tIywQaW9toWrnbXNR7XA6TJH1uooMHI=; b=oQJmPgDC4A+v/3
	COGjYnQu6PRXlo4w8rVVKVvhfXYP6Ehf/7+NUQYXmPGdsnrW9tFQY4eis7iiH8dG4zykouCg9PmuY
	bQLa/2FQAztoZIxSCJ06HrYYdOsluliLkkGJfvTNjBvc19aOpZxjR665m67pewswVMhXbkJRlbQac
	9g6sJnnRdfNaYMgUv67/6dak9QBq6h6G7xlOhgUrSKYSX4achZbZIvD5FWIh1cMiGBJo4eEyFzg46
	rUzHDbH9X+Lc5pPZfWhtvGpNBwRn6+oko+HTND3yMZ+PdzFRmO/MS8Lx1PCoBC4AhYkqi5yaUmqmq
	htWksXJ2g1UhMWnBa/ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0CpY-0006B4-Mf; Fri, 07 Feb 2020 23:14:36 +0000
Received: from mail1.protonmail.ch ([185.70.40.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0CpT-0006A0-8W; Fri, 07 Feb 2020 23:14:33 +0000
Date: Fri, 07 Feb 2020 23:14:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=default; t=1581117256;
 bh=5I+iYpcmyPmxlzWu+YQnFukTNWGwnPUkQnn9I1iylj4=;
 h=Date:To:From:Cc:Reply-To:Subject:Feedback-ID:From;
 b=tiyL6ngGCEW9tBRWnRtn03kmLExIBlVn4Mzg4Km2t+SdL0fkhwlPAftONu/bO5tsA
 VNqrDuiH9PxfSRJeCyHYzluTMEsgOZmElzAuR888FyusdzPp8JncHSvtPQNHbyHeRp
 GP4As9bl3Kk2V7Uig418PyuqWJxL7mIR/f8OXoNM=
To: devicetree@vger.kernel.org
From: =?UTF-8?Q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@protonmail.com>
Subject: [PATCH] dt-bindings: rng: Convert BCM2835 to DT schema
Message-ID: <20200207231347.2908737-1-nfraprado@protonmail.com>
Feedback-ID: cwTKJQq-dqva77NrgNeIaWzOvcDQqfI9VSy7DoyJdvgY6-nEE7fD-E-3GiKFHexW4OBWbzutmMZN6q4SflMDRw==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,BAYES_20,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM
 shortcircuit=no autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_151431_459870_2CAAD936 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.70.40.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nfraprado[at]protonmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
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
cmFkb0Bwcm90b25tYWlsLmNvbT4KLS0tCgpIaSwKd2Fzbid0IHJlYWxseSBjbGVhciB0byBtZSB3
aG8gdG8gYWRkIGFzIG1haW50YWluZXIgZm9yIHRoaXMgZHQtYmluZGluZy4KVGhlIHRocmVlIG5h
bWVzIGFkZGVkIGhlcmUgYXMgbWFpbnRhaW5lcnMgd2VyZSBiYXNlZCBvbiB0aGUgZ2V0X21haW50
YWluZXIKc2NyaXB0IGFuZCBvbiBwcmV2aW91cyBjb21taXRzIG9uIHRoaXMgZmlsZS4KUGxlYXNl
IHRlbGwgbWUgd2hldGhlciB0aGVzZSBhcmUgdGhlIHJpZ2h0IG1haW50YWluZXJzIGZvciB0aGlz
IGZpbGUgb3Igbm90LgoKVGhpcyBwYXRjaCB3YXMgdGVzdGVkIHdpdGg6Cm1ha2UgQVJDSD1hcm0g
RFRfU0NIRU1BX0ZJTEVTPURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcvYnJj
bSxiY20yODM1LnlhbWwgZHRfYmluZGluZ19jaGVjawptYWtlIEFSQ0g9YXJtIERUX1NDSEVNQV9G
SUxFUz1Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL2JyY20sYmNtMjgzNS55
YW1sIGR0YnNfY2hlY2sKClRoYW5rcywKTsOtY29sYXMKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5n
cy9ybmcvYnJjbSxiY20yODM1LnR4dCAgfCA0MCAtLS0tLS0tLS0tLS0KIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3JuZy9icmNtLGJjbTI4MzUueWFtbCB8IDYxICsrKysrKysrKysrKysrKysrKysK
IDIgZmlsZXMgY2hhbmdlZCwgNjEgaW5zZXJ0aW9ucygrKSwgNDAgZGVsZXRpb25zKC0pCiBkZWxl
dGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JuZy9icmNt
LGJjbTI4MzUudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3JuZy9icmNtLGJjbTI4MzUueWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcvYnJjbSxiY20yODM1LnR4dCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcvYnJjbSxiY20yODM1LnR4dApkZWxldGVkIGZpbGUg
bW9kZSAxMDA2NDQKaW5kZXggYWFhYzc5NzVmNjFjLi4wMDAwMDAwMDAwMDAKLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JuZy9icmNtLGJjbTI4MzUudHh0CisrKyAvZGV2
L251bGwKQEAgLTEsNDAgKzAsMCBAQAotQkNNMjgzNS82MzY4IFJhbmRvbSBudW1iZXIgZ2VuZXJh
dG9yCi0KLVJlcXVpcmVkIHByb3BlcnRpZXM6Ci0KLS0gY29tcGF0aWJsZSA6IHNob3VsZCBiZSBv
bmUgb2YKLQkiYnJjbSxiY20yODM1LXJuZyIKLQkiYnJjbSxiY20tbnNwLXJuZyIKLQkiYnJjbSxi
Y201MzAxeC1ybmciIG9yCi0JImJyY20sYmNtNjM2OC1ybmciCi0tIHJlZyA6IFNwZWNpZmllcyBi
YXNlIHBoeXNpY2FsIGFkZHJlc3MgYW5kIHNpemUgb2YgdGhlIHJlZ2lzdGVycy4KLQotT3B0aW9u
YWwgcHJvcGVydGllczoKLQotLSBjbG9ja3MgOiBwaGFuZGxlIHRvIGNsb2NrLWNvbnRyb2xsZXIg
cGx1cyBjbG9jay1zcGVjaWZpZXIgcGFpcgotLSBjbG9jay1uYW1lcyA6ICJpcHNlYyIgYXMgYSBj
bG9jayBuYW1lCi0KLU9wdGlvbmFsIHByb3BlcnRpZXM6Ci0KLS0gaW50ZXJydXB0czogc3BlY2lm
eSB0aGUgaW50ZXJydXB0IGZvciB0aGUgUk5HIGJsb2NrCi0KLUV4YW1wbGU6Ci0KLXJuZyB7Ci0J
Y29tcGF0aWJsZSA9ICJicmNtLGJjbTI4MzUtcm5nIjsKLQlyZWcgPSA8MHg3ZTEwNDAwMCAweDEw
PjsKLQlpbnRlcnJ1cHRzID0gPDIgMjk+OwotfTsKLQotcm5nQDE4MDMzMDAwIHsKLQljb21wYXRp
YmxlID0gImJyY20sYmNtLW5zcC1ybmciOwotCXJlZyA9IDwweDE4MDMzMDAwIDB4MTQ+OwotfTsK
LQotcmFuZG9tOiBybmdAMTAwMDQxODAgewotCWNvbXBhdGlibGUgPSAiYnJjbSxiY202MzY4LXJu
ZyI7Ci0JcmVnID0gPDB4MTAwMDQxODAgMHgxND47Ci0KLQljbG9ja3MgPSA8JnBlcmlwaF9jbGsg
MTg+OwotCWNsb2NrLW5hbWVzID0gImlwc2VjIjsKLX07CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL2JyY20sYmNtMjgzNS55YW1sIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JuZy9icmNtLGJjbTI4MzUueWFtbApuZXcgZmlsZSBt
b2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmIxNjIxMDMxNzIxZQotLS0gL2Rldi9udWxs
CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcvYnJjbSxiY20yODM1
LnlhbWwKQEAgLTAsMCArMSw2MSBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0y
LjAgT1IgQlNELTItQ2xhdXNlKQorJVlBTUwgMS4yCistLS0KKyRpZDogaHR0cDovL2RldmljZXRy
ZWUub3JnL3NjaGVtYXMvcm5nL2JyY20sYmNtMjgzNS55YW1sIworJHNjaGVtYTogaHR0cDovL2Rl
dmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCisKK3RpdGxlOiBCQ00yODM1LzYz
NjggUmFuZG9tIG51bWJlciBnZW5lcmF0b3IKKworbWFpbnRhaW5lcnM6CisgIC0gU3RlZmFuIFdh
aHJlbiA8c3RlZmFuLndhaHJlbkBpMnNlLmNvbT4KKyAgLSBGbG9yaWFuIEZhaW5lbGxpIDxmLmZh
aW5lbGxpQGdtYWlsLmNvbT4KKyAgLSBIZXJiZXJ0IFh1IDxoZXJiZXJ0QGdvbmRvci5hcGFuYS5v
cmcuYXU+CisKK3Byb3BlcnRpZXM6CisgIGNvbXBhdGlibGU6CisgICAgZW51bToKKyAgICAgIC0g
YnJjbSxiY20yODM1LXJuZworICAgICAgLSBicmNtLGJjbS1uc3Atcm5nCisgICAgICAtIGJyY20s
YmNtNTMwMXgtcm5nCisgICAgICAtIGJyY20sYmNtNjM2OC1ybmcKKworICByZWc6CisgICAgbWF4
SXRlbXM6IDEKKworICBjbG9ja3M6CisgICAgZGVzY3JpcHRpb246IHBoYW5kbGUgdG8gY2xvY2st
Y29udHJvbGxlciBwbHVzIGNsb2NrLXNwZWNpZmllciBwYWlyCisgICAgbWF4SXRlbXM6IDEKKwor
ICBjbG9jay1uYW1lczoKKyAgICBjb25zdDogaXBzZWMKKworICBpbnRlcnJ1cHRzOgorICAgIGRl
c2NyaXB0aW9uOiBzcGVjaWZ5IHRoZSBpbnRlcnJ1cHQgZm9yIHRoZSBSTkcgYmxvY2sKKyAgICBt
YXhJdGVtczogMQorCityZXF1aXJlZDoKKyAgLSBjb21wYXRpYmxlCisgIC0gcmVnCisKK2V4YW1w
bGVzOgorICAtIHwKKyAgICBybmcgeworICAgICAgICBjb21wYXRpYmxlID0gImJyY20sYmNtMjgz
NS1ybmciOworICAgICAgICByZWcgPSA8MHg3ZTEwNDAwMCAweDEwPjsKKyAgICAgICAgaW50ZXJy
dXB0cyA9IDwyIDI5PjsKKyAgICB9OworCisgIC0gfAorICAgIHJuZ0AxODAzMzAwMCB7CisgICAg
ICAgIGNvbXBhdGlibGUgPSAiYnJjbSxiY20tbnNwLXJuZyI7CisgICAgICAgIHJlZyA9IDwweDE4
MDMzMDAwIDB4MTQ+OworICAgIH07CisKKyAgLSB8CisgICAgcmFuZG9tOiBybmdAMTAwMDQxODAg
eworICAgICAgICBjb21wYXRpYmxlID0gImJyY20sYmNtNjM2OC1ybmciOworICAgICAgICByZWcg
PSA8MHgxMDAwNDE4MCAweDE0PjsKKworICAgICAgICBjbG9ja3MgPSA8JnBlcmlwaF9jbGsgMTg+
OworICAgICAgICBjbG9jay1uYW1lcyA9ICJpcHNlYyI7CisgICAgfTsKLS0gCjIuMjUuMAoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
