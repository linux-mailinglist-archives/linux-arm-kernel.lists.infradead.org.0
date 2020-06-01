Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A98871E9C24
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 05:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8bDSa2s7AhLqGCnLoRAigocW9Z5SethsLyVpUehjB/k=; b=TGiKg3GBKuFbMz
	xHxU6ehCtkZRH1cd1qd5DjFVf1xdAUY2SBWBNi840VfXExW/m7cX/bVKnOIyf2fOIg41ptPTm5FFs
	SSXAYW+3ijEtgiLegWbWONgsajf9l7D1j3wpYoW96aiKbUJ0EjA/l7eBshsPqzd7niriGIvXlvjYE
	5lUgRMvRcpyag8rVCGpd6aYqglTvHAkt8rBE68SI2bfanyB/aeOOu/+iebmgRok25mq41VC9lLAKw
	Tmk1BnjlIN6qhRr9C1/1heKToq2bXSmQRjdfxsbNVDrT5yiD4VxYKX9vEtKm1E4Ef74OgK53G/vTL
	xwOIIcA0FJms7Pip4UvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfbOr-0004MX-Qm; Mon, 01 Jun 2020 03:46:09 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfbOh-0004LY-IZ
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 03:46:01 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49b1Kn0gCmz5Y;
 Mon,  1 Jun 2020 05:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1590983152; bh=pndK1FjAmFq0047oc3zSn4GkaXw9CpwjFxLaj77UgdE=;
 h=Date:From:Subject:To:Cc:From;
 b=o7DdYqEd4GUixVvSOrNrzZ2bHeU3/zAx4a9D11aQnZZdwYuQbIz69ifVRrCznbUKj
 GedeU9z/s5zMyfk+UQ0FpH53JtIh6ATUEHh8TryM6us92ncaETH0PyrYpKCha03ywH
 EGSA7CrnlsjT13sq+eNEMyoZXBIkj1pqeugPUkArTNcj1OvYdmxgPlwzilJ+X/lN6I
 PC6vabPd48+S+TqkluikcHeRakVoLhu37DOWiJs4MpK22/XiBmd2TSNXuQME9llTna
 KqW4Sf2hx94O2qh1OxmFEAr8CXF1JfnuvG1zRQA2Dn6TgfxDbh76o3KCbGgXgV0Hh0
 M/tYiCqtqeRYQ==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Mon, 01 Jun 2020 05:45:48 +0200
