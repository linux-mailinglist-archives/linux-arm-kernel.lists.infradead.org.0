Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE9D7D788
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYC27F0+oGajeERIh+MpT3xCeRcRQ/LS1PnIfiFhiw4=; b=XBKH7yrzu/lKC4
	pOSEj26DGJUbT2RERRtcOd4Bhe4LHiy5QCh6CwoMD8FDmgc50lYsaQ+PI1nNDYQgs+FgaL5AHKO8j
	pU4mnEC5jcYK7Lx4Uiy88SAguteNBW5lchsh6ladx04aEtwK5OBCIPt1cJwUdjjDdKfpivFpcdyAO
	qjwH7e5cPoG8bOjw62ajvtY6eVvAee8Qg5Put3QbTH8ESz9ZaftHKKf9f7j2XoCqDgQJmN6CK6gC5
	fyE4hTZjjoI3htDZEEZuxSjUPhHtqUiWU9n/VkGHqPcUICiS3HSWKQR6GmoGiB29eNlT6IehcGuCt
	bqv10XJ4dPL/ZLWgDYeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Pv-0002hh-Ci; Thu, 01 Aug 2019 08:26:31 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Kd-00036P-Jn
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:05 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id E9E22FB02;
 Thu,  1 Aug 2019 10:21:01 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7cL5DYKqFopF; Thu,  1 Aug 2019 10:20:59 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 4B5E246DE9; Thu,  1 Aug 2019 10:20:59 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v2 1/1] dt-bindings: reset: Fix typo in imx8mq resets
Date: Thu,  1 Aug 2019 10:20:59 +0200
Message-Id: <660b4fb6ab9acec05aa5fde323d878e04e3d1f64.1564647612.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1564647612.git.agx@sigxcpu.org>
References: <cover.1564647612.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012103_846460_9BD14EA3 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

