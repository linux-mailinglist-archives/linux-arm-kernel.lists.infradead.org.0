Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAFEE4713
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAhXqhOqedtaAePnjVX0prjSczj2sGm0IthxHtUEMkk=; b=MThnEDtRMYGhWl
	s2+B9cDtdkU5xCbp4mKvU5J/FGw+casm1LvAaJL9jTI7FaTmtkSXxXiyiGR1PnjariPXj7QBjV8MK
	rSJ20ZIMmY96MeAgrHVRHeS5kC4M2ahFyTkbcRD5n809y2oxsd9zNXkJ1wQnpia/WR6HQfBrvsWly
	dOL3bXVBxzfklD0DjAZTxuclLh5nQNW8pegPtrm5+urBHHfIvGhuSkKw3svmFdZ9s4RsNjFLKojhs
	vTfM0LHNPN2slH+qwzaeIBdw7eF4DdLxA20BAyp0RfZ6ZppkJUQrjtzZjdC45ErOUVk7flnd6KxA/
	iS02OR6tuu+2hen3nqmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvrt-0001Oe-J6; Fri, 25 Oct 2019 09:26:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvrj-0001OV-41
 for linux-arm-kernel@bombadil.infradead.org; Fri, 25 Oct 2019 09:26:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vA8/j2KNofLCK5hqKhmLeFI9DmKuZoPl/+wv7oFLUFY=; b=SRPBpsffwk0jLruBj9TtQHwf+V
 TBNVVgPbuYnxE2tPsO54K338TVGTC6DGJTzAvntfGY8XNLW5ZCcy6l8IC0TYdIVpfkmJJCF2o5pcO
 OQrIBd+VTcUzkVUXIcnKRI71LoGjR1u+zeVRo5+MN5ckVTq7C6rnmD+2KgItvheTshcwrcW4DcZGh
 4dlRXu3BLwPBD0HQz/TZqmkhQSHAO1sJIVuLU7sRjZq2nlyjXdKXAOgE9hBAgQ6KDAk5IHcpoHYyl
 stav0NEycNc4ejHMA9T4A7Sx9sscQGH8TH9NPhuAz1fOHFpP31zrqZ9N0ze+n8Nx4A17b5hQXXkTO
 E/Foj8yQ==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvs8-0001yM-KL
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:27:07 +0000
X-Originating-IP: 92.137.17.54
Received: from localhost (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 2BE3260002;
 Fri, 25 Oct 2019 09:25:54 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] ARM: dts: at91: add smartkiz support and a common
 kizboxmini dtsi file
Date: Fri, 25 Oct 2019 11:25:51 +0200
Message-Id: <20191025092551.25184-2-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025092551.25184-1-kamel.bouhara@bootlin.com>
References: <20191025092551.25184-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_102704_720973_94DE80E3 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mickael GARDET <m.gardet@overkiz.com>, devicetree@vger.kernel.org,
 =?UTF-8?q?K=C3=A9vin=20RAYMOND?= <k.raymond@overkiz.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3BsaXQgdGhlIGV4aXN0aW5nIEtpemJveCBNaW5pIGJvYXJkcyBpbnRvIHRocmVlIGJvYXJkIGNv