Message-Id: <c18a68b3b7c25593c9b6db4bcea1d53de469f6e0.1590983023.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH] misc: atmel-ssc: lock with mutex instead of spinlock
MIME-Version: 1.0
To: Nicolas Ferre <nicolas.ferre@microchip.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_204559_932592_7DD23442 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VW5pbnRlcnJ1cHRpYmxlIGNvbnRleHQgaXMgbm90IG5lZWRlZCBpbiB0aGUgZHJpdmVyIGFuZCBj
YXVzZXMgbG9ja2RlcAp3YXJuaW5nIGJlY2F1c2Ugb2YgbXV0ZXggdGFrZW4gaW4gb2ZfYWxpYXNf
Z2V0X2lkKCkuIENvbnZlcnQgdGhlIGxvY2sgdG8KbXV0ZXggdG8gYXZvaWQgdGhlIGlzc3VlLgoK
Q2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKU2lnbmVkLW9mZi1ieTogTWljaGHFgiBNaXJvc8WC
YXcgPG1pcnEtbGludXhAcmVyZS5xbXFtLnBsPgotLS0KIGRyaXZlcnMvbWlzYy9hdG1lbC1zc2Mu
YyB8IDI0ICsrKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2Vy
dGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9hdG1l
bC1zc2MuYyBiL2RyaXZlcnMvbWlzYy9hdG1lbC1zc2MuYwppbmRleCAxMzIyZTI5YmMzN2EuLjVj
YzAzMjA5NzQ3NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9taXNjL2F0bWVsLXNzYy5jCisrKyBiL2Ry
aXZlcnMvbWlzYy9hdG1lbC1zc2MuYwpAQCAtMTAsNyArMTAsNyBAQAogI2luY2x1ZGUgPGxpbnV4
L2Nsay5oPgogI2luY2x1ZGUgPGxpbnV4L2Vyci5oPgogI2luY2x1ZGUgPGxpbnV4L2lvLmg+Ci0j
aW5jbHVkZSA8bGludXgvc3BpbmxvY2suaD4KKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2F0bWVsLXNzYy5oPgogI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KICNpbmNs
dWRlIDxsaW51eC9tb2R1bGUuaD4KQEAgLTIwLDcgKzIwLDcgQEAKICNpbmNsdWRlICIuLi8uLi9z
b3VuZC9zb2MvYXRtZWwvYXRtZWxfc3NjX2RhaS5oIgogCiAvKiBTZXJpYWxpemUgYWNjZXNzIHRv
IHNzY19saXN0IGFuZCB1c2VyIGNvdW50ICovCi1zdGF0aWMgREVGSU5FX1NQSU5MT0NLKHVzZXJf
bG9jayk7CitzdGF0aWMgREVGSU5FX01VVEVYKHVzZXJfbG9jayk7CiBzdGF0aWMgTElTVF9IRUFE
KHNzY19saXN0KTsKIAogc3RydWN0IHNzY19kZXZpY2UgKnNzY19yZXF1ZXN0KHVuc2lnbmVkIGlu
dCBzc2NfbnVtKQpAQCAtMjgsNyArMjgsNyBAQCBzdHJ1Y3Qgc3NjX2RldmljZSAqc3NjX3JlcXVl
c3QodW5zaWduZWQgaW50IHNzY19udW0pCiAJaW50IHNzY192YWxpZCA9IDA7CiAJc3RydWN0IHNz
Y19kZXZpY2UgKnNzYzsKIAotCXNwaW5fbG9jaygmdXNlcl9sb2NrKTsKKwltdXRleF9sb2NrKCZ1
c2VyX2xvY2spOwogCWxpc3RfZm9yX2VhY2hfZW50cnkoc3NjLCAmc3NjX2xpc3QsIGxpc3QpIHsK
IAkJaWYgKHNzYy0+cGRldi0+ZGV2Lm9mX25vZGUpIHsKIAkJCWlmIChvZl9hbGlhc19nZXRfaWQo
c3NjLT5wZGV2LT5kZXYub2Zfbm9kZSwgInNzYyIpCkBAIC00NCwxOCArNDQsMTggQEAgc3RydWN0
IHNzY19kZXZpY2UgKnNzY19yZXF1ZXN0KHVuc2lnbmVkIGludCBzc2NfbnVtKQogCX0KIAogCWlm
ICghc3NjX3ZhbGlkKSB7Ci0JCXNwaW5fdW5sb2NrKCZ1c2VyX2xvY2spOworCQltdXRleF91bmxv
Y2soJnVzZXJfbG9jayk7CiAJCXByX2Vycigic3NjOiBzc2MlZCBwbGF0Zm9ybSBkZXZpY2UgaXMg
bWlzc2luZ1xuIiwgc3NjX251bSk7CiAJCXJldHVybiBFUlJfUFRSKC1FTk9ERVYpOwogCX0KIAog
CWlmIChzc2MtPnVzZXIpIHsKLQkJc3Bpbl91bmxvY2soJnVzZXJfbG9jayk7CisJCW11dGV4X3Vu
bG9jaygmdXNlcl9sb2NrKTsKIAkJZGV2X2RiZygmc3NjLT5wZGV2LT5kZXYsICJtb2R1bGUgYnVz
eVxuIik7CiAJCXJldHVybiBFUlJfUFRSKC1FQlVTWSk7CiAJfQogCXNzYy0+dXNlcisrOwotCXNw
aW5fdW5sb2NrKCZ1c2VyX2xvY2spOworCW11dGV4X3VubG9jaygmdXNlcl9sb2NrKTsKIAogCWNs
a19wcmVwYXJlKHNzYy0+Y2xrKTsKIApAQCAtNjcsMTQgKzY3LDE0IEBAIHZvaWQgc3NjX2ZyZWUo
c3RydWN0IHNzY19kZXZpY2UgKnNzYykKIHsKIAlib29sIGRpc2FibGVfY2xrID0gdHJ1ZTsKIAot
CXNwaW5fbG9jaygmdXNlcl9sb2NrKTsKKwltdXRleF9sb2NrKCZ1c2VyX2xvY2spOwogCWlmIChz
c2MtPnVzZXIpCiAJCXNzYy0+dXNlci0tOwogCWVsc2UgewogCQlkaXNhYmxlX2NsayA9IGZhbHNl
OwogCQlkZXZfZGJnKCZzc2MtPnBkZXYtPmRldiwgImRldmljZSBhbHJlYWR5IGZyZWVcbiIpOwog
CX0KLQlzcGluX3VubG9jaygmdXNlcl9sb2NrKTsKKwltdXRleF91bmxvY2soJnVzZXJfbG9jayk7
CiAKIAlpZiAoZGlzYWJsZV9jbGspCiAJCWNsa191bnByZXBhcmUoc3NjLT5jbGspOwpAQCAtMjQ2
LDkgKzI0Niw5IEBAIHN0YXRpYyBpbnQgc3NjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiAJCXJldHVybiAtRU5YSU87CiAJfQogCi0Jc3Bpbl9sb2NrKCZ1c2VyX2xvY2spOwor
CW11dGV4X2xvY2soJnVzZXJfbG9jayk7CiAJbGlzdF9hZGRfdGFpbCgmc3NjLT5saXN0LCAmc3Nj
X2xpc3QpOwotCXNwaW5fdW5sb2NrKCZ1c2VyX2xvY2spOworCW11dGV4X3VubG9jaygmdXNlcl9s
b2NrKTsKIAogCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHNzYyk7CiAKQEAgLTI2Nyw5ICsy
NjcsOSBAQCBzdGF0aWMgaW50IHNzY19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIAogCXNzY19zb3VuZF9kYWlfcmVtb3ZlKHNzYyk7CiAKLQlzcGluX2xvY2soJnVzZXJfbG9j
ayk7CisJbXV0ZXhfbG9jaygmdXNlcl9sb2NrKTsKIAlsaXN0X2RlbCgmc3NjLT5saXN0KTsKLQlz
cGluX3VubG9jaygmdXNlcl9sb2NrKTsKKwltdXRleF91bmxvY2soJnVzZXJfbG9jayk7CiAKIAly
ZXR1cm4gMDsKIH0KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
