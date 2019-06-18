Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9545F4A05E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1WUAc/A7SgSjwP81s2EoMsgUcNrnUI4mZ/ZEsBlKC48=; b=ZB1thWHqg0WTe+
	W4gRCOR5BD2/jRd+J/G+IP8c8BncQl9pvfPAIgxz6erc9po3rSTnnVyeImQ+5rZ1KTvvGI8LPYW8i
	rWsrjnM/mhcsDAwAW+mRM8sQ8yb2FxIyWJjksZ1ClI46xPJpazetLPC1GeptsydAoO8e6uaiDWboT
	xlpu2tnQSBwHW2WSwAx5s2oRxCfkPEVyAhib/BVGfJOtRPvBfGaH15aKPHgJtN6veKEjLkHgPk9Gy
	T/i0nWSvm/wBS+gYJNqucPd1q0yP+EkgbpLo8M1eJYltK+CqyRlOtiDTuLlZRg9eq4a6WjqZVL+4G
	H0lOESUh2Cu1nryA4ipA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCva-0003GZ-Lq; Tue, 18 Jun 2019 12:09:30 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCud-0002ki-JI
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:08:35 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IC8C6C121232;
 Tue, 18 Jun 2019 07:08:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560859692;
 bh=uKcw8oU4+FhGXSqf3gZugB8yITGfh5/LWvrWJ4CfFJ4=;
 h=From:To:CC:Subject:Date;
 b=BIb7ORKEkQHF3vcndibQSbDMsPFF46M94XWaPZhfSn1L+E+ee2wUPRv7rf9MmQ+s3
 Bqa9jRvzUcU7jFZm0vRYn27zM5yNCW9uY8mL4Q/SR4m0nRakJZhCFJbFJQ75tQyWDe
 dNqtb1Pa9BhHnY+YeLMEDJX5xypKUCuW8evR0P0Y=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IC8CMq068759
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 07:08:12 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 07:08:12 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 07:08:12 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IC89GY080327;
 Tue, 18 Jun 2019 07:08:09 -0500
