Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC56C8E03
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9vML3LTMkyva7ouhnTv69Unp6TCw5eR5qmcd5c2EPdA=; b=h2YmSaZfGWCvu6
	4MP6Or+3E313szJFHYA/hZf/HtyKmQX3s47TNJvefO0dx+Q/mK+UVzNKPHnK+MaBllUQt2BcGN21T
	t3b8JVw2o6shdgaWvDKIu46d7rSHMk+hs+AMs7AX+kp/XPtNEvgL881pAxPWkr3lx7Kr4PuPhYZGH
	QYPtyQ1yLQilpA8vDaZ4XYVPETomvXg8Ds90iXtqFJOUbOMjoP4i76Go9KVRxXwVU9ZcaeCW3tLOK
	F9LmNtflE/WLvoJNZVZ3xuIWDQfd3TykWCt8LOmF2ktMQKy3YndK+8d5KFiyfPXYiG4gM5tem9DQm
	wRHq2WXNmH8yEK2wR2qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFhGX-0005HI-G2; Wed, 02 Oct 2019 16:14:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFhGQ-0005Gp-5L
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 16:14:08 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4882121D81;
 Wed,  2 Oct 2019 16:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570032845;
 bh=kO8M38DmM9I+02SfH1lZx8c4kQqQUy1vQcjLyNx6/UI=;
 h=From:To:Subject:Date:From;
 b=pTAciPHwF/1ekI5rhATeOVb8L8s04YFa4IDtpwye5eD2HwpcrP8u9snStb72j0OQe
 G9ymOpPTDfJDoGksbnBOvrC2FeRLF7Kfn1SNbF2/GdUMvGf3gbj4Tn7K0e7M1ll4vF
 hajl3K1m4oB7OKu+EQOX+Dp4i73QkHkl3KN7vgOw=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] dt-bindings: rng: exynos4-rng: Convert Exynos PRNG
 bindings to json-schema
