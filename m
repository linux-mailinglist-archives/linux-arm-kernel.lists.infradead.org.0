Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB52129EE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 09:16:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwY5KnIuhbGDcn+xMT8HS1GnaasheXPhUbC6xaaAGGc=; b=c/ZtToZa4O/wj3
	a1wz+a3JzpVHDYDozL7cw72PL9rWm6S76QVfbNIGPmVQLOlOSCdwwHxJ5SLtnJEcWSeGcCeaX8+Nc
	PYD4FeF2GjSEe+TqMI5lJV9A1RikDaNg3lm0njwr/9SFF+wH+4WhzSaF1h5wQz5jGu97WII/ewWEI
	bptN7oLEU94RRqAQECpR056/fvfGSQ0t8hBneRjIEZ8G51+KjNUexcCRwVEE9QeXhjqpFe8cf3Gza
	bEAKP3967QDU4thiV481XGUaHPsJ7dDuwHXCJlv9xUuOb2I/yCQyW23G+7IXQw/H9jGD73pC4R4Ok
	1zmTd4+QIKXuuMqCDJ6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijfMB-0001hz-8H; Tue, 24 Dec 2019 08:15:55 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijfLr-0001Y1-NN
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 08:15:37 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id xBO8F6tP002467;
 Tue, 24 Dec 2019 17:15:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com xBO8F6tP002467
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1577175313;
 bh=jKX8H24L9P/kDcEFr52nFIN6vZX1dw3qi1ILU0zzQ1g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LH5d5Xb5XetelHCGw0KPciGf1DQ6qgz5oVGoCFofMdCnSzxQwCijuOMxa7tyy8Nae
 J8ya1rujKnF8/SQ4hvd9Ambys/TIe9W3GoOnvvjH1dNPRxx4KgLuZX662+Kxfx9pGu
 6ds95X3thYTUHLzGXLz9Pj3II036sln0SGiZZw84ZI87mGEq6glrS1ebEtSZrP1OlY
 e+d+TG8oVOFV49EzKMexbjYQZckYB2t92lbIuickAk52vdd8zLIn3jfhvse6zCQbgb
 +SYsgW6YMNFStKmpRhasFF4QBF7qRQ+ce9KCd2SYzQL/ipqJ8eOF4khF9Tk/rM25+4
 z7TBYuHiwL3+w==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org
Subject: [PATCH 2/2] iommu/arm-smmu: fix -Wunused-const-variable warning
Date: Tue, 24 Dec 2019 17:15:00 +0900
Message-Id: <20191224081500.18628-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191224081500.18628-1-yamada.masahiro@socionext.com>
References: <20191224081500.18628-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_001536_023928_EF9C89A4 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rm9yIEFSQ0g9YXJtIGJ1aWxkcywgT0YgaXMgbm90IG5lY2Vzc2FyaWx5IGVuYWJsZWQsIHRoYXQg
aXMsIHlvdSBjYW4KYnVpbGQgdGhpcyBkcml2ZXIgd2l0aG91dCBDT05GSUdfT0YuCgpXaGVuIENP
TkZJR19PRiBpcyB1bnNldCwgb2ZfbWF0Y2hfcHRyKCkgaXMgTlVMTCwgYW5kIGFybV9zbW11X29m
X21hdGNoCmlzIGxlZnQgb3JwaGFuLgoKQnVpbGRpbmcgaXQgd2l0aCBXPTEgZW1pdHMgYSB3YXJu
aW5nOgoKZHJpdmVycy9pb21tdS9hcm0tc21tdS5jOjE5MDQ6MzQ6IHdhcm5pbmc6IOKAmGFybV9z
bW11X29mX21hdGNo4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJp
YWJsZT1dCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBhcm1fc21tdV9vZl9tYXRj
aFtdID0gewogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
fn4KClRoZXJlIGFyZSB0d28gd2F5cyB0byBmaXggdGhpczoKCiAtIGFubm90YXRlIGFybV9zbW11
X29mX21hdGNoIHdpdGggX19tYXliZV91bnVzZWQgKG9yIHN1cnJvdW5kIHRoZQogICBjb2RlIHdp
dGggI2lmZGVmIENPTkZJR19PRiAuLi4gI2VuZGlmKQoKIC0gc3RvcCB1c2luZyBvZl9tYXRjaF9w
dHIoKQoKVGhpcyBjb21taXQgdG9vayB0aGUgbGF0dGVyIHNvbHV0aW9uLgoKSXQgc2xpZ2h0bHkg
aW5jcmVhc2VzIHRoZSBvYmplY3Qgc2l6ZSwgYnV0IGl0IGlzIHByb2JhYmx5IG5vdCBhIGJpZyBk
ZWFsCmJlY2F1c2UgYXJtX3NtbXVfZGV2aWNlX2R0X3Byb2JlKCkgaXMgYWxzbyBjb21waWxlZCBp
cnJlc3BlY3RpdmUgb2YKQ09ORklHX09GLgoKU2lnbmVkLW9mZi1ieTogTWFzYWhpcm8gWWFtYWRh
IDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KLS0tCgogZHJpdmVycy9pb21tdS9hcm0t
c21tdS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9hcm0tc21tdS5jIGIvZHJpdmVycy9pb21t
dS9hcm0tc21tdS5jCmluZGV4IDRmMWEzNTBkOTUyOS4uMDQ0NmEzYmY2YmQwIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2lvbW11L2FybS1zbW11LmMKKysrIGIvZHJpdmVycy9pb21tdS9hcm0tc21tdS5j
CkBAIC0yMjY3LDcgKzIyNjcsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgYXJt
X3NtbXVfcG1fb3BzID0gewogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgYXJtX3NtbXVf
ZHJpdmVyID0gewogCS5kcml2ZXIJPSB7CiAJCS5uYW1lCQkJPSAiYXJtLXNtbXUiLAotCQkub2Zf
bWF0Y2hfdGFibGUJCT0gb2ZfbWF0Y2hfcHRyKGFybV9zbW11X29mX21hdGNoKSwKKwkJLm9mX21h
dGNoX3RhYmxlCQk9IGFybV9zbW11X29mX21hdGNoLAogCQkucG0JCQk9ICZhcm1fc21tdV9wbV9v
cHMsCiAJCS5zdXBwcmVzc19iaW5kX2F0dHJzCT0gdHJ1ZSwKIAl9LAotLSAKMi4xNy4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
