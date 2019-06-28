Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADCA592CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J+UpXZJ0CZqUv8FAzaCPjjBeZ7WbDZ3eE6lvQltopWw=; b=VqzoTjSU9QT7x2
	HCvTqzsPiXalrVL8FD90WsJoyQIVFmyWcEAy/A3/Iyi/0+ReV7mgfjqWlCnw0PTCtBoauPR6tvE5D
	JV88YyG3r7EZkNEWbTwYvruheaMdHa1TPOjPAzsMLQl2BFCY9g4B0wdnSdJ9Ruyo+Sn2eCbc977lX
	qp4ga4f/Caf6a6x6mmyO6m7WBczW9QGkON2L9BL2QFvhWvHZD9H88vieeQg3RJ2Wwevlzinq/SN+I
	OmoRDckg2+Nm/CJdBQMrJkbqGc6Pl09LifVWH7YXlr/vP3kgom8gJqxKZY/EhHztIr43JKNGecuUX
	KbNe8T37E7/mkE/kIbRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiUG-0004QG-LX; Fri, 28 Jun 2019 04:27:48 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiU0-0004Pd-35
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:27:33 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S4RN1q105146;
 Thu, 27 Jun 2019 23:27:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561696043;
 bh=x+WogUHOQpJWSNWE1krdU8Z75nvmnuhuxjWIzK98k/4=;
 h=From:To:CC:Subject:Date;
 b=F0PwIXsR0lAyxa+sbDM2MNLwQY9jxRU4FxR0aDstX8FvyTWdugs+D182fD5j5Xzzi
 lqbzrpaUZtFbSH5GZxf7DBvclkcbXyE6G7UIMUcMaGBBVcz/Nb8XqduuvfTi8ULWuh
 yt8g/SJNhblOhk5/VjJe30ui2gapelaXeVrwQJ44=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S4RNt2113240
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Jun 2019 23:27:23 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 27
 Jun 2019 23:27:23 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 27 Jun 2019 23:27:23 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S4RKPK062595;
 Thu, 27 Jun 2019 23:27:20 -0500
From: Keerthy <j-keerthy@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>
Subject: [RESEND PATCH 00/10] crypto: k3: Add sa2ul driver
Date: Fri, 28 Jun 2019 09:57:35 +0530
Message-ID: <20190628042745.28455-1-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_212732_220969_9821B8F0 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, t-kristo@ti.com, linux-crypto@vger.kernel.org,
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
b24gdGhlCmFib3ZlIHNlcmllcy4KClJlc2VuZGluZyB3aXRoIGxpbnV4LWNyeXB0byBsaXN0IGlu
IENjLgoKS2VlcnRoeSAoMTApOgogIGR0LWJpbmRpbmdzOiBjcnlwdG86IGszOiBBZGQgc2EydWwg
YmluZGluZ3MgZG9jdW1lbnRhdGlvbgogIGNyeXB0bzogc2EydWw6IEFkZCBjcnlwdG8gZHJpdmVy
CiAgY3J5cHRvOiBzYTJ1bDogQWRkIEFFUyBFQ0IgTW9kZSBzdXBwb3J0CiAgY3J5cHRvOiBzYTJ1
bDogQWRkIGFlYWQgc3VwcG9ydCBmb3IgaG1hYyhzaGExKWNiYyhhZXMpIGFsZ29yaXRobQogIGNy
eXB0bzogc2hhMjU2X2dlbmVyaWM6IEV4cG9ydCB0aGUgVHJhbnNmb3JtIGZ1bmN0aW9uCiAgY3J5
cHRvOiBzYTJ1bDogQWRkIGhtYWMoc2hhMjU2KWNiYyhhZXMpIEFFQUQgQWxnbyBzdXBwb3J0CiAg
Y3J5cHRvOiBzYTJ1bDogQWRkIGhtYWMoc2hhMSkgSE1BQyBhbGdvcml0aG0gc3VwcG9ydAogIGNy
eXB0bzogc2EydWw6IEFkZCBobWFjKHNoYTI1NikgSE1BQyBhbGdvcml0aG0gc3VwcG9ydAogIHNh
MnVsOiBBZGQgM0RFUyBFQ0IgJiBDQkMgTW9kZSBzdXBwb3J0CiAgYXJtNjQ6IGR0czogazMtYW02
OiBBZGQgY3J5cHRvIGFjY2VsYXJhdG9yIG5vZGUKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9j
cnlwdG8vc2EydWwudHh0ICAgICAgfCAgIDQ3ICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMt
YW02NS1tYWluLmR0c2kgICAgICB8ICAgMzMgKwogY3J5cHRvL3NoYTI1Nl9nZW5lcmljLmMgICAg
ICAgICAgICAgICAgICAgICAgIHwgICAgMyArLQogZHJpdmVycy9jcnlwdG8vS2NvbmZpZyAgICAg
ICAgICAgICAgICAgICAgICAgIHwgICAxNyArCiBkcml2ZXJzL2NyeXB0by9NYWtlZmlsZSAgICAg
ICAgICAgICAgICAgICAgICAgfCAgICAxICsKIGRyaXZlcnMvY3J5cHRvL3NhMnVsLmMgICAgICAg
ICAgICAgICAgICAgICAgICB8IDIyMzIgKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvY3J5cHRv
L3NhMnVsLmggICAgICAgICAgICAgICAgICAgICAgICB8ICAzODQgKysrCiBpbmNsdWRlL2NyeXB0
by9zaGEuaCAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAxICsKIDggZmlsZXMgY2hhbmdl
ZCwgMjcxNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9zYTJ1bC50eHQKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2NyeXB0by9zYTJ1bC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9jcnlwdG8vc2EydWwuaAoKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
