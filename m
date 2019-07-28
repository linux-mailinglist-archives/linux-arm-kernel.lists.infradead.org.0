Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D51C781AA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 23:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+T97zg7gInmI/+INBln0PjZH/37uRaj9vEVpJowg/s=; b=aSBbtqYPr3u1T6
	CTaK/8qO/zuUzK1bJIukCBu65s+toZtGs+wJRDD9qRmVWiExSIwYLRDJuDv8sLRo/5RjlUfbj822F
	KALDmrwFAP2SSJxu5AgahMmMfxapi7U0ikTflkdyS2D6XyvxGPAzMr99VKxMJXuJPrC++705FbQms
	p/KCudCmdg8A1hnZU05CadUPE/P5ClxwJ0T58aTN/M5uW+jY02mIOP2IyfNFPyjR4//xa7vn0Fltc
	WHqXVX3MKpxJafsNHQ0xG9PCye6wu/wVq3fg9wCz2ak5keDPnQiY21tsdXd01aGUMKnrLGW92i0k/
	MjMLDranyJ4WsKsQZR3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrqM9-0006WH-6B; Sun, 28 Jul 2019 21:05:25 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrqLL-0005LT-1U
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 21:04:37 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id D7B1874155F; Sun, 28 Jul 2019 23:04:33 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH 2/2] ARM: dts: at91: add support for Arietta G25
Date: Sun, 28 Jul 2019 23:04:03 +0200
Message-Id: <20190728210403.2730-3-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190728210403.2730-1-uwe@kleine-koenig.org>
References: <20190728210403.2730-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_140435_229336_803F8C4A 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.130.110.236 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, info@acmesystems.it,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIEFyaWV0dGEgRzI1IGlzIGEgU0JDIHBvd2VyZWQgYnkgYSBBVDkxU0FNRzI1IHJ1bm5pbmcg
YXQgNDAwIE1Iei4KU2VlIGh0dHBzOi8vd3d3LmFjbWVzeXN0ZW1zLml0L2FyaWV0dGEgZm9yIG1v
cmUgZGV0YWlscy4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5l
LWtvZW5pZy5vcmc+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MXNhbTlnMjUtYXJpZXR0YS5k
dHMgfCA4NiArKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDg2IGluc2Vy
dGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOWcy
NS1hcmlldHRhLmR0cwoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05ZzI1
LWFyaWV0dGEuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MXNhbTlnMjUtYXJpZXR0YS5kdHMK
bmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi42YzIwZTAyZjBlYTkKLS0t
IC9kZXYvbnVsbAorKysgYi9hcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOWcyNS1hcmlldHRhLmR0
cwpAQCAtMCwwICsxLDg2IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAor
LyoKKyAqIEFyaWV0dGEgLSBTeXN0ZW0gT24gTW9kdWxlCisgKiBodHRwczovL3d3dy5hY21lc3lz
dGVtcy5pdC9hcmlldHRhCisgKi8KKworL2R0cy12MS87CisjaW5jbHVkZSAiYXQ5MXNhbTlnMjUu
ZHRzaSIKKworLyB7CisJbW9kZWwgPSAiQWNtZSBTeXN0ZW1zIEFyaWV0dGEgRzI1IjsKKwljb21w
YXRpYmxlID0gImFjbWUsYXJpZXR0YWcyNSIsICJhdG1lbCxhdDkxc2FtOXg1IiwgImF0bWVsLGF0
OTFzYW05IjsKKworCWNob3NlbiB7CisJCXN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1MjAwbjgi
OworCX07CisKKwltZW1vcnkgeworCQlyZWcgPSA8MHgyMDAwMDAwMCAweDgwMDAwMDA+OworCX07
CisKKwljbG9ja3MgeworCQlzbG93X3h0YWwgeworCQkJY2xvY2stZnJlcXVlbmN5ID0gPDMyNzY4
PjsKKwkJfTsKKworCQltYWluX3h0YWwgeworCQkJY2xvY2stZnJlcXVlbmN5ID0gPDEyMDAwMDAw
PjsKKwkJfTsKKwl9OworCisJYWhiIHsKKwkJYXBiIHsKKwkJCXJ0Y0BmZmZmZmViMCB7CisJCQkJ
c3RhdHVzID0gIm9rYXkiOworCQkJfTsKKwkJfTsKKwl9OworCisJbGVkcyB7CisJCWNvbXBhdGli
bGUgPSAiZ3Bpby1sZWRzIjsKKworCQlhcmlldHRhX2xlZCB7CisJCQlsYWJlbCA9ICJhcmlldHRh
X2xlZCI7CisJCQlncGlvcyA9IDwmcGlvQiA4IEdQSU9fQUNUSVZFX0hJR0g+OworCQkJbGludXgs
ZGVmYXVsdC10cmlnZ2VyID0gImhlYXJ0YmVhdCI7CisJCX07CisJfTsKK307CisKKyZkYmd1IHsK
KwlzdGF0dXMgPSAib2theSI7Cit9OworCismbW1jMCB7CisJcGluY3RybC0wID0gPAorCQkmcGlu
Y3RybF9tbWMwX3Nsb3QwX2Nsa19jbWRfZGF0MAorCQkmcGluY3RybF9tbWMwX3Nsb3QwX2RhdDFf
Mz47CisJc3RhdHVzID0gIm9rYXkiOworCisJc2xvdEAwIHsKKwkJcmVnID0gPDA+OworCQlidXMt
d2lkdGggPSA8ND47CisJfTsKK307CisKKyZ1c2FydDAgeworCXN0YXR1cyA9Im9rYXkiOworfTsK
KworJnVzYXJ0MSB7CisJc3RhdHVzID0ib2theSI7Cit9OworCismdXNiMCB7CisJc3RhdHVzID0g
Im9rYXkiOworCW51bS1wb3J0cyA9IDwzPjsKK307CisKKyZ1c2IxIHsKKwlzdGF0dXMgPSAib2th
eSI7Cit9OworCismdXNiMiB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKLS0gCjIuMjAuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
