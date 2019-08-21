Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D4097D64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4CNwn8OPyjPhWcHFH7gwXZYH5xYbxvm5huu8vHn2pw=; b=J7k80ZSc2ZiBRF
	aaoD/XVRYbPhZD6q3MrpfGLdDzPlqjsKxmgw2WurvHwolxzqsTmyfjgYRcT2Uoz2P8bnZ3lOxDAQV
	BNKx0NFkrM2+6VDyFMxmOgPxSSowgHga97RnTtt9153kge4H8aPSHbS7PB1OyrGlT+6+78UHWaorv
	7pWEXArmmty2KD4B17d1rFD9DmQRhyF8xxlxxhz7Mxrfwc9luJYfgy5fXlmVWBLUmJypHZyOS8luV
	zO5KRp1Dk4nVOrPdR+0CAeHZJcgDc7EXShKYPs1SnaXcQPGc2SMpX5HXicmo8faUf+0Fk1Kmh8o4M
	fQqI55vMbcVm/I5EW+vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Rs2-0007QS-2S; Wed, 21 Aug 2019 14:45:54 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Rqp-00052w-NT; Wed, 21 Aug 2019 14:44:41 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id C03B65FC82;
 Wed, 21 Aug 2019 16:44:38 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="eEI53EAD"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 8C0E61D828DF;
 Wed, 21 Aug 2019 16:44:38 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 8C0E61D828DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566398678;
 bh=mNJIgmi5wMH/URSjGpUvldtStb9e1bN3QN3/MQ5nwPQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eEI53EADMJfIturmloGlAMut/nR6qslyhP6rgk8xSdmDB6rBn4CI+cCQ0TEHzts7T
 Euee/SIen8nuN/os/KF6MOt4Zsa5ONRKWDKsvhHStJKoiLtc+4OWTW10XMjtI6mi3u
 C09QMb1VwMKCT8xNO2bMdMgUPzp3IzA8pjAKtqyyX52Tl9PoS92Myw+coIiMML8oJG
 Af6900keuJjmillC3a9rLUy3sNsWXWaDuiJIK+ILKmfkCiuGgwSbwWEf1IxJuA2r53
 Rx1F4zUT7S8LEzODsSs4yTfpnewTHlIjyiVNLHyog+MD4QXUebRraEYuVVcxCRUGRL
 3pnuLeu1KZnhQ==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Nelson Chang <nelson.chang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v2 3/3] dt-bindings: net: ethernet: Update mt7622
 docs and dts to reflect the new phylink API
Date: Wed, 21 Aug 2019 16:43:36 +0200
Message-Id: <20190821144336.9259-4-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190821144336.9259-1-opensource@vdorst.com>
References: <20190821144336.9259-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_074440_225053_CCE76A50 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Frank Wunderlich <frank-w@public-files.de>,
 netdev@vger.kernel.org, linux-mips@vger.kernel.org,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Stefan Roese <sr@denx.de>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCB0aGUgcmVtb3ZlcyB0aGUgcmVjZW50bHkgYWRkZWQgbWVkaWF0ZWsscGh5c3Bl
