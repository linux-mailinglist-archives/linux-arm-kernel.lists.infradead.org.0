Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135C41E697E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 20:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:References
	:In-Reply-To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2o/czeBBIgHXv261zKdtINlo4WSBsgWiN/lWc6c5GI=; b=WUJKx9kNugOBTl
	xHuWmel3x3X0wagFxyzPZfUAVkU1Wh/oJad6RYMxA2tLHHj+bt/SwDf4zSUpU2J2hmbKrNO6nvVVY
	o1els0oaDu6u1R5sGwezyp6OhxeqhnCE56zCukud+eg0fVVDpCY6dwMjDuCehPgL4I2pW6fpUx6M3
	dy579Usaus5i20EUNwImewFDfljfstN8gzzTM4z2K7kSd24+Q/X5I+FLS1hMW1K4gJZGYNZ65CuHP
	RO8YDFHJ4PdbIcqOXsouimBcbjJ6TnGeBMt9SdH6684OjafbNL/ijr/ofXX+RMJ1qVYUXGiK+J9M7
	ppNuTM09A6EYtox9Cfbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeNOp-00080J-18; Thu, 28 May 2020 18:37:03 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeNNq-0007Hq-E0
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 18:36:05 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49XxGf65JDzBn;
 Thu, 28 May 2020 20:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1590690954; bh=QjngVfF3jGFX7hjsYC0+ki+GV1G3GFLfuWLY+mPbiy8=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=mjOQBr4a0z6i6cI5tKBgwyT5sDSr+t668gVJneiKtoM8WU27fbdcalb43S5QkFoJ5
 idpS8+XgQIXeIK0cX+uBp3z6rbvLhe2Q7xmL+nGTh9CEAqIFHasXlJ2ai4yQQBwFtN
 A2GuVMXuhg6g7lCM081DGpeCJjH2TFsWkkOJKQ6Oh1EHb95Wz4Dq9Z1QrqETuIOsv/
 XuwG9FZ9vNw0TDieZibrq989ipD0ypwzy9orWcSQEJwK52S18WVKTFhlf8FPP8CS4T
 MAjH6iuiD8WurIhd/K8NBHsnm82furj3JTSieDPiRGzBlua33OwlyM3ULgUTjIm84+
 TlQAc1yXCB/SA==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Thu, 28 May 2020 20:35:54 +0200
