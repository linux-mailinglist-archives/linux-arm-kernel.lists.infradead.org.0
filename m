Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3359B131
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 15:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9kV7yuV4HDjVKY4DT7FQN/InDQVpFA3sXLUgHvluOI=; b=tPBH+Xp5X2YMvS
	grBDI6HFVMwlkXfO/iiNCfcG+G/zaG8eyna9FmtgKPSSOotnszLkNPftHN1GFrCStIMdXXo95hpla
	p+h2VUpltvAcOh2YTmrLXws6nmoEzOYdPDtKLns+moPUUfEFFknynAbfjapzY7jGLtNXb1W3kg4bZ
	zQ5hK8auZmCCcqLkgtLcQX0b784MTuQC8q0QJaoJIYM4WRgWJksz3bc+iKh4Mecc2dcn/RZfpd9bq
	CuFeFCDcP6mC9f1bG3fQ9WP7/ioJ1u27hfjQtepPlECnRjdVRHR+64qF/iDgiltGI/bQs55QBHL6r
	C44fM/T4XdvlTD8QB8Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19tN-0003q6-4z; Fri, 23 Aug 2019 13:46:13 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i19ss-0003UY-Nn; Fri, 23 Aug 2019 13:45:44 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 25EB15FCC8;
 Fri, 23 Aug 2019 15:45:40 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="EY4Xa6Zx"; 
 dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id CD8441D89685;
 Fri, 23 Aug 2019 15:45:39 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com CD8441D89685
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566567939;
 bh=DbKuoSAKFSLRPIztOePMDQ+HKeuunIjJ+mpUlEuQplM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EY4Xa6ZxKSBhF7UYvKWaV55UYgMkYPzAahjDdjLlo28I3GRPX95ctk5Nny1mUtq6b
 ToHYPJO2+PmtRd8VYSoUfr3o/SEE/1Eu5iL7erCPTsL14T6UA3x5N4xG8WmUEQsvdK
 0Y+BmO0R3f+lvU7kASYLvO1F5Z2uBwnQt+kgef3y331HdpgQfDlDAyTE3508Qed81k
 ZK/9uu5xjXzGtCELeIg9oGtoGjSE4KTQRq2/OtvXARndBYdAHc0POeBjcBek5cBq2+
 k24+YS/3JIlwaIooysWxmrmPIs8bJSY0fYMwb/B4dgCz2SlPvhndsFgdWsgcg8bSoJ
 uNO4L4Bj09u9Q==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Nelson Chang <nelson.chang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v3 3/3] dt-bindings: net: ethernet: Update mt7622
 docs and dts to reflect the new phylink API
