Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D6737842
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:39:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ilowVE+kSJWCmOhvTQlONLC+KWG1FbGxMBY8skonL98=; b=JMJYPYL0CUeNRA
	c5sg8lshHIDLB5IHl1J7XNJaJ8sYfUkPvSq4HOk78crKsU9KSoWyAKoklHkKMZuew+Z2beJTDZ+ud
	fKHRVDbZA52km2kjd+ZIYhqwlaa+yUcWJIc5zHsj67RgZqX+ohfYVmyGC8Egl//kYWdGhiOFosUwV
	3XnY4xh5ZGJyNvKbDRYrttpKfwSjOajjKh8G2k0F05xyuE11vOaxlOxmUbw8SNrky31YgRbV+zheH
	J7ycbQy3CB4H78NBDYXRQ3cMaAJ5h5xITnmS1V2+DS4KE0X7pIaT7zFnv/D/ITKiQa7x4bxN8fx2+
	ozgmvLiXUR8Gc1Nz7pkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuUF-0007Gl-W0; Thu, 06 Jun 2019 15:39:32 +0000
Received: from 7.mo179.mail-out.ovh.net ([46.105.61.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuU7-0007FZ-7W
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:39:25 +0000
Received: from player697.ha.ovh.net (unknown [10.109.143.238])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id D0E0D130A94
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  6 Jun 2019 17:39:19 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player697.ha.ovh.net (Postfix) with ESMTPSA id D6299697A73E;
 Thu,  6 Jun 2019 15:38:59 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH v2 2/3] media: imx7-media-csi: add i.MX6UL support
Date: Thu,  6 Jun 2019 17:38:24 +0200
Message-Id: <20190606153825.8183-2-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
References: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3721943620884780228
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrudeggedgledvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_083923_601920_B9503316 
X-CRM114-Status: GOOD (  19.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.61.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rui Miguel Silva <rmfrfs@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aS5NWDcgYW5kIGkuTVg2VUwvTCBoYXZlIHRoZSBzYW1lIENTSSBjb250cm9sbGVyLiBTbyBhZGQg
aS5NWDZVTC9MIHN1cHBvcnQKdG8gaW14Ny1tZWRpYS1jc2kgZHJpdmVyLgoKU2lnbmVkLW9mZi1i
eTogU8OpYmFzdGllbiBTenltYW5za2kgPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29t
PgotLS0KCkNoYW5nZXMgZm9yIHYyOgogLSByZWJhc2Ugb24gdG9wIG9mIGxpbnV4dHYvbWFzdGVy
CiAtIG1lbnRpb24gaS5NWDZVTC9MIGluIGhlYWRlciBhbmQgS2NvbmZpZyBoZWxwIHRleHQKIC0g
cmVuYW1lIGNzaV90eXBlIHRvIGNzaV9zb2NfaWQKCiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14
L0tjb25maWcgICAgICAgICAgfCAgNCArLQogZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9pbXg3
LW1lZGlhLWNzaS5jIHwgNjIgKysrKysrKysrKysrKysrKy0tLS0tLQogMiBmaWxlcyBjaGFuZ2Vk
LCA0OSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaW14L0tjb25maWcgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L0tj
b25maWcKaW5kZXggYWQzZDdkZjZiYjNjLi44YjZkYzQyYzM5ZTAgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9pbXgvS2NvbmZpZworKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aW14L0tjb25maWcKQEAgLTIyLDExICsyMiwxMSBAQCBjb25maWcgVklERU9fSU1YX0NTSQogCSAg
QSB2aWRlbzRsaW51eCBjYW1lcmEgc2Vuc29yIGludGVyZmFjZSBkcml2ZXIgZm9yIGkuTVg1LzYu
CiAKIGNvbmZpZyBWSURFT19JTVg3X0NTSQotCXRyaXN0YXRlICJpLk1YNyBDYW1lcmEgU2Vuc29y
IEludGVyZmFjZSBkcml2ZXIiCisJdHJpc3RhdGUgImkuTVg2VUwvTCAvIGkuTVg3IENhbWVyYSBT
ZW5zb3IgSW50ZXJmYWNlIGRyaXZlciIKIAlkZXBlbmRzIG9uIFZJREVPX0lNWF9NRURJQSAmJiBW
SURFT19ERVYgJiYgSTJDCiAJZGVmYXVsdCB5CiAJaGVscAogCSAgRW5hYmxlIHN1cHBvcnQgZm9y
IHZpZGVvNGxpbnV4IGNhbWVyYSBzZW5zb3IgaW50ZXJmYWNlIGRyaXZlciBmb3IKLQkgIGkuTVg3
LgorCSAgaS5NWDZVTC9MIG9yIGkuTVg3LgogZW5kbWVudQogZW5kaWYKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14Ny1tZWRpYS1jc2kuYyBiL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9pbXgvaW14Ny1tZWRpYS1jc2kuYwppbmRleCA5MTAxNTY2ZjNmNjcuLjkwMmJkY2U1
OTRjZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9pbXg3LW1lZGlhLWNz
aS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14Ny1tZWRpYS1jc2kuYwpAQCAt
MSw2ICsxLDYgQEAKIC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCiAvKgotICog
VjRMMiBDYXB0dXJlIENTSSBTdWJkZXYgZm9yIEZyZWVzY2FsZSBpLk1YNyBTT0MKKyAqIFY0TDIg
Q2FwdHVyZSBDU0kgU3ViZGV2IGZvciBGcmVlc2NhbGUgaS5NWDZVTC9MIC8gaS5NWDcgU09DCiAg
KgogICogQ29weXJpZ2h0IChjKSAyMDE5IExpbmFybyBMdGQKICAqCkBAIC0xNTIsNiArMTUyLDEx
IEBACiAjZGVmaW5lIENTSV9DU0lDUjE4CQkweDQ4CiAjZGVmaW5lIENTSV9DU0lDUjE5CQkweDRj
CiAKK2VudW0gY3NpX3NvY19pZCB7CisJSU1YNywKKwlJTVg2VUwKK307CisKIHN0cnVjdCBpbXg3
X2NzaSB7CiAJc3RydWN0IGRldmljZSAqZGV2OwogCXN0cnVjdCB2NGwyX3N1YmRldiBzZDsKQEAg
LTE5MSw2ICsxOTYsNyBAQCBzdHJ1Y3QgaW14N19jc2kgewogCWJvb2wgaXNfaW5pdDsKIAlib29s
IGlzX3N0cmVhbWluZzsKIAlib29sIGlzX2NzaTI7CisJZW51bSBjc2lfc29jX2lkIHNvY19pZDsK
IAogCXN0cnVjdCBjb21wbGV0aW9uIGxhc3RfZW9mX2NvbXBsZXRpb247CiB9OwpAQCAtNTQ4LDYg
KzU1NCwxNCBAQCBzdGF0aWMgaW50IGlteDdfY3NpX3BhZF9saW5rX3ZhbGlkYXRlKHN0cnVjdCB2
NGwyX3N1YmRldiAqc2QsCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAorCWlmIChjc2ktPnNv
Y19pZCA9PSBJTVg2VUwpIHsKKwkJbXV0ZXhfbG9jaygmY3NpLT5sb2NrKTsKKwkJY3NpLT5pc19j
c2kyID0gZmFsc2U7CisJCW11dGV4X3VubG9jaygmY3NpLT5sb2NrKTsKKworCQlyZXR1cm4gMDsK
Kwl9CisKIAlyZXQgPSBpbXg3X2NzaV9nZXRfdXBzdHJlYW1fZW5kcG9pbnQoY3NpLCAmdXBzdHJl
YW1fZXAsIHRydWUpOwogCWlmIChyZXQpIHsKIAkJdjRsMl9lcnIoJmNzaS0+c2QsICJmYWlsZWQg
dG8gZmluZCB1cHN0cmVhbSBlbmRwb2ludFxuIik7CkBAIC03NTcsNiArNzcxLDcgQEAgc3RhdGlj
IGludCBpbXg3X2NzaV9jb25maWd1cmUoc3RydWN0IGlteDdfY3NpICpjc2kpCiAJc3RydWN0IHY0
bDJfcGl4X2Zvcm1hdCAqb3V0X3BpeCA9ICZ2ZGV2LT5mbXQuZm10LnBpeDsKIAlfX3UzMiBpbl9j
b2RlID0gY3NpLT5mb3JtYXRfbWJ1c1tJTVg3X0NTSV9QQURfU0lOS10uY29kZTsKIAl1MzIgY3Ix
LCBjcjE4OworCWludCB3aWR0aCA9IG91dF9waXgtPndpZHRoOwogCiAJaWYgKG91dF9waXgtPmZp
ZWxkID09IFY0TDJfRklFTERfSU5URVJMQUNFRCkgewogCQlpbXg3X2NzaV9kZWludGVybGFjZV9l
bmFibGUoY3NpLCB0cnVlKTsKQEAgLTc2NiwxNSArNzgxLDI3IEBAIHN0YXRpYyBpbnQgaW14N19j
c2lfY29uZmlndXJlKHN0cnVjdCBpbXg3X2NzaSAqY3NpKQogCQlpbXg3X2NzaV9idWZfc3RyaWRl
X3NldChjc2ksIDApOwogCX0KIAotCWlteDdfY3NpX3NldF9pbWFncGFyYShjc2ksIG91dF9waXgt
PndpZHRoLCBvdXRfcGl4LT5oZWlnaHQpOworCWNyMTggPSBpbXg3X2NzaV9yZWdfcmVhZChjc2ks
IENTSV9DU0lDUjE4KTsKKworCWlmICghY3NpLT5pc19jc2kyKSB7CisJCWlmIChvdXRfcGl4LT5w
aXhlbGZvcm1hdCA9PSBWNEwyX1BJWF9GTVRfVVlWWSB8fAorCQkgICAgb3V0X3BpeC0+cGl4ZWxm
b3JtYXQgPT0gVjRMMl9QSVhfRk1UX1lVWVYpCisJCQl3aWR0aCAqPSAyOworCisJCWlteDdfY3Np
X3NldF9pbWFncGFyYShjc2ksIHdpZHRoLCBvdXRfcGl4LT5oZWlnaHQpOworCisJCWNyMTggfD0g
KEJJVF9CQVNFQUREUl9TV0lUQ0hfRU4gfCBCSVRfQkFTRUFERFJfU1dJVENIX1NFTCB8CisJCQlC
SVRfQkFTRUFERFJfQ0hHX0VSUl9FTik7CisJCWlteDdfY3NpX3JlZ193cml0ZShjc2ksIGNyMTgs
IENTSV9DU0lDUjE4KTsKIAotCWlmICghY3NpLT5pc19jc2kyKQogCQlyZXR1cm4gMDsKKwl9CisK
KwlpbXg3X2NzaV9zZXRfaW1hZ3BhcmEoY3NpLCB3aWR0aCwgb3V0X3BpeC0+aGVpZ2h0KTsKIAog
CWNyMSA9IGlteDdfY3NpX3JlZ19yZWFkKGNzaSwgQ1NJX0NTSUNSMSk7CiAJY3IxICY9IH5CSVRf
R0NMS19NT0RFOwogCi0JY3IxOCA9IGlteDdfY3NpX3JlZ19yZWFkKGNzaSwgQ1NJX0NTSUNSMTgp
OwogCWNyMTggJj0gQklUX01JUElfREFUQV9GT1JNQVRfTUFTSzsKIAljcjE4IHw9IEJJVF9EQVRB
X0ZST01fTUlQSTsKIApAQCAtODA5LDExICs4MzYsOSBAQCBzdGF0aWMgdm9pZCBpbXg3X2NzaV9l
bmFibGUoc3RydWN0IGlteDdfY3NpICpjc2kpCiB7CiAJaW14N19jc2lfc3dfcmVzZXQoY3NpKTsK
IAotCWlmIChjc2ktPmlzX2NzaTIpIHsKLQkJaW14N19jc2lfZG1hcmVxX3JmZl9lbmFibGUoY3Np
KTsKLQkJaW14N19jc2lfaHdfZW5hYmxlX2lycShjc2kpOwotCQlpbXg3X2NzaV9od19lbmFibGUo
Y3NpKTsKLQl9CisJaW14N19jc2lfZG1hcmVxX3JmZl9lbmFibGUoY3NpKTsKKwlpbXg3X2NzaV9o
d19lbmFibGVfaXJxKGNzaSk7CisJaW14N19jc2lfaHdfZW5hYmxlKGNzaSk7CiB9CiAKIHN0YXRp
YyB2b2lkIGlteDdfY3NpX2Rpc2FibGUoc3RydWN0IGlteDdfY3NpICpjc2kpCkBAIC0xMTY2LDE5
ICsxMTkxLDMyIEBAIHN0YXRpYyBpbnQgaW14N19jc2lfcGFyc2VfZW5kcG9pbnQoc3RydWN0IGRl
dmljZSAqZGV2LAogCXJldHVybiBmd25vZGVfZGV2aWNlX2lzX2F2YWlsYWJsZShhc2QtPm1hdGNo
LmZ3bm9kZSkgPyAwIDogLUVJTlZBTDsKIH0KIAorc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZp
Y2VfaWQgaW14N19jc2lfb2ZfbWF0Y2hbXSA9IHsKKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg3
LWNzaSIsIC5kYXRhID0gKHZvaWQgKilJTVg3IH0sCisJeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14
NnVsLWNzaSIsIC5kYXRhID0gKHZvaWQgKilJTVg2VUwgfSwKKwl7IH0sCit9OworTU9EVUxFX0RF
VklDRV9UQUJMRShvZiwgaW14N19jc2lfb2ZfbWF0Y2gpOworCiBzdGF0aWMgaW50IGlteDdfY3Np
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IGRldmljZSAq
ZGV2ID0gJnBkZXYtPmRldjsKIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBkZXYtPm9mX25v
ZGU7CiAJc3RydWN0IGlteF9tZWRpYV9kZXYgKmlteG1kOwogCXN0cnVjdCBpbXg3X2NzaSAqY3Np
OworCWNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgKm9mX2lkOwogCWludCByZXQ7CiAKKwlvZl9p
ZCA9IG9mX21hdGNoX25vZGUoaW14N19jc2lfb2ZfbWF0Y2gsIG5vZGUpOworCWlmICghb2ZfaWQp
CisJCXJldHVybiAtRU5PREVWOworCiAJY3NpID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNp
emVvZigqY3NpKSwgR0ZQX0tFUk5FTCk7CiAJaWYgKCFjc2kpCiAJCXJldHVybiAtRU5PTUVNOwog
CiAJY3NpLT5kZXYgPSBkZXY7CisJY3NpLT5zb2NfaWQgPSAoZW51bSBjc2lfc29jX2lkKW9mX2lk
LT5kYXRhOwogCiAJY3NpLT5tY2xrID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYsICJtY2xrIik7
CiAJaWYgKElTX0VSUihjc2ktPm1jbGspKSB7CkBAIC0xMjk0LDEyICsxMzMyLDYgQEAgc3RhdGlj
IGludCBpbXg3X2NzaV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1
cm4gMDsKIH0KIAotc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgaW14N19jc2lfb2Zf
bWF0Y2hbXSA9IHsKLQl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg3LWNzaSIgfSwKLQl7IH0sCi19
OwotTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgaW14N19jc2lfb2ZfbWF0Y2gpOwotCiBzdGF0aWMg
c3RydWN0IHBsYXRmb3JtX2RyaXZlciBpbXg3X2NzaV9kcml2ZXIgPSB7CiAJLnByb2JlID0gaW14
N19jc2lfcHJvYmUsCiAJLnJlbW92ZSA9IGlteDdfY3NpX3JlbW92ZSwKLS0gCjIuMTkuMgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
