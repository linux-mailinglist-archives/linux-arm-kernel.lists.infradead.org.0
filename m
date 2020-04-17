Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0DE1AD707
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 09:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xvynPsZ2tiz6lLh1T0lxMjfNfDEFvWqwnjyWVn46Pb0=; b=W79Y/k4sAasFrT
	JJlSz/naIky5WeIHJ0p2oL5OoDdx2ET89wJFHc5ZHgOu4W/Z77t84repC09v8IFKlet1FV0zRfNe7
	HBTLwamrzvXZ1cnNMKnkHA2qNJ+bbHkhMDaZRY9Tdee5K6M4IAuKT7JbadBv3KCfr83JknLKEmOVe
	H+ZL1coNq4JDwUS0zN4bzhNUS47T9yL+uXIzmuzF3JhLySi1TDvsTUfuJIEy8qvtEOgVBmfxfky7N
	I7tAai0ngC1LECliqQY8wVpgzunoaTt7suPyzOhCz97Rexj5X8R+duaAOMcHR4Zu1fkiVPfcILxdi
	Q3y6c/EcroRqH6CeGPTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPL7d-0003tJ-2P; Fri, 17 Apr 2020 07:09:09 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPL7O-0003lD-Ja
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 07:08:56 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 2B8BD1AB94DE7EDF6FDF;
 Fri, 17 Apr 2020 15:08:52 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0; Fri, 17 Apr 2020
 15:08:46 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <linus.walleij@linaro.org>, <stephan@gerhold.net>, <yanaijie@huawei.com>, 
 <linux-arm-kernel@lists.infradead.org>, <linux-gpio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] pinctrl: nomadik: db8500: remove some unused symbols