bmZpZ3VyYXRpb24sCnRoZSBiYXNlIGJvYXJkLCB0aGUgbW90aGVyIGJvYXJkIGFuZCB0aGUgUmFp
bERJTiBib2FyZC4KQWRkIGEgbmV3IGR0cyBmaWxlIGZvciB0aGUgU21hcnRLaXogYm9hcmQgc3Vw
cG9ydC4KClNpZ25lZC1vZmYtYnk6IEvDqXZpbiBSQVlNT05EIDxrLnJheW1vbmRAb3Zlcmtpei5j
b20+ClNpZ25lZC1vZmYtYnk6IE1pY2thZWwgR0FSREVUIDxtLmdhcmRldEBvdmVya2l6LmNvbT4K
U2lnbmVkLW9mZi1ieTogS2FtZWwgQm91aGFyYSA8a2FtZWwuYm91aGFyYUBib290bGluLmNvbT4K
LS0tCkNoYW5nZXMgaW4gdjIKPT09PT09PT09PT09PQoJLSBSZW5hbWVkIGtpemJveG1pbmkgdG8g
bWFrZSBjbGVhciBpdCBpcyBhIGJvYXJkIHZhcmlhbnQKCS0gTWVyZ2VkIFNtYXJ0a2l6IGR0cyBz
dXBwb3J0IHRoYXQgYWN0dWFsbHkgaW5jbHVkZSB0aGUKCSAga2l6Ym94bWluaSBkdHNpLgoKIGFy
Y2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICB8ICAgNSArLQogYXJj
aC9hcm0vYm9vdC9kdHMvYXQ5MS1raXpib3htaW5pLWJhc2UuZHRzICAgIHwgIDI0ICsrKwogLi4u
b3htaW5pLmR0cyA9PiBhdDkxLWtpemJveG1pbmktY29tbW9uLmR0c2l9IHwgMTYzICsrKysrKysr
Ky0tLS0tLS0tLQogYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1raXpib3htaW5pLW1iLmR0cyAgICAg
IHwgIDI2ICsrKwogYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1raXpib3htaW5pLXJkLmR0cyAgICAg
IHwgIDQ5ICsrKysrKwogYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1zbWFydGtpei5kdHMgICAgICAg
ICAgIHwgMTA5ICsrKysrKysrKysrKwogNiBmaWxlcyBjaGFuZ2VkLCAyOTMgaW5zZXJ0aW9ucygr
KSwgODMgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMv
YXQ5MS1raXpib3htaW5pLWJhc2UuZHRzCiByZW5hbWUgYXJjaC9hcm0vYm9vdC9kdHMve2F0OTEt
a2l6Ym94bWluaS5kdHMgPT4gYXQ5MS1raXpib3htaW5pLWNvbW1vbi5kdHNpfSAoNTElKQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL2F0OTEta2l6Ym94bWluaS1tYi5kdHMK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9hdDkxLWtpemJveG1pbmktcmQu
ZHRzCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1zbWFydGtpei5k
dHMKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZSBiL2FyY2gvYXJtL2Jv
b3QvZHRzL01ha2VmaWxlCmluZGV4IGM5NzZiNzJhNGM5NC4uN2YzNGU2NjhlZDE5IDEwMDY0NAot
LS0gYS9hcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZQorKysgYi9hcmNoL2FybS9ib290L2R0cy9N
YWtlZmlsZQpAQCAtMzcsNyArMzcsMTAgQEAgZHRiLSQoQ09ORklHX1NPQ19BVDkxU0FNOSkgKz0g
XAogCWF0OTEtYXJpYWcyNS5kdGIgXAogCWF0OTEtYXJpZXR0YWcyNS5kdGIgXAogCWF0OTEtY29z
aW5vX21lZ2EyNTYwLmR0YiBcCi0JYXQ5MS1raXpib3htaW5pLmR0YiBcCisJYXQ5MS1raXpib3ht
aW5pLWJhc2UuZHRiIFwKKwlhdDkxLWtpemJveG1pbmktbWIuZHRiIFwKKwlhdDkxLWtpemJveG1p
bmktcmQuZHRiIFwKKwlhdDkxLXNtYXJ0a2l6LmR0YiBcCiAJYXQ5MS13YjQ1bi5kdGIgXAogCWF0
OTFzYW05ZzE1ZWsuZHRiIFwKIAlhdDkxc2FtOWcyNWVrLmR0YiBcCmRpZmYgLS1naXQgYS9hcmNo
L2FybS9ib290L2R0cy9hdDkxLWtpemJveG1pbmktYmFzZS5kdHMgYi9hcmNoL2FybS9ib290L2R0
cy9hdDkxLWtpemJveG1pbmktYmFzZS5kdHMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMDAwMDAwLi44MWMyOWNhNWNjMWIKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2FybS9ib290
L2R0cy9hdDkxLWtpemJveG1pbmktYmFzZS5kdHMKQEAgLTAsMCArMSwyNCBAQAorLy8gU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIKKy8qCisgKiBhdDkxLWtpemJveG1p
bmktYmFzZS5kdHMgLSBEZXZpY2UgVHJlZSBmaWxlIGZvciBPdmVya2l6IEtpemJveCBtaW5pCisg
KiBiYXNlIGJvYXJkCisgKgorICogQ29weXJpZ2h0IChDKSAyMDE1IE92ZXJraXogU0FTCisgKiAg
IEF1dGhvcjogQW50b2luZSBBdWJlcnQgPGEuYXViZXJ0QG92ZXJraXouY29tPgorICogICAgICAg
ICAgIEvDqXZpbiBSYXltb25kIDxrLnJheW1vbmRAb3Zlcmtpei5jb20+CisgKi8KKy9kdHMtdjEv
OworI2luY2x1ZGUgImF0OTEta2l6Ym94bWluaS1jb21tb24uZHRzaSIKKworLyB7CisJbW9kZWwg
PSAiT3ZlcmtpeiBLaXpib3ggTWluaSI7CisJY29tcGF0aWJsZSA9ICJvdmVya2l6LGtpemJveG1p
bmktYmFzZSIsICJhdG1lbCxhdDkxc2FtOWcyNSIsCisJCSAgICAgImF0bWVsLGF0OTFzYW05eDUi
LCAiYXRtZWwsYXQ5MXNhbTkiOworfTsKKworJnBpbmN0cmxfdXNhcnQwIHsKKwlhdG1lbCxwaW5z
ID0KKwkJPEFUOTFfUElPQSAwIEFUOTFfUEVSSVBIX0EgQVQ5MV9QSU5DVFJMX1BVTExfVVAKKwkJ
IEFUOTFfUElPQSAxIEFUOTFfUEVSSVBIX0EgQVQ5MV9QSU5DVFJMX05PTkUKKwkJIEFUOTFfUElP
QSAyIEFUOTFfUEVSSVBIX0dQSU8gQVQ5MV9QSU5DVFJMX01VTFRJX0RSSVZFPjsKK307CmRpZmYg
LS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9hdDkxLWtpemJveG1pbmkuZHRzIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvYXQ5MS1raXpib3htaW5pLWNvbW1vbi5kdHNpCnNpbWlsYXJpdHkgaW5kZXggNTEl
CnJlbmFtZSBmcm9tIGFyY2gvYXJtL2Jvb3QvZHRzL2F0OTEta2l6Ym94bWluaS5kdHMKcmVuYW1l
IHRvIGFyY2gvYXJtL2Jvb3QvZHRzL2F0OTEta2l6Ym94bWluaS1jb21tb24uZHRzaQppbmRleCBj
YjIyZjVmYjA1NWYuLmZkZGYyNjdiMmQxNyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMv
YXQ5MS1raXpib3htaW5pLmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9hdDkxLWtpemJveG1p
bmktY29tbW9uLmR0c2kKQEAgLTEsMTcgKzEsMTYgQEAKLS8vIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBHUEwtMi4wLW9yLWxhdGVyCisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MAogLyoKICAqIGF0OTEta2l6Ym94bWluaS5kdHMgLSBEZXZpY2UgVHJlZSBmaWxlIGZvciBPdmVy
a2l6IEtpemJveCBtaW5pIGJvYXJkCiAgKgotICogQ29weXJpZ2h0IChDKSAyMDE0IEdhw6tsIFBP
UlRBWSA8Zy5wb3J0YXlAb3Zlcmtpei5jb20+CisgKiBDb3B5cmlnaHQgKEMpIDIwMTQtMjAxOCBP
dmVya2l6IFNBUworICogICBBdXRob3I6IEFudG9pbmUgQXViZXJ0IDxhLmF1YmVydEBvdmVya2l6
LmNvbT4KKyAqICAgICAgICAgICBHYcOrbCBQb3J0YXkgPGcucG9ydGF5QG92ZXJraXouY29tPgor
ICogICAgICAgICAgIEvDqXZpbiBSYXltb25kIDxrLnJheW1vbmRAb3Zlcmtpei5jb20+CisgKiAg
ICAgICAgICAgRG9yaWFuIFJvY2lwb24gPGQucm9jaXBvbkBvdmVya2l6LmNvbT4KICAqLwotL2R0
cy12MS87CiAjaW5jbHVkZSAiYXQ5MXNhbTlnMjUuZHRzaSIKLSNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9wd20vcHdtLmg+CgogLyB7Ci0JbW9kZWwgPSAiT3ZlcmtpeiBLaXpib3ggbWluaSI7Ci0JY29t
cGF0aWJsZSA9ICJvdmVya2l6LGtpemJveG1pbmkiLCAiYXRtZWwsYXQ5MXNhbTlnMjUiLCAiYXRt
ZWwsYXQ5MXNhbTl4NSIsICJhdG1lbCxhdDkxc2FtOSI7Ci0KIAljaG9zZW4gewogCQlib290YXJn
cyA9ICJ1YmkubXRkPXViaSI7CiAJCXN0ZG91dC1wYXRoID0gJmRiZ3U7CkBAIC0yMiwyNCArMjEs
MTYgQEAKIAl9OwoKIAljbG9ja3MgewotCQlzbG93X3h0YWwgewotCQkJY2xvY2stZnJlcXVlbmN5
ID0gPDMyNzY4PjsKLQkJfTsKLQogCQltYWluX3h0YWwgewogCQkJY2xvY2stZnJlcXVlbmN5ID0g
PDEyMDAwMDAwPjsKIAkJfTsKLQl9OwoKLQlhaGIgewotCQluYW5kMDogbmFuZEA0MDAwMDAwMCB7
Ci0JCQluYW5kLWJ1cy13aWR0aCA9IDw4PjsKLQkJCW5hbmQtZWNjLW1vZGUgPSAiaHciOwotCQkJ
YXRtZWwsaGFzLXBtZWNjOwotCQkJYXRtZWwscG1lY2MtY2FwID0gPDQ+OwotCQkJYXRtZWwscG1l
Y2Mtc2VjdG9yLXNpemUgPSA8NTEyPjsKLQkJCW5hbmQtb24tZmxhc2gtYmJ0OwotCQkJc3RhdHVz
ID0gIm9rYXkiOworCQlzbG93X3h0YWwgeworCQkJY2xvY2stZnJlcXVlbmN5ID0gPDMyNzY4PjsK
KwkJfTsKKworCQlhZGNfb3BfY2xrIHsKKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCX07CiAJ
fTsKCkBAIC02MywxNyArNTQsMjUgQEAKIAkJfTsKIAl9OwoKLQlwd21fbGVkcyB7CisJbGVkczog
cHdtX2xlZHMgewogCQljb21wYXRpYmxlID0gInB3bS1sZWRzIjsKCi0JCWdyZWVuIHsKKwkJbGVk
X2JsdWU6IHB3bV9ibHVlIHsKKwkJCWxhYmVsID0gInB3bTpibHVlOnVzZXIiOworCQkJcHdtcyA9
IDwmcHdtMCAyIDEwMDAwMDAwIDA+OworCQkJbWF4LWJyaWdodG5lc3MgPSA8MjU1PjsKKwkJCWxp
bnV4LGRlZmF1bHQtdHJpZ2dlciA9ICJub25lIjsKKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJ
CX07CisKKwkJbGVkX2dyZWVuOiBwd21fZ3JlZW4gewogCQkJbGFiZWwgPSAicHdtOmdyZWVuOnVz
ZXIiOwogCQkJcHdtcyA9IDwmcHdtMCAwIDEwMDAwMDAwIDA+OwogCQkJbWF4LWJyaWdodG5lc3Mg
PSA8MjU1PjsKIAkJCWxpbnV4LGRlZmF1bHQtdHJpZ2dlciA9ICJkZWZhdWx0LW9uIjsKIAkJfTsK
Ci0JCXJlZCB7CisJCWxlZF9yZWQ6IHB3bV9yZWQgewogCQkJbGFiZWwgPSAicHdtOnJlZDp1c2Vy
IjsKIAkJCXB3bXMgPSA8JnB3bTAgMSAxMDAwMDAwMCAwPjsKIAkJCW1heC1icmlnaHRuZXNzID0g
PDI1NT47CkBAIC04Miw1MyArODEsMTIgQEAKIAl9OwogfTsKCi0mZGJndSB7CismdXNhcnQwIHsK
KwlhdG1lbCx1c2UtZG1hLXJ4OworCWF0bWVsLHVzZS1kbWEtdHg7CiAJc3RhdHVzID0gIm9rYXki
OwogfTsKCi0mZWJpIHsKLQlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfZWJpX2FkZHJfbmFuZAotCQkg
ICAgICZwaW5jdHJsX2ViaV9kYXRhXzBfNz47Ci0JcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
LQlzdGF0dXMgPSAib2theSI7Ci0KLQluYW5kLWNvbnRyb2xsZXIgewotCQlwaW5jdHJsLTAgPSA8
JnBpbmN0cmxfbmFuZF9vZV93ZQotCQkJICAgICAmcGluY3RybF9uYW5kX2NzCi0JCQkgICAgICZw
aW5jdHJsX25hbmRfcmI+OwotCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwotCQlzdGF0dXMg
PSAib2theSI7Ci0KLQkJbmFuZEAzIHsKLQkJCXJlZyA9IDwweDMgMHgwIDB4ODAwMDAwPjsKLQkJ
CXJiLWdwaW9zID0gPCZwaW9EIDUgR1BJT19BQ1RJVkVfSElHSD47Ci0JCQljcy1ncGlvcyA9IDwm
cGlvRCA0IEdQSU9fQUNUSVZFX0hJR0g+OwotCQkJbmFuZC1idXMtd2lkdGggPSA8OD47Ci0JCQlu
YW5kLWVjYy1tb2RlID0gImh3IjsKLQkJCW5hbmQtZWNjLXN0cmVuZ3RoID0gPDQ+OwotCQkJbmFu
ZC1lY2Mtc3RlcC1zaXplID0gPDUxMj47Ci0JCQluYW5kLW9uLWZsYXNoLWJidDsKLQkJCWxhYmVs
ID0gImF0bWVsX25hbmQiOwotCi0JCQlwYXJ0aXRpb25zIHsKLQkJCQljb21wYXRpYmxlID0gImZp
eGVkLXBhcnRpdGlvbnMiOwotCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwotCQkJCSNzaXplLWNl
bGxzID0gPDE+OwotCi0JCQkJYm9vdHN0cmFwQDAgewotCQkJCQlsYWJlbCA9ICJib290c3RyYXAi
OwotCQkJCQlyZWcgPSA8MHgwIDB4MjAwMDA+OwotCQkJCX07Ci0KLQkJCQl1YmlAMjAwMDAgewot
CQkJCQlsYWJlbCA9ICJ1YmkiOwotCQkJCQlyZWcgPSA8MHgyMDAwMCAweDdmZTAwMDA+OwotCQkJ
CX07Ci0JCQl9OwotCQl9OwotCX07Ci19OwotCiAmbWFjYjAgewogCXBoeS1tb2RlID0gInJtaWki
OwogCXN0YXR1cyA9ICJva2F5IjsKQEAgLTEzNywyNiArOTUsNzAgQEAKICZwd20wIHsKIAlwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmcGluY3RybF9wd20wX3B3bTBf
MQotCQkgICAgICZwaW5jdHJsX3B3bTBfcHdtMV8xPjsKKwkJICAgICAmcGluY3RybF9wd20wX3B3
bTFfMQorCQkgICAgICZwaW5jdHJsX3B3bTBfcHdtMl8xPjsKIAlzdGF0dXMgPSAib2theSI7CiB9
OwoKLSZ0Y2IwIHsKLQl0aW1lckAwIHsKLQkJY29tcGF0aWJsZSA9ICJhdG1lbCx0Y2ItdGltZXIi
OwotCQlyZWcgPSA8MD47Ci0JfTsKKyZkYmd1IHsKKwlzdGF0dXMgPSAib2theSI7Cit9OwoKLQl0
aW1lckAxIHsKLQkJY29tcGF0aWJsZSA9ICJhdG1lbCx0Y2ItdGltZXIiOwotCQlyZWcgPSA8MT47
Ci0JfTsKKyZ3YXRjaGRvZyB7CisJc3RhdHVzID0gIm9rYXkiOwogfTsKCi0mdXNhcnQwIHsKKyZh
ZGMwIHsKKwlzdGF0dXMgPSAiZGlzYWJsZWQiOworfTsKKworJnJ0YyB7CisJc3RhdHVzID0gImRp
c2FibGVkIjsKK307CisKKyZlYmkgeworCXBpbmN0cmwtMCA9IDwmcGluY3RybF9lYmlfYWRkcl9u
YW5kCisJCQkmcGluY3RybF9lYmlfZGF0YV8wXzc+OworCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVs
dCI7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKCismbmFuZF9jb250cm9sbGVyIHsKKwlzdGF0dXMg
PSAib2theSI7CisJcGluY3RybC0wID0gPCZwaW5jdHJsX25hbmRfb2Vfd2UKKwkJICAgICAmcGlu
Y3RybF9uYW5kX2NzCisJCSAgICAgJnBpbmN0cmxfbmFuZF9yYj47CisJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKKworCW5hbmRAMyB7CisJCXJlZyA9IDwweDMgMHgwIDB4ODAwMDAwPjsKKwkJ
cmItZ3Bpb3MgPSA8JnBpb0QgNSBHUElPX0FDVElWRV9ISUdIPjsKKwkJY3MtZ3Bpb3MgPSA8JnBp
b0QgNCBHUElPX0FDVElWRV9ISUdIPjsKKwkJbmFuZC1idXMtd2lkdGggPSA8OD47CisJCW5hbmQt
ZWNjLW1vZGUgPSAiaHciOworCQluYW5kLWVjYy1zdHJlbmd0aCA9IDw0PjsKKwkJbmFuZC1lY2Mt
c3RlcC1zaXplID0gPDUxMj47CisJCW5hbmQtb24tZmxhc2gtYmJ0OworCQlsYWJlbCA9ICJhdG1l
bF9uYW5kIjsKKworCQlwYXJ0aXRpb25zIHsKKwkJCWNvbXBhdGlibGUgPSAiZml4ZWQtcGFydGl0
aW9ucyI7CisJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCSNzaXplLWNlbGxzID0gPDE+Owor
CisJCQlib290c3RyYXBAMCB7CisJCQkJbGFiZWwgPSAiYm9vdHN0cmFwIjsKKwkJCQlyZWcgPSA8
MHgwIDB4MjAwMDA+OworCQkJfTsKKworCQkJdWJpQDIwMDAwIHsKKwkJCQlsYWJlbCA9ICJ1Ymki
OworCQkJCXJlZyA9IDwweDIwMDAwIDB4N2ZlMDAwMD47CisJCQl9OworCQl9OworCX07Cit9Owor
CiAmdXNiMCB7CiAJbnVtLXBvcnRzID0gPDE+OwogCXN0YXR1cyA9ICJva2F5IjsKQEAgLTE2Niw2
ICsxNjgsMyBAQAogCXN0YXR1cyA9ICJva2F5IjsKIH07CgotJndhdGNoZG9nIHsKLQlzdGF0dXMg
PSAib2theSI7Ci19OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1raXpib3ht
aW5pLW1iLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTEta2l6Ym94bWluaS1tYi5kdHMKbmV3
IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5jMDdkMzA3NmE5YmMKLS0tIC9k
ZXYvbnVsbAorKysgYi9hcmNoL2FybS9ib290L2R0cy9hdDkxLWtpemJveG1pbmktbWIuZHRzCkBA
IC0wLDAgKzEsMjYgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCisvKgor
ICogQ29weXJpZ2h0IChDKSAyMDE1LTIwMTggT3ZlcmtpeiBTQVMKKyAqICAgQXV0aG9yOiBNaWNr
YWVsIEdhcmRldCA8bS5nYXJkZXRAb3Zlcmtpei5jb20+CisgKiAgICAgICAgICAgS8OpdmluIFJh
eW1vbmQgPGsucmF5bW9uZEBvdmVya2l6LmNvbT4KKyAqLworL2R0cy12MS87CisjaW5jbHVkZSAi
YXQ5MS1raXpib3htaW5pLWNvbW1vbi5kdHNpIgorCisvIHsKKwltb2RlbCA9ICJPdmVya2l6IEtp
emJveCBNaW5pIE1vdGhlciBCb2FyZCI7CisJY29tcGF0aWJsZSA9ICJvdmVya2l6LGtpemJveG1p
bmktbWIiLCAiYXRtZWwsYXQ5MXNhbTlnMjUiLAorCQkgICAgICJhdG1lbCxhdDkxc2FtOXg1Iiwg
ImF0bWVsLGF0OTFzYW05IjsKK307CisKKyZ1c2IwIHsKKwludW0tcG9ydHMgPSA8Mj47Cit9Owor
CismcnRjIHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCismbGVkX2JsdWUgeworCXN0YXR1cyA9
ICJva2F5IjsKK307CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9hdDkxLWtpemJveG1p
bmktcmQuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1raXpib3htaW5pLXJkLmR0cwpuZXcg
ZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmFiNTBmNGQyMjM4NwotLS0gL2Rl
di9udWxsCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTEta2l6Ym94bWluaS1yZC5kdHMKQEAg
LTAsMCArMSw0OSBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKKy8qCisg
KiBDb3B5cmlnaHQgKEMpIDIwMTUtMjAxOCBPdmVya2l6IFNBUworICogICBBdXRob3I6IE1pY2th
ZWwgR2FyZGV0IDxtLmdhcmRldEBvdmVya2l6LmNvbT4KKyAqICAgICAgICAgICBLw6l2aW4gUmF5
bW9uZCA8ay5yYXltb25kQG92ZXJraXouY29tPgorICovCisvZHRzLXYxLzsKKyNpbmNsdWRlICJh
dDkxLWtpemJveG1pbmktY29tbW9uLmR0c2kiCisKKy8geworCW1vZGVsID0gIk92ZXJraXogS2l6
Ym94IE1pbmkgUmFpbERJTiI7CisJY29tcGF0aWJsZSA9ICJvdmVya2l6LGtpemJveG1pbmktcmQi
LCAiYXRtZWwsYXQ5MXNhbTlnMjUiLAorCQkgICAgICJhdG1lbCxhdDkxc2FtOXg1IiwgImF0bWVs
LGF0OTFzYW05IjsKKworCWNsb2NrcyB7CisJCWFkY19vcF9jbGsgeworCQkJc3RhdHVzID0gIm9r
YXkiOworCQl9OworCX07Cit9OworCismcGluY3RybCB7CisJYWRjMCB7CisJCXBpbmN0cmxfYWRj
MF9hZDU6IGFkYzBfYWQ1LTAgeworCQkJLyogcHVsbC11cCBkaXNhYmxlICovCisJCQlhdG1lbCxw
aW5zID0gPEFUOTFfUElPQiAxNiBBVDkxX1BFUklQSF9HUElPIEFUOTFfUElOQ1RSTF9OT05FPjsK
KwkJfTsKKwl9OworfTsKKworJnVzYXJ0MCB7CisJc3RhdHVzID0gImRpc2FibGVkIjsKK307CisK
KyZydGMgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKKyZsZWRfYmx1ZSB7CisJc3RhdHVzID0g
Im9rYXkiOworfTsKKworJmFkYzAgeworCWF0bWVsLGFkYy12cmVmID0gPDI1MDA+OworCXBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJcGluY3RybC0wID0gPCZwaW5jdHJsX2FkYzBfYWQ1PjsK
KwlhdG1lbCxhZGMtY2hhbm5lbHMtdXNlZCA9IDwweDAwMjA+OworCXN0YXR1cyA9ICJva2F5IjsK
K307CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9hdDkxLXNtYXJ0a2l6LmR0cyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL2F0OTEtc21hcnRraXouZHRzCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAwMDAwMDAwMDAwMC4uMjM1NDM4NWY5Njg1Ci0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9h
cm0vYm9vdC9kdHMvYXQ5MS1zbWFydGtpei5kdHMKQEAgLTAsMCArMSwxMDkgQEAKKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCisvKgorICogQ29weXJpZ2h0IChDKSAyMDE3LTIw
MTggT3ZlcmtpeiBTQVMKKyAqICAgQXV0aG9yOiBNaWNrYWVsIEdhcmRldCA8bS5nYXJkZXRAb3Zl
cmtpei5jb20+CisgKiAgICAgICAgICAgS8OpdmluIFJheW1vbmQgPGsucmF5bW9uZEBvdmVya2l6
LmNvbT4KKyAqICAgICAgICAgICBEb3JpYW4gUm9jaXBvbiA8ZC5yb2NpcG9uQG92ZXJraXouY29t
PgorICovCisvZHRzLXYxLzsKKyNpbmNsdWRlICJhdDkxLWtpemJveG1pbmlfY29tbW9uLmR0c2ki
CisKKy8geworCW1vZGVsID0gIk92ZXJraXogU21hcnRLaXoiOworCWNvbXBhdGlibGUgPSAib3Zl
cmtpeixzbWFydGtpeiIsICJhdG1lbCxhdDkxc2FtOWcyNSIsCisJCSAgICAgImF0bWVsLGF0OTFz
YW05eDUiLCAiYXRtZWwsYXQ5MXNhbTkiOworCisJY2xvY2tzIHsKKwkJYWRjX29wX2NsayB7CisJ
CQlzdGF0dXMgPSAib2theSI7CisJCX07CisJfTsKKworCWFsaWFzZXMgeworCQlzZXJpYWw1ID0g
JnVhcnQwOworCX07CisKKwlwaW9fa2V5cyB7CisJCWhrX3Jlc2V0IHsKKwkJCWxhYmVsID0gIkhL
X1JFU0VUIjsKKwkJCWdwaW9zID0gPCZwaW9DIDEzIEdQSU9fQUNUSVZFX0hJR0g+OworCQl9Owor
CisJCXBvd2VyX3JmIHsKKwkJCWxhYmVsID0gIlBPV0VSX1JGIjsKKwkJCWdwaW9zID0gPCZwaW9B
IDIwIEdQSU9fQUNUSVZFX0hJR0g+OworCQl9OworCisJCXBvd2VyX3dpZmkgeworCQkJbGFiZWwg
PSAiUE9XRVJfV0lGSSI7CisJCQlncGlvcyA9IDwmcGlvQSAyMSBHUElPX0FDVElWRV9ISUdIPjsK
KwkJfTsKKwl9OworfTsKKworJnBpbmN0cmwgeworCWkyYzEgeworCQlwaW5jdHJsX2kyYzE6IGky
YzEtMCB7CisJCQlhdG1lbCxwaW5zID0KKwkJCQk8QVQ5MV9QSU9DIDAgQVQ5MV9QRVJJUEhfQyBB
VDkxX1BJTkNUUkxfUFVMTF9VUAorCQkJCUFUOTFfUElPQyAxIEFUOTFfUEVSSVBIX0MgQVQ5MV9Q
SU5DVFJMX1BVTExfVVA+OworCQl9OworCX07CisKKwlhZGMwIHsKKwkJcGluY3RybF9hZGMwX2Fk
MDogYWRjMF9hZDAtMCB7CisJCQkvKiBwdWxsLXVwIGRpc2FibGUgKi8KKwkJCWF0bWVsLHBpbnMg
PSA8QVQ5MV9QSU9CIDExIEFUOTFfUEVSSVBIX0dQSU8gQVQ5MV9QSU5DVFJMX05PTkU+OworCQl9
OworCQlwaW5jdHJsX2FkYzBfYWQ1OiBhZGMwX2FkNS0wIHsKKwkJCS8qIHB1bGwtdXAgZGlzYWJs
ZSAqLworCQkJYXRtZWwscGlucyA9IDxBVDkxX1BJT0IgMTYgQVQ5MV9QRVJJUEhfR1BJTyBBVDkx
X1BJTkNUUkxfTk9ORT47CisJCX07CisJCXBpbmN0cmxfYWRjMF9hZDY6IGFkYzBfYWQ2LTAgewor
CQkJLyogcHVsbC11cCBkaXNhYmxlICovCisJCQlhdG1lbCxwaW5zID0gPEFUOTFfUElPQiAxNyBB
VDkxX1BFUklQSF9HUElPIEFUOTFfUElOQ1RSTF9OT05FPjsKKwkJfTsKKwkJcGluY3RybF9hZGMw
X2FkMTE6IGFkYzBfYWQxMS0wIHsKKwkJCS8qIHB1bGwtdXAgZGlzYWJsZSAqLworCQkJYXRtZWws
cGlucyA9IDxBVDkxX1BJT0IgMTAgQVQ5MV9QRVJJUEhfR1BJTyBBVDkxX1BJTkNUUkxfTk9ORT47
CisJCX07CisJfTsKK307CisKKyZpMmMxIHsKKwlkbWFzID0gPDA+LCA8MD47CisJcGluY3RybC0w
ID0gPCZwaW5jdHJsX2kyYzE+OworCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cit9OworCismbWFjYjAg
eworCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cit9OworCismcnRjIHsKKwlzdGF0dXMgPSAib2theSI7
Cit9OworCismbGVkcyB7CisJYmx1ZSB7CisJCXN0YXR1cyA9ICJva2F5IjsKKwl9OworfTsKKwor
JmFkYzAgeworCWF0bWVsLGFkYy12cmVmID0gPDI1MDA+OworCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7CisJcGluY3RybC0wID0gPAorCQkmcGluY3RybF9hZGMwX2FkMAorCQkmcGluY3RybF9h
ZGMwX2FkNQorCQkmcGluY3RybF9hZGMwX2FkNgorCQkmcGluY3RybF9hZGMwX2FkMTEKKwk+Owor
CWF0bWVsLGFkYy1jaGFubmVscy11c2VkID0gPDB4MDg2MT47CisJc3RhdHVzID0gIm9rYXkiOwor
fTsKKworJnVhcnQwIHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCi0tCjIuMjMuMAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
