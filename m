Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5FDAC65D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 13:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x/FgYEfCE5fd1mCweVXV21+SiJ0LgonGxFFrno+WlfQ=; b=IpdsbAnWuon3Ig
	K3+7Q0uoWNhvvRSyOCfMCDYr6ywO3x28pB3L9vprSTQd3rYh0x7eRXx5Oj1nG+zvObx5fWiBzzAtM
	ISaa7gqTMCBne0rREspiwuBCOYKeKSjDTKjy40VOG67NAkLxPG8vzErmfezs51iILcqZNJBH2cPvh
	0IqKw8AqXcpIJVA1wc6oxfX4Ro/Cj5ZZ/NwmwQniechdcGXH+u/+DWzJQPQ6XKXMfcXn0pc4AmZpT
	AGbCRMcG7nYgsMXQEuukpwXpFF3G/wxOvuWbLHd8+FD1j2AecCoLg9gOzgvUSrbOE2wjy+EhSPzXj
	PHFoGFX5RXr4Na0LMANw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Yyb-0002bI-13; Sat, 07 Sep 2019 11:33:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6YyU-0002aZ-MF
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 11:33:52 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3960E20854;
 Sat,  7 Sep 2019 11:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567856028;
 bh=P50xo7m/hUx5iwji95aKRMlv0t3ad1ikhaodbFQe45s=;
 h=From:To:Subject:Date:From;
 b=kQnJwuopno6wn2b1m0kIb1H/0+B0zHoerIfOkUqKzMVusUelej/q5l+lMKc1yUEGv
 Cc1DOvVkXMwxq5SY+YD8Y6GGXyq993ZCLzGbGTkpvYphtz7Gmx+YfTRv2gp5ISnZmi
 FTVJnW5e/WqMzzsXVHwKgpLYTHR0URvG19ArkPiA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: rng: exynos4-rng: Convert Exynos PRNG bindings
 to json-schema