ZWQgcHJvcGVydHkuClVzZSB0aGUgZml4ZWQtbGluayBwcm9wZXJ0eSBzcGVlZCA9IDwyNTAwPiB0
byBzZXQgdGhlIHBoeSBpbiAyLjVHYml0LgpTZWUgbXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRz
IGZvciBhIHdvcmtpbmcgZXhhbXBsZS4KClNpZ25lZC1vZmYtYnk6IFJlbsOpIHZhbiBEb3JzdCA8
b3BlbnNvdXJjZUB2ZG9yc3QuY29tPgpDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6
IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Ci0tCnYxLT52MjoKKiBTR01JSSBwb3J0IG9u
bHkgc3VwcG9ydCBCQVNFLVggYXQgMi41R2JpdC4KLS0tCiAuLi4vYXJtL21lZGlhdGVrL21lZGlh
dGVrLHNnbWlpc3lzLnR4dCAgICAgICAgfCAgMiAtLQogLi4uL2R0cy9tZWRpYXRlay9tdDc2MjIt
YmFuYW5hcGktYnBpLXI2NC5kdHMgIHwgMjggKysrKysrKysrKysrKy0tLS0tLQogYXJjaC9hcm02
NC9ib290L2R0cy9tZWRpYXRlay9tdDc2MjIuZHRzaSAgICAgIHwgIDEgLQogMyBmaWxlcyBjaGFu
Z2VkLCAxOSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL21lZGlhdGVrL21lZGlhdGVrLHNnbWlp
c3lzLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbWVkaWF0ZWsv
bWVkaWF0ZWssc2dtaWlzeXMudHh0CmluZGV4IGY1NTE4ZjI2YTkxNC4uMzBjYjY0NWMwZTU0IDEw
MDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL21lZGlhdGVr
L21lZGlhdGVrLHNnbWlpc3lzLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL21lZGlhdGVrL21lZGlhdGVrLHNnbWlpc3lzLnR4dApAQCAtOSw4ICs5LDYgQEAg
UmVxdWlyZWQgUHJvcGVydGllczoKIAktICJtZWRpYXRlayxtdDc2MjItc2dtaWlzeXMiLCAic3lz
Y29uIgogCS0gIm1lZGlhdGVrLG10NzYyOS1zZ21paXN5cyIsICJzeXNjb24iCiAtICNjbG9jay1j
ZWxsczogTXVzdCBiZSAxCi0tIG1lZGlhdGVrLHBoeXNwZWVkOiBTaG91bGQgYmUgb25lIG9mICJh
dXRvIiwgIjEwMDAiIG9yICIyNTAwIiB0byBtYXRjaCB1cAotCQkgICAgIHRoZSBjYXBhYmlsaXR5
IG9mIHRoZSB0YXJnZXQgUEhZLgogCiBUaGUgU0dNSUlTWVMgY29udHJvbGxlciB1c2VzIHRoZSBj
b21tb24gY2xrIGJpbmRpbmcgZnJvbQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Nsb2NrL2Nsb2NrLWJpbmRpbmdzLnR4dApkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9tZWRpYXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL21lZGlhdGVrL210NzYyMi1iYW5hbmFwaS1icGktcjY0LmR0cwppbmRleCA3MTBjNWMzZDg3
ZDMuLjgzZTEwNTkxZTBlNSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRl
ay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9t
ZWRpYXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMKQEAgLTExNSwyNCArMTE1LDM0IEBA
CiB9OwogCiAmZXRoIHsKLQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwotCXBpbmN0cmwtMCA9
IDwmZXRoX3BpbnM+OwogCXN0YXR1cyA9ICJva2F5IjsKKwlnbWFjMDogbWFjQDAgeworCQljb21w
YXRpYmxlID0gIm1lZGlhdGVrLGV0aC1tYWMiOworCQlyZWcgPSA8MD47CisJCXBoeS1tb2RlID0g
IjI1MDBiYXNlLXgiOworCisJCWZpeGVkLWxpbmsgeworCQkJc3BlZWQgPSA8MjUwMD47CisJCQlm
dWxsLWR1cGxleDsKKwkJCXBhdXNlOworCQl9OworCX07CiAKIAlnbWFjMTogbWFjQDEgewogCQlj
b21wYXRpYmxlID0gIm1lZGlhdGVrLGV0aC1tYWMiOwogCQlyZWcgPSA8MT47Ci0JCXBoeS1oYW5k
bGUgPSA8JnBoeTU+OworCQlwaHktbW9kZSA9ICJyZ21paSI7CisKKwkJZml4ZWQtbGluayB7CisJ
CQlzcGVlZCA9IDwxMDAwPjsKKwkJCWZ1bGwtZHVwbGV4OworCQkJcGF1c2U7CisJCX07CiAJfTsK
IAotCW1kaW8tYnVzIHsKKwltZGlvOiBtZGlvLWJ1cyB7CiAJCSNhZGRyZXNzLWNlbGxzID0gPDE+
OwogCQkjc2l6ZS1jZWxscyA9IDwwPjsKLQotCQlwaHk1OiBldGhlcm5ldC1waHlANSB7Ci0JCQly
ZWcgPSA8NT47Ci0JCQlwaHktbW9kZSA9ICJzZ21paSI7Ci0JCX07CiAJfTsKIH07CiAKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLmR0c2kgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL21lZGlhdGVrL210NzYyMi5kdHNpCmluZGV4IGQxZTEzZDM0MGUyNi4uZGFj
NTFlOTgyMDRjIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210NzYy
Mi5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLmR0c2kKQEAg
LTkzMSw2ICs5MzEsNSBAQAogCQkJICAgICAic3lzY29uIjsKIAkJcmVnID0gPDAgMHgxYjEyODAw
MCAwIDB4MzAwMD47CiAJCSNjbG9jay1jZWxscyA9IDwxPjsKLQkJbWVkaWF0ZWsscGh5c3BlZWQg
PSAiMjUwMCI7CiAJfTsKIH07Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
