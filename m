Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E83B11C43F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:42:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=po5g+1WMiH5i+z6r8lu4XwwHuraCqg3x2jEdur1AD7M=; b=WQxkYs43QFivo2
	2UZkMFUBjU3DoMCNh2JBnnJ5uUFzv4CZzToAGe1zIcSuIN44TH4NGmqQh6mD2Ho2L89XInDVK5KrB
	gqI/95aYF2UVbU5Vm+T7uxSAU+iUQ7KQ6n4zby7zWjIHQpALEHYyoajAGZiGWqtI3Ib9EP02TL6MT
	jiASNwydOQML4psW8gWCEx1pyyE1Uf75Zw/UxnGzh9Ej1Af7xpu2INQ5x2ImZ6pTWWPSFOOdPwLVv
	60Bqvaatofa109qrls5I1rnbn49CwUAe9p25wlnaqCzRKKuscL59HGtWo1k4poKdwMV83AchQJg+t
	UAA4vplfwUHpX54dExrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFNB-0003q0-TF; Thu, 12 Dec 2019 03:42:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKc-0000PY-UV; Thu, 12 Dec 2019 03:40:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D7461AF27;
 Thu, 12 Dec 2019 03:40:00 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 09/25] arm64: dts: realtek: rtd1295-zidoo-x9s: Add regular LEDs
 to TM1628
Date: Thu, 12 Dec 2019 04:39:36 +0100
Message-Id: <20191212033952.5967-10-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194003_498443_BD0C7B98 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Roc He <hepeng@zidoo.tv>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgY2hpbGQgbm9kZSBmb3IgdGhlIGhhbGYtc2Vjb25kIGNvbG9uLgoKQ2M6IFJvYyBIZSA8
aGVwZW5nQHppZG9vLnR2PgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVy
QHN1c2UuZGU+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTUtemlkb28t
eDlzLmR0cyB8IDEwICsrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTUtemlkb28t
eDlzLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LXppZG9vLXg5cy5k
dHMKaW5kZXggNTE4M2FjZDg1MWE4Li4yMTliNDk4NzQxMmMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LXppZG9vLXg5cy5kdHMKKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTUtemlkb28teDlzLmR0cwpAQCAtNiw2ICs2LDcgQEAK
IC9kdHMtdjEvOwogCiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+CisjaW5jbHVk
ZSA8ZHQtYmluZGluZ3MvbGVkcy9jb21tb24uaD4KIAogI2luY2x1ZGUgInJ0ZDEyOTUuZHRzaSIK
IApAQCAtNjAsNiArNjEsMTUgQEAKIAkJCXNwaS1yeC1kZWxheS11cyA9IDwxPjsKIAkJCXNwaS1t
YXgtZnJlcXVlbmN5ID0gPDUwMDAwMD47CiAJCQkjZ3JpZHMgPSA8Nz47CisJCQkjYWRkcmVzcy1j
ZWxscyA9IDwyPjsKKwkJCSNzaXplLWNlbGxzID0gPDA+OworCisJCQljb2xvbkA1LDQgeworCQkJ
CXJlZyA9IDw1IDQ+OworCQkJCWNvbG9yID0gPExFRF9DT0xPUl9JRF9XSElURT47CisJCQkJZnVu
Y3Rpb24gPSBMRURfRlVOQ1RJT05fU1RBVFVTOworCQkJCWZ1bmN0aW9uLWVudW1lcmF0b3IgPSA8
NT47CisJCQl9OwogCQl9OwogCX07CiB9OwotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