Date: Fri, 17 Apr 2020 15:35:12 +0800
Message-ID: <20200417073512.42350-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_000855_235973_BED1891B 
X-CRM114-Status: UNSURE (   5.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hulk Robot <hulkci@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rml4IHRoZSBmb2xsb3dpbmcgZ2NjIHdhcm5pbmc6Cgpkcml2ZXJzL3BpbmN0cmwvbm9tYWRpay9w
aW5jdHJsLW5vbWFkaWstZGI4NTAwLmM6ODk5OjIwOiB3YXJuaW5nOgrigJhzYmFnX2dyb3Vwc+KA
mSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtY29uc3QtdmFyaWFibGU9XQogREI4NTAw
X0ZVTkNfR1JPVVBTKHNiYWcsICJzYmFnX29jMl8xIiwgInNiYWdfb2M0XzEiKTsKICAgICAgICAg
ICAgICAgICAgICBeCmRyaXZlcnMvcGluY3RybC9ub21hZGlrL3BpbmN0cmwtbm9tYWRpay1kYjg1
MDAuYzo1NzA6MjM6IHdhcm5pbmc6CuKAmGlwZ3BpbzZfY18yX3BpbnPigJkgZGVmaW5lZCBidXQg
bm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KIHN0YXRpYyBjb25zdCB1bnNpZ25l
ZCBpcGdwaW82X2NfMl9waW5zW10gPSB7IERCODUwMF9QSU5fRzMgfTsKICAgICAgICAgICAgICAg
ICAgICAgICBefn5+fn5+fn5+fn5+fn5+CmRyaXZlcnMvcGluY3RybC9ub21hZGlrL3BpbmN0cmwt
bm9tYWRpay1kYjg1MDAuYzo0NzI6MjM6IHdhcm5pbmc6CuKAmG1jMWRpcl9hXzFfcGluc+KAmSBk
ZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtY29uc3QtdmFyaWFibGU9XQogc3RhdGljIGNv
bnN0IHVuc2lnbmVkIG1jMWRpcl9hXzFfcGluc1tdID0geyBEQjg1MDBfUElOX0FIMTMsCkRCODUw
MF9QSU5fQUcxMiwKICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn4KZHJpdmVy
cy9waW5jdHJsL25vbWFkaWsvcGluY3RybC1ub21hZGlrLWRiODUwMC5jOjQ1MzoyMzogd2Fybmlu
ZzoK4oCYbW9kZW1fYV8xX3BpbnPigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNv
bnN0LXZhcmlhYmxlPV0KIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBtb2RlbV9hXzFfcGluc1tdID0g
eyBEQjg1MDBfUElOX0QyMiwKREI4NTAwX1BJTl9DMjMsCiAgICAgICAgICAgICAgICAgICAgICAg
Xn5+fn5+fn5+fn5+fn4KZHJpdmVycy9waW5jdHJsL25vbWFkaWsvcGluY3RybC1ub21hZGlrLWRi
ODUwMC5jOjQzMDoyMzogd2FybmluZzoK4oCYa3Bza2Fza2JfYV8xX3BpbnPigJkgZGVmaW5lZCBi
dXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KIHN0YXRpYyBjb25zdCB1bnNp
Z25lZCBrcHNrYXNrYl9hXzFfcGluc1tdID0geyBEQjg1MDBfUElOX0QxNywKREI4NTAwX1BJTl9E
MTYgfTsKICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fgoKUmVwb3J0ZWQt
Ynk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYXNvbiBZ
YW4gPHlhbmFpamllQGh1YXdlaS5jb20+Ci0tLQogZHJpdmVycy9waW5jdHJsL25vbWFkaWsvcGlu
Y3RybC1ub21hZGlrLWRiODUwMC5jIHwgOCAtLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waW5jdHJsL25vbWFkaWsvcGluY3RybC1u
b21hZGlrLWRiODUwMC5jIGIvZHJpdmVycy9waW5jdHJsL25vbWFkaWsvcGluY3RybC1ub21hZGlr
LWRiODUwMC5jCmluZGV4IGI5MjQ2ZTBiNGZlMi4uMGJiYTE2ZGFkYjQ1IDEwMDY0NAotLS0gYS9k
cml2ZXJzL3BpbmN0cmwvbm9tYWRpay9waW5jdHJsLW5vbWFkaWstZGI4NTAwLmMKKysrIGIvZHJp
dmVycy9waW5jdHJsL25vbWFkaWsvcGluY3RybC1ub21hZGlrLWRiODUwMC5jCkBAIC00MjcsNyAr
NDI3LDYgQEAgc3RhdGljIGNvbnN0IHVuc2lnbmVkIGxjZF9kMTJfZDIzX2FfMV9waW5zW10gPSB7
CiAJREI4NTAwX1BJTl9BMywgREI4NTAwX1BJTl9CNiwgREI4NTAwX1BJTl9ENiwgREI4NTAwX1BJ
Tl9CNyB9Owogc3RhdGljIGNvbnN0IHVuc2lnbmVkIGtwX2FfMV9waW5zW10gPSB7IERCODUwMF9Q
SU5fRDcsIERCODUwMF9QSU5fRTgsCiAJREI4NTAwX1BJTl9EOCwgREI4NTAwX1BJTl9EOSB9Owot
c3RhdGljIGNvbnN0IHVuc2lnbmVkIGtwc2thc2tiX2FfMV9waW5zW10gPSB7IERCODUwMF9QSU5f
RDE3LCBEQjg1MDBfUElOX0QxNiB9Owogc3RhdGljIGNvbnN0IHVuc2lnbmVkIGtwX2FfMl9waW5z
W10gPSB7CiAJREI4NTAwX1BJTl9CMTcsIERCODUwMF9QSU5fQzE2LCBEQjg1MDBfUElOX0MxOSwg
REI4NTAwX1BJTl9DMTcsCiAJREI4NTAwX1BJTl9BMTgsIERCODUwMF9QSU5fQzE4LCBEQjg1MDBf
UElOX0IxOSwgREI4NTAwX1BJTl9CMjAsCkBAIC00NDksOSArNDQ4LDYgQEAgc3RhdGljIGNvbnN0
IHVuc2lnbmVkIGkyYzBfYV8xX3BpbnNbXSA9IHsgREI4NTAwX1BJTl9DMTUsIERCODUwMF9QSU5f
QjE2IH07CiAgKi8KIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBpcGdwaW8wX2FfMV9waW5zW10gPSB7
IERCODUwMF9QSU5fQjE0IH07CiBzdGF0aWMgY29uc3QgdW5zaWduZWQgaXBncGlvMV9hXzFfcGlu
c1tdID0geyBEQjg1MDBfUElOX0MxNCB9OwotLyogVGhyZWUgbW9kZW0gcGlucyBuYW1lZCBSRl9Q
VVJuLCBNT0RFTV9TVEFURSBhbmQgTU9ERU1fUFdSRU4gKi8KLXN0YXRpYyBjb25zdCB1bnNpZ25l
ZCBtb2RlbV9hXzFfcGluc1tdID0geyBEQjg1MDBfUElOX0QyMiwgREI4NTAwX1BJTl9DMjMsCi0J
CQkJCSAgIERCODUwMF9QSU5fRDIzIH07CiAvKgogICogVGhpcyBNU1AgY2Fubm90IHN3aXRjaCBS
WCBhbmQgVFgsIFNDSyBpbiBhIHNlcGFyYXRlIGdyb3VwIHNpbmNlIHRoaXMKICAqIHNlZW1zIHRv
IGJlIG9wdGlvbmFsLgpAQCAtNDY5LDggKzQ2NSw2IEBAIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBt
YzFfYV8xX3BpbnNbXSA9IHsgREI4NTAwX1BJTl9BSDE2LCBEQjg1MDBfUElOX0FHMTUsCiAJREI4
NTAwX1BJTl9BSDE1IH07CiBzdGF0aWMgY29uc3QgdW5zaWduZWQgbWMxX2FfMl9waW5zW10gPSB7
IERCODUwMF9QSU5fQUgxNiwgREI4NTAwX1BJTl9BSjE1LAogCURCODUwMF9QSU5fQUcxNCwgREI4
NTAwX1BJTl9BRjEzLCBEQjg1MDBfUElOX0FHMTMsIERCODUwMF9QSU5fQUgxNSB9Owotc3RhdGlj
IGNvbnN0IHVuc2lnbmVkIG1jMWRpcl9hXzFfcGluc1tdID0geyBEQjg1MDBfUElOX0FIMTMsIERC
ODUwMF9QSU5fQUcxMiwKLQlEQjg1MDBfUElOX0FIMTIsIERCODUwMF9QSU5fQUgxMSB9Owogc3Rh
dGljIGNvbnN0IHVuc2lnbmVkIGhzaXJfYV8xX3BpbnNbXSA9IHsgREI4NTAwX1BJTl9BRzEwLCBE
Qjg1MDBfUElOX0FIMTAsCiAJREI4NTAwX1BJTl9BSjExIH07CiBzdGF0aWMgY29uc3QgdW5zaWdu
ZWQgaHNpdF9hXzFfcGluc1tdID0geyBEQjg1MDBfUElOX0FKOSwgREI4NTAwX1BJTl9BSDksCkBA
IC01NjcsNyArNTYxLDYgQEAgc3RhdGljIGNvbnN0IHVuc2lnbmVkIHUwX2NfMV9waW5zW10gPSB7
IERCODUwMF9QSU5fQUYyLCBEQjg1MDBfUElOX0FFMSwKIAkJCQkJREI4NTAwX1BJTl9BRTIsIERC
ODUwMF9QSU5fQUcyIH07CiBzdGF0aWMgY29uc3QgdW5zaWduZWQgaXBncGlvNF9jXzFfcGluc1td
ID0geyBEQjg1MDBfUElOX0YzIH07CiBzdGF0aWMgY29uc3QgdW5zaWduZWQgaXBncGlvNV9jXzFf
cGluc1tdID0geyBEQjg1MDBfUElOX0YxIH07Ci1zdGF0aWMgY29uc3QgdW5zaWduZWQgaXBncGlv
Nl9jXzJfcGluc1tdID0geyBEQjg1MDBfUElOX0czIH07CiBzdGF0aWMgY29uc3QgdW5zaWduZWQg
aXBncGlvN19jXzFfcGluc1tdID0geyBEQjg1MDBfUElOX0cyIH07CiBzdGF0aWMgY29uc3QgdW5z
aWduZWQgc21jbGVhbGVfY18xX3BpbnNbXSA9IHsgREI4NTAwX1BJTl9FMSwgREI4NTAwX1BJTl9F
MiB9Owogc3RhdGljIGNvbnN0IHVuc2lnbmVkIHN0bWFwZV9jXzFfcGluc1tdID0geyBEQjg1MDBf
UElOX0c1LCBEQjg1MDBfUElOX0c0LApAQCAtODk2LDcgKzg4OSw2IEBAIERCODUwMF9GVU5DX0dS
T1VQUyhpMmMzLCAiaTJjM19jXzEiLCAiaTJjM19jXzIiKTsKIERCODUwMF9GVU5DX0dST1VQUyhz
cGkwLCAic3BpMF9jXzEiKTsKIERCODUwMF9GVU5DX0dST1VQUyhzcGkyLCAic3BpMl9vYzFfMSIs
ICJzcGkyX29jMV8yIik7CiBEQjg1MDBfRlVOQ19HUk9VUFMocmVtYXAsICJyZW1hcDBfb2MxXzEi
LCAicmVtYXAxX29jMV8xIik7Ci1EQjg1MDBfRlVOQ19HUk9VUFMoc2JhZywgInNiYWdfb2MyXzEi
LCAic2JhZ19vYzRfMSIpOwogREI4NTAwX0ZVTkNfR1JPVVBTKHB0bSwgInB0bWE5X29jMV8xIiwg
InB0bWE5X29jMl8xIik7CiBEQjg1MDBfRlVOQ19HUk9VUFMocmYsICJyZl9vYzFfMSIsICJyZl9v
YzFfMiIpOwogREI4NTAwX0ZVTkNfR1JPVVBTKGh4LCAiaHhjbGtfb2MxXzEiLCAiaHhncGlvX29j
MV8xIik7Ci0tIAoyLjIxLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