Date: Fri, 23 Aug 2019 15:45:16 +0200
Message-Id: <20190823134516.27559-4-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190823134516.27559-1-opensource@vdorst.com>
References: <20190823134516.27559-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_064543_074687_491A8077 
X-CRM114-Status: GOOD (  13.44  )
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
Cc: Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 linux-mips@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Stefan Roese <sr@denx.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCB0aGUgcmVtb3ZlcyB0aGUgcmVjZW50bHkgYWRkZWQgbWVkaWF0ZWsscGh5c3Bl
ZWQgcHJvcGVydHkuClVzZSB0aGUgZml4ZWQtbGluayBwcm9wZXJ0eSBzcGVlZCA9IDwyNTAwPiB0
byBzZXQgdGhlIHBoeSBpbiAyLjVHYml0LgpTZWUgbXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRz
IGZvciBhIHdvcmtpbmcgZXhhbXBsZS4KClNpZ25lZC1vZmYtYnk6IFJlbsOpIHZhbiBEb3JzdCA8
b3BlbnNvdXJjZUB2ZG9yc3QuY29tPgotLQp2Mi0+djM6Ciogbm8gY2hhbmdlCnYxLT52MjoKKiBT
R01JSSBwb3J0IG9ubHkgc3VwcG9ydCBCQVNFLVggYXQgMi41R2JpdC4KLS0tCiAuLi4vYXJtL21l
ZGlhdGVrL21lZGlhdGVrLHNnbWlpc3lzLnR4dCAgICAgICAgfCAgMiAtLQogLi4uL2R0cy9tZWRp
YXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMgIHwgMjggKysrKysrKysrKysrKy0tLS0t
LQogYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc2MjIuZHRzaSAgICAgIHwgIDEgLQog
MyBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL21lZGlhdGVrL21l
ZGlhdGVrLHNnbWlpc3lzLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vbWVkaWF0ZWsvbWVkaWF0ZWssc2dtaWlzeXMudHh0CmluZGV4IGY1NTE4ZjI2YTkxNC4uMzBj
YjY0NWMwZTU0IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL21lZGlhdGVrL21lZGlhdGVrLHNnbWlpc3lzLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvYXJtL21lZGlhdGVrL21lZGlhdGVrLHNnbWlpc3lzLnR4dApAQCAt
OSw4ICs5LDYgQEAgUmVxdWlyZWQgUHJvcGVydGllczoKIAktICJtZWRpYXRlayxtdDc2MjItc2dt
aWlzeXMiLCAic3lzY29uIgogCS0gIm1lZGlhdGVrLG10NzYyOS1zZ21paXN5cyIsICJzeXNjb24i
CiAtICNjbG9jay1jZWxsczogTXVzdCBiZSAxCi0tIG1lZGlhdGVrLHBoeXNwZWVkOiBTaG91bGQg
YmUgb25lIG9mICJhdXRvIiwgIjEwMDAiIG9yICIyNTAwIiB0byBtYXRjaCB1cAotCQkgICAgIHRo
ZSBjYXBhYmlsaXR5IG9mIHRoZSB0YXJnZXQgUEhZLgogCiBUaGUgU0dNSUlTWVMgY29udHJvbGxl
ciB1c2VzIHRoZSBjb21tb24gY2xrIGJpbmRpbmcgZnJvbQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2Nsb2NrL2Nsb2NrLWJpbmRpbmdzLnR4dApkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210NzYyMi1iYW5hbmFwaS1icGktcjY0LmR0cwppbmRl
eCA3MTBjNWMzZDg3ZDMuLjgzZTEwNTkxZTBlNSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9tZWRpYXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMKKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9tZWRpYXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMKQEAgLTExNSwy
NCArMTE1LDM0IEBACiB9OwogCiAmZXRoIHsKLQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwot
CXBpbmN0cmwtMCA9IDwmZXRoX3BpbnM+OwogCXN0YXR1cyA9ICJva2F5IjsKKwlnbWFjMDogbWFj
QDAgeworCQljb21wYXRpYmxlID0gIm1lZGlhdGVrLGV0aC1tYWMiOworCQlyZWcgPSA8MD47CisJ
CXBoeS1tb2RlID0gIjI1MDBiYXNlLXgiOworCisJCWZpeGVkLWxpbmsgeworCQkJc3BlZWQgPSA8
MjUwMD47CisJCQlmdWxsLWR1cGxleDsKKwkJCXBhdXNlOworCQl9OworCX07CiAKIAlnbWFjMTog
bWFjQDEgewogCQljb21wYXRpYmxlID0gIm1lZGlhdGVrLGV0aC1tYWMiOwogCQlyZWcgPSA8MT47
Ci0JCXBoeS1oYW5kbGUgPSA8JnBoeTU+OworCQlwaHktbW9kZSA9ICJyZ21paSI7CisKKwkJZml4
ZWQtbGluayB7CisJCQlzcGVlZCA9IDwxMDAwPjsKKwkJCWZ1bGwtZHVwbGV4OworCQkJcGF1c2U7
CisJCX07CiAJfTsKIAotCW1kaW8tYnVzIHsKKwltZGlvOiBtZGlvLWJ1cyB7CiAJCSNhZGRyZXNz
LWNlbGxzID0gPDE+OwogCQkjc2l6ZS1jZWxscyA9IDwwPjsKLQotCQlwaHk1OiBldGhlcm5ldC1w
aHlANSB7Ci0JCQlyZWcgPSA8NT47Ci0JCQlwaHktbW9kZSA9ICJzZ21paSI7Ci0JCX07CiAJfTsK
IH07CiAKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLmR0
c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210NzYyMi5kdHNpCmluZGV4IGQxZTEz
ZDM0MGUyNi4uZGFjNTFlOTgyMDRjIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21l
ZGlhdGVrL210NzYyMi5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3
NjIyLmR0c2kKQEAgLTkzMSw2ICs5MzEsNSBAQAogCQkJICAgICAic3lzY29uIjsKIAkJcmVnID0g
PDAgMHgxYjEyODAwMCAwIDB4MzAwMD47CiAJCSNjbG9jay1jZWxscyA9IDwxPjsKLQkJbWVkaWF0
ZWsscGh5c3BlZWQgPSAiMjUwMCI7CiAJfTsKIH07Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