Date: Sat,  7 Sep 2019 13:33:27 +0200
Message-Id: <20190907113327.3477-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_043350_775350_641E2598 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Ynk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KLS0tCiAuLi4vYmluZGlu
Z3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1ybmcudHh0ICAgICAgfCAxOSAtLS0tLS0tLS0KIC4uLi9i
aW5kaW5ncy9ybmcvc2Ftc3VuZyxleHlub3M0LXJuZy55YW1sICAgICB8IDQxICsrKysrKysrKysr
KysrKysrKysKIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygt
KQogZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9y
bmcvc2Ftc3VuZyxleHlub3M0LXJuZy50eHQKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1ybmcueWFtbAoKZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcvc2Ftc3VuZyxl
eHlub3M0LXJuZy50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL3Nh
bXN1bmcsZXh5bm9zNC1ybmcudHh0CmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCBhMTNm
YmRiNGJkODguLjAwMDAwMDAwMDAwMAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1ybmcudHh0CisrKyAvZGV2L251bGwKQEAgLTEsMTkg
KzAsMCBAQAotRXh5bm9zIFBzZXVkbyBSYW5kb20gTnVtYmVyIEdlbmVyYXRvcgotCi1SZXF1aXJl
ZCBwcm9wZXJ0aWVzOgotCi0tIGNvbXBhdGlibGUgIDogT25lIG9mOgotICAgICAgICAgICAgICAg
IC0gInNhbXN1bmcsZXh5bm9zNC1ybmciIGZvciBFeHlub3M0MjEwIGFuZCBFeHlub3M0NDEyCi0g
ICAgICAgICAgICAgICAgLSAic2Ftc3VuZyxleHlub3M1MjUwLXBybmciIGZvciBFeHlub3M1MjUw
KwotLSByZWcgICAgICAgICA6IFNwZWNpZmllcyBiYXNlIHBoeXNpY2FsIGFkZHJlc3MgYW5kIHNp
emUgb2YgdGhlIHJlZ2lzdGVycyBtYXAuCi0tIGNsb2NrcyAgICAgIDogUGhhbmRsZSB0byBjbG9j
ay1jb250cm9sbGVyIHBsdXMgY2xvY2stc3BlY2lmaWVyIHBhaXIuCi0tIGNsb2NrLW5hbWVzIDog
InNlY3NzIiBhcyBhIGNsb2NrIG5hbWUuCi0KLUV4YW1wbGU6Ci0KLQlybmdAMTA4MzA0MDAgewot
CQljb21wYXRpYmxlID0gInNhbXN1bmcsZXh5bm9zNC1ybmciOwotCQlyZWcgPSA8MHgxMDgzMDQw
MCAweDIwMD47Ci0JCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX1NTUz47Ci0JCWNsb2NrLW5hbWVzID0g
InNlY3NzIjsKLQl9OwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3JuZy9zYW1zdW5nLGV4eW5vczQtcm5nLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1ybmcueWFtbApuZXcgZmlsZSBtb2RlIDEw
MDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjk5NGIwYmExMGQyZQotLS0gL2Rldi9udWxsCisrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcvc2Ftc3VuZyxleHlub3M0LXJu
Zy55YW1sCkBAIC0wLDAgKzEsNDEgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0y
LjAKKyVZQU1MIDEuMgorLS0tCiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Ju
Zy9zYW1zdW5nLGV4eW5vczQtcm5nLnlhbWwjCiskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IFNhbXN1bmcgRXh5bm9zIFNvQyBQ
c2V1ZG8gUmFuZG9tIE51bWJlciBHZW5lcmF0b3IKKworbWFpbnRhaW5lcnM6CisgIC0gS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgorCitwcm9wZXJ0aWVzOgorICBjb21wYXRp
YmxlOgorICAgIGVudW06CisgICAgICAtIHNhbXN1bmcsZXh5bm9zNC1ybmcgICAgICAgICAgICAg
ICAgICAgIyBmb3IgRXh5bm9zNDIxMCBhbmQgRXh5bm9zNDQxMgorICAgICAgLSBzYW1zdW5nLGV4
eW5vczUyNTAtcHJuZyAgICAgICAgICAgICAgICMgZm9yIEV4eW5vczUyNTArCisKKyAgcmVnOgor
ICAgIG1heEl0ZW1zOiAxCisKKyAgY2xvY2tzOgorICAgIG1heEl0ZW1zOiAxCisKKyAgY2xvY2st
bmFtZXM6CisgICAgaXRlbXM6CisgICAgICAtIGNvbnN0OiBzZWNzcworCityZXF1aXJlZDoKKyAg
LSBjb21wYXRpYmxlCisgIC0gcmVnCisgIC0gY2xvY2stbmFtZXMKKyAgLSBjbG9ja3MKKworZXhh
bXBsZXM6CisgIC0gfAorICAgIHJuZ0AxMDgzMDQwMCB7CisgICAgICBjb21wYXRpYmxlID0gInNh
bXN1bmcsZXh5bm9zNC1ybmciOworICAgICAgcmVnID0gPDB4MTA4MzA0MDAgMHgyMDA+OworICAg
ICAgY2xvY2tzID0gPCZjbG9jayAyNTU+OyAvLyBDTEtfU1NTCisgICAgICBjbG9jay1uYW1lcyA9
ICJzZWNzcyI7CisgICAgfTsKZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMK
aW5kZXggMzMxYzQwYWU2YTAxLi5jZGQyZjFmM2UxZjQgMTAwNjQ0Ci0tLSBhL01BSU5UQUlORVJT
CisrKyBiL01BSU5UQUlORVJTCkBAIC0xNDE4MSw3ICsxNDE4MSw3IEBAIEw6CWxpbnV4LWNyeXB0
b0B2Z2VyLmtlcm5lbC5vcmcKIEw6CWxpbnV4LXNhbXN1bmctc29jQHZnZXIua2VybmVsLm9yZwog
UzoJTWFpbnRhaW5lZAogRjoJZHJpdmVycy9jcnlwdG8vZXh5bm9zLXJuZy5jCi1GOglEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1ybmcudHh0CitG
OglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL3NhbXN1bmcsZXh5bm9zNC1y
bmcueWFtbAogCiBTQU1TVU5HIEVYWU5PUyBUUlVFIFJBTkRPTSBOVU1CRVIgR0VORVJBVE9SIChU
Uk5HKSBEUklWRVIKIE06CcWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+
Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