From: Keerthy <j-keerthy@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>
Subject: [PATCH 00/10] crypto: k3: Add sa2ul driver
Date: Tue, 18 Jun 2019 17:38:33 +0530
Message-ID: <20190618120843.18777-1-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_050831_786509_3F1D6C2A 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: nm@ti.com, devicetree@vger.kernel.org, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHNlcmllcyBhZGRzIENyeXB0byBoYXJkd2FyZSBhY2NlbGVyYXRvciBzdXBwb3J0IGZvciBT
QTJVTC4KU0EyVUwgc3RhbmRzIGZvciBzZWN1cml0eSBhY2NlbGVyYXRvciB1bHRyYSBsaXRlLgoK
VGhlIFNlY3VyaXR5IEFjY2VsZXJhdG9yIChTQTJfVUwpIHN1YnN5c3RlbSBwcm92aWRlcyBoYXJk
d2FyZQpjcnlwdG9ncmFwaGljIGFjY2VsZXJhdGlvbiBmb3IgdGhlIGZvbGxvd2luZyB1c2UgY2Fz
ZXM6CuKAoiBFbmNyeXB0aW9uIGFuZCBhdXRoZW50aWNhdGlvbiBmb3Igc2VjdXJlIGJvb3QK4oCi
IEVuY3J5cHRpb24gYW5kIGF1dGhlbnRpY2F0aW9uIG9mIGNvbnRlbnQgaW4gYXBwbGljYXRpb25z
CiAgcmVxdWlyaW5nIERSTSAoZGlnaXRhbCByaWdodHMgbWFuYWdlbWVudCkgYW5kCiAgY29udGVu
dC9hc3NldCBwcm90ZWN0aW9uClRoZSBkZXZpY2UgaW5jbHVkZXMgb25lIGluc3RhbnRpYXRpb24g
b2YgU0EyX1VMIG5hbWVkIFNBMl9VTDAKClNBMlVMIG5lZWRzIG9uIHR4IGNoYW5uZWwgYW5kIGEg
cGFpciBvZiByeCBkbWEgY2hhbm5lbHMuCgpUaGlzIHNlcmllcyBoYXMgZGVwZW5kZW5jeSBvbiBV
RE1BIHNlcmllcy4gSGVuY2UgaXMgYmFzZWQgb24gdG9wIG9mOgoKaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LWRtYWVuZ2luZS9saXN0Lz9zZXJpZXM9MTE0MTA1CgpU
aGUgYWJvdmUgc2VyaWVzIGFkZHMgY291cGxlIG9mIGRtYWVuZ2luZSBBUElzIHRoYXQgYXJlIHVz
ZWQKYnkgdGhlIHNhMnVsIGRyaXZlci4gSGVuY2UgdGhlcmUgaXMgYSBoYXJkIGRlcGVuZGVuY3kg
b24gdGhlCmFib3ZlIHNlcmllcy4KCktlZXJ0aHkgKDEwKToKICBkdC1iaW5kaW5nczogY3J5cHRv
OiBrMzogQWRkIHNhMnVsIGJpbmRpbmdzIGRvY3VtZW50YXRpb24KICBjcnlwdG86IHNhMnVsOiBB
ZGQgY3J5cHRvIGRyaXZlcgogIGNyeXB0bzogc2EydWw6IEFkZCBBRVMgRUNCIE1vZGUgc3VwcG9y
dAogIGNyeXB0bzogc2EydWw6IEFkZCBhZWFkIHN1cHBvcnQgZm9yIGhtYWMoc2hhMSljYmMoYWVz
KSBhbGdvcml0aG0KICBjcnlwdG86IHNoYTI1Nl9nZW5lcmljOiBFeHBvcnQgdGhlIFRyYW5zZm9y
bSBmdW5jdGlvbgogIGNyeXB0bzogc2EydWw6IEFkZCBobWFjKHNoYTI1NiljYmMoYWVzKSBBRUFE
IEFsZ28gc3VwcG9ydAogIGNyeXB0bzogc2EydWw6IEFkZCBobWFjKHNoYTEpIEhNQUMgYWxnb3Jp
dGhtIHN1cHBvcnQKICBjcnlwdG86IHNhMnVsOiBBZGQgaG1hYyhzaGEyNTYpIEhNQUMgYWxnb3Jp
dGhtIHN1cHBvcnQKICBzYTJ1bDogQWRkIDNERVMgRUNCICYgQ0JDIE1vZGUgc3VwcG9ydAogIGFy
bTY0OiBkdHM6IGszLWFtNjogQWRkIGNyeXB0byBhY2NlbGFyYXRvciBub2RlCgogLi4uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvY3J5cHRvL3NhMnVsLnR4dCAgICAgIHwgICA0NyArCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL3RpL2szLWFtNjUtbWFpbi5kdHNpICAgICAgfCAgIDMzICsKIGNyeXB0by9zaGEy
NTZfZ2VuZXJpYy5jICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDMgKy0KIGRyaXZlcnMvY3J5
cHRvL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMTcgKwogZHJpdmVycy9jcnlw
dG8vTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgIHwgICAgMSArCiBkcml2ZXJzL2NyeXB0
by9zYTJ1bC5jICAgICAgICAgICAgICAgICAgICAgICAgfCAyMjMyICsrKysrKysrKysrKysrKysr
CiBkcml2ZXJzL2NyeXB0by9zYTJ1bC5oICAgICAgICAgICAgICAgICAgICAgICAgfCAgMzg0ICsr
KwogaW5jbHVkZS9jcnlwdG8vc2hhLmggICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgMSAr
CiA4IGZpbGVzIGNoYW5nZWQsIDI3MTcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8v
c2EydWwudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9jcnlwdG8vc2EydWwuYwogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY3J5cHRvL3NhMnVsLmgKCi0tIAoyLjE3LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
