Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6E719AB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 11:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhXs9v01rZoWqshCWRmErAWDMECjkseFkRJuPh6tj9E=; b=OwXA+Tls8aVuHa
	DjeIp47JHDoX2eC4XA/wJpxQvK+x5f0a7344raExbT2iMqT+04cgpu8tWEzm0srcmhUJLq3j6YrYj
	TtPllU6WRBMLyzMKcF6uw4/JWQIBJmO50EYkfKvGU87brXAdwwUoEEy0HR6tnDAN+cynkQXFu+cf0
	9nTfm5YcKvkAVlv53+G9cIUj5T1frF5X7lGxenIlE/QqTxVLa0dhJ0WgTk6Rx829ahgZcyOOSblT6
	qJ69WPs9xQowtoDbD5d4tLWvIoiKPEE6xQQCCOcQeMURK2FuaF8E0S6ogjOrndwLxUHt9KTgWIGsf
	8Sw/N3F/ebwnXfFr4iRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1we-0007sC-14; Fri, 10 May 2019 09:36:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1wV-0007pp-8G; Fri, 10 May 2019 09:35:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8FA07434A;
 Fri, 10 May 2019 11:35:45 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f025ad17;
 Fri, 10 May 2019 11:35:43 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kalle Valo <kvalo@codeaurora.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net 2/5] dt-bindings: doc: net: remove Linux API references
Date: Fri, 10 May 2019 11:35:15 +0200
Message-Id: <1557480918-9627-3-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557480918-9627-1-git-send-email-ynezz@true.cz>
References: <1557480918-9627-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_023551_470525_EEB9D86A 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW4gY29tbWl0IDY4N2UzZDU1NTBjNyAoImR0LWJpbmRpbmdzOiBkb2M6IHJlZmxlY3QgbmV3IE5W
TUVNCm9mX2dldF9tYWNfYWRkcmVzcyBiZWhhdmlvdXIiKSBJJ3ZlIGtlcHQgb3IgYWRkZWQgcmVm
ZXJlbmNlcyB0byBMaW51eApvZl9nZXRfbWFjX2FkZHJlc3MgQVBJIHdoaWNoIGlzIHVud2FudGVk
IHNvIHRoaXMgcGF0Y2ggZml4ZXMgdGhhdCBieQpyZW1vdmluZyB0aG9zZSByZWZlcmVuY2VzLgoK
Rml4ZXM6IDY4N2UzZDU1NTBjNyAoImR0LWJpbmRpbmdzOiBkb2M6IHJlZmxlY3QgbmV3IE5WTUVN
IG9mX2dldF9tYWNfYWRkcmVzcyBiZWhhdmlvdXIiKQpTdWdnZXN0ZWQtYnk6IFJvYiBIZXJyaW5n
IDxyb2JoQGtlcm5lbC5vcmc+ClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRy
dWUuY3o+Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9rZXlzdG9u
ZS1uZXRjcC50eHQgICAgICAgICB8IDYgKysrLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbmV0L3dpcmVsZXNzL21lZGlhdGVrLG10NzYudHh0IHwgNCArKy0tCiAyIGZpbGVz
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2tleXN0b25lLW5ldGNwLnR4dCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQva2V5c3RvbmUtbmV0Y3AudHh0
CmluZGV4IDNhNjVhYWJjNzZhMi4uNjI2MmMyZjI5M2IwIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2tleXN0b25lLW5ldGNwLnR4dAorKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2tleXN0b25lLW5ldGNwLnR4dApAQCAt
MTM5LDkgKzEzOSw5IEBAIE9wdGlvbmFsIHByb3BlcnRpZXM6CiAJCQlzdWItbW9kdWxlIGF0dGFj
aGVkIHRvIHRoaXMgaW50ZXJmYWNlLgogCiBUaGUgTUFDIGFkZHJlc3Mgd2lsbCBiZSBkZXRlcm1p
bmVkIHVzaW5nIHRoZSBvcHRpb25hbCBwcm9wZXJ0aWVzIGRlZmluZWQgaW4KLWV0aGVybmV0LnR4
dCwgYXMgcHJvdmlkZWQgYnkgdGhlIG9mX2dldF9tYWNfYWRkcmVzcyBBUEkgYW5kIG9ubHkgaWYg
ZWZ1c2UtbWFjCi1pcyBzZXQgdG8gMC4gSWYgYW55IG9mIHRoZSBvcHRpb25hbCBNQUMgYWRkcmVz
cyBwcm9wZXJ0aWVzIGFyZSBub3QgcHJlc2VudCwKLXRoZW4gdGhlIGRyaXZlciB3aWxsIHVzZSBy
YW5kb20gTUFDIGFkZHJlc3MuCitldGhlcm5ldC50eHQgYW5kIG9ubHkgaWYgZWZ1c2UtbWFjIGlz
IHNldCB0byAwLiBJZiBhbGwgb2YgdGhlIG9wdGlvbmFsIE1BQworYWRkcmVzcyBwcm9wZXJ0aWVz
IGFyZSBub3QgcHJlc2VudCwgdGhlbiB0aGUgZHJpdmVyIHdpbGwgdXNlIGEgcmFuZG9tIE1BQwor
YWRkcmVzcy4KIAogRXhhbXBsZSBiaW5kaW5nOgogCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL21lZGlhdGVrLG10NzYudHh0IGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC93aXJlbGVzcy9tZWRpYXRlayxtdDc2
LnR4dAppbmRleCA3NDY2NTUwMmY0Y2YuLjdlNjc1ZGFmYzI1NiAxMDA2NDQKLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC93aXJlbGVzcy9tZWRpYXRlayxtdDc2LnR4
dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL21l
ZGlhdGVrLG10NzYudHh0CkBAIC0xNiw4ICsxNiw4IEBAIE9wdGlvbmFsIHByb3BlcnRpZXM6CiAt
IGllZWU4MDIxMS1mcmVxLWxpbWl0OiBTZWUgaWVlZTgwMjExLnR4dAogLSBtZWRpYXRlayxtdGQt
ZWVwcm9tOiBTcGVjaWZ5IGEgTVREIHBhcnRpdGlvbiArIG9mZnNldCBjb250YWluaW5nIEVFUFJP
TSBkYXRhCiAKLVRoZSBkcml2ZXIgaXMgdXNpbmcgb2ZfZ2V0X21hY19hZGRyZXNzIEFQSSwgc28g
dGhlIE1BQyBhZGRyZXNzIGNhbiBiZSBhcyB3ZWxsCi1iZSBzZXQgd2l0aCBjb3JyZXNwb25kaW5n
IG9wdGlvbmFsIHByb3BlcnRpZXMgZGVmaW5lZCBpbiBuZXQvZXRoZXJuZXQudHh0LgorVGhlIE1B
QyBhZGRyZXNzIGNhbiBhcyB3ZWxsIGJlIHNldCB3aXRoIGNvcnJlc3BvbmRpbmcgb3B0aW9uYWwg
cHJvcGVydGllcworZGVmaW5lZCBpbiBuZXQvZXRoZXJuZXQudHh0LgogCiBPcHRpb25hbCBub2Rl
czoKIC0gbGVkOiBQcm9wZXJ0aWVzIGZvciBhIGNvbm5lY3RlZCBMRUQKLS0gCjEuOS4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
