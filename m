Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3A01AD706
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 09:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cjHYPb0onOQYmivmb/sleYyn3BADlgL8DvNBoLba4rw=; b=jurhh1HbAT+Ehn
	5zCsIV4pM9meDcjXOkaoFQtXwgJJ2J8O6ILjJJ1iwJAbnrxD2j6skBzfR9cHbZt5FGZR1XptvaoSV
	kMJQxNwd4jLbgqYipzxco5Edfpj0R/QG6TZzmm443LMSYidISpGbtL1z8qg0J/alwHRfCUEUBjk8O
	KYd9K8udxLCwBMpl6W5qDdDCgNF2UjH35+2AI/GppxfPqc+tnqgvy9dxX+IIVa5XOZXFeFKS53Wmc
	gB5gi5bcw0lZw53c/jC99KgouOHBQdUaZwjtFP4c4YwnSn4HA9k82yRpx+dpqIZJBaeuMovDnJJzu
	f3LNfbHwOF6bX5uCJWXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPL7S-0003kV-3I; Fri, 17 Apr 2020 07:08:58 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPL7J-0003jW-F7
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 07:08:51 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id CF8AB8FD19F0FA263885;
 Fri, 17 Apr 2020 15:08:38 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Fri, 17 Apr 2020
 15:08:29 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <linus.walleij@linaro.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-gpio@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] pinctrl: nomadik: ab8505: remove unused 'gpio50_a_1_pins'
Date: Fri, 17 Apr 2020 15:34:55 +0800
Message-ID: <20200417073455.42146-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_000849_662451_5952E853 
X-CRM114-Status: UNSURE (   6.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Hulk Robot <hulkci@huawei.com>, Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rml4IHRoZSBmb2xsb3dpbmcgZ2NjIHdhcm5pbmc6Cgpkcml2ZXJzL3BpbmN0cmwvbm9tYWRpay9w
aW5jdHJsLWFiODUwNS5jOjEzNzoyMzogd2FybmluZzoK4oCYZ3BpbzUwX2FfMV9waW5z4oCZIGRl
ZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCiBzdGF0aWMgY29u
c3QgdW5zaWduZWQgZ3BpbzUwX2FfMV9waW5zW10gPSB7IEFCODUwNV9QSU5fTDQgfTsKICAgICAg
ICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn4KClJlcG9ydGVkLWJ5OiBIdWxrIFJvYm90
IDxodWxrY2lAaHVhd2VpLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFzb24gWWFuIDx5YW5haWppZUBo
dWF3ZWkuY29tPgotLS0KIGRyaXZlcnMvcGluY3RybC9ub21hZGlrL3BpbmN0cmwtYWI4NTA1LmMg
fCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9waW5jdHJsL25vbWFkaWsvcGluY3RybC1hYjg1MDUuYyBiL2RyaXZlcnMvcGluY3RybC9ub21h
ZGlrL3BpbmN0cmwtYWI4NTA1LmMKaW5kZXggNWU2ZTdkMjgzOTBhLi5lZDIzZjEyNzQ3MDkgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvcGluY3RybC9ub21hZGlrL3BpbmN0cmwtYWI4NTA1LmMKKysrIGIv
ZHJpdmVycy9waW5jdHJsL25vbWFkaWsvcGluY3RybC1hYjg1MDUuYwpAQCAtMTM0LDcgKzEzNCw2
IEBAIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBncGlvMzRfYV8xX3BpbnNbXSA9IHsgQUI4NTA1X1BJ
Tl9IMTQgfTsKIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBncGlvNDBfYV8xX3BpbnNbXSA9IHsgQUI4
NTA1X1BJTl9KMTUgfTsKIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBncGlvNDFfYV8xX3BpbnNbXSA9
IHsgQUI4NTA1X1BJTl9KMTQgfTsKIHN0YXRpYyBjb25zdCB1bnNpZ25lZCB1YXJ0cnhkYXRhX2Ff
MV9waW5zW10gPSB7IEFCODUwNV9QSU5fSjE0IH07Ci1zdGF0aWMgY29uc3QgdW5zaWduZWQgZ3Bp
bzUwX2FfMV9waW5zW10gPSB7IEFCODUwNV9QSU5fTDQgfTsKIHN0YXRpYyBjb25zdCB1bnNpZ25l
ZCBncGlvNTJfYV8xX3BpbnNbXSA9IHsgQUI4NTA1X1BJTl9EMTYgfTsKIHN0YXRpYyBjb25zdCB1
bnNpZ25lZCBncGlvNTNfYV8xX3BpbnNbXSA9IHsgQUI4NTA1X1BJTl9EMTUgfTsKIAotLSAKMi4y
MS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