Date: Wed,  2 Oct 2019 18:13:40 +0200
Message-Id: <20191002161340.11846-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_091406_244480_307E1308 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Q29udmVydCBTYW1zdW5nIEV4eW5vcyBQc2V1ZG8gUmFuZG9tIE51bWJlciBHZW5lcmF0b3IgYmlu
ZGluZ3MgdG8gRFQKc2NoZW1hIGZvcm1hdCB1c2luZyBqc29uLXNjaGVtYS4KClNpZ25lZC1vZmYt
Ynk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KCi0tLQoKQ2hhbmdlcyBz
aW5jZSB2MjoKMS4gQWRkIGFkZGl0aW9uYWxQcm9wZXJ0aWVzIGZhbHNlLAoyLiBJbmNsdWRlIGNs
b2NrIGhlYWRlciBhbmQgdXNlIGRlZmluZXMgaW5zdGVhZCBvZiBjbG9jayBudW1iZXJzLgoKQ2hh
bmdlcyBzaW5jZSB2MToKMS4gSW5kZW50IGV4YW1wbGUgd2l0aCBmb3VyIHNwYWNlcyAobW9yZSBy
ZWFkYWJsZSkuCi0tLQogLi4uL2JpbmRpbmdzL3JuZy9zYW1zdW5nLGV4eW5vczQtcm5nLnR4dCAg
ICAgIHwgMTkgLS0tLS0tLS0KIC4uLi9iaW5kaW5ncy9ybmcvc2Ftc3VuZyxleHlub3M0LXJuZy55
YW1sICAgICB8IDQ1ICsrKysrKysrKysrKysrKysrKysKIE1BSU5UQUlORVJTICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDQ2IGluc2Vy
dGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcvc2Ftc3VuZyxleHlub3M0LXJuZy50eHQKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL3NhbXN1
bmcsZXh5bm9zNC1ybmcueWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9ybmcvc2Ftc3VuZyxleHlub3M0LXJuZy50eHQgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1ybmcudHh0CmRlbGV0ZWQgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCBhMTNmYmRiNGJkODguLjAwMDAwMDAwMDAwMAotLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1ybmcudHh0
CisrKyAvZGV2L251bGwKQEAgLTEsMTkgKzAsMCBAQAotRXh5bm9zIFBzZXVkbyBSYW5kb20gTnVt
YmVyIEdlbmVyYXRvcgotCi1SZXF1aXJlZCBwcm9wZXJ0aWVzOgotCi0tIGNvbXBhdGlibGUgIDog
T25lIG9mOgotICAgICAgICAgICAgICAgIC0gInNhbXN1bmcsZXh5bm9zNC1ybmciIGZvciBFeHlu
b3M0MjEwIGFuZCBFeHlub3M0NDEyCi0gICAgICAgICAgICAgICAgLSAic2Ftc3VuZyxleHlub3M1
MjUwLXBybmciIGZvciBFeHlub3M1MjUwKwotLSByZWcgICAgICAgICA6IFNwZWNpZmllcyBiYXNl
IHBoeXNpY2FsIGFkZHJlc3MgYW5kIHNpemUgb2YgdGhlIHJlZ2lzdGVycyBtYXAuCi0tIGNsb2Nr
cyAgICAgIDogUGhhbmRsZSB0byBjbG9jay1jb250cm9sbGVyIHBsdXMgY2xvY2stc3BlY2lmaWVy
IHBhaXIuCi0tIGNsb2NrLW5hbWVzIDogInNlY3NzIiBhcyBhIGNsb2NrIG5hbWUuCi0KLUV4YW1w
bGU6Ci0KLQlybmdAMTA4MzA0MDAgewotCQljb21wYXRpYmxlID0gInNhbXN1bmcsZXh5bm9zNC1y
bmciOwotCQlyZWcgPSA8MHgxMDgzMDQwMCAweDIwMD47Ci0JCWNsb2NrcyA9IDwmY2xvY2sgQ0xL
X1NTUz47Ci0JCWNsb2NrLW5hbWVzID0gInNlY3NzIjsKLQl9OwpkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JuZy9zYW1zdW5nLGV4eW5vczQtcm5nLnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1y
bmcueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjMzNjJjYjEy
MTNjMAotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9ybmcvc2Ftc3VuZyxleHlub3M0LXJuZy55YW1sCkBAIC0wLDAgKzEsNDUgQEAKKyMgU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKKyVZQU1MIDEuMgorLS0tCiskaWQ6IGh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3JuZy9zYW1zdW5nLGV4eW5vczQtcm5nLnlhbWwjCiskc2No
ZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0
bGU6IFNhbXN1bmcgRXh5bm9zIFNvQyBQc2V1ZG8gUmFuZG9tIE51bWJlciBHZW5lcmF0b3IKKwor
bWFpbnRhaW5lcnM6CisgIC0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgor
Citwcm9wZXJ0aWVzOgorICBjb21wYXRpYmxlOgorICAgIGVudW06CisgICAgICAtIHNhbXN1bmcs
ZXh5bm9zNC1ybmcgICAgICAgICAgICAgICAgICAgIyBmb3IgRXh5bm9zNDIxMCBhbmQgRXh5bm9z
NDQxMgorICAgICAgLSBzYW1zdW5nLGV4eW5vczUyNTAtcHJuZyAgICAgICAgICAgICAgICMgZm9y
IEV4eW5vczUyNTArCisKKyAgcmVnOgorICAgIG1heEl0ZW1zOiAxCisKKyAgY2xvY2tzOgorICAg
IG1heEl0ZW1zOiAxCisKKyAgY2xvY2stbmFtZXM6CisgICAgaXRlbXM6CisgICAgICAtIGNvbnN0
OiBzZWNzcworCityZXF1aXJlZDoKKyAgLSBjb21wYXRpYmxlCisgIC0gcmVnCisgIC0gY2xvY2st
bmFtZXMKKyAgLSBjbG9ja3MKKworYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCisKK2V4YW1w
bGVzOgorICAtIHwKKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svZXh5bm9zNC5oPgor
CisgICAgcm5nQDEwODMwNDAwIHsKKyAgICAgICAgY29tcGF0aWJsZSA9ICJzYW1zdW5nLGV4eW5v
czQtcm5nIjsKKyAgICAgICAgcmVnID0gPDB4MTA4MzA0MDAgMHgyMDA+OworICAgICAgICBjbG9j
a3MgPSA8JmNsb2NrIENMS19TU1M+OworICAgICAgICBjbG9jay1uYW1lcyA9ICJzZWNzcyI7Cisg
ICAgfTsKZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKaW5kZXggMDBiNzUw
MjhiMjgwLi5iMjZiMjAwOWMyMzAgMTAwNjQ0Ci0tLSBhL01BSU5UQUlORVJTCisrKyBiL01BSU5U
QUlORVJTCkBAIC0xNDIxMiw3ICsxNDIxMiw3IEBAIEw6CWxpbnV4LWNyeXB0b0B2Z2VyLmtlcm5l
bC5vcmcKIEw6CWxpbnV4LXNhbXN1bmctc29jQHZnZXIua2VybmVsLm9yZwogUzoJTWFpbnRhaW5l
ZAogRjoJZHJpdmVycy9jcnlwdG8vZXh5bm9zLXJuZy5jCi1GOglEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1ybmcudHh0CitGOglEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1ybmcueWFtbAogCiBT
QU1TVU5HIEVYWU5PUyBUUlVFIFJBTkRPTSBOVU1CRVIgR0VORVJBVE9SIChUUk5HKSBEUklWRVIK
IE06CcWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+Ci0tIAoyLjE3LjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