U29tZSBvZiB0aGUgbWlwaSBkc2kgcmVzZXRzIHdlcmUgY2FsbGVkCgogIElNWDhNUV9SRVNFVF9N
SVBJX0RJU19fCgppbnN0ZWFkIG9mCgogIElNWDhNUV9SRVNFVF9NSVBJX0RTSV9fCgpTaW5jZSB0
aGV5J3JlIERTSSByZWxhdGVkIHRoaXMgbG9va3MgbGlrZSBhIHR5cG8uIFRoaXMgZml4ZXMgdGhl
Cm9ubHkgaW4gdHJlZSB1c2VyIGFzIHdlbGwgdG8gbm90IGJyZWFrIGJpc2VjdGluZy4KClNpZ25l
ZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Ci0tLQogZHJpdmVycy9y
ZXNldC9yZXNldC1pbXg3LmMgICAgICAgICAgICAgICB8IDEyICsrKysrKy0tLS0tLQogaW5jbHVk
ZS9kdC1iaW5kaW5ncy9yZXNldC9pbXg4bXEtcmVzZXQuaCB8ICA2ICsrKy0tLQogMiBmaWxlcyBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9yZXNldC9yZXNldC1pbXg3LmMgYi9kcml2ZXJzL3Jlc2V0L3Jlc2V0LWlteDcuYwppbmRl
eCAzZWNkNzcwZjkxMGIuLjE0NDNhNTVhMGMyOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9yZXNldC9y
ZXNldC1pbXg3LmMKKysrIGIvZHJpdmVycy9yZXNldC9yZXNldC1pbXg3LmMKQEAgLTE2OSw5ICsx
NjksOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlteDdfc3JjX3NpZ25hbCBpbXg4bXFfc3JjX3Np
Z25hbHNbSU1YOE1RX1JFU0VUX05VTV0gPSB7CiAJW0lNWDhNUV9SRVNFVF9PVEcyX1BIWV9SRVNF
VF0JCT0geyBTUkNfVVNCT1BIWTJfUkNSLCBCSVQoMCkgfSwKIAlbSU1YOE1RX1JFU0VUX01JUElf
RFNJX1JFU0VUX0JZVEVfTl0JPSB7IFNSQ19NSVBJUEhZX1JDUiwgQklUKDEpIH0sCiAJW0lNWDhN
UV9SRVNFVF9NSVBJX0RTSV9SRVNFVF9OXQkJPSB7IFNSQ19NSVBJUEhZX1JDUiwgQklUKDIpIH0s
Ci0JW0lNWDhNUV9SRVNFVF9NSVBJX0RJU19EUElfUkVTRVRfTl0JPSB7IFNSQ19NSVBJUEhZX1JD
UiwgQklUKDMpIH0sCi0JW0lNWDhNUV9SRVNFVF9NSVBJX0RJU19FU0NfUkVTRVRfTl0JPSB7IFNS
Q19NSVBJUEhZX1JDUiwgQklUKDQpIH0sCi0JW0lNWDhNUV9SRVNFVF9NSVBJX0RJU19QQ0xLX1JF
U0VUX05dCT0geyBTUkNfTUlQSVBIWV9SQ1IsIEJJVCg1KSB9LAorCVtJTVg4TVFfUkVTRVRfTUlQ
SV9EU0lfRFBJX1JFU0VUX05dCT0geyBTUkNfTUlQSVBIWV9SQ1IsIEJJVCgzKSB9LAorCVtJTVg4
TVFfUkVTRVRfTUlQSV9EU0lfRVNDX1JFU0VUX05dCT0geyBTUkNfTUlQSVBIWV9SQ1IsIEJJVCg0
KSB9LAorCVtJTVg4TVFfUkVTRVRfTUlQSV9EU0lfUENMS19SRVNFVF9OXQk9IHsgU1JDX01JUElQ
SFlfUkNSLCBCSVQoNSkgfSwKIAlbSU1YOE1RX1JFU0VUX1BDSUVQSFldCQkJPSB7IFNSQ19QQ0lF
UEhZX1JDUiwKIAkJCQkJCSAgICBCSVQoMikgfCBCSVQoMSkgfSwKIAlbSU1YOE1RX1JFU0VUX1BD
SUVQSFlfUEVSU1RdCQk9IHsgU1JDX1BDSUVQSFlfUkNSLCBCSVQoMykgfSwKQEAgLTIyMCw5ICsy
MjAsOSBAQCBzdGF0aWMgaW50IGlteDhtcV9yZXNldF9zZXQoc3RydWN0IHJlc2V0X2NvbnRyb2xs
ZXJfZGV2ICpyY2RldiwKIAogCWNhc2UgSU1YOE1RX1JFU0VUX1BDSUVfQ1RSTF9BUFBTX0VOOgog
CWNhc2UgSU1YOE1RX1JFU0VUX1BDSUUyX0NUUkxfQVBQU19FTjoJLyogZmFsbHRocm91Z2ggKi8K
LQljYXNlIElNWDhNUV9SRVNFVF9NSVBJX0RJU19QQ0xLX1JFU0VUX046CS8qIGZhbGx0aHJvdWdo
ICovCi0JY2FzZSBJTVg4TVFfUkVTRVRfTUlQSV9ESVNfRVNDX1JFU0VUX046CS8qIGZhbGx0aHJv
dWdoICovCi0JY2FzZSBJTVg4TVFfUkVTRVRfTUlQSV9ESVNfRFBJX1JFU0VUX046CS8qIGZhbGx0
aHJvdWdoICovCisJY2FzZSBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfUENMS19SRVNFVF9OOgkvKiBm
YWxsdGhyb3VnaCAqLworCWNhc2UgSU1YOE1RX1JFU0VUX01JUElfRFNJX0VTQ19SRVNFVF9OOgkv
KiBmYWxsdGhyb3VnaCAqLworCWNhc2UgSU1YOE1RX1JFU0VUX01JUElfRFNJX0RQSV9SRVNFVF9O
OgkvKiBmYWxsdGhyb3VnaCAqLwogCWNhc2UgSU1YOE1RX1JFU0VUX01JUElfRFNJX1JFU0VUX046
CS8qIGZhbGx0aHJvdWdoICovCiAJY2FzZSBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfUkVTRVRfQllU
RV9OOgkvKiBmYWxsdGhyb3VnaCAqLwogCQl2YWx1ZSA9IGFzc2VydCA/IDAgOiBiaXQ7CmRpZmYg
LS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L2lteDhtcS1yZXNldC5oIGIvaW5jbHVk
ZS9kdC1iaW5kaW5ncy9yZXNldC9pbXg4bXEtcmVzZXQuaAppbmRleCA1N2M1OTI0OThhYTAuLmJm
YTQxYjBlMjRmNiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9pbXg4bXEt
cmVzZXQuaAorKysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L2lteDhtcS1yZXNldC5oCkBA
IC0zMSw5ICszMSw5IEBACiAjZGVmaW5lIElNWDhNUV9SRVNFVF9PVEcyX1BIWV9SRVNFVAkJMjAK
ICNkZWZpbmUgSU1YOE1RX1JFU0VUX01JUElfRFNJX1JFU0VUX0JZVEVfTgkyMQogI2RlZmluZSBJ
TVg4TVFfUkVTRVRfTUlQSV9EU0lfUkVTRVRfTgkJMjIKLSNkZWZpbmUgSU1YOE1RX1JFU0VUX01J
UElfRElTX0RQSV9SRVNFVF9OCTIzCi0jZGVmaW5lIElNWDhNUV9SRVNFVF9NSVBJX0RJU19FU0Nf
UkVTRVRfTgkyNAotI2RlZmluZSBJTVg4TVFfUkVTRVRfTUlQSV9ESVNfUENMS19SRVNFVF9OCTI1
CisjZGVmaW5lIElNWDhNUV9SRVNFVF9NSVBJX0RTSV9EUElfUkVTRVRfTgkyMworI2RlZmluZSBJ
TVg4TVFfUkVTRVRfTUlQSV9EU0lfRVNDX1JFU0VUX04JMjQKKyNkZWZpbmUgSU1YOE1RX1JFU0VU
X01JUElfRFNJX1BDTEtfUkVTRVRfTgkyNQogI2RlZmluZSBJTVg4TVFfUkVTRVRfUENJRVBIWQkJ
CTI2CiAjZGVmaW5lIElNWDhNUV9SRVNFVF9QQ0lFUEhZX1BFUlNUCQkyNwogI2RlZmluZSBJTVg4
TVFfUkVTRVRfUENJRV9DVFJMX0FQUFNfRU4JCTI4Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