Message-Id: <e4d649e657f67ca422252331b560c29bc3f63515.1590690650.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1590690650.git.mirq-linux@rere.qmqm.pl>
References: <cover.1590690650.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH 3/3] usb: gadget: udc: atmel: implement .pullup callback
MIME-Version: 1.0
To: Cristian Birsan <cristian.birsan@microchip.com>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Songjun Wu <songjun.wu@atmel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_113602_643981_DF1AD1EB 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW1wbGVtZW50IHVkYy0+cHVsbHVwIGNhbGxiYWNrLCBzbyB0aGF0IHVkY19jb25uZWN0L2Rpc2Nv
bm5lY3Qgd29yay4KVGhpcyBpcyBuZWVkZWQgZm9yIGNvbXBvc2l0ZSBnYWRnZXQsIGFzIGl0IGFz
c3VtZXMgdWRjX2Rpc2Nvbm5lY3QoKQphY3R1YWxseSB3b3JrcyBhbmQgY2FsbHMgZ2FkZ2V0J3Mg
LT5kaXNjb25uZWN0IGNhbGxiYWNrLgoKU2lnbmVkLW9mZi1ieTogTWljaGHFgiBNaXJvc8WCYXcg
PG1pcnEtbGludXhAcmVyZS5xbXFtLnBsPgotLS0KIGRyaXZlcnMvdXNiL2dhZGdldC91ZGMvYXRt
ZWxfdXNiYV91ZGMuYyB8IDIwICsrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
MjAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvYXRt
ZWxfdXNiYV91ZGMuYyBiL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvYXRtZWxfdXNiYV91ZGMuYwpp
bmRleCA5MzQyYTNkMjQ5NjMuLmM1MTI4YzIyOWM1MiAxMDA2NDQKLS0tIGEvZHJpdmVycy91c2Iv
Z2FkZ2V0L3VkYy9hdG1lbF91c2JhX3VkYy5jCisrKyBiL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMv
YXRtZWxfdXNiYV91ZGMuYwpAQCAtMTAyOCw2ICsxMDI4LDcgQEAgdXNiYV91ZGNfc2V0X3NlbGZw
b3dlcmVkKHN0cnVjdCB1c2JfZ2FkZ2V0ICpnYWRnZXQsIGludCBpc19zZWxmcG93ZXJlZCkKIAly
ZXR1cm4gMDsKIH0KIAorc3RhdGljIGludCBhdG1lbF91c2JhX3B1bGx1cChzdHJ1Y3QgdXNiX2dh
ZGdldCAqZ2FkZ2V0LCBpbnQgaXNfb24pOwogc3RhdGljIGludCBhdG1lbF91c2JhX3N0YXJ0KHN0
cnVjdCB1c2JfZ2FkZ2V0ICpnYWRnZXQsCiAJCXN0cnVjdCB1c2JfZ2FkZ2V0X2RyaXZlciAqZHJp
dmVyKTsKIHN0YXRpYyBpbnQgYXRtZWxfdXNiYV9zdG9wKHN0cnVjdCB1c2JfZ2FkZ2V0ICpnYWRn
ZXQpOwpAQCAtMTEwMSw2ICsxMTAyLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB1c2JfZ2FkZ2V0
X29wcyB1c2JhX3VkY19vcHMgPSB7CiAJLmdldF9mcmFtZQkJPSB1c2JhX3VkY19nZXRfZnJhbWUs
CiAJLndha2V1cAkJCT0gdXNiYV91ZGNfd2FrZXVwLAogCS5zZXRfc2VsZnBvd2VyZWQJPSB1c2Jh
X3VkY19zZXRfc2VsZnBvd2VyZWQsCisJLnB1bGx1cAkJCT0gYXRtZWxfdXNiYV9wdWxsdXAsCiAJ
LnVkY19zdGFydAkJPSBhdG1lbF91c2JhX3N0YXJ0LAogCS51ZGNfc3RvcAkJPSBhdG1lbF91c2Jh
X3N0b3AsCiAJLm1hdGNoX2VwCQk9IGF0bWVsX3VzYmFfbWF0Y2hfZXAsCkBAIC0xOTU3LDYgKzE5
NTksMjQgQEAgc3RhdGljIGlycXJldHVybl90IHVzYmFfdmJ1c19pcnFfdGhyZWFkKGludCBpcnEs
IHZvaWQgKmRldmlkKQogCXJldHVybiBJUlFfSEFORExFRDsKIH0KIAorc3RhdGljIGludCBhdG1l
bF91c2JhX3B1bGx1cChzdHJ1Y3QgdXNiX2dhZGdldCAqZ2FkZ2V0LCBpbnQgaXNfb24pCit7CisJ
c3RydWN0IHVzYmFfdWRjICp1ZGMgPSBjb250YWluZXJfb2YoZ2FkZ2V0LCBzdHJ1Y3QgdXNiYV91
ZGMsIGdhZGdldCk7CisJdW5zaWduZWQgbG9uZyBmbGFnczsKKwl1MzIgY3RybDsKKworCXNwaW5f
bG9ja19pcnFzYXZlKCZ1ZGMtPmxvY2ssIGZsYWdzKTsKKwljdHJsID0gdXNiYV9yZWFkbCh1ZGMs
IENUUkwpOworCWlmIChpc19vbikKKwkJY3RybCAmPSB+VVNCQV9ERVRBQ0g7CisJZWxzZQorCQlj
dHJsIHw9IFVTQkFfREVUQUNIOworCXVzYmFfd3JpdGVsKHVkYywgQ1RSTCwgY3RybCk7CisJc3Bp
bl91bmxvY2tfaXJxcmVzdG9yZSgmdWRjLT5sb2NrLCBmbGFncyk7CisKKwlyZXR1cm4gMDsKK30K
Kwogc3RhdGljIGludCBhdG1lbF91c2JhX3N0YXJ0KHN0cnVjdCB1c2JfZ2FkZ2V0ICpnYWRnZXQs
CiAJCXN0cnVjdCB1c2JfZ2FkZ2V0X2RyaXZlciAqZHJpdmVyKQogewotLSAKMi4yMC4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
